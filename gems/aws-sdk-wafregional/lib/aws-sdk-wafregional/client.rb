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
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:wafregional)

module Aws::WAFRegional
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :wafregional

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
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Associates a web ACL with a resource.
    #
    # @option params [required, String] :web_acl_id
    #   A unique identifier (ID) for the web ACL.
    #
    # @option params [required, String] :resource_arn
    #   The ARN (Amazon Resource Name) of the resource to be protected.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_web_acl({
    #     web_acl_id: "ResourceId", # required
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/AssociateWebACL AWS API Documentation
    #
    # @overload associate_web_acl(params = {})
    # @param [Hash] params ({})
    def associate_web_acl(params = {}, options = {})
      req = build_request(:associate_web_acl, params)
      req.send_request(options)
    end

    # Creates a `ByteMatchSet`. You then use UpdateByteMatchSet to identify
    # the part of a web request that you want AWS WAF to inspect, such as
    # the values of the `User-Agent` header or the query string. For
    # example, you can create a `ByteMatchSet` that matches any requests
    # with `User-Agent` headers that contain the string `BadBot`. You can
    # then configure AWS WAF to reject those requests.
    #
    # To create and configure a `ByteMatchSet`, perform the following steps:
    #
    # 1.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `CreateByteMatchSet` request.
    #
    # 2.  Submit a `CreateByteMatchSet` request.
    #
    # 3.  Use `GetChangeToken` to get the change token that you provide in
    #     the `ChangeToken` parameter of an `UpdateByteMatchSet` request.
    #
    # 4.  Submit an UpdateByteMatchSet request to specify the part of the
    #     request that you want AWS WAF to inspect (for example, the header
    #     or the URI) and the value that you want AWS WAF to watch for.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :name
    #   A friendly name or description of the ByteMatchSet. You can't change
    #   `Name` after you create a `ByteMatchSet`.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::CreateByteMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateByteMatchSetResponse#byte_match_set #byte_match_set} => Types::ByteMatchSet
    #   * {Types::CreateByteMatchSetResponse#change_token #change_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_byte_match_set({
    #     name: "ResourceName", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.byte_match_set.byte_match_set_id #=> String
    #   resp.byte_match_set.name #=> String
    #   resp.byte_match_set.byte_match_tuples #=> Array
    #   resp.byte_match_set.byte_match_tuples[0].field_to_match.type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"
    #   resp.byte_match_set.byte_match_tuples[0].field_to_match.data #=> String
    #   resp.byte_match_set.byte_match_tuples[0].target_string #=> String
    #   resp.byte_match_set.byte_match_tuples[0].text_transformation #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.byte_match_set.byte_match_tuples[0].positional_constraint #=> String, one of "EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateByteMatchSet AWS API Documentation
    #
    # @overload create_byte_match_set(params = {})
    # @param [Hash] params ({})
    def create_byte_match_set(params = {}, options = {})
      req = build_request(:create_byte_match_set, params)
      req.send_request(options)
    end

    # Creates an GeoMatchSet, which you use to specify which web requests
    # you want to allow or block based on the country that the requests
    # originate from. For example, if you're receiving a lot of requests
    # from one or more countries and you want to block the requests, you can
    # create an `GeoMatchSet` that contains those countries and then
    # configure AWS WAF to block the requests.
    #
    # To create and configure a `GeoMatchSet`, perform the following steps:
    #
    # 1.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `CreateGeoMatchSet` request.
    #
    # 2.  Submit a `CreateGeoMatchSet` request.
    #
    # 3.  Use `GetChangeToken` to get the change token that you provide in
    #     the `ChangeToken` parameter of an UpdateGeoMatchSet request.
    #
    # 4.  Submit an `UpdateGeoMatchSetSet` request to specify the countries
    #     that you want AWS WAF to watch for.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :name
    #   A friendly name or description of the GeoMatchSet. You can't change
    #   `Name` after you create the `GeoMatchSet`.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::CreateGeoMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGeoMatchSetResponse#geo_match_set #geo_match_set} => Types::GeoMatchSet
    #   * {Types::CreateGeoMatchSetResponse#change_token #change_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_geo_match_set({
    #     name: "ResourceName", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.geo_match_set.geo_match_set_id #=> String
    #   resp.geo_match_set.name #=> String
    #   resp.geo_match_set.geo_match_constraints #=> Array
    #   resp.geo_match_set.geo_match_constraints[0].type #=> String, one of "Country"
    #   resp.geo_match_set.geo_match_constraints[0].value #=> String, one of "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateGeoMatchSet AWS API Documentation
    #
    # @overload create_geo_match_set(params = {})
    # @param [Hash] params ({})
    def create_geo_match_set(params = {}, options = {})
      req = build_request(:create_geo_match_set, params)
      req.send_request(options)
    end

    # Creates an IPSet, which you use to specify which web requests you want
    # to allow or block based on the IP addresses that the requests
    # originate from. For example, if you're receiving a lot of requests
    # from one or more individual IP addresses or one or more ranges of IP
    # addresses and you want to block the requests, you can create an
    # `IPSet` that contains those IP addresses and then configure AWS WAF to
    # block the requests.
    #
    # To create and configure an `IPSet`, perform the following steps:
    #
    # 1.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `CreateIPSet` request.
    #
    # 2.  Submit a `CreateIPSet` request.
    #
    # 3.  Use `GetChangeToken` to get the change token that you provide in
    #     the `ChangeToken` parameter of an UpdateIPSet request.
    #
    # 4.  Submit an `UpdateIPSet` request to specify the IP addresses that
    #     you want AWS WAF to watch for.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :name
    #   A friendly name or description of the IPSet. You can't change `Name`
    #   after you create the `IPSet`.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::CreateIPSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIPSetResponse#ip_set #ip_set} => Types::IPSet
    #   * {Types::CreateIPSetResponse#change_token #change_token} => String
    #
    #
    # @example Example: To create an IP set
    #
    #   # The following example creates an IP match set named MyIPSetFriendlyName.
    #
    #   resp = client.create_ip_set({
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     name: "MyIPSetFriendlyName", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     ip_set: {
    #       ip_set_descriptors: [
    #         {
    #           type: "IPV4", 
    #           value: "192.0.2.44/32", 
    #         }, 
    #       ], 
    #       ip_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #       name: "MyIPSetFriendlyName", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ip_set({
    #     name: "ResourceName", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ip_set.ip_set_id #=> String
    #   resp.ip_set.name #=> String
    #   resp.ip_set.ip_set_descriptors #=> Array
    #   resp.ip_set.ip_set_descriptors[0].type #=> String, one of "IPV4", "IPV6"
    #   resp.ip_set.ip_set_descriptors[0].value #=> String
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateIPSet AWS API Documentation
    #
    # @overload create_ip_set(params = {})
    # @param [Hash] params ({})
    def create_ip_set(params = {}, options = {})
      req = build_request(:create_ip_set, params)
      req.send_request(options)
    end

    # Creates a RateBasedRule. The `RateBasedRule` contains a `RateLimit`,
    # which specifies the maximum number of requests that AWS WAF allows
    # from a specified IP address in a five-minute period. The
    # `RateBasedRule` also contains the `IPSet` objects, `ByteMatchSet`
    # objects, and other predicates that identify the requests that you want
    # to count or block if these requests exceed the `RateLimit`.
    #
    # If you add more than one predicate to a `RateBasedRule`, a request not
    # only must exceed the `RateLimit`, but it also must match all the
    # specifications to be counted or blocked. For example, suppose you add
    # the following to a `RateBasedRule`\:
    #
    # * An `IPSet` that matches the IP address `192.0.2.44/32`
    #
    # * A `ByteMatchSet` that matches `BadBot` in the `User-Agent` header
    #
    # Further, you specify a `RateLimit` of 15,000.
    #
    # You then add the `RateBasedRule` to a `WebACL` and specify that you
    # want to block requests that meet the conditions in the rule. For a
    # request to be blocked, it must come from the IP address 192.0.2.44
    # *and* the `User-Agent` header in the request must contain the value
    # `BadBot`. Further, requests that match these two conditions must be
    # received at a rate of more than 15,000 requests every five minutes. If
    # both conditions are met and the rate is exceeded, AWS WAF blocks the
    # requests. If the rate drops below 15,000 for a five-minute period, AWS
    # WAF no longer blocks the requests.
    #
    # As a second example, suppose you want to limit requests to a
    # particular page on your site. To do this, you could add the following
    # to a `RateBasedRule`\:
    #
    # * A `ByteMatchSet` with `FieldToMatch` of `URI`
    #
    # * A `PositionalConstraint` of `STARTS_WITH`
    #
    # * A `TargetString` of `login`
    #
    # Further, you specify a `RateLimit` of 15,000.
    #
    # By adding this `RateBasedRule` to a `WebACL`, you could limit requests
    # to your login page without affecting the rest of your site.
    #
    # To create and configure a `RateBasedRule`, perform the following
    # steps:
    #
    # 1.  Create and update the predicates that you want to include in the
    #     rule. For more information, see CreateByteMatchSet, CreateIPSet,
    #     and CreateSqlInjectionMatchSet.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `CreateRule` request.
    #
    # 3.  Submit a `CreateRateBasedRule` request.
    #
    # 4.  Use `GetChangeToken` to get the change token that you provide in
    #     the `ChangeToken` parameter of an UpdateRule request.
    #
    # 5.  Submit an `UpdateRateBasedRule` request to specify the predicates
    #     that you want to include in the rule.
    #
    # 6.  Create and update a `WebACL` that contains the `RateBasedRule`.
    #     For more information, see CreateWebACL.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :name
    #   A friendly name or description of the RateBasedRule. You can't change
    #   the name of a `RateBasedRule` after you create it.
    #
    # @option params [required, String] :metric_name
    #   A friendly name or description for the metrics for this
    #   `RateBasedRule`. The name can contain only alphanumeric characters
    #   (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change
    #   the name of the metric after you create the `RateBasedRule`.
    #
    # @option params [required, String] :rate_key
    #   The field that AWS WAF uses to determine if requests are likely
    #   arriving from a single source and thus subject to rate monitoring. The
    #   only valid value for `RateKey` is `IP`. `IP` indicates that requests
    #   that arrive from the same IP address are subject to the `RateLimit`
    #   that is specified in the `RateBasedRule`.
    #
    # @option params [required, Integer] :rate_limit
    #   The maximum number of requests, which have an identical value in the
    #   field that is specified by `RateKey`, allowed in a five-minute period.
    #   If the number of requests exceeds the `RateLimit` and the other
    #   predicates specified in the rule are also met, AWS WAF triggers the
    #   action that is specified for this rule.
    #
    # @option params [required, String] :change_token
    #   The `ChangeToken` that you used to submit the `CreateRateBasedRule`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #
    # @return [Types::CreateRateBasedRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRateBasedRuleResponse#rule #rule} => Types::RateBasedRule
    #   * {Types::CreateRateBasedRuleResponse#change_token #change_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rate_based_rule({
    #     name: "ResourceName", # required
    #     metric_name: "MetricName", # required
    #     rate_key: "IP", # required, accepts IP
    #     rate_limit: 1, # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule.rule_id #=> String
    #   resp.rule.name #=> String
    #   resp.rule.metric_name #=> String
    #   resp.rule.match_predicates #=> Array
    #   resp.rule.match_predicates[0].negated #=> Boolean
    #   resp.rule.match_predicates[0].type #=> String, one of "IPMatch", "ByteMatch", "SqlInjectionMatch", "GeoMatch", "SizeConstraint", "XssMatch", "RegexMatch"
    #   resp.rule.match_predicates[0].data_id #=> String
    #   resp.rule.rate_key #=> String, one of "IP"
    #   resp.rule.rate_limit #=> Integer
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateRateBasedRule AWS API Documentation
    #
    # @overload create_rate_based_rule(params = {})
    # @param [Hash] params ({})
    def create_rate_based_rule(params = {}, options = {})
      req = build_request(:create_rate_based_rule, params)
      req.send_request(options)
    end

    # Creates a RegexMatchSet. You then use UpdateRegexMatchSet to identify
    # the part of a web request that you want AWS WAF to inspect, such as
    # the values of the `User-Agent` header or the query string. For
    # example, you can create a `RegexMatchSet` that contains a
    # `RegexMatchTuple` that looks for any requests with `User-Agent`
    # headers that match a `RegexPatternSet` with pattern `B[a@]dB[o0]t`.
    # You can then configure AWS WAF to reject those requests.
    #
    # To create and configure a `RegexMatchSet`, perform the following
    # steps:
    #
    # 1.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `CreateRegexMatchSet` request.
    #
    # 2.  Submit a `CreateRegexMatchSet` request.
    #
    # 3.  Use `GetChangeToken` to get the change token that you provide in
    #     the `ChangeToken` parameter of an `UpdateRegexMatchSet` request.
    #
    # 4.  Submit an UpdateRegexMatchSet request to specify the part of the
    #     request that you want AWS WAF to inspect (for example, the header
    #     or the URI) and the value, using a `RegexPatternSet`, that you
    #     want AWS WAF to watch for.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :name
    #   A friendly name or description of the RegexMatchSet. You can't change
    #   `Name` after you create a `RegexMatchSet`.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::CreateRegexMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRegexMatchSetResponse#regex_match_set #regex_match_set} => Types::RegexMatchSet
    #   * {Types::CreateRegexMatchSetResponse#change_token #change_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_regex_match_set({
    #     name: "ResourceName", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.regex_match_set.regex_match_set_id #=> String
    #   resp.regex_match_set.name #=> String
    #   resp.regex_match_set.regex_match_tuples #=> Array
    #   resp.regex_match_set.regex_match_tuples[0].field_to_match.type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"
    #   resp.regex_match_set.regex_match_tuples[0].field_to_match.data #=> String
    #   resp.regex_match_set.regex_match_tuples[0].text_transformation #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.regex_match_set.regex_match_tuples[0].regex_pattern_set_id #=> String
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateRegexMatchSet AWS API Documentation
    #
    # @overload create_regex_match_set(params = {})
    # @param [Hash] params ({})
    def create_regex_match_set(params = {}, options = {})
      req = build_request(:create_regex_match_set, params)
      req.send_request(options)
    end

    # Creates a `RegexPatternSet`. You then use UpdateRegexPatternSet to
    # specify the regular expression (regex) pattern that you want AWS WAF
    # to search for, such as `B[a@]dB[o0]t`. You can then configure AWS WAF
    # to reject those requests.
    #
    # To create and configure a `RegexPatternSet`, perform the following
    # steps:
    #
    # 1.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `CreateRegexPatternSet` request.
    #
    # 2.  Submit a `CreateRegexPatternSet` request.
    #
    # 3.  Use `GetChangeToken` to get the change token that you provide in
    #     the `ChangeToken` parameter of an `UpdateRegexPatternSet` request.
    #
    # 4.  Submit an UpdateRegexPatternSet request to specify the string that
    #     you want AWS WAF to watch for.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :name
    #   A friendly name or description of the RegexPatternSet. You can't
    #   change `Name` after you create a `RegexPatternSet`.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::CreateRegexPatternSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRegexPatternSetResponse#regex_pattern_set #regex_pattern_set} => Types::RegexPatternSet
    #   * {Types::CreateRegexPatternSetResponse#change_token #change_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_regex_pattern_set({
    #     name: "ResourceName", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.regex_pattern_set.regex_pattern_set_id #=> String
    #   resp.regex_pattern_set.name #=> String
    #   resp.regex_pattern_set.regex_pattern_strings #=> Array
    #   resp.regex_pattern_set.regex_pattern_strings[0] #=> String
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateRegexPatternSet AWS API Documentation
    #
    # @overload create_regex_pattern_set(params = {})
    # @param [Hash] params ({})
    def create_regex_pattern_set(params = {}, options = {})
      req = build_request(:create_regex_pattern_set, params)
      req.send_request(options)
    end

    # Creates a `Rule`, which contains the `IPSet` objects, `ByteMatchSet`
    # objects, and other predicates that identify the requests that you want
    # to block. If you add more than one predicate to a `Rule`, a request
    # must match all of the specifications to be allowed or blocked. For
    # example, suppose you add the following to a `Rule`\:
    #
    # * An `IPSet` that matches the IP address `192.0.2.44/32`
    #
    # * A `ByteMatchSet` that matches `BadBot` in the `User-Agent` header
    #
    # You then add the `Rule` to a `WebACL` and specify that you want to
    # blocks requests that satisfy the `Rule`. For a request to be blocked,
    # it must come from the IP address 192.0.2.44 *and* the `User-Agent`
    # header in the request must contain the value `BadBot`.
    #
    # To create and configure a `Rule`, perform the following steps:
    #
    # 1.  Create and update the predicates that you want to include in the
    #     `Rule`. For more information, see CreateByteMatchSet, CreateIPSet,
    #     and CreateSqlInjectionMatchSet.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `CreateRule` request.
    #
    # 3.  Submit a `CreateRule` request.
    #
    # 4.  Use `GetChangeToken` to get the change token that you provide in
    #     the `ChangeToken` parameter of an UpdateRule request.
    #
    # 5.  Submit an `UpdateRule` request to specify the predicates that you
    #     want to include in the `Rule`.
    #
    # 6.  Create and update a `WebACL` that contains the `Rule`. For more
    #     information, see CreateWebACL.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :name
    #   A friendly name or description of the Rule. You can't change the name
    #   of a `Rule` after you create it.
    #
    # @option params [required, String] :metric_name
    #   A friendly name or description for the metrics for this `Rule`. The
    #   name can contain only alphanumeric characters (A-Z, a-z, 0-9); the
    #   name can't contain whitespace. You can't change the name of the
    #   metric after you create the `Rule`.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::CreateRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuleResponse#rule #rule} => Types::Rule
    #   * {Types::CreateRuleResponse#change_token #change_token} => String
    #
    #
    # @example Example: To create a rule
    #
    #   # The following example creates a rule named WAFByteHeaderRule.
    #
    #   resp = client.create_rule({
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     metric_name: "WAFByteHeaderRule", 
    #     name: "WAFByteHeaderRule", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     rule: {
    #       metric_name: "WAFByteHeaderRule", 
    #       name: "WAFByteHeaderRule", 
    #       predicates: [
    #         {
    #           data_id: "MyByteMatchSetID", 
    #           negated: false, 
    #           type: "ByteMatch", 
    #         }, 
    #       ], 
    #       rule_id: "WAFRule-1-Example", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule({
    #     name: "ResourceName", # required
    #     metric_name: "MetricName", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule.rule_id #=> String
    #   resp.rule.name #=> String
    #   resp.rule.metric_name #=> String
    #   resp.rule.predicates #=> Array
    #   resp.rule.predicates[0].negated #=> Boolean
    #   resp.rule.predicates[0].type #=> String, one of "IPMatch", "ByteMatch", "SqlInjectionMatch", "GeoMatch", "SizeConstraint", "XssMatch", "RegexMatch"
    #   resp.rule.predicates[0].data_id #=> String
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateRule AWS API Documentation
    #
    # @overload create_rule(params = {})
    # @param [Hash] params ({})
    def create_rule(params = {}, options = {})
      req = build_request(:create_rule, params)
      req.send_request(options)
    end

    # Creates a `RuleGroup`. A rule group is a collection of predefined
    # rules that you add to a web ACL. You use UpdateRuleGroup to add rules
    # to the rule group.
    #
    # Rule groups are subject to the following limits:
    #
    # * Three rule groups per account. You can request an increase to this
    #   limit by contacting customer support.
    #
    # * One rule group per web ACL.
    #
    # * Ten rules per rule group.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :name
    #   A friendly name or description of the RuleGroup. You can't change
    #   `Name` after you create a `RuleGroup`.
    #
    # @option params [required, String] :metric_name
    #   A friendly name or description for the metrics for this `RuleGroup`.
    #   The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the
    #   name can't contain whitespace. You can't change the name of the
    #   metric after you create the `RuleGroup`.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::CreateRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuleGroupResponse#rule_group #rule_group} => Types::RuleGroup
    #   * {Types::CreateRuleGroupResponse#change_token #change_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule_group({
    #     name: "ResourceName", # required
    #     metric_name: "MetricName", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_group.rule_group_id #=> String
    #   resp.rule_group.name #=> String
    #   resp.rule_group.metric_name #=> String
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateRuleGroup AWS API Documentation
    #
    # @overload create_rule_group(params = {})
    # @param [Hash] params ({})
    def create_rule_group(params = {}, options = {})
      req = build_request(:create_rule_group, params)
      req.send_request(options)
    end

    # Creates a `SizeConstraintSet`. You then use UpdateSizeConstraintSet to
    # identify the part of a web request that you want AWS WAF to check for
    # length, such as the length of the `User-Agent` header or the length of
    # the query string. For example, you can create a `SizeConstraintSet`
    # that matches any requests that have a query string that is longer than
    # 100 bytes. You can then configure AWS WAF to reject those requests.
    #
    # To create and configure a `SizeConstraintSet`, perform the following
    # steps:
    #
    # 1.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `CreateSizeConstraintSet` request.
    #
    # 2.  Submit a `CreateSizeConstraintSet` request.
    #
    # 3.  Use `GetChangeToken` to get the change token that you provide in
    #     the `ChangeToken` parameter of an `UpdateSizeConstraintSet`
    #     request.
    #
    # 4.  Submit an UpdateSizeConstraintSet request to specify the part of
    #     the request that you want AWS WAF to inspect (for example, the
    #     header or the URI) and the value that you want AWS WAF to watch
    #     for.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :name
    #   A friendly name or description of the SizeConstraintSet. You can't
    #   change `Name` after you create a `SizeConstraintSet`.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::CreateSizeConstraintSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSizeConstraintSetResponse#size_constraint_set #size_constraint_set} => Types::SizeConstraintSet
    #   * {Types::CreateSizeConstraintSetResponse#change_token #change_token} => String
    #
    #
    # @example Example: To create a size constraint
    #
    #   # The following example creates size constraint set named MySampleSizeConstraintSet.
    #
    #   resp = client.create_size_constraint_set({
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     name: "MySampleSizeConstraintSet", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     size_constraint_set: {
    #       name: "MySampleSizeConstraintSet", 
    #       size_constraint_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #       size_constraints: [
    #         {
    #           comparison_operator: "GT", 
    #           field_to_match: {
    #             type: "QUERY_STRING", 
    #           }, 
    #           size: 0, 
    #           text_transformation: "NONE", 
    #         }, 
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_size_constraint_set({
    #     name: "ResourceName", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.size_constraint_set.size_constraint_set_id #=> String
    #   resp.size_constraint_set.name #=> String
    #   resp.size_constraint_set.size_constraints #=> Array
    #   resp.size_constraint_set.size_constraints[0].field_to_match.type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"
    #   resp.size_constraint_set.size_constraints[0].field_to_match.data #=> String
    #   resp.size_constraint_set.size_constraints[0].text_transformation #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.size_constraint_set.size_constraints[0].comparison_operator #=> String, one of "EQ", "NE", "LE", "LT", "GE", "GT"
    #   resp.size_constraint_set.size_constraints[0].size #=> Integer
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateSizeConstraintSet AWS API Documentation
    #
    # @overload create_size_constraint_set(params = {})
    # @param [Hash] params ({})
    def create_size_constraint_set(params = {}, options = {})
      req = build_request(:create_size_constraint_set, params)
      req.send_request(options)
    end

    # Creates a SqlInjectionMatchSet, which you use to allow, block, or
    # count requests that contain snippets of SQL code in a specified part
    # of web requests. AWS WAF searches for character sequences that are
    # likely to be malicious strings.
    #
    # To create and configure a `SqlInjectionMatchSet`, perform the
    # following steps:
    #
    # 1.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `CreateSqlInjectionMatchSet` request.
    #
    # 2.  Submit a `CreateSqlInjectionMatchSet` request.
    #
    # 3.  Use `GetChangeToken` to get the change token that you provide in
    #     the `ChangeToken` parameter of an UpdateSqlInjectionMatchSet
    #     request.
    #
    # 4.  Submit an UpdateSqlInjectionMatchSet request to specify the parts
    #     of web requests in which you want to allow, block, or count
    #     malicious SQL code.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :name
    #   A friendly name or description for the SqlInjectionMatchSet that
    #   you're creating. You can't change `Name` after you create the
    #   `SqlInjectionMatchSet`.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::CreateSqlInjectionMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSqlInjectionMatchSetResponse#sql_injection_match_set #sql_injection_match_set} => Types::SqlInjectionMatchSet
    #   * {Types::CreateSqlInjectionMatchSetResponse#change_token #change_token} => String
    #
    #
    # @example Example: To create a SQL injection match set
    #
    #   # The following example creates a SQL injection match set named MySQLInjectionMatchSet.
    #
    #   resp = client.create_sql_injection_match_set({
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     name: "MySQLInjectionMatchSet", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     sql_injection_match_set: {
    #       name: "MySQLInjectionMatchSet", 
    #       sql_injection_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #       sql_injection_match_tuples: [
    #         {
    #           field_to_match: {
    #             type: "QUERY_STRING", 
    #           }, 
    #           text_transformation: "URL_DECODE", 
    #         }, 
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sql_injection_match_set({
    #     name: "ResourceName", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sql_injection_match_set.sql_injection_match_set_id #=> String
    #   resp.sql_injection_match_set.name #=> String
    #   resp.sql_injection_match_set.sql_injection_match_tuples #=> Array
    #   resp.sql_injection_match_set.sql_injection_match_tuples[0].field_to_match.type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"
    #   resp.sql_injection_match_set.sql_injection_match_tuples[0].field_to_match.data #=> String
    #   resp.sql_injection_match_set.sql_injection_match_tuples[0].text_transformation #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateSqlInjectionMatchSet AWS API Documentation
    #
    # @overload create_sql_injection_match_set(params = {})
    # @param [Hash] params ({})
    def create_sql_injection_match_set(params = {}, options = {})
      req = build_request(:create_sql_injection_match_set, params)
      req.send_request(options)
    end

    # Creates a `WebACL`, which contains the `Rules` that identify the
    # CloudFront web requests that you want to allow, block, or count. AWS
    # WAF evaluates `Rules` in order based on the value of `Priority` for
    # each `Rule`.
    #
    # You also specify a default action, either `ALLOW` or `BLOCK`. If a web
    # request doesn't match any of the `Rules` in a `WebACL`, AWS WAF
    # responds to the request with the default action.
    #
    # To create and configure a `WebACL`, perform the following steps:
    #
    # 1.  Create and update the `ByteMatchSet` objects and other predicates
    #     that you want to include in `Rules`. For more information, see
    #     CreateByteMatchSet, UpdateByteMatchSet, CreateIPSet, UpdateIPSet,
    #     CreateSqlInjectionMatchSet, and UpdateSqlInjectionMatchSet.
    #
    # 2.  Create and update the `Rules` that you want to include in the
    #     `WebACL`. For more information, see CreateRule and UpdateRule.
    #
    # 3.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `CreateWebACL` request.
    #
    # 4.  Submit a `CreateWebACL` request.
    #
    # 5.  Use `GetChangeToken` to get the change token that you provide in
    #     the `ChangeToken` parameter of an UpdateWebACL request.
    #
    # 6.  Submit an UpdateWebACL request to specify the `Rules` that you
    #     want to include in the `WebACL`, to specify the default action,
    #     and to associate the `WebACL` with a CloudFront distribution.
    #
    # For more information about how to use the AWS WAF API, see the [AWS
    # WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :name
    #   A friendly name or description of the WebACL. You can't change `Name`
    #   after you create the `WebACL`.
    #
    # @option params [required, String] :metric_name
    #   A friendly name or description for the metrics for this `WebACL`. The
    #   name can contain only alphanumeric characters (A-Z, a-z, 0-9); the
    #   name can't contain whitespace. You can't change `MetricName` after
    #   you create the `WebACL`.
    #
    # @option params [required, Types::WafAction] :default_action
    #   The action that you want AWS WAF to take when a request doesn't match
    #   the criteria specified in any of the `Rule` objects that are
    #   associated with the `WebACL`.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::CreateWebACLResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWebACLResponse#web_acl #web_acl} => Types::WebACL
    #   * {Types::CreateWebACLResponse#change_token #change_token} => String
    #
    #
    # @example Example: To create a web ACL
    #
    #   # The following example creates a web ACL named CreateExample.
    #
    #   resp = client.create_web_acl({
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     default_action: {
    #       type: "ALLOW", 
    #     }, 
    #     metric_name: "CreateExample", 
    #     name: "CreateExample", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     web_acl: {
    #       default_action: {
    #         type: "ALLOW", 
    #       }, 
    #       metric_name: "CreateExample", 
    #       name: "CreateExample", 
    #       rules: [
    #         {
    #           action: {
    #             type: "ALLOW", 
    #           }, 
    #           priority: 1, 
    #           rule_id: "WAFRule-1-Example", 
    #         }, 
    #       ], 
    #       web_acl_id: "example-46da-4444-5555-example", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_web_acl({
    #     name: "ResourceName", # required
    #     metric_name: "MetricName", # required
    #     default_action: { # required
    #       type: "BLOCK", # required, accepts BLOCK, ALLOW, COUNT
    #     },
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.web_acl.web_acl_id #=> String
    #   resp.web_acl.name #=> String
    #   resp.web_acl.metric_name #=> String
    #   resp.web_acl.default_action.type #=> String, one of "BLOCK", "ALLOW", "COUNT"
    #   resp.web_acl.rules #=> Array
    #   resp.web_acl.rules[0].priority #=> Integer
    #   resp.web_acl.rules[0].rule_id #=> String
    #   resp.web_acl.rules[0].action.type #=> String, one of "BLOCK", "ALLOW", "COUNT"
    #   resp.web_acl.rules[0].override_action.type #=> String, one of "NONE", "COUNT"
    #   resp.web_acl.rules[0].type #=> String, one of "REGULAR", "RATE_BASED", "GROUP"
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateWebACL AWS API Documentation
    #
    # @overload create_web_acl(params = {})
    # @param [Hash] params ({})
    def create_web_acl(params = {}, options = {})
      req = build_request(:create_web_acl, params)
      req.send_request(options)
    end

    # Creates an XssMatchSet, which you use to allow, block, or count
    # requests that contain cross-site scripting attacks in the specified
    # part of web requests. AWS WAF searches for character sequences that
    # are likely to be malicious strings.
    #
    # To create and configure an `XssMatchSet`, perform the following steps:
    #
    # 1.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `CreateXssMatchSet` request.
    #
    # 2.  Submit a `CreateXssMatchSet` request.
    #
    # 3.  Use `GetChangeToken` to get the change token that you provide in
    #     the `ChangeToken` parameter of an UpdateXssMatchSet request.
    #
    # 4.  Submit an UpdateXssMatchSet request to specify the parts of web
    #     requests in which you want to allow, block, or count cross-site
    #     scripting attacks.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :name
    #   A friendly name or description for the XssMatchSet that you're
    #   creating. You can't change `Name` after you create the `XssMatchSet`.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::CreateXssMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateXssMatchSetResponse#xss_match_set #xss_match_set} => Types::XssMatchSet
    #   * {Types::CreateXssMatchSetResponse#change_token #change_token} => String
    #
    #
    # @example Example: To create an XSS match set
    #
    #   # The following example creates an XSS match set named MySampleXssMatchSet.
    #
    #   resp = client.create_xss_match_set({
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     name: "MySampleXssMatchSet", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     xss_match_set: {
    #       name: "MySampleXssMatchSet", 
    #       xss_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #       xss_match_tuples: [
    #         {
    #           field_to_match: {
    #             type: "QUERY_STRING", 
    #           }, 
    #           text_transformation: "URL_DECODE", 
    #         }, 
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_xss_match_set({
    #     name: "ResourceName", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.xss_match_set.xss_match_set_id #=> String
    #   resp.xss_match_set.name #=> String
    #   resp.xss_match_set.xss_match_tuples #=> Array
    #   resp.xss_match_set.xss_match_tuples[0].field_to_match.type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"
    #   resp.xss_match_set.xss_match_tuples[0].field_to_match.data #=> String
    #   resp.xss_match_set.xss_match_tuples[0].text_transformation #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateXssMatchSet AWS API Documentation
    #
    # @overload create_xss_match_set(params = {})
    # @param [Hash] params ({})
    def create_xss_match_set(params = {}, options = {})
      req = build_request(:create_xss_match_set, params)
      req.send_request(options)
    end

    # Permanently deletes a ByteMatchSet. You can't delete a `ByteMatchSet`
    # if it's still used in any `Rules` or if it still includes any
    # ByteMatchTuple objects (any filters).
    #
    # If you just want to remove a `ByteMatchSet` from a `Rule`, use
    # UpdateRule.
    #
    # To permanently delete a `ByteMatchSet`, perform the following steps:
    #
    # 1.  Update the `ByteMatchSet` to remove filters, if any. For more
    #     information, see UpdateByteMatchSet.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `DeleteByteMatchSet` request.
    #
    # 3.  Submit a `DeleteByteMatchSet` request.
    #
    # @option params [required, String] :byte_match_set_id
    #   The `ByteMatchSetId` of the ByteMatchSet that you want to delete.
    #   `ByteMatchSetId` is returned by CreateByteMatchSet and by
    #   ListByteMatchSets.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::DeleteByteMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteByteMatchSetResponse#change_token #change_token} => String
    #
    #
    # @example Example: To delete a byte match set
    #
    #   # The following example deletes a byte match set with the ID exampleIDs3t-46da-4fdb-b8d5-abc321j569j5.
    #
    #   resp = client.delete_byte_match_set({
    #     byte_match_set_id: "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5", 
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_byte_match_set({
    #     byte_match_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteByteMatchSet AWS API Documentation
    #
    # @overload delete_byte_match_set(params = {})
    # @param [Hash] params ({})
    def delete_byte_match_set(params = {}, options = {})
      req = build_request(:delete_byte_match_set, params)
      req.send_request(options)
    end

    # Permanently deletes a GeoMatchSet. You can't delete a `GeoMatchSet`
    # if it's still used in any `Rules` or if it still includes any
    # countries.
    #
    # If you just want to remove a `GeoMatchSet` from a `Rule`, use
    # UpdateRule.
    #
    # To permanently delete a `GeoMatchSet` from AWS WAF, perform the
    # following steps:
    #
    # 1.  Update the `GeoMatchSet` to remove any countries. For more
    #     information, see UpdateGeoMatchSet.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `DeleteGeoMatchSet` request.
    #
    # 3.  Submit a `DeleteGeoMatchSet` request.
    #
    # @option params [required, String] :geo_match_set_id
    #   The `GeoMatchSetID` of the GeoMatchSet that you want to delete.
    #   `GeoMatchSetId` is returned by CreateGeoMatchSet and by
    #   ListGeoMatchSets.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::DeleteGeoMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGeoMatchSetResponse#change_token #change_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_geo_match_set({
    #     geo_match_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteGeoMatchSet AWS API Documentation
    #
    # @overload delete_geo_match_set(params = {})
    # @param [Hash] params ({})
    def delete_geo_match_set(params = {}, options = {})
      req = build_request(:delete_geo_match_set, params)
      req.send_request(options)
    end

    # Permanently deletes an IPSet. You can't delete an `IPSet` if it's
    # still used in any `Rules` or if it still includes any IP addresses.
    #
    # If you just want to remove an `IPSet` from a `Rule`, use UpdateRule.
    #
    # To permanently delete an `IPSet` from AWS WAF, perform the following
    # steps:
    #
    # 1.  Update the `IPSet` to remove IP address ranges, if any. For more
    #     information, see UpdateIPSet.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `DeleteIPSet` request.
    #
    # 3.  Submit a `DeleteIPSet` request.
    #
    # @option params [required, String] :ip_set_id
    #   The `IPSetId` of the IPSet that you want to delete. `IPSetId` is
    #   returned by CreateIPSet and by ListIPSets.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::DeleteIPSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteIPSetResponse#change_token #change_token} => String
    #
    #
    # @example Example: To delete an IP set
    #
    #   # The following example deletes an IP match set  with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #
    #   resp = client.delete_ip_set({
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     ip_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ip_set({
    #     ip_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteIPSet AWS API Documentation
    #
    # @overload delete_ip_set(params = {})
    # @param [Hash] params ({})
    def delete_ip_set(params = {}, options = {})
      req = build_request(:delete_ip_set, params)
      req.send_request(options)
    end

    # Permanently deletes the LoggingConfiguration from the specified web
    # ACL.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteLoggingConfiguration AWS API Documentation
    #
    # @overload delete_logging_configuration(params = {})
    # @param [Hash] params ({})
    def delete_logging_configuration(params = {}, options = {})
      req = build_request(:delete_logging_configuration, params)
      req.send_request(options)
    end

    # Permanently deletes an IAM policy from the specified RuleGroup.
    #
    # The user making the request must be the owner of the RuleGroup.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the RuleGroup from which you want to
    #   delete the policy.
    #
    #   The user making the request must be the owner of the RuleGroup.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_permission_policy({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeletePermissionPolicy AWS API Documentation
    #
    # @overload delete_permission_policy(params = {})
    # @param [Hash] params ({})
    def delete_permission_policy(params = {}, options = {})
      req = build_request(:delete_permission_policy, params)
      req.send_request(options)
    end

    # Permanently deletes a RateBasedRule. You can't delete a rule if it's
    # still used in any `WebACL` objects or if it still includes any
    # predicates, such as `ByteMatchSet` objects.
    #
    # If you just want to remove a rule from a `WebACL`, use UpdateWebACL.
    #
    # To permanently delete a `RateBasedRule` from AWS WAF, perform the
    # following steps:
    #
    # 1.  Update the `RateBasedRule` to remove predicates, if any. For more
    #     information, see UpdateRateBasedRule.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `DeleteRateBasedRule` request.
    #
    # 3.  Submit a `DeleteRateBasedRule` request.
    #
    # @option params [required, String] :rule_id
    #   The `RuleId` of the RateBasedRule that you want to delete. `RuleId` is
    #   returned by CreateRateBasedRule and by ListRateBasedRules.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::DeleteRateBasedRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRateBasedRuleResponse#change_token #change_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rate_based_rule({
    #     rule_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteRateBasedRule AWS API Documentation
    #
    # @overload delete_rate_based_rule(params = {})
    # @param [Hash] params ({})
    def delete_rate_based_rule(params = {}, options = {})
      req = build_request(:delete_rate_based_rule, params)
      req.send_request(options)
    end

    # Permanently deletes a RegexMatchSet. You can't delete a
    # `RegexMatchSet` if it's still used in any `Rules` or if it still
    # includes any `RegexMatchTuples` objects (any filters).
    #
    # If you just want to remove a `RegexMatchSet` from a `Rule`, use
    # UpdateRule.
    #
    # To permanently delete a `RegexMatchSet`, perform the following steps:
    #
    # 1.  Update the `RegexMatchSet` to remove filters, if any. For more
    #     information, see UpdateRegexMatchSet.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `DeleteRegexMatchSet` request.
    #
    # 3.  Submit a `DeleteRegexMatchSet` request.
    #
    # @option params [required, String] :regex_match_set_id
    #   The `RegexMatchSetId` of the RegexMatchSet that you want to delete.
    #   `RegexMatchSetId` is returned by CreateRegexMatchSet and by
    #   ListRegexMatchSets.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::DeleteRegexMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRegexMatchSetResponse#change_token #change_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_regex_match_set({
    #     regex_match_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteRegexMatchSet AWS API Documentation
    #
    # @overload delete_regex_match_set(params = {})
    # @param [Hash] params ({})
    def delete_regex_match_set(params = {}, options = {})
      req = build_request(:delete_regex_match_set, params)
      req.send_request(options)
    end

    # Permanently deletes a RegexPatternSet. You can't delete a
    # `RegexPatternSet` if it's still used in any `RegexMatchSet` or if the
    # `RegexPatternSet` is not empty.
    #
    # @option params [required, String] :regex_pattern_set_id
    #   The `RegexPatternSetId` of the RegexPatternSet that you want to
    #   delete. `RegexPatternSetId` is returned by CreateRegexPatternSet and
    #   by ListRegexPatternSets.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::DeleteRegexPatternSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRegexPatternSetResponse#change_token #change_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_regex_pattern_set({
    #     regex_pattern_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteRegexPatternSet AWS API Documentation
    #
    # @overload delete_regex_pattern_set(params = {})
    # @param [Hash] params ({})
    def delete_regex_pattern_set(params = {}, options = {})
      req = build_request(:delete_regex_pattern_set, params)
      req.send_request(options)
    end

    # Permanently deletes a Rule. You can't delete a `Rule` if it's still
    # used in any `WebACL` objects or if it still includes any predicates,
    # such as `ByteMatchSet` objects.
    #
    # If you just want to remove a `Rule` from a `WebACL`, use UpdateWebACL.
    #
    # To permanently delete a `Rule` from AWS WAF, perform the following
    # steps:
    #
    # 1.  Update the `Rule` to remove predicates, if any. For more
    #     information, see UpdateRule.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `DeleteRule` request.
    #
    # 3.  Submit a `DeleteRule` request.
    #
    # @option params [required, String] :rule_id
    #   The `RuleId` of the Rule that you want to delete. `RuleId` is returned
    #   by CreateRule and by ListRules.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::DeleteRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRuleResponse#change_token #change_token} => String
    #
    #
    # @example Example: To delete a rule
    #
    #   # The following example deletes a rule with the ID WAFRule-1-Example.
    #
    #   resp = client.delete_rule({
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     rule_id: "WAFRule-1-Example", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule({
    #     rule_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteRule AWS API Documentation
    #
    # @overload delete_rule(params = {})
    # @param [Hash] params ({})
    def delete_rule(params = {}, options = {})
      req = build_request(:delete_rule, params)
      req.send_request(options)
    end

    # Permanently deletes a RuleGroup. You can't delete a `RuleGroup` if
    # it's still used in any `WebACL` objects or if it still includes any
    # rules.
    #
    # If you just want to remove a `RuleGroup` from a `WebACL`, use
    # UpdateWebACL.
    #
    # To permanently delete a `RuleGroup` from AWS WAF, perform the
    # following steps:
    #
    # 1.  Update the `RuleGroup` to remove rules, if any. For more
    #     information, see UpdateRuleGroup.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `DeleteRuleGroup` request.
    #
    # 3.  Submit a `DeleteRuleGroup` request.
    #
    # @option params [required, String] :rule_group_id
    #   The `RuleGroupId` of the RuleGroup that you want to delete.
    #   `RuleGroupId` is returned by CreateRuleGroup and by ListRuleGroups.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::DeleteRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRuleGroupResponse#change_token #change_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule_group({
    #     rule_group_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteRuleGroup AWS API Documentation
    #
    # @overload delete_rule_group(params = {})
    # @param [Hash] params ({})
    def delete_rule_group(params = {}, options = {})
      req = build_request(:delete_rule_group, params)
      req.send_request(options)
    end

    # Permanently deletes a SizeConstraintSet. You can't delete a
    # `SizeConstraintSet` if it's still used in any `Rules` or if it still
    # includes any SizeConstraint objects (any filters).
    #
    # If you just want to remove a `SizeConstraintSet` from a `Rule`, use
    # UpdateRule.
    #
    # To permanently delete a `SizeConstraintSet`, perform the following
    # steps:
    #
    # 1.  Update the `SizeConstraintSet` to remove filters, if any. For more
    #     information, see UpdateSizeConstraintSet.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `DeleteSizeConstraintSet` request.
    #
    # 3.  Submit a `DeleteSizeConstraintSet` request.
    #
    # @option params [required, String] :size_constraint_set_id
    #   The `SizeConstraintSetId` of the SizeConstraintSet that you want to
    #   delete. `SizeConstraintSetId` is returned by CreateSizeConstraintSet
    #   and by ListSizeConstraintSets.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::DeleteSizeConstraintSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSizeConstraintSetResponse#change_token #change_token} => String
    #
    #
    # @example Example: To delete a size constraint set
    #
    #   # The following example deletes a size constraint set  with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #
    #   resp = client.delete_size_constraint_set({
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     size_constraint_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_size_constraint_set({
    #     size_constraint_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteSizeConstraintSet AWS API Documentation
    #
    # @overload delete_size_constraint_set(params = {})
    # @param [Hash] params ({})
    def delete_size_constraint_set(params = {}, options = {})
      req = build_request(:delete_size_constraint_set, params)
      req.send_request(options)
    end

    # Permanently deletes a SqlInjectionMatchSet. You can't delete a
    # `SqlInjectionMatchSet` if it's still used in any `Rules` or if it
    # still contains any SqlInjectionMatchTuple objects.
    #
    # If you just want to remove a `SqlInjectionMatchSet` from a `Rule`, use
    # UpdateRule.
    #
    # To permanently delete a `SqlInjectionMatchSet` from AWS WAF, perform
    # the following steps:
    #
    # 1.  Update the `SqlInjectionMatchSet` to remove filters, if any. For
    #     more information, see UpdateSqlInjectionMatchSet.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `DeleteSqlInjectionMatchSet` request.
    #
    # 3.  Submit a `DeleteSqlInjectionMatchSet` request.
    #
    # @option params [required, String] :sql_injection_match_set_id
    #   The `SqlInjectionMatchSetId` of the SqlInjectionMatchSet that you want
    #   to delete. `SqlInjectionMatchSetId` is returned by
    #   CreateSqlInjectionMatchSet and by ListSqlInjectionMatchSets.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::DeleteSqlInjectionMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSqlInjectionMatchSetResponse#change_token #change_token} => String
    #
    #
    # @example Example: To delete a SQL injection match set
    #
    #   # The following example deletes a SQL injection match set  with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #
    #   resp = client.delete_sql_injection_match_set({
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     sql_injection_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sql_injection_match_set({
    #     sql_injection_match_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteSqlInjectionMatchSet AWS API Documentation
    #
    # @overload delete_sql_injection_match_set(params = {})
    # @param [Hash] params ({})
    def delete_sql_injection_match_set(params = {}, options = {})
      req = build_request(:delete_sql_injection_match_set, params)
      req.send_request(options)
    end

    # Permanently deletes a WebACL. You can't delete a `WebACL` if it still
    # contains any `Rules`.
    #
    # To delete a `WebACL`, perform the following steps:
    #
    # 1.  Update the `WebACL` to remove `Rules`, if any. For more
    #     information, see UpdateWebACL.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `DeleteWebACL` request.
    #
    # 3.  Submit a `DeleteWebACL` request.
    #
    # @option params [required, String] :web_acl_id
    #   The `WebACLId` of the WebACL that you want to delete. `WebACLId` is
    #   returned by CreateWebACL and by ListWebACLs.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::DeleteWebACLResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteWebACLResponse#change_token #change_token} => String
    #
    #
    # @example Example: To delete a web ACL
    #
    #   # The following example deletes a web ACL with the ID example-46da-4444-5555-example.
    #
    #   resp = client.delete_web_acl({
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     web_acl_id: "example-46da-4444-5555-example", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_web_acl({
    #     web_acl_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteWebACL AWS API Documentation
    #
    # @overload delete_web_acl(params = {})
    # @param [Hash] params ({})
    def delete_web_acl(params = {}, options = {})
      req = build_request(:delete_web_acl, params)
      req.send_request(options)
    end

    # Permanently deletes an XssMatchSet. You can't delete an `XssMatchSet`
    # if it's still used in any `Rules` or if it still contains any
    # XssMatchTuple objects.
    #
    # If you just want to remove an `XssMatchSet` from a `Rule`, use
    # UpdateRule.
    #
    # To permanently delete an `XssMatchSet` from AWS WAF, perform the
    # following steps:
    #
    # 1.  Update the `XssMatchSet` to remove filters, if any. For more
    #     information, see UpdateXssMatchSet.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of a `DeleteXssMatchSet` request.
    #
    # 3.  Submit a `DeleteXssMatchSet` request.
    #
    # @option params [required, String] :xss_match_set_id
    #   The `XssMatchSetId` of the XssMatchSet that you want to delete.
    #   `XssMatchSetId` is returned by CreateXssMatchSet and by
    #   ListXssMatchSets.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::DeleteXssMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteXssMatchSetResponse#change_token #change_token} => String
    #
    #
    # @example Example: To delete an XSS match set
    #
    #   # The following example deletes an XSS match set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #
    #   resp = client.delete_xss_match_set({
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     xss_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_xss_match_set({
    #     xss_match_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteXssMatchSet AWS API Documentation
    #
    # @overload delete_xss_match_set(params = {})
    # @param [Hash] params ({})
    def delete_xss_match_set(params = {}, options = {})
      req = build_request(:delete_xss_match_set, params)
      req.send_request(options)
    end

    # Removes a web ACL from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN (Amazon Resource Name) of the resource from which the web ACL
    #   is being removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_web_acl({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DisassociateWebACL AWS API Documentation
    #
    # @overload disassociate_web_acl(params = {})
    # @param [Hash] params ({})
    def disassociate_web_acl(params = {}, options = {})
      req = build_request(:disassociate_web_acl, params)
      req.send_request(options)
    end

    # Returns the ByteMatchSet specified by `ByteMatchSetId`.
    #
    # @option params [required, String] :byte_match_set_id
    #   The `ByteMatchSetId` of the ByteMatchSet that you want to get.
    #   `ByteMatchSetId` is returned by CreateByteMatchSet and by
    #   ListByteMatchSets.
    #
    # @return [Types::GetByteMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetByteMatchSetResponse#byte_match_set #byte_match_set} => Types::ByteMatchSet
    #
    #
    # @example Example: To get a byte match set
    #
    #   # The following example returns the details of a byte match set with the ID exampleIDs3t-46da-4fdb-b8d5-abc321j569j5.
    #
    #   resp = client.get_byte_match_set({
    #     byte_match_set_id: "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     byte_match_set: {
    #       byte_match_set_id: "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5", 
    #       byte_match_tuples: [
    #         {
    #           field_to_match: {
    #             data: "referer", 
    #             type: "HEADER", 
    #           }, 
    #           positional_constraint: "CONTAINS", 
    #           target_string: "badrefer1", 
    #           text_transformation: "NONE", 
    #         }, 
    #       ], 
    #       name: "ByteMatchNameExample", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_byte_match_set({
    #     byte_match_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.byte_match_set.byte_match_set_id #=> String
    #   resp.byte_match_set.name #=> String
    #   resp.byte_match_set.byte_match_tuples #=> Array
    #   resp.byte_match_set.byte_match_tuples[0].field_to_match.type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"
    #   resp.byte_match_set.byte_match_tuples[0].field_to_match.data #=> String
    #   resp.byte_match_set.byte_match_tuples[0].target_string #=> String
    #   resp.byte_match_set.byte_match_tuples[0].text_transformation #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.byte_match_set.byte_match_tuples[0].positional_constraint #=> String, one of "EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetByteMatchSet AWS API Documentation
    #
    # @overload get_byte_match_set(params = {})
    # @param [Hash] params ({})
    def get_byte_match_set(params = {}, options = {})
      req = build_request(:get_byte_match_set, params)
      req.send_request(options)
    end

    # When you want to create, update, or delete AWS WAF objects, get a
    # change token and include the change token in the create, update, or
    # delete request. Change tokens ensure that your application doesn't
    # submit conflicting requests to AWS WAF.
    #
    # Each create, update, or delete request must use a unique change token.
    # If your application submits a `GetChangeToken` request and then
    # submits a second `GetChangeToken` request before submitting a create,
    # update, or delete request, the second `GetChangeToken` request returns
    # the same value as the first `GetChangeToken` request.
    #
    # When you use a change token in a create, update, or delete request,
    # the status of the change token changes to `PENDING`, which indicates
    # that AWS WAF is propagating the change to all AWS WAF servers. Use
    # `GetChangeTokenStatus` to determine the status of your change token.
    #
    # @return [Types::GetChangeTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChangeTokenResponse#change_token #change_token} => String
    #
    #
    # @example Example: To get a change token
    #
    #   # The following example returns a change token to use for a create, update or delete operation.
    #
    #   resp = client.get_change_token({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #   }
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetChangeToken AWS API Documentation
    #
    # @overload get_change_token(params = {})
    # @param [Hash] params ({})
    def get_change_token(params = {}, options = {})
      req = build_request(:get_change_token, params)
      req.send_request(options)
    end

    # Returns the status of a `ChangeToken` that you got by calling
    # GetChangeToken. `ChangeTokenStatus` is one of the following values:
    #
    # * `PROVISIONED`\: You requested the change token by calling
    #   `GetChangeToken`, but you haven't used it yet in a call to create,
    #   update, or delete an AWS WAF object.
    #
    # * `PENDING`\: AWS WAF is propagating the create, update, or delete
    #   request to all AWS WAF servers.
    #
    # * `IN_SYNC`\: Propagation is complete.
    #
    # @option params [required, String] :change_token
    #   The change token for which you want to get the status. This change
    #   token was previously returned in the `GetChangeToken` response.
    #
    # @return [Types::GetChangeTokenStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChangeTokenStatusResponse#change_token_status #change_token_status} => String
    #
    #
    # @example Example: To get the change token status
    #
    #   # The following example returns the status of a change token with the ID abcd12f2-46da-4fdb-b8d5-fbd4c466928f.
    #
    #   resp = client.get_change_token_status({
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token_status: "PENDING", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_change_token_status({
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token_status #=> String, one of "PROVISIONED", "PENDING", "INSYNC"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetChangeTokenStatus AWS API Documentation
    #
    # @overload get_change_token_status(params = {})
    # @param [Hash] params ({})
    def get_change_token_status(params = {}, options = {})
      req = build_request(:get_change_token_status, params)
      req.send_request(options)
    end

    # Returns the GeoMatchSet that is specified by `GeoMatchSetId`.
    #
    # @option params [required, String] :geo_match_set_id
    #   The `GeoMatchSetId` of the GeoMatchSet that you want to get.
    #   `GeoMatchSetId` is returned by CreateGeoMatchSet and by
    #   ListGeoMatchSets.
    #
    # @return [Types::GetGeoMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGeoMatchSetResponse#geo_match_set #geo_match_set} => Types::GeoMatchSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_geo_match_set({
    #     geo_match_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.geo_match_set.geo_match_set_id #=> String
    #   resp.geo_match_set.name #=> String
    #   resp.geo_match_set.geo_match_constraints #=> Array
    #   resp.geo_match_set.geo_match_constraints[0].type #=> String, one of "Country"
    #   resp.geo_match_set.geo_match_constraints[0].value #=> String, one of "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetGeoMatchSet AWS API Documentation
    #
    # @overload get_geo_match_set(params = {})
    # @param [Hash] params ({})
    def get_geo_match_set(params = {}, options = {})
      req = build_request(:get_geo_match_set, params)
      req.send_request(options)
    end

    # Returns the IPSet that is specified by `IPSetId`.
    #
    # @option params [required, String] :ip_set_id
    #   The `IPSetId` of the IPSet that you want to get. `IPSetId` is returned
    #   by CreateIPSet and by ListIPSets.
    #
    # @return [Types::GetIPSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIPSetResponse#ip_set #ip_set} => Types::IPSet
    #
    #
    # @example Example: To get an IP set
    #
    #   # The following example returns the details of an IP match set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #
    #   resp = client.get_ip_set({
    #     ip_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     ip_set: {
    #       ip_set_descriptors: [
    #         {
    #           type: "IPV4", 
    #           value: "192.0.2.44/32", 
    #         }, 
    #       ], 
    #       ip_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #       name: "MyIPSetFriendlyName", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ip_set({
    #     ip_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ip_set.ip_set_id #=> String
    #   resp.ip_set.name #=> String
    #   resp.ip_set.ip_set_descriptors #=> Array
    #   resp.ip_set.ip_set_descriptors[0].type #=> String, one of "IPV4", "IPV6"
    #   resp.ip_set.ip_set_descriptors[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetIPSet AWS API Documentation
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
    #   resp.logging_configuration.redacted_fields[0].type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"
    #   resp.logging_configuration.redacted_fields[0].data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetLoggingConfiguration AWS API Documentation
    #
    # @overload get_logging_configuration(params = {})
    # @param [Hash] params ({})
    def get_logging_configuration(params = {}, options = {})
      req = build_request(:get_logging_configuration, params)
      req.send_request(options)
    end

    # Returns the IAM policy attached to the RuleGroup.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the RuleGroup for which you want to
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetPermissionPolicy AWS API Documentation
    #
    # @overload get_permission_policy(params = {})
    # @param [Hash] params ({})
    def get_permission_policy(params = {}, options = {})
      req = build_request(:get_permission_policy, params)
      req.send_request(options)
    end

    # Returns the RateBasedRule that is specified by the `RuleId` that you
    # included in the `GetRateBasedRule` request.
    #
    # @option params [required, String] :rule_id
    #   The `RuleId` of the RateBasedRule that you want to get. `RuleId` is
    #   returned by CreateRateBasedRule and by ListRateBasedRules.
    #
    # @return [Types::GetRateBasedRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRateBasedRuleResponse#rule #rule} => Types::RateBasedRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rate_based_rule({
    #     rule_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule.rule_id #=> String
    #   resp.rule.name #=> String
    #   resp.rule.metric_name #=> String
    #   resp.rule.match_predicates #=> Array
    #   resp.rule.match_predicates[0].negated #=> Boolean
    #   resp.rule.match_predicates[0].type #=> String, one of "IPMatch", "ByteMatch", "SqlInjectionMatch", "GeoMatch", "SizeConstraint", "XssMatch", "RegexMatch"
    #   resp.rule.match_predicates[0].data_id #=> String
    #   resp.rule.rate_key #=> String, one of "IP"
    #   resp.rule.rate_limit #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetRateBasedRule AWS API Documentation
    #
    # @overload get_rate_based_rule(params = {})
    # @param [Hash] params ({})
    def get_rate_based_rule(params = {}, options = {})
      req = build_request(:get_rate_based_rule, params)
      req.send_request(options)
    end

    # Returns an array of IP addresses currently being blocked by the
    # RateBasedRule that is specified by the `RuleId`. The maximum number of
    # managed keys that will be blocked is 10,000. If more than 10,000
    # addresses exceed the rate limit, the 10,000 addresses with the highest
    # rates will be blocked.
    #
    # @option params [required, String] :rule_id
    #   The `RuleId` of the RateBasedRule for which you want to get a list of
    #   `ManagedKeys`. `RuleId` is returned by CreateRateBasedRule and by
    #   ListRateBasedRules.
    #
    # @option params [String] :next_marker
    #   A null value and not currently used. Do not include this in your
    #   request.
    #
    # @return [Types::GetRateBasedRuleManagedKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRateBasedRuleManagedKeysResponse#managed_keys #managed_keys} => Array&lt;String&gt;
    #   * {Types::GetRateBasedRuleManagedKeysResponse#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rate_based_rule_managed_keys({
    #     rule_id: "ResourceId", # required
    #     next_marker: "NextMarker",
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_keys #=> Array
    #   resp.managed_keys[0] #=> String
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetRateBasedRuleManagedKeys AWS API Documentation
    #
    # @overload get_rate_based_rule_managed_keys(params = {})
    # @param [Hash] params ({})
    def get_rate_based_rule_managed_keys(params = {}, options = {})
      req = build_request(:get_rate_based_rule_managed_keys, params)
      req.send_request(options)
    end

    # Returns the RegexMatchSet specified by `RegexMatchSetId`.
    #
    # @option params [required, String] :regex_match_set_id
    #   The `RegexMatchSetId` of the RegexMatchSet that you want to get.
    #   `RegexMatchSetId` is returned by CreateRegexMatchSet and by
    #   ListRegexMatchSets.
    #
    # @return [Types::GetRegexMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRegexMatchSetResponse#regex_match_set #regex_match_set} => Types::RegexMatchSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_regex_match_set({
    #     regex_match_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.regex_match_set.regex_match_set_id #=> String
    #   resp.regex_match_set.name #=> String
    #   resp.regex_match_set.regex_match_tuples #=> Array
    #   resp.regex_match_set.regex_match_tuples[0].field_to_match.type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"
    #   resp.regex_match_set.regex_match_tuples[0].field_to_match.data #=> String
    #   resp.regex_match_set.regex_match_tuples[0].text_transformation #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.regex_match_set.regex_match_tuples[0].regex_pattern_set_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetRegexMatchSet AWS API Documentation
    #
    # @overload get_regex_match_set(params = {})
    # @param [Hash] params ({})
    def get_regex_match_set(params = {}, options = {})
      req = build_request(:get_regex_match_set, params)
      req.send_request(options)
    end

    # Returns the RegexPatternSet specified by `RegexPatternSetId`.
    #
    # @option params [required, String] :regex_pattern_set_id
    #   The `RegexPatternSetId` of the RegexPatternSet that you want to get.
    #   `RegexPatternSetId` is returned by CreateRegexPatternSet and by
    #   ListRegexPatternSets.
    #
    # @return [Types::GetRegexPatternSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRegexPatternSetResponse#regex_pattern_set #regex_pattern_set} => Types::RegexPatternSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_regex_pattern_set({
    #     regex_pattern_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.regex_pattern_set.regex_pattern_set_id #=> String
    #   resp.regex_pattern_set.name #=> String
    #   resp.regex_pattern_set.regex_pattern_strings #=> Array
    #   resp.regex_pattern_set.regex_pattern_strings[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetRegexPatternSet AWS API Documentation
    #
    # @overload get_regex_pattern_set(params = {})
    # @param [Hash] params ({})
    def get_regex_pattern_set(params = {}, options = {})
      req = build_request(:get_regex_pattern_set, params)
      req.send_request(options)
    end

    # Returns the Rule that is specified by the `RuleId` that you included
    # in the `GetRule` request.
    #
    # @option params [required, String] :rule_id
    #   The `RuleId` of the Rule that you want to get. `RuleId` is returned by
    #   CreateRule and by ListRules.
    #
    # @return [Types::GetRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRuleResponse#rule #rule} => Types::Rule
    #
    #
    # @example Example: To get a rule
    #
    #   # The following example returns the details of a rule with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #
    #   resp = client.get_rule({
    #     rule_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     rule: {
    #       metric_name: "WAFByteHeaderRule", 
    #       name: "WAFByteHeaderRule", 
    #       predicates: [
    #         {
    #           data_id: "MyByteMatchSetID", 
    #           negated: false, 
    #           type: "ByteMatch", 
    #         }, 
    #       ], 
    #       rule_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rule({
    #     rule_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule.rule_id #=> String
    #   resp.rule.name #=> String
    #   resp.rule.metric_name #=> String
    #   resp.rule.predicates #=> Array
    #   resp.rule.predicates[0].negated #=> Boolean
    #   resp.rule.predicates[0].type #=> String, one of "IPMatch", "ByteMatch", "SqlInjectionMatch", "GeoMatch", "SizeConstraint", "XssMatch", "RegexMatch"
    #   resp.rule.predicates[0].data_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetRule AWS API Documentation
    #
    # @overload get_rule(params = {})
    # @param [Hash] params ({})
    def get_rule(params = {}, options = {})
      req = build_request(:get_rule, params)
      req.send_request(options)
    end

    # Returns the RuleGroup that is specified by the `RuleGroupId` that you
    # included in the `GetRuleGroup` request.
    #
    # To view the rules in a rule group, use ListActivatedRulesInRuleGroup.
    #
    # @option params [required, String] :rule_group_id
    #   The `RuleGroupId` of the RuleGroup that you want to get. `RuleGroupId`
    #   is returned by CreateRuleGroup and by ListRuleGroups.
    #
    # @return [Types::GetRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRuleGroupResponse#rule_group #rule_group} => Types::RuleGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rule_group({
    #     rule_group_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_group.rule_group_id #=> String
    #   resp.rule_group.name #=> String
    #   resp.rule_group.metric_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetRuleGroup AWS API Documentation
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
    # @option params [required, String] :web_acl_id
    #   The `WebACLId` of the `WebACL` for which you want `GetSampledRequests`
    #   to return a sample of requests.
    #
    # @option params [required, String] :rule_id
    #   `RuleId` is one of three values:
    #
    #   * The `RuleId` of the `Rule` or the `RuleGroupId` of the `RuleGroup`
    #     for which you want `GetSampledRequests` to return a sample of
    #     requests.
    #
    #   * `Default_Action`, which causes `GetSampledRequests` to return a
    #     sample of the requests that didn't match any of the rules in the
    #     specified `WebACL`.
    #
    # @option params [required, Types::TimeWindow] :time_window
    #   The start date and time and the end date and time of the range for
    #   which you want `GetSampledRequests` to return a sample of requests.
    #   Specify the date and time in the following format:
    #   `"2016-09-27T14:50Z"`. You can specify any time range in the previous
    #   three hours.
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
    #
    # @example Example: To get a sampled requests
    #
    #   # The following example returns detailed information about 100 requests --a sample-- that AWS WAF randomly selects from
    #   # among the first 5,000 requests that your AWS resource received between the time period 2016-09-27T15:50Z to
    #   # 2016-09-27T15:50Z.
    #
    #   resp = client.get_sampled_requests({
    #     max_items: 100, 
    #     rule_id: "WAFRule-1-Example", 
    #     time_window: {
    #       end_time: Time.parse("2016-09-27T15:50Z"), 
    #       start_time: Time.parse("2016-09-27T15:50Z"), 
    #     }, 
    #     web_acl_id: "createwebacl-1472061481310", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     population_size: 50, 
    #     sampled_requests: [
    #       {
    #         action: "BLOCK", 
    #         request: {
    #           client_ip: "192.0.2.44", 
    #           country: "US", 
    #           http_version: "HTTP/1.1", 
    #           headers: [
    #             {
    #               name: "User-Agent", 
    #               value: "BadBot ", 
    #             }, 
    #           ], 
    #           method: "HEAD", 
    #         }, 
    #         timestamp: Time.parse("2016-09-27T14:55Z"), 
    #         weight: 1, 
    #       }, 
    #     ], 
    #     time_window: {
    #       end_time: Time.parse("2016-09-27T15:50Z"), 
    #       start_time: Time.parse("2016-09-27T14:50Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sampled_requests({
    #     web_acl_id: "ResourceId", # required
    #     rule_id: "ResourceId", # required
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
    #   resp.sampled_requests[0].rule_within_rule_group #=> String
    #   resp.population_size #=> Integer
    #   resp.time_window.start_time #=> Time
    #   resp.time_window.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetSampledRequests AWS API Documentation
    #
    # @overload get_sampled_requests(params = {})
    # @param [Hash] params ({})
    def get_sampled_requests(params = {}, options = {})
      req = build_request(:get_sampled_requests, params)
      req.send_request(options)
    end

    # Returns the SizeConstraintSet specified by `SizeConstraintSetId`.
    #
    # @option params [required, String] :size_constraint_set_id
    #   The `SizeConstraintSetId` of the SizeConstraintSet that you want to
    #   get. `SizeConstraintSetId` is returned by CreateSizeConstraintSet and
    #   by ListSizeConstraintSets.
    #
    # @return [Types::GetSizeConstraintSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSizeConstraintSetResponse#size_constraint_set #size_constraint_set} => Types::SizeConstraintSet
    #
    #
    # @example Example: To get a size constraint set
    #
    #   # The following example returns the details of a size constraint match set with the ID
    #   # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #
    #   resp = client.get_size_constraint_set({
    #     size_constraint_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     size_constraint_set: {
    #       name: "MySampleSizeConstraintSet", 
    #       size_constraint_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #       size_constraints: [
    #         {
    #           comparison_operator: "GT", 
    #           field_to_match: {
    #             type: "QUERY_STRING", 
    #           }, 
    #           size: 0, 
    #           text_transformation: "NONE", 
    #         }, 
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_size_constraint_set({
    #     size_constraint_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.size_constraint_set.size_constraint_set_id #=> String
    #   resp.size_constraint_set.name #=> String
    #   resp.size_constraint_set.size_constraints #=> Array
    #   resp.size_constraint_set.size_constraints[0].field_to_match.type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"
    #   resp.size_constraint_set.size_constraints[0].field_to_match.data #=> String
    #   resp.size_constraint_set.size_constraints[0].text_transformation #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.size_constraint_set.size_constraints[0].comparison_operator #=> String, one of "EQ", "NE", "LE", "LT", "GE", "GT"
    #   resp.size_constraint_set.size_constraints[0].size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetSizeConstraintSet AWS API Documentation
    #
    # @overload get_size_constraint_set(params = {})
    # @param [Hash] params ({})
    def get_size_constraint_set(params = {}, options = {})
      req = build_request(:get_size_constraint_set, params)
      req.send_request(options)
    end

    # Returns the SqlInjectionMatchSet that is specified by
    # `SqlInjectionMatchSetId`.
    #
    # @option params [required, String] :sql_injection_match_set_id
    #   The `SqlInjectionMatchSetId` of the SqlInjectionMatchSet that you want
    #   to get. `SqlInjectionMatchSetId` is returned by
    #   CreateSqlInjectionMatchSet and by ListSqlInjectionMatchSets.
    #
    # @return [Types::GetSqlInjectionMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSqlInjectionMatchSetResponse#sql_injection_match_set #sql_injection_match_set} => Types::SqlInjectionMatchSet
    #
    #
    # @example Example: To get a SQL injection match set
    #
    #   # The following example returns the details of a SQL injection match set with the ID
    #   # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #
    #   resp = client.get_sql_injection_match_set({
    #     sql_injection_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     sql_injection_match_set: {
    #       name: "MySQLInjectionMatchSet", 
    #       sql_injection_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #       sql_injection_match_tuples: [
    #         {
    #           field_to_match: {
    #             type: "QUERY_STRING", 
    #           }, 
    #           text_transformation: "URL_DECODE", 
    #         }, 
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sql_injection_match_set({
    #     sql_injection_match_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sql_injection_match_set.sql_injection_match_set_id #=> String
    #   resp.sql_injection_match_set.name #=> String
    #   resp.sql_injection_match_set.sql_injection_match_tuples #=> Array
    #   resp.sql_injection_match_set.sql_injection_match_tuples[0].field_to_match.type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"
    #   resp.sql_injection_match_set.sql_injection_match_tuples[0].field_to_match.data #=> String
    #   resp.sql_injection_match_set.sql_injection_match_tuples[0].text_transformation #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetSqlInjectionMatchSet AWS API Documentation
    #
    # @overload get_sql_injection_match_set(params = {})
    # @param [Hash] params ({})
    def get_sql_injection_match_set(params = {}, options = {})
      req = build_request(:get_sql_injection_match_set, params)
      req.send_request(options)
    end

    # Returns the WebACL that is specified by `WebACLId`.
    #
    # @option params [required, String] :web_acl_id
    #   The `WebACLId` of the WebACL that you want to get. `WebACLId` is
    #   returned by CreateWebACL and by ListWebACLs.
    #
    # @return [Types::GetWebACLResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWebACLResponse#web_acl #web_acl} => Types::WebACL
    #
    #
    # @example Example: To get a web ACL
    #
    #   # The following example returns the details of a web ACL with the ID createwebacl-1472061481310.
    #
    #   resp = client.get_web_acl({
    #     web_acl_id: "createwebacl-1472061481310", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     web_acl: {
    #       default_action: {
    #         type: "ALLOW", 
    #       }, 
    #       metric_name: "CreateExample", 
    #       name: "CreateExample", 
    #       rules: [
    #         {
    #           action: {
    #             type: "ALLOW", 
    #           }, 
    #           priority: 1, 
    #           rule_id: "WAFRule-1-Example", 
    #         }, 
    #       ], 
    #       web_acl_id: "createwebacl-1472061481310", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_web_acl({
    #     web_acl_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.web_acl.web_acl_id #=> String
    #   resp.web_acl.name #=> String
    #   resp.web_acl.metric_name #=> String
    #   resp.web_acl.default_action.type #=> String, one of "BLOCK", "ALLOW", "COUNT"
    #   resp.web_acl.rules #=> Array
    #   resp.web_acl.rules[0].priority #=> Integer
    #   resp.web_acl.rules[0].rule_id #=> String
    #   resp.web_acl.rules[0].action.type #=> String, one of "BLOCK", "ALLOW", "COUNT"
    #   resp.web_acl.rules[0].override_action.type #=> String, one of "NONE", "COUNT"
    #   resp.web_acl.rules[0].type #=> String, one of "REGULAR", "RATE_BASED", "GROUP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetWebACL AWS API Documentation
    #
    # @overload get_web_acl(params = {})
    # @param [Hash] params ({})
    def get_web_acl(params = {}, options = {})
      req = build_request(:get_web_acl, params)
      req.send_request(options)
    end

    # Returns the web ACL for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN (Amazon Resource Name) of the resource for which to get the
    #   web ACL.
    #
    # @return [Types::GetWebACLForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWebACLForResourceResponse#web_acl_summary #web_acl_summary} => Types::WebACLSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_web_acl_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.web_acl_summary.web_acl_id #=> String
    #   resp.web_acl_summary.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetWebACLForResource AWS API Documentation
    #
    # @overload get_web_acl_for_resource(params = {})
    # @param [Hash] params ({})
    def get_web_acl_for_resource(params = {}, options = {})
      req = build_request(:get_web_acl_for_resource, params)
      req.send_request(options)
    end

    # Returns the XssMatchSet that is specified by `XssMatchSetId`.
    #
    # @option params [required, String] :xss_match_set_id
    #   The `XssMatchSetId` of the XssMatchSet that you want to get.
    #   `XssMatchSetId` is returned by CreateXssMatchSet and by
    #   ListXssMatchSets.
    #
    # @return [Types::GetXssMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetXssMatchSetResponse#xss_match_set #xss_match_set} => Types::XssMatchSet
    #
    #
    # @example Example: To get an XSS match set
    #
    #   # The following example returns the details of an XSS match set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #
    #   resp = client.get_xss_match_set({
    #     xss_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     xss_match_set: {
    #       name: "MySampleXssMatchSet", 
    #       xss_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #       xss_match_tuples: [
    #         {
    #           field_to_match: {
    #             type: "QUERY_STRING", 
    #           }, 
    #           text_transformation: "URL_DECODE", 
    #         }, 
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_xss_match_set({
    #     xss_match_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.xss_match_set.xss_match_set_id #=> String
    #   resp.xss_match_set.name #=> String
    #   resp.xss_match_set.xss_match_tuples #=> Array
    #   resp.xss_match_set.xss_match_tuples[0].field_to_match.type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"
    #   resp.xss_match_set.xss_match_tuples[0].field_to_match.data #=> String
    #   resp.xss_match_set.xss_match_tuples[0].text_transformation #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetXssMatchSet AWS API Documentation
    #
    # @overload get_xss_match_set(params = {})
    # @param [Hash] params ({})
    def get_xss_match_set(params = {}, options = {})
      req = build_request(:get_xss_match_set, params)
      req.send_request(options)
    end

    # Returns an array of ActivatedRule objects.
    #
    # @option params [String] :rule_group_id
    #   The `RuleGroupId` of the RuleGroup for which you want to get a list of
    #   ActivatedRule objects.
    #
    # @option params [String] :next_marker
    #   If you specify a value for `Limit` and you have more `ActivatedRules`
    #   than the value of `Limit`, AWS WAF returns a `NextMarker` value in the
    #   response that allows you to list another group of `ActivatedRules`.
    #   For the second and subsequent `ListActivatedRulesInRuleGroup`
    #   requests, specify the value of `NextMarker` from the previous response
    #   to get information about another batch of `ActivatedRules`.
    #
    # @option params [Integer] :limit
    #   Specifies the number of `ActivatedRules` that you want AWS WAF to
    #   return for this request. If you have more `ActivatedRules` than the
    #   number that you specify for `Limit`, the response includes a
    #   `NextMarker` value that you can use to get another batch of
    #   `ActivatedRules`.
    #
    # @return [Types::ListActivatedRulesInRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListActivatedRulesInRuleGroupResponse#next_marker #next_marker} => String
    #   * {Types::ListActivatedRulesInRuleGroupResponse#activated_rules #activated_rules} => Array&lt;Types::ActivatedRule&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_activated_rules_in_rule_group({
    #     rule_group_id: "ResourceId",
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.activated_rules #=> Array
    #   resp.activated_rules[0].priority #=> Integer
    #   resp.activated_rules[0].rule_id #=> String
    #   resp.activated_rules[0].action.type #=> String, one of "BLOCK", "ALLOW", "COUNT"
    #   resp.activated_rules[0].override_action.type #=> String, one of "NONE", "COUNT"
    #   resp.activated_rules[0].type #=> String, one of "REGULAR", "RATE_BASED", "GROUP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListActivatedRulesInRuleGroup AWS API Documentation
    #
    # @overload list_activated_rules_in_rule_group(params = {})
    # @param [Hash] params ({})
    def list_activated_rules_in_rule_group(params = {}, options = {})
      req = build_request(:list_activated_rules_in_rule_group, params)
      req.send_request(options)
    end

    # Returns an array of ByteMatchSetSummary objects.
    #
    # @option params [String] :next_marker
    #   If you specify a value for `Limit` and you have more `ByteMatchSets`
    #   than the value of `Limit`, AWS WAF returns a `NextMarker` value in the
    #   response that allows you to list another group of `ByteMatchSets`. For
    #   the second and subsequent `ListByteMatchSets` requests, specify the
    #   value of `NextMarker` from the previous response to get information
    #   about another batch of `ByteMatchSets`.
    #
    # @option params [Integer] :limit
    #   Specifies the number of `ByteMatchSet` objects that you want AWS WAF
    #   to return for this request. If you have more `ByteMatchSets` objects
    #   than the number you specify for `Limit`, the response includes a
    #   `NextMarker` value that you can use to get another batch of
    #   `ByteMatchSet` objects.
    #
    # @return [Types::ListByteMatchSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListByteMatchSetsResponse#next_marker #next_marker} => String
    #   * {Types::ListByteMatchSetsResponse#byte_match_sets #byte_match_sets} => Array&lt;Types::ByteMatchSetSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_byte_match_sets({
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.byte_match_sets #=> Array
    #   resp.byte_match_sets[0].byte_match_set_id #=> String
    #   resp.byte_match_sets[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListByteMatchSets AWS API Documentation
    #
    # @overload list_byte_match_sets(params = {})
    # @param [Hash] params ({})
    def list_byte_match_sets(params = {}, options = {})
      req = build_request(:list_byte_match_sets, params)
      req.send_request(options)
    end

    # Returns an array of GeoMatchSetSummary objects in the response.
    #
    # @option params [String] :next_marker
    #   If you specify a value for `Limit` and you have more `GeoMatchSet`s
    #   than the value of `Limit`, AWS WAF returns a `NextMarker` value in the
    #   response that allows you to list another group of `GeoMatchSet`
    #   objects. For the second and subsequent `ListGeoMatchSets` requests,
    #   specify the value of `NextMarker` from the previous response to get
    #   information about another batch of `GeoMatchSet` objects.
    #
    # @option params [Integer] :limit
    #   Specifies the number of `GeoMatchSet` objects that you want AWS WAF to
    #   return for this request. If you have more `GeoMatchSet` objects than
    #   the number you specify for `Limit`, the response includes a
    #   `NextMarker` value that you can use to get another batch of
    #   `GeoMatchSet` objects.
    #
    # @return [Types::ListGeoMatchSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGeoMatchSetsResponse#next_marker #next_marker} => String
    #   * {Types::ListGeoMatchSetsResponse#geo_match_sets #geo_match_sets} => Array&lt;Types::GeoMatchSetSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_geo_match_sets({
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.geo_match_sets #=> Array
    #   resp.geo_match_sets[0].geo_match_set_id #=> String
    #   resp.geo_match_sets[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListGeoMatchSets AWS API Documentation
    #
    # @overload list_geo_match_sets(params = {})
    # @param [Hash] params ({})
    def list_geo_match_sets(params = {}, options = {})
      req = build_request(:list_geo_match_sets, params)
      req.send_request(options)
    end

    # Returns an array of IPSetSummary objects in the response.
    #
    # @option params [String] :next_marker
    #   If you specify a value for `Limit` and you have more `IPSets` than the
    #   value of `Limit`, AWS WAF returns a `NextMarker` value in the response
    #   that allows you to list another group of `IPSets`. For the second and
    #   subsequent `ListIPSets` requests, specify the value of `NextMarker`
    #   from the previous response to get information about another batch of
    #   `IPSets`.
    #
    # @option params [Integer] :limit
    #   Specifies the number of `IPSet` objects that you want AWS WAF to
    #   return for this request. If you have more `IPSet` objects than the
    #   number you specify for `Limit`, the response includes a `NextMarker`
    #   value that you can use to get another batch of `IPSet` objects.
    #
    # @return [Types::ListIPSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIPSetsResponse#next_marker #next_marker} => String
    #   * {Types::ListIPSetsResponse#ip_sets #ip_sets} => Array&lt;Types::IPSetSummary&gt;
    #
    #
    # @example Example: To list IP sets
    #
    #   # The following example returns an array of up to 100 IP match sets.
    #
    #   resp = client.list_ip_sets({
    #     limit: 100, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     ip_sets: [
    #       {
    #         ip_set_id: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #         name: "MyIPSetFriendlyName", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ip_sets({
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.ip_sets #=> Array
    #   resp.ip_sets[0].ip_set_id #=> String
    #   resp.ip_sets[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListIPSets AWS API Documentation
    #
    # @overload list_ip_sets(params = {})
    # @param [Hash] params ({})
    def list_ip_sets(params = {}, options = {})
      req = build_request(:list_ip_sets, params)
      req.send_request(options)
    end

    # Returns an array of LoggingConfiguration objects.
    #
    # @option params [String] :next_marker
    #   If you specify a value for `Limit` and you have more
    #   `LoggingConfigurations` than the value of `Limit`, AWS WAF returns a
    #   `NextMarker` value in the response that allows you to list another
    #   group of `LoggingConfigurations`. For the second and subsequent
    #   `ListLoggingConfigurations` requests, specify the value of
    #   `NextMarker` from the previous response to get information about
    #   another batch of `ListLoggingConfigurations`.
    #
    # @option params [Integer] :limit
    #   Specifies the number of `LoggingConfigurations` that you want AWS WAF
    #   to return for this request. If you have more `LoggingConfigurations`
    #   than the number that you specify for `Limit`, the response includes a
    #   `NextMarker` value that you can use to get another batch of
    #   `LoggingConfigurations`.
    #
    # @return [Types::ListLoggingConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLoggingConfigurationsResponse#logging_configurations #logging_configurations} => Array&lt;Types::LoggingConfiguration&gt;
    #   * {Types::ListLoggingConfigurationsResponse#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_logging_configurations({
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
    #   resp.logging_configurations[0].redacted_fields[0].type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"
    #   resp.logging_configurations[0].redacted_fields[0].data #=> String
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListLoggingConfigurations AWS API Documentation
    #
    # @overload list_logging_configurations(params = {})
    # @param [Hash] params ({})
    def list_logging_configurations(params = {}, options = {})
      req = build_request(:list_logging_configurations, params)
      req.send_request(options)
    end

    # Returns an array of RuleSummary objects.
    #
    # @option params [String] :next_marker
    #   If you specify a value for `Limit` and you have more `Rules` than the
    #   value of `Limit`, AWS WAF returns a `NextMarker` value in the response
    #   that allows you to list another group of `Rules`. For the second and
    #   subsequent `ListRateBasedRules` requests, specify the value of
    #   `NextMarker` from the previous response to get information about
    #   another batch of `Rules`.
    #
    # @option params [Integer] :limit
    #   Specifies the number of `Rules` that you want AWS WAF to return for
    #   this request. If you have more `Rules` than the number that you
    #   specify for `Limit`, the response includes a `NextMarker` value that
    #   you can use to get another batch of `Rules`.
    #
    # @return [Types::ListRateBasedRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRateBasedRulesResponse#next_marker #next_marker} => String
    #   * {Types::ListRateBasedRulesResponse#rules #rules} => Array&lt;Types::RuleSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rate_based_rules({
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.rules #=> Array
    #   resp.rules[0].rule_id #=> String
    #   resp.rules[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListRateBasedRules AWS API Documentation
    #
    # @overload list_rate_based_rules(params = {})
    # @param [Hash] params ({})
    def list_rate_based_rules(params = {}, options = {})
      req = build_request(:list_rate_based_rules, params)
      req.send_request(options)
    end

    # Returns an array of RegexMatchSetSummary objects.
    #
    # @option params [String] :next_marker
    #   If you specify a value for `Limit` and you have more `RegexMatchSet`
    #   objects than the value of `Limit`, AWS WAF returns a `NextMarker`
    #   value in the response that allows you to list another group of
    #   `ByteMatchSets`. For the second and subsequent `ListRegexMatchSets`
    #   requests, specify the value of `NextMarker` from the previous response
    #   to get information about another batch of `RegexMatchSet` objects.
    #
    # @option params [Integer] :limit
    #   Specifies the number of `RegexMatchSet` objects that you want AWS WAF
    #   to return for this request. If you have more `RegexMatchSet` objects
    #   than the number you specify for `Limit`, the response includes a
    #   `NextMarker` value that you can use to get another batch of
    #   `RegexMatchSet` objects.
    #
    # @return [Types::ListRegexMatchSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRegexMatchSetsResponse#next_marker #next_marker} => String
    #   * {Types::ListRegexMatchSetsResponse#regex_match_sets #regex_match_sets} => Array&lt;Types::RegexMatchSetSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_regex_match_sets({
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.regex_match_sets #=> Array
    #   resp.regex_match_sets[0].regex_match_set_id #=> String
    #   resp.regex_match_sets[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListRegexMatchSets AWS API Documentation
    #
    # @overload list_regex_match_sets(params = {})
    # @param [Hash] params ({})
    def list_regex_match_sets(params = {}, options = {})
      req = build_request(:list_regex_match_sets, params)
      req.send_request(options)
    end

    # Returns an array of RegexPatternSetSummary objects.
    #
    # @option params [String] :next_marker
    #   If you specify a value for `Limit` and you have more `RegexPatternSet`
    #   objects than the value of `Limit`, AWS WAF returns a `NextMarker`
    #   value in the response that allows you to list another group of
    #   `RegexPatternSet` objects. For the second and subsequent
    #   `ListRegexPatternSets` requests, specify the value of `NextMarker`
    #   from the previous response to get information about another batch of
    #   `RegexPatternSet` objects.
    #
    # @option params [Integer] :limit
    #   Specifies the number of `RegexPatternSet` objects that you want AWS
    #   WAF to return for this request. If you have more `RegexPatternSet`
    #   objects than the number you specify for `Limit`, the response includes
    #   a `NextMarker` value that you can use to get another batch of
    #   `RegexPatternSet` objects.
    #
    # @return [Types::ListRegexPatternSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRegexPatternSetsResponse#next_marker #next_marker} => String
    #   * {Types::ListRegexPatternSetsResponse#regex_pattern_sets #regex_pattern_sets} => Array&lt;Types::RegexPatternSetSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_regex_pattern_sets({
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.regex_pattern_sets #=> Array
    #   resp.regex_pattern_sets[0].regex_pattern_set_id #=> String
    #   resp.regex_pattern_sets[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListRegexPatternSets AWS API Documentation
    #
    # @overload list_regex_pattern_sets(params = {})
    # @param [Hash] params ({})
    def list_regex_pattern_sets(params = {}, options = {})
      req = build_request(:list_regex_pattern_sets, params)
      req.send_request(options)
    end

    # Returns an array of resources associated with the specified web ACL.
    #
    # @option params [required, String] :web_acl_id
    #   The unique identifier (ID) of the web ACL for which to list the
    #   associated resources.
    #
    # @return [Types::ListResourcesForWebACLResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourcesForWebACLResponse#resource_arns #resource_arns} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources_for_web_acl({
    #     web_acl_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arns #=> Array
    #   resp.resource_arns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListResourcesForWebACL AWS API Documentation
    #
    # @overload list_resources_for_web_acl(params = {})
    # @param [Hash] params ({})
    def list_resources_for_web_acl(params = {}, options = {})
      req = build_request(:list_resources_for_web_acl, params)
      req.send_request(options)
    end

    # Returns an array of RuleGroup objects.
    #
    # @option params [String] :next_marker
    #   If you specify a value for `Limit` and you have more `RuleGroups` than
    #   the value of `Limit`, AWS WAF returns a `NextMarker` value in the
    #   response that allows you to list another group of `RuleGroups`. For
    #   the second and subsequent `ListRuleGroups` requests, specify the value
    #   of `NextMarker` from the previous response to get information about
    #   another batch of `RuleGroups`.
    #
    # @option params [Integer] :limit
    #   Specifies the number of `RuleGroups` that you want AWS WAF to return
    #   for this request. If you have more `RuleGroups` than the number that
    #   you specify for `Limit`, the response includes a `NextMarker` value
    #   that you can use to get another batch of `RuleGroups`.
    #
    # @return [Types::ListRuleGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRuleGroupsResponse#next_marker #next_marker} => String
    #   * {Types::ListRuleGroupsResponse#rule_groups #rule_groups} => Array&lt;Types::RuleGroupSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rule_groups({
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.rule_groups #=> Array
    #   resp.rule_groups[0].rule_group_id #=> String
    #   resp.rule_groups[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListRuleGroups AWS API Documentation
    #
    # @overload list_rule_groups(params = {})
    # @param [Hash] params ({})
    def list_rule_groups(params = {}, options = {})
      req = build_request(:list_rule_groups, params)
      req.send_request(options)
    end

    # Returns an array of RuleSummary objects.
    #
    # @option params [String] :next_marker
    #   If you specify a value for `Limit` and you have more `Rules` than the
    #   value of `Limit`, AWS WAF returns a `NextMarker` value in the response
    #   that allows you to list another group of `Rules`. For the second and
    #   subsequent `ListRules` requests, specify the value of `NextMarker`
    #   from the previous response to get information about another batch of
    #   `Rules`.
    #
    # @option params [Integer] :limit
    #   Specifies the number of `Rules` that you want AWS WAF to return for
    #   this request. If you have more `Rules` than the number that you
    #   specify for `Limit`, the response includes a `NextMarker` value that
    #   you can use to get another batch of `Rules`.
    #
    # @return [Types::ListRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRulesResponse#next_marker #next_marker} => String
    #   * {Types::ListRulesResponse#rules #rules} => Array&lt;Types::RuleSummary&gt;
    #
    #
    # @example Example: To list rules
    #
    #   # The following example returns an array of up to 100 rules.
    #
    #   resp = client.list_rules({
    #     limit: 100, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     rules: [
    #       {
    #         name: "WAFByteHeaderRule", 
    #         rule_id: "WAFRule-1-Example", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rules({
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.rules #=> Array
    #   resp.rules[0].rule_id #=> String
    #   resp.rules[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListRules AWS API Documentation
    #
    # @overload list_rules(params = {})
    # @param [Hash] params ({})
    def list_rules(params = {}, options = {})
      req = build_request(:list_rules, params)
      req.send_request(options)
    end

    # Returns an array of SizeConstraintSetSummary objects.
    #
    # @option params [String] :next_marker
    #   If you specify a value for `Limit` and you have more
    #   `SizeConstraintSets` than the value of `Limit`, AWS WAF returns a
    #   `NextMarker` value in the response that allows you to list another
    #   group of `SizeConstraintSets`. For the second and subsequent
    #   `ListSizeConstraintSets` requests, specify the value of `NextMarker`
    #   from the previous response to get information about another batch of
    #   `SizeConstraintSets`.
    #
    # @option params [Integer] :limit
    #   Specifies the number of `SizeConstraintSet` objects that you want AWS
    #   WAF to return for this request. If you have more `SizeConstraintSets`
    #   objects than the number you specify for `Limit`, the response includes
    #   a `NextMarker` value that you can use to get another batch of
    #   `SizeConstraintSet` objects.
    #
    # @return [Types::ListSizeConstraintSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSizeConstraintSetsResponse#next_marker #next_marker} => String
    #   * {Types::ListSizeConstraintSetsResponse#size_constraint_sets #size_constraint_sets} => Array&lt;Types::SizeConstraintSetSummary&gt;
    #
    #
    # @example Example: To list a size constraint sets
    #
    #   # The following example returns an array of up to 100 size contraint match sets.
    #
    #   resp = client.list_size_constraint_sets({
    #     limit: 100, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     size_constraint_sets: [
    #       {
    #         name: "MySampleSizeConstraintSet", 
    #         size_constraint_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_size_constraint_sets({
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.size_constraint_sets #=> Array
    #   resp.size_constraint_sets[0].size_constraint_set_id #=> String
    #   resp.size_constraint_sets[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListSizeConstraintSets AWS API Documentation
    #
    # @overload list_size_constraint_sets(params = {})
    # @param [Hash] params ({})
    def list_size_constraint_sets(params = {}, options = {})
      req = build_request(:list_size_constraint_sets, params)
      req.send_request(options)
    end

    # Returns an array of SqlInjectionMatchSet objects.
    #
    # @option params [String] :next_marker
    #   If you specify a value for `Limit` and you have more
    #   SqlInjectionMatchSet objects than the value of `Limit`, AWS WAF
    #   returns a `NextMarker` value in the response that allows you to list
    #   another group of `SqlInjectionMatchSets`. For the second and
    #   subsequent `ListSqlInjectionMatchSets` requests, specify the value of
    #   `NextMarker` from the previous response to get information about
    #   another batch of `SqlInjectionMatchSets`.
    #
    # @option params [Integer] :limit
    #   Specifies the number of SqlInjectionMatchSet objects that you want AWS
    #   WAF to return for this request. If you have more
    #   `SqlInjectionMatchSet` objects than the number you specify for
    #   `Limit`, the response includes a `NextMarker` value that you can use
    #   to get another batch of `Rules`.
    #
    # @return [Types::ListSqlInjectionMatchSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSqlInjectionMatchSetsResponse#next_marker #next_marker} => String
    #   * {Types::ListSqlInjectionMatchSetsResponse#sql_injection_match_sets #sql_injection_match_sets} => Array&lt;Types::SqlInjectionMatchSetSummary&gt;
    #
    #
    # @example Example: To list SQL injection match sets
    #
    #   # The following example returns an array of up to 100 SQL injection match sets.
    #
    #   resp = client.list_sql_injection_match_sets({
    #     limit: 100, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     sql_injection_match_sets: [
    #       {
    #         name: "MySQLInjectionMatchSet", 
    #         sql_injection_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sql_injection_match_sets({
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.sql_injection_match_sets #=> Array
    #   resp.sql_injection_match_sets[0].sql_injection_match_set_id #=> String
    #   resp.sql_injection_match_sets[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListSqlInjectionMatchSets AWS API Documentation
    #
    # @overload list_sql_injection_match_sets(params = {})
    # @param [Hash] params ({})
    def list_sql_injection_match_sets(params = {}, options = {})
      req = build_request(:list_sql_injection_match_sets, params)
      req.send_request(options)
    end

    # Returns an array of RuleGroup objects that you are subscribed to.
    #
    # @option params [String] :next_marker
    #   If you specify a value for `Limit` and you have more
    #   `ByteMatchSets`subscribed rule groups than the value of `Limit`, AWS
    #   WAF returns a `NextMarker` value in the response that allows you to
    #   list another group of subscribed rule groups. For the second and
    #   subsequent `ListSubscribedRuleGroupsRequest` requests, specify the
    #   value of `NextMarker` from the previous response to get information
    #   about another batch of subscribed rule groups.
    #
    # @option params [Integer] :limit
    #   Specifies the number of subscribed rule groups that you want AWS WAF
    #   to return for this request. If you have more objects than the number
    #   you specify for `Limit`, the response includes a `NextMarker` value
    #   that you can use to get another batch of objects.
    #
    # @return [Types::ListSubscribedRuleGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSubscribedRuleGroupsResponse#next_marker #next_marker} => String
    #   * {Types::ListSubscribedRuleGroupsResponse#rule_groups #rule_groups} => Array&lt;Types::SubscribedRuleGroupSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscribed_rule_groups({
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.rule_groups #=> Array
    #   resp.rule_groups[0].rule_group_id #=> String
    #   resp.rule_groups[0].name #=> String
    #   resp.rule_groups[0].metric_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListSubscribedRuleGroups AWS API Documentation
    #
    # @overload list_subscribed_rule_groups(params = {})
    # @param [Hash] params ({})
    def list_subscribed_rule_groups(params = {}, options = {})
      req = build_request(:list_subscribed_rule_groups, params)
      req.send_request(options)
    end

    # Returns an array of WebACLSummary objects in the response.
    #
    # @option params [String] :next_marker
    #   If you specify a value for `Limit` and you have more `WebACL` objects
    #   than the number that you specify for `Limit`, AWS WAF returns a
    #   `NextMarker` value in the response that allows you to list another
    #   group of `WebACL` objects. For the second and subsequent `ListWebACLs`
    #   requests, specify the value of `NextMarker` from the previous response
    #   to get information about another batch of `WebACL` objects.
    #
    # @option params [Integer] :limit
    #   Specifies the number of `WebACL` objects that you want AWS WAF to
    #   return for this request. If you have more `WebACL` objects than the
    #   number that you specify for `Limit`, the response includes a
    #   `NextMarker` value that you can use to get another batch of `WebACL`
    #   objects.
    #
    # @return [Types::ListWebACLsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWebACLsResponse#next_marker #next_marker} => String
    #   * {Types::ListWebACLsResponse#web_acls #web_acls} => Array&lt;Types::WebACLSummary&gt;
    #
    #
    # @example Example: To list Web ACLs
    #
    #   # The following example returns an array of up to 100 web ACLs.
    #
    #   resp = client.list_web_acls({
    #     limit: 100, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     web_acls: [
    #       {
    #         name: "WebACLexample", 
    #         web_acl_id: "webacl-1472061481310", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_web_acls({
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.web_acls #=> Array
    #   resp.web_acls[0].web_acl_id #=> String
    #   resp.web_acls[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListWebACLs AWS API Documentation
    #
    # @overload list_web_acls(params = {})
    # @param [Hash] params ({})
    def list_web_acls(params = {}, options = {})
      req = build_request(:list_web_acls, params)
      req.send_request(options)
    end

    # Returns an array of XssMatchSet objects.
    #
    # @option params [String] :next_marker
    #   If you specify a value for `Limit` and you have more XssMatchSet
    #   objects than the value of `Limit`, AWS WAF returns a `NextMarker`
    #   value in the response that allows you to list another group of
    #   `XssMatchSets`. For the second and subsequent `ListXssMatchSets`
    #   requests, specify the value of `NextMarker` from the previous response
    #   to get information about another batch of `XssMatchSets`.
    #
    # @option params [Integer] :limit
    #   Specifies the number of XssMatchSet objects that you want AWS WAF to
    #   return for this request. If you have more `XssMatchSet` objects than
    #   the number you specify for `Limit`, the response includes a
    #   `NextMarker` value that you can use to get another batch of `Rules`.
    #
    # @return [Types::ListXssMatchSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListXssMatchSetsResponse#next_marker #next_marker} => String
    #   * {Types::ListXssMatchSetsResponse#xss_match_sets #xss_match_sets} => Array&lt;Types::XssMatchSetSummary&gt;
    #
    #
    # @example Example: To list XSS match sets
    #
    #   # The following example returns an array of up to 100 XSS match sets.
    #
    #   resp = client.list_xss_match_sets({
    #     limit: 100, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     xss_match_sets: [
    #       {
    #         name: "MySampleXssMatchSet", 
    #         xss_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_xss_match_sets({
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.xss_match_sets #=> Array
    #   resp.xss_match_sets[0].xss_match_set_id #=> String
    #   resp.xss_match_sets[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListXssMatchSets AWS API Documentation
    #
    # @overload list_xss_match_sets(params = {})
    # @param [Hash] params ({})
    def list_xss_match_sets(params = {}, options = {})
      req = build_request(:list_xss_match_sets, params)
      req.send_request(options)
    end

    # Associates a LoggingConfiguration with a specified web ACL.
    #
    # You can access information about all traffic that AWS WAF inspects
    # using the following steps:
    #
    # 1.  Create an Amazon Kinesis Data Firehose delivery stream. For more
    #     information, see [Creating an Amazon Kinesis Data Firehose
    #     Delivery Stream][1].
    #
    # 2.  Associate that delivery stream to your web ACL using a
    #     `PutLoggingConfiguration` request.
    #
    # When you successfully enable logging using a `PutLoggingConfiguration`
    # request, AWS WAF will create a service linked role with the necessary
    # permissions to write logs to the Amazon Kinesis Data Firehose delivery
    # stream. For more information, see [Logging Web ACL Traffic
    # Information][2] in the *AWS WAF Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/firehose/latest/dev/what-is-this-service.html
    # [2]: http://docs.aws.amazon.com/waf/latest/developerguide/logging.html
    #
    # @option params [required, Types::LoggingConfiguration] :logging_configuration
    #   The Amazon Kinesis Data Firehose delivery streams that contains the
    #   inspected traffic information, the redacted fields details, and the
    #   Amazon Resource Name (ARN) of the web ACL to monitor.
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
    #           type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #           data: "MatchFieldData",
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.logging_configuration.resource_arn #=> String
    #   resp.logging_configuration.log_destination_configs #=> Array
    #   resp.logging_configuration.log_destination_configs[0] #=> String
    #   resp.logging_configuration.redacted_fields #=> Array
    #   resp.logging_configuration.redacted_fields[0].type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"
    #   resp.logging_configuration.redacted_fields[0].data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/PutLoggingConfiguration AWS API Documentation
    #
    # @overload put_logging_configuration(params = {})
    # @param [Hash] params ({})
    def put_logging_configuration(params = {}, options = {})
      req = build_request(:put_logging_configuration, params)
      req.send_request(options)
    end

    # Attaches a IAM policy to the specified resource. The only supported
    # use for this action is to share a RuleGroup across accounts.
    #
    # The `PutPermissionPolicy` is subject to the following restrictions:
    #
    # * You can attach only one policy with each `PutPermissionPolicy`
    #   request.
    #
    # * The policy must include an `Effect`, `Action` and `Principal`.
    #
    # * `Effect` must specify `Allow`.
    #
    # * The `Action` in the policy must be `waf:UpdateWebACL`,
    #   `waf-regional:UpdateWebACL`, `waf:GetRuleGroup` and
    #   `waf-regional:GetRuleGroup` . Any extra or wildcard actions in the
    #   policy will be rejected.
    #
    # * The policy cannot include a `Resource` parameter.
    #
    # * The ARN in the request must be a valid WAF RuleGroup ARN and the
    #   RuleGroup must exist in the same region.
    #
    # * The user making the request must be the owner of the RuleGroup.
    #
    # * Your policy must be composed using IAM Policy version 2012-10-17.
    #
    # For more information, see [IAM Policies][1].
    #
    # An example of a valid policy parameter is shown in the Examples
    # section below.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the RuleGroup to which you want to
    #   attach the policy.
    #
    # @option params [required, String] :policy
    #   The policy to attach to the specified RuleGroup.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/PutPermissionPolicy AWS API Documentation
    #
    # @overload put_permission_policy(params = {})
    # @param [Hash] params ({})
    def put_permission_policy(params = {}, options = {})
      req = build_request(:put_permission_policy, params)
      req.send_request(options)
    end

    # Inserts or deletes ByteMatchTuple objects (filters) in a ByteMatchSet.
    # For each `ByteMatchTuple` object, you specify the following values:
    #
    # * Whether to insert or delete the object from the array. If you want
    #   to change a `ByteMatchSetUpdate` object, you delete the existing
    #   object and add a new one.
    #
    # * The part of a web request that you want AWS WAF to inspect, such as
    #   a query string or the value of the `User-Agent` header.
    #
    # * The bytes (typically a string that corresponds with ASCII
    #   characters) that you want AWS WAF to look for. For more information,
    #   including how you specify the values for the AWS WAF API and the AWS
    #   CLI or SDKs, see `TargetString` in the ByteMatchTuple data type.
    #
    # * Where to look, such as at the beginning or the end of a query
    #   string.
    #
    # * Whether to perform any conversions on the request, such as
    #   converting it to lowercase, before inspecting it for the specified
    #   string.
    #
    # For example, you can add a `ByteMatchSetUpdate` object that matches
    # web requests in which `User-Agent` headers contain the string
    # `BadBot`. You can then configure AWS WAF to block those requests.
    #
    # To create and configure a `ByteMatchSet`, perform the following steps:
    #
    # 1.  Create a `ByteMatchSet.` For more information, see
    #     CreateByteMatchSet.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of an `UpdateByteMatchSet` request.
    #
    # 3.  Submit an `UpdateByteMatchSet` request to specify the part of the
    #     request that you want AWS WAF to inspect (for example, the header
    #     or the URI) and the value that you want AWS WAF to watch for.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :byte_match_set_id
    #   The `ByteMatchSetId` of the ByteMatchSet that you want to update.
    #   `ByteMatchSetId` is returned by CreateByteMatchSet and by
    #   ListByteMatchSets.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @option params [required, Array<Types::ByteMatchSetUpdate>] :updates
    #   An array of `ByteMatchSetUpdate` objects that you want to insert into
    #   or delete from a ByteMatchSet. For more information, see the
    #   applicable data types:
    #
    #   * ByteMatchSetUpdate: Contains `Action` and `ByteMatchTuple`
    #
    #   * ByteMatchTuple: Contains `FieldToMatch`, `PositionalConstraint`,
    #     `TargetString`, and `TextTransformation`
    #
    #   * FieldToMatch: Contains `Data` and `Type`
    #
    # @return [Types::UpdateByteMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateByteMatchSetResponse#change_token #change_token} => String
    #
    #
    # @example Example: To update a byte match set
    #
    #   # The following example deletes a ByteMatchTuple object (filters) in an byte match set with the ID
    #   # exampleIDs3t-46da-4fdb-b8d5-abc321j569j5.
    #
    #   resp = client.update_byte_match_set({
    #     byte_match_set_id: "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5", 
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     updates: [
    #       {
    #         action: "DELETE", 
    #         byte_match_tuple: {
    #           field_to_match: {
    #             data: "referer", 
    #             type: "HEADER", 
    #           }, 
    #           positional_constraint: "CONTAINS", 
    #           target_string: "badrefer1", 
    #           text_transformation: "NONE", 
    #         }, 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_byte_match_set({
    #     byte_match_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         byte_match_tuple: { # required
    #           field_to_match: { # required
    #             type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #             data: "MatchFieldData",
    #           },
    #           target_string: "data", # required
    #           text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #           positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateByteMatchSet AWS API Documentation
    #
    # @overload update_byte_match_set(params = {})
    # @param [Hash] params ({})
    def update_byte_match_set(params = {}, options = {})
      req = build_request(:update_byte_match_set, params)
      req.send_request(options)
    end

    # Inserts or deletes GeoMatchConstraint objects in an `GeoMatchSet`. For
    # each `GeoMatchConstraint` object, you specify the following values:
    #
    # * Whether to insert or delete the object from the array. If you want
    #   to change an `GeoMatchConstraint` object, you delete the existing
    #   object and add a new one.
    #
    # * The `Type`. The only valid value for `Type` is `Country`.
    #
    # * The `Value`, which is a two character code for the country to add to
    #   the `GeoMatchConstraint` object. Valid codes are listed in
    #   GeoMatchConstraint$Value.
    #
    # To create and configure an `GeoMatchSet`, perform the following steps:
    #
    # 1.  Submit a CreateGeoMatchSet request.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of an UpdateGeoMatchSet request.
    #
    # 3.  Submit an `UpdateGeoMatchSet` request to specify the country that
    #     you want AWS WAF to watch for.
    #
    # When you update an `GeoMatchSet`, you specify the country that you
    # want to add and/or the country that you want to delete. If you want to
    # change a country, you delete the existing country and add the new one.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :geo_match_set_id
    #   The `GeoMatchSetId` of the GeoMatchSet that you want to update.
    #   `GeoMatchSetId` is returned by CreateGeoMatchSet and by
    #   ListGeoMatchSets.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @option params [required, Array<Types::GeoMatchSetUpdate>] :updates
    #   An array of `GeoMatchSetUpdate` objects that you want to insert into
    #   or delete from an GeoMatchSet. For more information, see the
    #   applicable data types:
    #
    #   * GeoMatchSetUpdate: Contains `Action` and `GeoMatchConstraint`
    #
    #   * GeoMatchConstraint: Contains `Type` and `Value`
    #
    #     You can have only one `Type` and `Value` per `GeoMatchConstraint`.
    #     To add multiple countries, include multiple `GeoMatchSetUpdate`
    #     objects in your request.
    #
    # @return [Types::UpdateGeoMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGeoMatchSetResponse#change_token #change_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_geo_match_set({
    #     geo_match_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         geo_match_constraint: { # required
    #           type: "Country", # required, accepts Country
    #           value: "AF", # required, accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateGeoMatchSet AWS API Documentation
    #
    # @overload update_geo_match_set(params = {})
    # @param [Hash] params ({})
    def update_geo_match_set(params = {}, options = {})
      req = build_request(:update_geo_match_set, params)
      req.send_request(options)
    end

    # Inserts or deletes IPSetDescriptor objects in an `IPSet`. For each
    # `IPSetDescriptor` object, you specify the following values:
    #
    # * Whether to insert or delete the object from the array. If you want
    #   to change an `IPSetDescriptor` object, you delete the existing
    #   object and add a new one.
    #
    # * The IP address version, `IPv4` or `IPv6`.
    #
    # * The IP address in CIDR notation, for example, `192.0.2.0/24` (for
    #   the range of IP addresses from `192.0.2.0` to `192.0.2.255`) or
    #   `192.0.2.44/32` (for the individual IP address `192.0.2.44`).
    #
    # AWS WAF supports IPv4 address ranges: /8 and any range between /16
    # through /32. AWS WAF supports IPv6 address ranges: /16, /24, /32, /48,
    # /56, /64, and /128. For more information about CIDR notation, see the
    # Wikipedia entry [Classless Inter-Domain Routing][1].
    #
    # IPv6 addresses can be represented using any of the following formats:
    #
    # * 1111:0000:0000:0000:0000:0000:0000:0111/128
    #
    # * 1111:0:0:0:0:0:0:0111/128
    #
    # * 1111::0111/128
    #
    # * 1111::111/128
    #
    # You use an `IPSet` to specify which web requests you want to allow or
    # block based on the IP addresses that the requests originated from. For
    # example, if you're receiving a lot of requests from one or a small
    # number of IP addresses and you want to block the requests, you can
    # create an `IPSet` that specifies those IP addresses, and then
    # configure AWS WAF to block the requests.
    #
    # To create and configure an `IPSet`, perform the following steps:
    #
    # 1.  Submit a CreateIPSet request.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of an UpdateIPSet request.
    #
    # 3.  Submit an `UpdateIPSet` request to specify the IP addresses that
    #     you want AWS WAF to watch for.
    #
    # When you update an `IPSet`, you specify the IP addresses that you want
    # to add and/or the IP addresses that you want to delete. If you want to
    # change an IP address, you delete the existing IP address and add the
    # new one.
    #
    # You can insert a maximum of 1000 addresses in a single request.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][2].
    #
    #
    #
    # [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing
    # [2]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :ip_set_id
    #   The `IPSetId` of the IPSet that you want to update. `IPSetId` is
    #   returned by CreateIPSet and by ListIPSets.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @option params [required, Array<Types::IPSetUpdate>] :updates
    #   An array of `IPSetUpdate` objects that you want to insert into or
    #   delete from an IPSet. For more information, see the applicable data
    #   types:
    #
    #   * IPSetUpdate: Contains `Action` and `IPSetDescriptor`
    #
    #   * IPSetDescriptor: Contains `Type` and `Value`
    #
    #   You can insert a maximum of 1000 addresses in a single request.
    #
    # @return [Types::UpdateIPSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIPSetResponse#change_token #change_token} => String
    #
    #
    # @example Example: To update an IP set
    #
    #   # The following example deletes an IPSetDescriptor object in an IP match set with the ID
    #   # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #
    #   resp = client.update_ip_set({
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     ip_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #     updates: [
    #       {
    #         action: "DELETE", 
    #         ip_set_descriptor: {
    #           type: "IPV4", 
    #           value: "192.0.2.44/32", 
    #         }, 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ip_set({
    #     ip_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         ip_set_descriptor: { # required
    #           type: "IPV4", # required, accepts IPV4, IPV6
    #           value: "IPSetDescriptorValue", # required
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateIPSet AWS API Documentation
    #
    # @overload update_ip_set(params = {})
    # @param [Hash] params ({})
    def update_ip_set(params = {}, options = {})
      req = build_request(:update_ip_set, params)
      req.send_request(options)
    end

    # Inserts or deletes Predicate objects in a rule and updates the
    # `RateLimit` in the rule.
    #
    # Each `Predicate` object identifies a predicate, such as a ByteMatchSet
    # or an IPSet, that specifies the web requests that you want to block or
    # count. The `RateLimit` specifies the number of requests every five
    # minutes that triggers the rule.
    #
    # If you add more than one predicate to a `RateBasedRule`, a request
    # must match all the predicates and exceed the `RateLimit` to be counted
    # or blocked. For example, suppose you add the following to a
    # `RateBasedRule`\:
    #
    # * An `IPSet` that matches the IP address `192.0.2.44/32`
    #
    # * A `ByteMatchSet` that matches `BadBot` in the `User-Agent` header
    #
    # Further, you specify a `RateLimit` of 15,000.
    #
    # You then add the `RateBasedRule` to a `WebACL` and specify that you
    # want to block requests that satisfy the rule. For a request to be
    # blocked, it must come from the IP address 192.0.2.44 *and* the
    # `User-Agent` header in the request must contain the value `BadBot`.
    # Further, requests that match these two conditions much be received at
    # a rate of more than 15,000 every five minutes. If the rate drops below
    # this limit, AWS WAF no longer blocks the requests.
    #
    # As a second example, suppose you want to limit requests to a
    # particular page on your site. To do this, you could add the following
    # to a `RateBasedRule`\:
    #
    # * A `ByteMatchSet` with `FieldToMatch` of `URI`
    #
    # * A `PositionalConstraint` of `STARTS_WITH`
    #
    # * A `TargetString` of `login`
    #
    # Further, you specify a `RateLimit` of 15,000.
    #
    # By adding this `RateBasedRule` to a `WebACL`, you could limit requests
    # to your login page without affecting the rest of your site.
    #
    # @option params [required, String] :rule_id
    #   The `RuleId` of the `RateBasedRule` that you want to update. `RuleId`
    #   is returned by `CreateRateBasedRule` and by ListRateBasedRules.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @option params [required, Array<Types::RuleUpdate>] :updates
    #   An array of `RuleUpdate` objects that you want to insert into or
    #   delete from a RateBasedRule.
    #
    # @option params [required, Integer] :rate_limit
    #   The maximum number of requests, which have an identical value in the
    #   field specified by the `RateKey`, allowed in a five-minute period. If
    #   the number of requests exceeds the `RateLimit` and the other
    #   predicates specified in the rule are also met, AWS WAF triggers the
    #   action that is specified for this rule.
    #
    # @return [Types::UpdateRateBasedRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRateBasedRuleResponse#change_token #change_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rate_based_rule({
    #     rule_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         predicate: { # required
    #           negated: false, # required
    #           type: "IPMatch", # required, accepts IPMatch, ByteMatch, SqlInjectionMatch, GeoMatch, SizeConstraint, XssMatch, RegexMatch
    #           data_id: "ResourceId", # required
    #         },
    #       },
    #     ],
    #     rate_limit: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateRateBasedRule AWS API Documentation
    #
    # @overload update_rate_based_rule(params = {})
    # @param [Hash] params ({})
    def update_rate_based_rule(params = {}, options = {})
      req = build_request(:update_rate_based_rule, params)
      req.send_request(options)
    end

    # Inserts or deletes RegexMatchTuple objects (filters) in a
    # RegexMatchSet. For each `RegexMatchSetUpdate` object, you specify the
    # following values:
    #
    # * Whether to insert or delete the object from the array. If you want
    #   to change a `RegexMatchSetUpdate` object, you delete the existing
    #   object and add a new one.
    #
    # * The part of a web request that you want AWS WAF to inspectupdate,
    #   such as a query string or the value of the `User-Agent` header.
    #
    # * The identifier of the pattern (a regular expression) that you want
    #   AWS WAF to look for. For more information, see RegexPatternSet.
    #
    # * Whether to perform any conversions on the request, such as
    #   converting it to lowercase, before inspecting it for the specified
    #   string.
    #
    # For example, you can create a `RegexPatternSet` that matches any
    # requests with `User-Agent` headers that contain the string
    # `B[a@]dB[o0]t`. You can then configure AWS WAF to reject those
    # requests.
    #
    # To create and configure a `RegexMatchSet`, perform the following
    # steps:
    #
    # 1.  Create a `RegexMatchSet.` For more information, see
    #     CreateRegexMatchSet.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of an `UpdateRegexMatchSet` request.
    #
    # 3.  Submit an `UpdateRegexMatchSet` request to specify the part of the
    #     request that you want AWS WAF to inspect (for example, the header
    #     or the URI) and the identifier of the `RegexPatternSet` that
    #     contain the regular expression patters you want AWS WAF to watch
    #     for.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :regex_match_set_id
    #   The `RegexMatchSetId` of the RegexMatchSet that you want to update.
    #   `RegexMatchSetId` is returned by CreateRegexMatchSet and by
    #   ListRegexMatchSets.
    #
    # @option params [required, Array<Types::RegexMatchSetUpdate>] :updates
    #   An array of `RegexMatchSetUpdate` objects that you want to insert into
    #   or delete from a RegexMatchSet. For more information, see
    #   RegexMatchTuple.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::UpdateRegexMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRegexMatchSetResponse#change_token #change_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_regex_match_set({
    #     regex_match_set_id: "ResourceId", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         regex_match_tuple: { # required
    #           field_to_match: { # required
    #             type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #             data: "MatchFieldData",
    #           },
    #           text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #           regex_pattern_set_id: "ResourceId", # required
    #         },
    #       },
    #     ],
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateRegexMatchSet AWS API Documentation
    #
    # @overload update_regex_match_set(params = {})
    # @param [Hash] params ({})
    def update_regex_match_set(params = {}, options = {})
      req = build_request(:update_regex_match_set, params)
      req.send_request(options)
    end

    # Inserts or deletes `RegexPatternString` objects in a RegexPatternSet.
    # For each `RegexPatternString` object, you specify the following
    # values:
    #
    # * Whether to insert or delete the `RegexPatternString`.
    #
    # * The regular expression pattern that you want to insert or delete.
    #   For more information, see RegexPatternSet.
    #
    # For example, you can create a `RegexPatternString` such as
    # `B[a@]dB[o0]t`. AWS WAF will match this `RegexPatternString` to:
    #
    # * BadBot
    #
    # * BadB0t
    #
    # * B@dBot
    #
    # * B@dB0t
    #
    # To create and configure a `RegexPatternSet`, perform the following
    # steps:
    #
    # 1.  Create a `RegexPatternSet.` For more information, see
    #     CreateRegexPatternSet.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of an `UpdateRegexPatternSet` request.
    #
    # 3.  Submit an `UpdateRegexPatternSet` request to specify the regular
    #     expression pattern that you want AWS WAF to watch for.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :regex_pattern_set_id
    #   The `RegexPatternSetId` of the RegexPatternSet that you want to
    #   update. `RegexPatternSetId` is returned by CreateRegexPatternSet and
    #   by ListRegexPatternSets.
    #
    # @option params [required, Array<Types::RegexPatternSetUpdate>] :updates
    #   An array of `RegexPatternSetUpdate` objects that you want to insert
    #   into or delete from a RegexPatternSet.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::UpdateRegexPatternSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRegexPatternSetResponse#change_token #change_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_regex_pattern_set({
    #     regex_pattern_set_id: "ResourceId", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         regex_pattern_string: "RegexPatternString", # required
    #       },
    #     ],
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateRegexPatternSet AWS API Documentation
    #
    # @overload update_regex_pattern_set(params = {})
    # @param [Hash] params ({})
    def update_regex_pattern_set(params = {}, options = {})
      req = build_request(:update_regex_pattern_set, params)
      req.send_request(options)
    end

    # Inserts or deletes Predicate objects in a `Rule`. Each `Predicate`
    # object identifies a predicate, such as a ByteMatchSet or an IPSet,
    # that specifies the web requests that you want to allow, block, or
    # count. If you add more than one predicate to a `Rule`, a request must
    # match all of the specifications to be allowed, blocked, or counted.
    # For example, suppose you add the following to a `Rule`\:
    #
    # * A `ByteMatchSet` that matches the value `BadBot` in the `User-Agent`
    #   header
    #
    # * An `IPSet` that matches the IP address `192.0.2.44`
    #
    # You then add the `Rule` to a `WebACL` and specify that you want to
    # block requests that satisfy the `Rule`. For a request to be blocked,
    # the `User-Agent` header in the request must contain the value `BadBot`
    # *and* the request must originate from the IP address 192.0.2.44.
    #
    # To create and configure a `Rule`, perform the following steps:
    #
    # 1.  Create and update the predicates that you want to include in the
    #     `Rule`.
    #
    # 2.  Create the `Rule`. See CreateRule.
    #
    # 3.  Use `GetChangeToken` to get the change token that you provide in
    #     the `ChangeToken` parameter of an UpdateRule request.
    #
    # 4.  Submit an `UpdateRule` request to add predicates to the `Rule`.
    #
    # 5.  Create and update a `WebACL` that contains the `Rule`. See
    #     CreateWebACL.
    #
    # If you want to replace one `ByteMatchSet` or `IPSet` with another, you
    # delete the existing one and add the new one.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :rule_id
    #   The `RuleId` of the `Rule` that you want to update. `RuleId` is
    #   returned by `CreateRule` and by ListRules.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @option params [required, Array<Types::RuleUpdate>] :updates
    #   An array of `RuleUpdate` objects that you want to insert into or
    #   delete from a Rule. For more information, see the applicable data
    #   types:
    #
    #   * RuleUpdate: Contains `Action` and `Predicate`
    #
    #   * Predicate: Contains `DataId`, `Negated`, and `Type`
    #
    #   * FieldToMatch: Contains `Data` and `Type`
    #
    # @return [Types::UpdateRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRuleResponse#change_token #change_token} => String
    #
    #
    # @example Example: To update a rule
    #
    #   # The following example deletes a Predicate object in a rule with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #
    #   resp = client.update_rule({
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     rule_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #     updates: [
    #       {
    #         action: "DELETE", 
    #         predicate: {
    #           data_id: "MyByteMatchSetID", 
    #           negated: false, 
    #           type: "ByteMatch", 
    #         }, 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule({
    #     rule_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         predicate: { # required
    #           negated: false, # required
    #           type: "IPMatch", # required, accepts IPMatch, ByteMatch, SqlInjectionMatch, GeoMatch, SizeConstraint, XssMatch, RegexMatch
    #           data_id: "ResourceId", # required
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateRule AWS API Documentation
    #
    # @overload update_rule(params = {})
    # @param [Hash] params ({})
    def update_rule(params = {}, options = {})
      req = build_request(:update_rule, params)
      req.send_request(options)
    end

    # Inserts or deletes ActivatedRule objects in a `RuleGroup`.
    #
    # You can only insert `REGULAR` rules into a rule group.
    #
    # You can have a maximum of ten rules per rule group.
    #
    # To create and configure a `RuleGroup`, perform the following steps:
    #
    # 1.  Create and update the `Rules` that you want to include in the
    #     `RuleGroup`. See CreateRule.
    #
    # 2.  Use `GetChangeToken` to get the change token that you provide in
    #     the `ChangeToken` parameter of an UpdateRuleGroup request.
    #
    # 3.  Submit an `UpdateRuleGroup` request to add `Rules` to the
    #     `RuleGroup`.
    #
    # 4.  Create and update a `WebACL` that contains the `RuleGroup`. See
    #     CreateWebACL.
    #
    # If you want to replace one `Rule` with another, you delete the
    # existing one and add the new one.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :rule_group_id
    #   The `RuleGroupId` of the RuleGroup that you want to update.
    #   `RuleGroupId` is returned by CreateRuleGroup and by ListRuleGroups.
    #
    # @option params [required, Array<Types::RuleGroupUpdate>] :updates
    #   An array of `RuleGroupUpdate` objects that you want to insert into or
    #   delete from a RuleGroup.
    #
    #   You can only insert `REGULAR` rules into a rule group.
    #
    #   `ActivatedRule|OverrideAction` applies only when updating or adding a
    #   `RuleGroup` to a `WebACL`. In this case you do not use
    #   `ActivatedRule|Action`. For all other update requests,
    #   `ActivatedRule|Action` is used instead of
    #   `ActivatedRule|OverrideAction`.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @return [Types::UpdateRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRuleGroupResponse#change_token #change_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule_group({
    #     rule_group_id: "ResourceId", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         activated_rule: { # required
    #           priority: 1, # required
    #           rule_id: "ResourceId", # required
    #           action: {
    #             type: "BLOCK", # required, accepts BLOCK, ALLOW, COUNT
    #           },
    #           override_action: {
    #             type: "NONE", # required, accepts NONE, COUNT
    #           },
    #           type: "REGULAR", # accepts REGULAR, RATE_BASED, GROUP
    #         },
    #       },
    #     ],
    #     change_token: "ChangeToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateRuleGroup AWS API Documentation
    #
    # @overload update_rule_group(params = {})
    # @param [Hash] params ({})
    def update_rule_group(params = {}, options = {})
      req = build_request(:update_rule_group, params)
      req.send_request(options)
    end

    # Inserts or deletes SizeConstraint objects (filters) in a
    # SizeConstraintSet. For each `SizeConstraint` object, you specify the
    # following values:
    #
    # * Whether to insert or delete the object from the array. If you want
    #   to change a `SizeConstraintSetUpdate` object, you delete the
    #   existing object and add a new one.
    #
    # * The part of a web request that you want AWS WAF to evaluate, such as
    #   the length of a query string or the length of the `User-Agent`
    #   header.
    #
    # * Whether to perform any transformations on the request, such as
    #   converting it to lowercase, before checking its length. Note that
    #   transformations of the request body are not supported because the
    #   AWS resource forwards only the first `8192` bytes of your request to
    #   AWS WAF.
    #
    #   You can only specify a single type of TextTransformation.
    #
    # * A `ComparisonOperator` used for evaluating the selected part of the
    #   request against the specified `Size`, such as equals, greater than,
    #   less than, and so on.
    #
    # * The length, in bytes, that you want AWS WAF to watch for in selected
    #   part of the request. The length is computed after applying the
    #   transformation.
    #
    # For example, you can add a `SizeConstraintSetUpdate` object that
    # matches web requests in which the length of the `User-Agent` header is
    # greater than 100 bytes. You can then configure AWS WAF to block those
    # requests.
    #
    # To create and configure a `SizeConstraintSet`, perform the following
    # steps:
    #
    # 1.  Create a `SizeConstraintSet.` For more information, see
    #     CreateSizeConstraintSet.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of an `UpdateSizeConstraintSet` request.
    #
    # 3.  Submit an `UpdateSizeConstraintSet` request to specify the part of
    #     the request that you want AWS WAF to inspect (for example, the
    #     header or the URI) and the value that you want AWS WAF to watch
    #     for.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :size_constraint_set_id
    #   The `SizeConstraintSetId` of the SizeConstraintSet that you want to
    #   update. `SizeConstraintSetId` is returned by CreateSizeConstraintSet
    #   and by ListSizeConstraintSets.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @option params [required, Array<Types::SizeConstraintSetUpdate>] :updates
    #   An array of `SizeConstraintSetUpdate` objects that you want to insert
    #   into or delete from a SizeConstraintSet. For more information, see the
    #   applicable data types:
    #
    #   * SizeConstraintSetUpdate: Contains `Action` and `SizeConstraint`
    #
    #   * SizeConstraint: Contains `FieldToMatch`, `TextTransformation`,
    #     `ComparisonOperator`, and `Size`
    #
    #   * FieldToMatch: Contains `Data` and `Type`
    #
    # @return [Types::UpdateSizeConstraintSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSizeConstraintSetResponse#change_token #change_token} => String
    #
    #
    # @example Example: To update a size constraint set
    #
    #   # The following example deletes a SizeConstraint object (filters) in a size constraint set with the ID
    #   # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #
    #   resp = client.update_size_constraint_set({
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     size_constraint_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #     updates: [
    #       {
    #         action: "DELETE", 
    #         size_constraint: {
    #           comparison_operator: "GT", 
    #           field_to_match: {
    #             type: "QUERY_STRING", 
    #           }, 
    #           size: 0, 
    #           text_transformation: "NONE", 
    #         }, 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_size_constraint_set({
    #     size_constraint_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         size_constraint: { # required
    #           field_to_match: { # required
    #             type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #             data: "MatchFieldData",
    #           },
    #           text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #           comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #           size: 1, # required
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateSizeConstraintSet AWS API Documentation
    #
    # @overload update_size_constraint_set(params = {})
    # @param [Hash] params ({})
    def update_size_constraint_set(params = {}, options = {})
      req = build_request(:update_size_constraint_set, params)
      req.send_request(options)
    end

    # Inserts or deletes SqlInjectionMatchTuple objects (filters) in a
    # SqlInjectionMatchSet. For each `SqlInjectionMatchTuple` object, you
    # specify the following values:
    #
    # * `Action`\: Whether to insert the object into or delete the object
    #   from the array. To change a `SqlInjectionMatchTuple`, you delete the
    #   existing object and add a new one.
    #
    # * `FieldToMatch`\: The part of web requests that you want AWS WAF to
    #   inspect and, if you want AWS WAF to inspect a header or custom query
    #   parameter, the name of the header or parameter.
    #
    # * `TextTransformation`\: Which text transformation, if any, to perform
    #   on the web request before inspecting the request for snippets of
    #   malicious SQL code.
    #
    #   You can only specify a single type of TextTransformation.
    #
    # You use `SqlInjectionMatchSet` objects to specify which CloudFront
    # requests you want to allow, block, or count. For example, if you're
    # receiving requests that contain snippets of SQL code in the query
    # string and you want to block the requests, you can create a
    # `SqlInjectionMatchSet` with the applicable settings, and then
    # configure AWS WAF to block the requests.
    #
    # To create and configure a `SqlInjectionMatchSet`, perform the
    # following steps:
    #
    # 1.  Submit a CreateSqlInjectionMatchSet request.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of an UpdateIPSet request.
    #
    # 3.  Submit an `UpdateSqlInjectionMatchSet` request to specify the
    #     parts of web requests that you want AWS WAF to inspect for
    #     snippets of SQL code.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :sql_injection_match_set_id
    #   The `SqlInjectionMatchSetId` of the `SqlInjectionMatchSet` that you
    #   want to update. `SqlInjectionMatchSetId` is returned by
    #   CreateSqlInjectionMatchSet and by ListSqlInjectionMatchSets.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @option params [required, Array<Types::SqlInjectionMatchSetUpdate>] :updates
    #   An array of `SqlInjectionMatchSetUpdate` objects that you want to
    #   insert into or delete from a SqlInjectionMatchSet. For more
    #   information, see the applicable data types:
    #
    #   * SqlInjectionMatchSetUpdate: Contains `Action` and
    #     `SqlInjectionMatchTuple`
    #
    #   * SqlInjectionMatchTuple: Contains `FieldToMatch` and
    #     `TextTransformation`
    #
    #   * FieldToMatch: Contains `Data` and `Type`
    #
    # @return [Types::UpdateSqlInjectionMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSqlInjectionMatchSetResponse#change_token #change_token} => String
    #
    #
    # @example Example: To update a SQL injection match set
    #
    #   # The following example deletes a SqlInjectionMatchTuple object (filters) in a SQL injection match set with the ID
    #   # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #
    #   resp = client.update_sql_injection_match_set({
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     sql_injection_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #     updates: [
    #       {
    #         action: "DELETE", 
    #         sql_injection_match_tuple: {
    #           field_to_match: {
    #             type: "QUERY_STRING", 
    #           }, 
    #           text_transformation: "URL_DECODE", 
    #         }, 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sql_injection_match_set({
    #     sql_injection_match_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         sql_injection_match_tuple: { # required
    #           field_to_match: { # required
    #             type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #             data: "MatchFieldData",
    #           },
    #           text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateSqlInjectionMatchSet AWS API Documentation
    #
    # @overload update_sql_injection_match_set(params = {})
    # @param [Hash] params ({})
    def update_sql_injection_match_set(params = {}, options = {})
      req = build_request(:update_sql_injection_match_set, params)
      req.send_request(options)
    end

    # Inserts or deletes ActivatedRule objects in a `WebACL`. Each `Rule`
    # identifies web requests that you want to allow, block, or count. When
    # you update a `WebACL`, you specify the following values:
    #
    # * A default action for the `WebACL`, either `ALLOW` or `BLOCK`. AWS
    #   WAF performs the default action if a request doesn't match the
    #   criteria in any of the `Rules` in a `WebACL`.
    #
    # * The `Rules` that you want to add and/or delete. If you want to
    #   replace one `Rule` with another, you delete the existing `Rule` and
    #   add the new one.
    #
    # * For each `Rule`, whether you want AWS WAF to allow requests, block
    #   requests, or count requests that match the conditions in the `Rule`.
    #
    # * The order in which you want AWS WAF to evaluate the `Rules` in a
    #   `WebACL`. If you add more than one `Rule` to a `WebACL`, AWS WAF
    #   evaluates each request against the `Rules` in order based on the
    #   value of `Priority`. (The `Rule` that has the lowest value for
    #   `Priority` is evaluated first.) When a web request matches all of
    #   the predicates (such as `ByteMatchSets` and `IPSets`) in a `Rule`,
    #   AWS WAF immediately takes the corresponding action, allow or block,
    #   and doesn't evaluate the request against the remaining `Rules` in
    #   the `WebACL`, if any.
    #
    # To create and configure a `WebACL`, perform the following steps:
    #
    # 1.  Create and update the predicates that you want to include in
    #     `Rules`. For more information, see CreateByteMatchSet,
    #     UpdateByteMatchSet, CreateIPSet, UpdateIPSet,
    #     CreateSqlInjectionMatchSet, and UpdateSqlInjectionMatchSet.
    #
    # 2.  Create and update the `Rules` that you want to include in the
    #     `WebACL`. For more information, see CreateRule and UpdateRule.
    #
    # 3.  Create a `WebACL`. See CreateWebACL.
    #
    # 4.  Use `GetChangeToken` to get the change token that you provide in
    #     the `ChangeToken` parameter of an UpdateWebACL request.
    #
    # 5.  Submit an `UpdateWebACL` request to specify the `Rules` that you
    #     want to include in the `WebACL`, to specify the default action,
    #     and to associate the `WebACL` with a CloudFront distribution.
    #
    # Be aware that if you try to add a RATE\_BASED rule to a web ACL
    # without setting the rule type when first creating the rule, the
    # UpdateWebACL request will fail because the request tries to add a
    # REGULAR rule (the default rule type) with the specified ID, which does
    # not exist.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :web_acl_id
    #   The `WebACLId` of the WebACL that you want to update. `WebACLId` is
    #   returned by CreateWebACL and by ListWebACLs.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @option params [Array<Types::WebACLUpdate>] :updates
    #   An array of updates to make to the WebACL.
    #
    #   An array of `WebACLUpdate` objects that you want to insert into or
    #   delete from a WebACL. For more information, see the applicable data
    #   types:
    #
    #   * WebACLUpdate: Contains `Action` and `ActivatedRule`
    #
    #   * ActivatedRule: Contains `Action`, `OverrideAction`, `Priority`,
    #     `RuleId`, and `Type`. `ActivatedRule|OverrideAction` applies only
    #     when updating or adding a `RuleGroup` to a `WebACL`. In this case
    #     you do not use `ActivatedRule|Action`. For all other update
    #     requests, `ActivatedRule|Action` is used instead of
    #     `ActivatedRule|OverrideAction`.
    #
    #   * WafAction: Contains `Type`
    #
    # @option params [Types::WafAction] :default_action
    #   A default action for the web ACL, either ALLOW or BLOCK. AWS WAF
    #   performs the default action if a request doesn't match the criteria
    #   in any of the rules in a web ACL.
    #
    # @return [Types::UpdateWebACLResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWebACLResponse#change_token #change_token} => String
    #
    #
    # @example Example: To update a Web ACL
    #
    #   # The following example deletes an ActivatedRule object in a WebACL with the ID webacl-1472061481310.
    #
    #   resp = client.update_web_acl({
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     default_action: {
    #       type: "ALLOW", 
    #     }, 
    #     updates: [
    #       {
    #         action: "DELETE", 
    #         activated_rule: {
    #           action: {
    #             type: "ALLOW", 
    #           }, 
    #           priority: 1, 
    #           rule_id: "WAFRule-1-Example", 
    #         }, 
    #       }, 
    #     ], 
    #     web_acl_id: "webacl-1472061481310", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_web_acl({
    #     web_acl_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #     updates: [
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         activated_rule: { # required
    #           priority: 1, # required
    #           rule_id: "ResourceId", # required
    #           action: {
    #             type: "BLOCK", # required, accepts BLOCK, ALLOW, COUNT
    #           },
    #           override_action: {
    #             type: "NONE", # required, accepts NONE, COUNT
    #           },
    #           type: "REGULAR", # accepts REGULAR, RATE_BASED, GROUP
    #         },
    #       },
    #     ],
    #     default_action: {
    #       type: "BLOCK", # required, accepts BLOCK, ALLOW, COUNT
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateWebACL AWS API Documentation
    #
    # @overload update_web_acl(params = {})
    # @param [Hash] params ({})
    def update_web_acl(params = {}, options = {})
      req = build_request(:update_web_acl, params)
      req.send_request(options)
    end

    # Inserts or deletes XssMatchTuple objects (filters) in an XssMatchSet.
    # For each `XssMatchTuple` object, you specify the following values:
    #
    # * `Action`\: Whether to insert the object into or delete the object
    #   from the array. To change a `XssMatchTuple`, you delete the existing
    #   object and add a new one.
    #
    # * `FieldToMatch`\: The part of web requests that you want AWS WAF to
    #   inspect and, if you want AWS WAF to inspect a header or custom query
    #   parameter, the name of the header or parameter.
    #
    # * `TextTransformation`\: Which text transformation, if any, to perform
    #   on the web request before inspecting the request for cross-site
    #   scripting attacks.
    #
    #   You can only specify a single type of TextTransformation.
    #
    # You use `XssMatchSet` objects to specify which CloudFront requests you
    # want to allow, block, or count. For example, if you're receiving
    # requests that contain cross-site scripting attacks in the request body
    # and you want to block the requests, you can create an `XssMatchSet`
    # with the applicable settings, and then configure AWS WAF to block the
    # requests.
    #
    # To create and configure an `XssMatchSet`, perform the following steps:
    #
    # 1.  Submit a CreateXssMatchSet request.
    #
    # 2.  Use GetChangeToken to get the change token that you provide in the
    #     `ChangeToken` parameter of an UpdateIPSet request.
    #
    # 3.  Submit an `UpdateXssMatchSet` request to specify the parts of web
    #     requests that you want AWS WAF to inspect for cross-site scripting
    #     attacks.
    #
    # For more information about how to use the AWS WAF API to allow or
    # block HTTP requests, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :xss_match_set_id
    #   The `XssMatchSetId` of the `XssMatchSet` that you want to update.
    #   `XssMatchSetId` is returned by CreateXssMatchSet and by
    #   ListXssMatchSets.
    #
    # @option params [required, String] :change_token
    #   The value returned by the most recent call to GetChangeToken.
    #
    # @option params [required, Array<Types::XssMatchSetUpdate>] :updates
    #   An array of `XssMatchSetUpdate` objects that you want to insert into
    #   or delete from a XssMatchSet. For more information, see the applicable
    #   data types:
    #
    #   * XssMatchSetUpdate: Contains `Action` and `XssMatchTuple`
    #
    #   * XssMatchTuple: Contains `FieldToMatch` and `TextTransformation`
    #
    #   * FieldToMatch: Contains `Data` and `Type`
    #
    # @return [Types::UpdateXssMatchSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateXssMatchSetResponse#change_token #change_token} => String
    #
    #
    # @example Example: To update an XSS match set
    #
    #   # The following example deletes an XssMatchTuple object (filters) in an XssMatchSet with the ID
    #   # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #
    #   resp = client.update_xss_match_set({
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #     updates: [
    #       {
    #         action: "DELETE", 
    #         xss_match_tuple: {
    #           field_to_match: {
    #             type: "QUERY_STRING", 
    #           }, 
    #           text_transformation: "URL_DECODE", 
    #         }, 
    #       }, 
    #     ], 
    #     xss_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_xss_match_set({
    #     xss_match_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         xss_match_tuple: { # required
    #           field_to_match: { # required
    #             type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #             data: "MatchFieldData",
    #           },
    #           text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.change_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateXssMatchSet AWS API Documentation
    #
    # @overload update_xss_match_set(params = {})
    # @param [Hash] params ({})
    def update_xss_match_set(params = {}, options = {})
      req = build_request(:update_xss_match_set, params)
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
      context[:gem_name] = 'aws-sdk-wafregional'
      context[:gem_version] = '1.8.0'
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
