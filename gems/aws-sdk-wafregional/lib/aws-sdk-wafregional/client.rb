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
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
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
    #   resp.byte_match_set.byte_match_tuples[0].field_to_match.type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY"
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
    #   resp.rule.predicates[0].type #=> String, one of "IPMatch", "ByteMatch", "SqlInjectionMatch", "SizeConstraint", "XssMatch"
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
    #   resp.size_constraint_set.size_constraints[0].field_to_match.type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY"
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
    #   resp.sql_injection_match_set.sql_injection_match_tuples[0].field_to_match.type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY"
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
    #   resp.xss_match_set.xss_match_tuples[0].field_to_match.type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY"
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
    #   resp.byte_match_set.byte_match_tuples[0].field_to_match.type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY"
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
    #   resp.rule.predicates[0].type #=> String, one of "IPMatch", "ByteMatch", "SqlInjectionMatch", "SizeConstraint", "XssMatch"
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
    #   `RuleId` is one of two values:
    #
    #   * The `RuleId` of the `Rule` for which you want `GetSampledRequests`
    #     to return a sample of requests.
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
    #   resp.size_constraint_set.size_constraints[0].field_to_match.type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY"
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
    #   resp.sql_injection_match_set.sql_injection_match_tuples[0].field_to_match.type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY"
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
    #   resp.xss_match_set.xss_match_tuples[0].field_to_match.type #=> String, one of "URI", "QUERY_STRING", "HEADER", "METHOD", "BODY"
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

    # Returns an array of IPSetSummary objects in the response.
    #
    # @option params [String] :next_marker
    #   If you specify a value for `Limit` and you have more `IPSets` than the
    #   value of `Limit`, AWS WAF returns a `NextMarker` value in the response
    #   that allows you to list another group of `IPSets`. For the second and
    #   subsequent `ListIPSets` requests, specify the value of `NextMarker`
    #   from the previous response to get information about another batch of
    #   `ByteMatchSets`.
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
    #             type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY
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
    # AWS WAF supports /8, /16, /24, and /32 IP address ranges for IPv4, and
    # /24, /32, /48, /56, /64 and /128 for IPv6. For more information about
    # CIDR notation, see the Wikipedia entry [Classless Inter-Domain
    # Routing][1].
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
    # @return [Types::UpdateIPSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIPSetResponse#change_token #change_token} => String
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
    #           type: "IPMatch", # required, accepts IPMatch, ByteMatch, SqlInjectionMatch, SizeConstraint, XssMatch
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
    #             type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY
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
    #   inspect and, if you want AWS WAF to inspect a header, the name of
    #   the header.
    #
    # * `TextTransformation`\: Which text transformation, if any, to perform
    #   on the web request before inspecting the request for snippets of
    #   malicious SQL code.
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
    #             type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY
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
    #   * ActivatedRule: Contains `Action`, `Priority`, and `RuleId`
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
    #           action: { # required
    #             type: "BLOCK", # required, accepts BLOCK, ALLOW, COUNT
    #           },
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
    #   inspect and, if you want AWS WAF to inspect a header, the name of
    #   the header.
    #
    # * `TextTransformation`\: Which text transformation, if any, to perform
    #   on the web request before inspecting the request for cross-site
    #   scripting attacks.
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
    #             type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY
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
      context[:gem_version] = '1.0.0.rc6'
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
