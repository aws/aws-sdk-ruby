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
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:elasticloadbalancingv2)

module Aws::ElasticLoadBalancingV2
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :elasticloadbalancingv2

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
    add_plugin(Aws::Plugins::Protocols::Query)

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

    # Adds the specified tags to the specified resource. You can tag your
    # Application Load Balancers and your target groups.
    #
    # Each tag consists of a key and an optional value. If a resource
    # already has a tag with the same key, `AddTags` updates its value.
    #
    # To list the current tags for your resources, use DescribeTags. To
    # remove tags from your resources, use RemoveTags.
    #
    # @option params [required, Array<String>] :resource_arns
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags. Each resource can have a maximum of 10 tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags({
    #     resource_arns: ["ResourceArn"], # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/AddTags AWS API Documentation
    #
    # @overload add_tags(params = {})
    # @param [Hash] params ({})
    def add_tags(params = {}, options = {})
      req = build_request(:add_tags, params)
      req.send_request(options)
    end

    # Creates a listener for the specified Application Load Balancer.
    #
    # You can create up to 10 listeners per load balancer.
    #
    # To update a listener, use ModifyListener. When you are finished with a
    # listener, you can delete it using DeleteListener. If you are finished
    # with both the listener and the load balancer, you can delete them both
    # using DeleteLoadBalancer.
    #
    # For more information, see [Listeners for Your Application Load
    # Balancers][1] in the *Application Load Balancers Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html
    #
    # @option params [required, String] :load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #
    # @option params [required, String] :protocol
    #   The protocol for connections from clients to the load balancer.
    #
    # @option params [required, Integer] :port
    #   The port on which the load balancer is listening.
    #
    # @option params [String] :ssl_policy
    #   The security policy that defines which ciphers and protocols are
    #   supported. The default is the current predefined security policy.
    #
    # @option params [Array<Types::Certificate>] :certificates
    #   The SSL server certificate. You must provide exactly one certificate
    #   if the protocol is HTTPS.
    #
    # @option params [required, Array<Types::Action>] :default_actions
    #   The default action for the listener.
    #
    # @return [Types::CreateListenerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateListenerOutput#listeners #listeners} => Array&lt;Types::Listener&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_listener({
    #     load_balancer_arn: "LoadBalancerArn", # required
    #     protocol: "HTTP", # required, accepts HTTP, HTTPS
    #     port: 1, # required
    #     ssl_policy: "SslPolicyName",
    #     certificates: [
    #       {
    #         certificate_arn: "CertificateArn",
    #       },
    #     ],
    #     default_actions: [ # required
    #       {
    #         type: "forward", # required, accepts forward
    #         target_group_arn: "TargetGroupArn", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.listeners #=> Array
    #   resp.listeners[0].listener_arn #=> String
    #   resp.listeners[0].load_balancer_arn #=> String
    #   resp.listeners[0].port #=> Integer
    #   resp.listeners[0].protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.listeners[0].certificates #=> Array
    #   resp.listeners[0].certificates[0].certificate_arn #=> String
    #   resp.listeners[0].ssl_policy #=> String
    #   resp.listeners[0].default_actions #=> Array
    #   resp.listeners[0].default_actions[0].type #=> String, one of "forward"
    #   resp.listeners[0].default_actions[0].target_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateListener AWS API Documentation
    #
    # @overload create_listener(params = {})
    # @param [Hash] params ({})
    def create_listener(params = {}, options = {})
      req = build_request(:create_listener, params)
      req.send_request(options)
    end

    # Creates an Application Load Balancer.
    #
    # When you create a load balancer, you can specify security groups,
    # subnets, IP address type, and tags. Otherwise, you could do so later
    # using SetSecurityGroups, SetSubnets, SetIpAddressType, and AddTags.
    #
    # To create listeners for your load balancer, use CreateListener. To
    # describe your current load balancers, see DescribeLoadBalancers. When
    # you are finished with a load balancer, you can delete it using
    # DeleteLoadBalancer.
    #
    # You can create up to 20 load balancers per region per account. You can
    # request an increase for the number of load balancers for your account.
    # For more information, see [Limits for Your Application Load
    # Balancer][1] in the *Application Load Balancers Guide*.
    #
    # For more information, see [Application Load Balancers][2] in the
    # *Application Load Balancers Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html
    # [2]: http://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html
    #
    # @option params [required, String] :name
    #   The name of the load balancer.
    #
    #   This name must be unique per region per account, can have a maximum of
    #   32 characters, must contain only alphanumeric characters or hyphens,
    #   and must not begin or end with a hyphen.
    #
    # @option params [required, Array<String>] :subnets
    #   The IDs of the subnets to attach to the load balancer. You can specify
    #   only one subnet per Availability Zone. You must specify subnets from
    #   at least two Availability Zones.
    #
    # @option params [Array<String>] :security_groups
    #   The IDs of the security groups to assign to the load balancer.
    #
    # @option params [String] :scheme
    #   The nodes of an Internet-facing load balancer have public IP
    #   addresses. The DNS name of an Internet-facing load balancer is
    #   publicly resolvable to the public IP addresses of the nodes.
    #   Therefore, Internet-facing load balancers can route requests from
    #   clients over the Internet.
    #
    #   The nodes of an internal load balancer have only private IP addresses.
    #   The DNS name of an internal load balancer is publicly resolvable to
    #   the private IP addresses of the nodes. Therefore, internal load
    #   balancers can only route requests from clients with access to the VPC
    #   for the load balancer.
    #
    #   The default is an Internet-facing load balancer.
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags to assign to the load balancer.
    #
    # @option params [String] :ip_address_type
    #   The type of IP addresses used by the subnets for your load balancer.
    #   The possible values are `ipv4` (for IPv4 addresses) and `dualstack`
    #   (for IPv4 and IPv6 addresses). Internal load balancers must use
    #   `ipv4`.
    #
    # @return [Types::CreateLoadBalancerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLoadBalancerOutput#load_balancers #load_balancers} => Array&lt;Types::LoadBalancer&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_load_balancer({
    #     name: "LoadBalancerName", # required
    #     subnets: ["SubnetId"], # required
    #     security_groups: ["SecurityGroupId"],
    #     scheme: "internet-facing", # accepts internet-facing, internal
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     ip_address_type: "ipv4", # accepts ipv4, dualstack
    #   })
    #
    # @example Response structure
    #
    #   resp.load_balancers #=> Array
    #   resp.load_balancers[0].load_balancer_arn #=> String
    #   resp.load_balancers[0].dns_name #=> String
    #   resp.load_balancers[0].canonical_hosted_zone_id #=> String
    #   resp.load_balancers[0].created_time #=> Time
    #   resp.load_balancers[0].load_balancer_name #=> String
    #   resp.load_balancers[0].scheme #=> String, one of "internet-facing", "internal"
    #   resp.load_balancers[0].vpc_id #=> String
    #   resp.load_balancers[0].state.code #=> String, one of "active", "provisioning", "failed"
    #   resp.load_balancers[0].state.reason #=> String
    #   resp.load_balancers[0].type #=> String, one of "application"
    #   resp.load_balancers[0].availability_zones #=> Array
    #   resp.load_balancers[0].availability_zones[0].zone_name #=> String
    #   resp.load_balancers[0].availability_zones[0].subnet_id #=> String
    #   resp.load_balancers[0].security_groups #=> Array
    #   resp.load_balancers[0].security_groups[0] #=> String
    #   resp.load_balancers[0].ip_address_type #=> String, one of "ipv4", "dualstack"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateLoadBalancer AWS API Documentation
    #
    # @overload create_load_balancer(params = {})
    # @param [Hash] params ({})
    def create_load_balancer(params = {}, options = {})
      req = build_request(:create_load_balancer, params)
      req.send_request(options)
    end

    # Creates a rule for the specified listener.
    #
    # Each rule can have one action and one condition. Rules are evaluated
    # in priority order, from the lowest value to the highest value. When
    # the condition for a rule is met, the specified action is taken. If no
    # conditions are met, the default action for the default rule is taken.
    # For more information, see [Listener Rules][1] in the *Application Load
    # Balancers Guide*.
    #
    # To view your current rules, use DescribeRules. To update a rule, use
    # ModifyRule. To set the priorities of your rules, use
    # SetRulePriorities. To delete a rule, use DeleteRule.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#listener-rules
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #
    # @option params [required, Array<Types::RuleCondition>] :conditions
    #   A condition. Each condition specifies a field name and a single value.
    #
    #   If the field name is `host-header`, you can specify a single host name
    #   (for example, my.example.com). A host name is case insensitive, can be
    #   up to 128 characters in length, and can contain any of the following
    #   characters. Note that you can include up to three wildcard characters.
    #
    #   * A-Z, a-z, 0-9
    #
    #   * \- .
    #
    #   * * (matches 0 or more characters)
    #
    #   * ? (matches exactly 1 character)
    #
    #   If the field name is `path-pattern`, you can specify a single path
    #   pattern. A path pattern is case sensitive, can be up to 128 characters
    #   in length, and can contain any of the following characters. Note that
    #   you can include up to three wildcard characters.
    #
    #   * A-Z, a-z, 0-9
    #
    #   * \_ - . $ / ~ " ' @ : +
    #
    #   * &amp; (using &amp;amp;)
    #
    #   * * (matches 0 or more characters)
    #
    #   * ? (matches exactly 1 character)
    #
    # @option params [required, Integer] :priority
    #   The priority for the rule. A listener can't have multiple rules with
    #   the same priority.
    #
    # @option params [required, Array<Types::Action>] :actions
    #   An action. Each action has the type `forward` and specifies a target
    #   group.
    #
    # @return [Types::CreateRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuleOutput#rules #rules} => Array&lt;Types::Rule&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule({
    #     listener_arn: "ListenerArn", # required
    #     conditions: [ # required
    #       {
    #         field: "ConditionFieldName",
    #         values: ["StringValue"],
    #       },
    #     ],
    #     priority: 1, # required
    #     actions: [ # required
    #       {
    #         type: "forward", # required, accepts forward
    #         target_group_arn: "TargetGroupArn", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.rules #=> Array
    #   resp.rules[0].rule_arn #=> String
    #   resp.rules[0].priority #=> String
    #   resp.rules[0].conditions #=> Array
    #   resp.rules[0].conditions[0].field #=> String
    #   resp.rules[0].conditions[0].values #=> Array
    #   resp.rules[0].conditions[0].values[0] #=> String
    #   resp.rules[0].actions #=> Array
    #   resp.rules[0].actions[0].type #=> String, one of "forward"
    #   resp.rules[0].actions[0].target_group_arn #=> String
    #   resp.rules[0].is_default #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateRule AWS API Documentation
    #
    # @overload create_rule(params = {})
    # @param [Hash] params ({})
    def create_rule(params = {}, options = {})
      req = build_request(:create_rule, params)
      req.send_request(options)
    end

    # Creates a target group.
    #
    # To register targets with the target group, use RegisterTargets. To
    # update the health check settings for the target group, use
    # ModifyTargetGroup. To monitor the health of targets in the target
    # group, use DescribeTargetHealth.
    #
    # To route traffic to the targets in a target group, specify the target
    # group in an action using CreateListener or CreateRule.
    #
    # To delete a target group, use DeleteTargetGroup.
    #
    # For more information, see [Target Groups for Your Application Load
    # Balancers][1] in the *Application Load Balancers Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html
    #
    # @option params [required, String] :name
    #   The name of the target group.
    #
    #   This name must be unique per region per account, can have a maximum of
    #   32 characters, must contain only alphanumeric characters or hyphens,
    #   and must not begin or end with a hyphen.
    #
    # @option params [required, String] :protocol
    #   The protocol to use for routing traffic to the targets.
    #
    # @option params [required, Integer] :port
    #   The port on which the targets receive traffic. This port is used
    #   unless you specify a port override when registering the target.
    #
    # @option params [required, String] :vpc_id
    #   The identifier of the virtual private cloud (VPC).
    #
    # @option params [String] :health_check_protocol
    #   The protocol the load balancer uses when performing health checks on
    #   targets. The default is the HTTP protocol.
    #
    # @option params [String] :health_check_port
    #   The port the load balancer uses when performing health checks on
    #   targets. The default is `traffic-port`, which indicates the port on
    #   which each target receives traffic from the load balancer.
    #
    # @option params [String] :health_check_path
    #   The ping path that is the destination on the targets for health
    #   checks. The default is /.
    #
    # @option params [Integer] :health_check_interval_seconds
    #   The approximate amount of time, in seconds, between health checks of
    #   an individual target. The default is 30 seconds.
    #
    # @option params [Integer] :health_check_timeout_seconds
    #   The amount of time, in seconds, during which no response from a target
    #   means a failed health check. The default is 5 seconds.
    #
    # @option params [Integer] :healthy_threshold_count
    #   The number of consecutive health checks successes required before
    #   considering an unhealthy target healthy. The default is 5.
    #
    # @option params [Integer] :unhealthy_threshold_count
    #   The number of consecutive health check failures required before
    #   considering a target unhealthy. The default is 2.
    #
    # @option params [Types::Matcher] :matcher
    #   The HTTP codes to use when checking for a successful response from a
    #   target. The default is 200.
    #
    # @return [Types::CreateTargetGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTargetGroupOutput#target_groups #target_groups} => Array&lt;Types::TargetGroup&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_target_group({
    #     name: "TargetGroupName", # required
    #     protocol: "HTTP", # required, accepts HTTP, HTTPS
    #     port: 1, # required
    #     vpc_id: "VpcId", # required
    #     health_check_protocol: "HTTP", # accepts HTTP, HTTPS
    #     health_check_port: "HealthCheckPort",
    #     health_check_path: "Path",
    #     health_check_interval_seconds: 1,
    #     health_check_timeout_seconds: 1,
    #     healthy_threshold_count: 1,
    #     unhealthy_threshold_count: 1,
    #     matcher: {
    #       http_code: "HttpCode", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.target_groups #=> Array
    #   resp.target_groups[0].target_group_arn #=> String
    #   resp.target_groups[0].target_group_name #=> String
    #   resp.target_groups[0].protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.target_groups[0].port #=> Integer
    #   resp.target_groups[0].vpc_id #=> String
    #   resp.target_groups[0].health_check_protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.target_groups[0].health_check_port #=> String
    #   resp.target_groups[0].health_check_interval_seconds #=> Integer
    #   resp.target_groups[0].health_check_timeout_seconds #=> Integer
    #   resp.target_groups[0].healthy_threshold_count #=> Integer
    #   resp.target_groups[0].unhealthy_threshold_count #=> Integer
    #   resp.target_groups[0].health_check_path #=> String
    #   resp.target_groups[0].matcher.http_code #=> String
    #   resp.target_groups[0].load_balancer_arns #=> Array
    #   resp.target_groups[0].load_balancer_arns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateTargetGroup AWS API Documentation
    #
    # @overload create_target_group(params = {})
    # @param [Hash] params ({})
    def create_target_group(params = {}, options = {})
      req = build_request(:create_target_group, params)
      req.send_request(options)
    end

    # Deletes the specified listener.
    #
    # Alternatively, your listener is deleted when you delete the load
    # balancer it is attached to using DeleteLoadBalancer.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_listener({
    #     listener_arn: "ListenerArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteListener AWS API Documentation
    #
    # @overload delete_listener(params = {})
    # @param [Hash] params ({})
    def delete_listener(params = {}, options = {})
      req = build_request(:delete_listener, params)
      req.send_request(options)
    end

    # Deletes the specified Application Load Balancer and its attached
    # listeners.
    #
    # You can't delete a load balancer if deletion protection is enabled.
    # If the load balancer does not exist or has already been deleted, the
    # call succeeds.
    #
    # Deleting a load balancer does not affect its registered targets. For
    # example, your EC2 instances continue to run and are still registered
    # to their target groups. If you no longer need these EC2 instances, you
    # can stop or terminate them.
    #
    # @option params [required, String] :load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_load_balancer({
    #     load_balancer_arn: "LoadBalancerArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteLoadBalancer AWS API Documentation
    #
    # @overload delete_load_balancer(params = {})
    # @param [Hash] params ({})
    def delete_load_balancer(params = {}, options = {})
      req = build_request(:delete_load_balancer, params)
      req.send_request(options)
    end

    # Deletes the specified rule.
    #
    # @option params [required, String] :rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule({
    #     rule_arn: "RuleArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteRule AWS API Documentation
    #
    # @overload delete_rule(params = {})
    # @param [Hash] params ({})
    def delete_rule(params = {}, options = {})
      req = build_request(:delete_rule, params)
      req.send_request(options)
    end

    # Deletes the specified target group.
    #
    # You can delete a target group if it is not referenced by any actions.
    # Deleting a target group also deletes any associated health checks.
    #
    # @option params [required, String] :target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_target_group({
    #     target_group_arn: "TargetGroupArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteTargetGroup AWS API Documentation
    #
    # @overload delete_target_group(params = {})
    # @param [Hash] params ({})
    def delete_target_group(params = {}, options = {})
      req = build_request(:delete_target_group, params)
      req.send_request(options)
    end

    # Deregisters the specified targets from the specified target group.
    # After the targets are deregistered, they no longer receive traffic
    # from the load balancer.
    #
    # @option params [required, String] :target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #
    # @option params [required, Array<Types::TargetDescription>] :targets
    #   The targets. If you specified a port override when you registered a
    #   target, you must specify both the target ID and the port when you
    #   deregister it.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_targets({
    #     target_group_arn: "TargetGroupArn", # required
    #     targets: [ # required
    #       {
    #         id: "TargetId", # required
    #         port: 1,
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeregisterTargets AWS API Documentation
    #
    # @overload deregister_targets(params = {})
    # @param [Hash] params ({})
    def deregister_targets(params = {}, options = {})
      req = build_request(:deregister_targets, params)
      req.send_request(options)
    end

    # Describes the current Elastic Load Balancing resource limits for your
    # AWS account.
    #
    # For more information, see [Limits for Your Application Load
    # Balancer][1] in the *Application Load Balancer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call.)
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return with this call.
    #
    # @return [Types::DescribeAccountLimitsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountLimitsOutput#limits #limits} => Array&lt;Types::Limit&gt;
    #   * {Types::DescribeAccountLimitsOutput#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_limits({
    #     marker: "Marker",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.limits #=> Array
    #   resp.limits[0].name #=> String
    #   resp.limits[0].max #=> String
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeAccountLimits AWS API Documentation
    #
    # @overload describe_account_limits(params = {})
    # @param [Hash] params ({})
    def describe_account_limits(params = {}, options = {})
      req = build_request(:describe_account_limits, params)
      req.send_request(options)
    end

    # Describes the specified listeners or the listeners for the specified
    # Application Load Balancer. You must specify either a load balancer or
    # one or more listeners.
    #
    # @option params [String] :load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #
    # @option params [Array<String>] :listener_arns
    #   The Amazon Resource Names (ARN) of the listeners.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call.)
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return with this call.
    #
    # @return [Types::DescribeListenersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeListenersOutput#listeners #listeners} => Array&lt;Types::Listener&gt;
    #   * {Types::DescribeListenersOutput#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_listeners({
    #     load_balancer_arn: "LoadBalancerArn",
    #     listener_arns: ["ListenerArn"],
    #     marker: "Marker",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.listeners #=> Array
    #   resp.listeners[0].listener_arn #=> String
    #   resp.listeners[0].load_balancer_arn #=> String
    #   resp.listeners[0].port #=> Integer
    #   resp.listeners[0].protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.listeners[0].certificates #=> Array
    #   resp.listeners[0].certificates[0].certificate_arn #=> String
    #   resp.listeners[0].ssl_policy #=> String
    #   resp.listeners[0].default_actions #=> Array
    #   resp.listeners[0].default_actions[0].type #=> String, one of "forward"
    #   resp.listeners[0].default_actions[0].target_group_arn #=> String
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeListeners AWS API Documentation
    #
    # @overload describe_listeners(params = {})
    # @param [Hash] params ({})
    def describe_listeners(params = {}, options = {})
      req = build_request(:describe_listeners, params)
      req.send_request(options)
    end

    # Describes the attributes for the specified Application Load Balancer.
    #
    # @option params [required, String] :load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #
    # @return [Types::DescribeLoadBalancerAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLoadBalancerAttributesOutput#attributes #attributes} => Array&lt;Types::LoadBalancerAttribute&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancer_attributes({
    #     load_balancer_arn: "LoadBalancerArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].key #=> String
    #   resp.attributes[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeLoadBalancerAttributes AWS API Documentation
    #
    # @overload describe_load_balancer_attributes(params = {})
    # @param [Hash] params ({})
    def describe_load_balancer_attributes(params = {}, options = {})
      req = build_request(:describe_load_balancer_attributes, params)
      req.send_request(options)
    end

    # Describes the specified Application Load Balancers or all of your
    # Application Load Balancers.
    #
    # To describe the listeners for a load balancer, use DescribeListeners.
    # To describe the attributes for a load balancer, use
    # DescribeLoadBalancerAttributes.
    #
    # @option params [Array<String>] :load_balancer_arns
    #   The Amazon Resource Names (ARN) of the load balancers. You can specify
    #   up to 20 load balancers in a single call.
    #
    # @option params [Array<String>] :names
    #   The names of the load balancers.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call.)
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return with this call.
    #
    # @return [Types::DescribeLoadBalancersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLoadBalancersOutput#load_balancers #load_balancers} => Array&lt;Types::LoadBalancer&gt;
    #   * {Types::DescribeLoadBalancersOutput#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancers({
    #     load_balancer_arns: ["LoadBalancerArn"],
    #     names: ["LoadBalancerName"],
    #     marker: "Marker",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.load_balancers #=> Array
    #   resp.load_balancers[0].load_balancer_arn #=> String
    #   resp.load_balancers[0].dns_name #=> String
    #   resp.load_balancers[0].canonical_hosted_zone_id #=> String
    #   resp.load_balancers[0].created_time #=> Time
    #   resp.load_balancers[0].load_balancer_name #=> String
    #   resp.load_balancers[0].scheme #=> String, one of "internet-facing", "internal"
    #   resp.load_balancers[0].vpc_id #=> String
    #   resp.load_balancers[0].state.code #=> String, one of "active", "provisioning", "failed"
    #   resp.load_balancers[0].state.reason #=> String
    #   resp.load_balancers[0].type #=> String, one of "application"
    #   resp.load_balancers[0].availability_zones #=> Array
    #   resp.load_balancers[0].availability_zones[0].zone_name #=> String
    #   resp.load_balancers[0].availability_zones[0].subnet_id #=> String
    #   resp.load_balancers[0].security_groups #=> Array
    #   resp.load_balancers[0].security_groups[0] #=> String
    #   resp.load_balancers[0].ip_address_type #=> String, one of "ipv4", "dualstack"
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeLoadBalancers AWS API Documentation
    #
    # @overload describe_load_balancers(params = {})
    # @param [Hash] params ({})
    def describe_load_balancers(params = {}, options = {})
      req = build_request(:describe_load_balancers, params)
      req.send_request(options)
    end

    # Describes the specified rules or the rules for the specified listener.
    # You must specify either a listener or one or more rules.
    #
    # @option params [String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #
    # @option params [Array<String>] :rule_arns
    #   The Amazon Resource Names (ARN) of the rules.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call.)
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return with this call.
    #
    # @return [Types::DescribeRulesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRulesOutput#rules #rules} => Array&lt;Types::Rule&gt;
    #   * {Types::DescribeRulesOutput#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rules({
    #     listener_arn: "ListenerArn",
    #     rule_arns: ["RuleArn"],
    #     marker: "Marker",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.rules #=> Array
    #   resp.rules[0].rule_arn #=> String
    #   resp.rules[0].priority #=> String
    #   resp.rules[0].conditions #=> Array
    #   resp.rules[0].conditions[0].field #=> String
    #   resp.rules[0].conditions[0].values #=> Array
    #   resp.rules[0].conditions[0].values[0] #=> String
    #   resp.rules[0].actions #=> Array
    #   resp.rules[0].actions[0].type #=> String, one of "forward"
    #   resp.rules[0].actions[0].target_group_arn #=> String
    #   resp.rules[0].is_default #=> Boolean
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeRules AWS API Documentation
    #
    # @overload describe_rules(params = {})
    # @param [Hash] params ({})
    def describe_rules(params = {}, options = {})
      req = build_request(:describe_rules, params)
      req.send_request(options)
    end

    # Describes the specified policies or all policies used for SSL
    # negotiation.
    #
    # For more information, see [Security Policies][1] in the *Application
    # Load Balancers Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies
    #
    # @option params [Array<String>] :names
    #   The names of the policies.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call.)
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return with this call.
    #
    # @return [Types::DescribeSSLPoliciesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSSLPoliciesOutput#ssl_policies #ssl_policies} => Array&lt;Types::SslPolicy&gt;
    #   * {Types::DescribeSSLPoliciesOutput#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ssl_policies({
    #     names: ["SslPolicyName"],
    #     marker: "Marker",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.ssl_policies #=> Array
    #   resp.ssl_policies[0].ssl_protocols #=> Array
    #   resp.ssl_policies[0].ssl_protocols[0] #=> String
    #   resp.ssl_policies[0].ciphers #=> Array
    #   resp.ssl_policies[0].ciphers[0].name #=> String
    #   resp.ssl_policies[0].ciphers[0].priority #=> Integer
    #   resp.ssl_policies[0].name #=> String
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeSSLPolicies AWS API Documentation
    #
    # @overload describe_ssl_policies(params = {})
    # @param [Hash] params ({})
    def describe_ssl_policies(params = {}, options = {})
      req = build_request(:describe_ssl_policies, params)
      req.send_request(options)
    end

    # Describes the tags for the specified resources. You can describe the
    # tags for one or more Application Load Balancers and target groups.
    #
    # @option params [required, Array<String>] :resource_arns
    #   The Amazon Resource Names (ARN) of the resources.
    #
    # @return [Types::DescribeTagsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTagsOutput#tag_descriptions #tag_descriptions} => Array&lt;Types::TagDescription&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags({
    #     resource_arns: ["ResourceArn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_descriptions #=> Array
    #   resp.tag_descriptions[0].resource_arn #=> String
    #   resp.tag_descriptions[0].tags #=> Array
    #   resp.tag_descriptions[0].tags[0].key #=> String
    #   resp.tag_descriptions[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTags AWS API Documentation
    #
    # @overload describe_tags(params = {})
    # @param [Hash] params ({})
    def describe_tags(params = {}, options = {})
      req = build_request(:describe_tags, params)
      req.send_request(options)
    end

    # Describes the attributes for the specified target group.
    #
    # @option params [required, String] :target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #
    # @return [Types::DescribeTargetGroupAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTargetGroupAttributesOutput#attributes #attributes} => Array&lt;Types::TargetGroupAttribute&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_target_group_attributes({
    #     target_group_arn: "TargetGroupArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].key #=> String
    #   resp.attributes[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTargetGroupAttributes AWS API Documentation
    #
    # @overload describe_target_group_attributes(params = {})
    # @param [Hash] params ({})
    def describe_target_group_attributes(params = {}, options = {})
      req = build_request(:describe_target_group_attributes, params)
      req.send_request(options)
    end

    # Describes the specified target groups or all of your target groups. By
    # default, all target groups are described. Alternatively, you can
    # specify one of the following to filter the results: the ARN of the
    # load balancer, the names of one or more target groups, or the ARNs of
    # one or more target groups.
    #
    # To describe the targets for a target group, use DescribeTargetHealth.
    # To describe the attributes of a target group, use
    # DescribeTargetGroupAttributes.
    #
    # @option params [String] :load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #
    # @option params [Array<String>] :target_group_arns
    #   The Amazon Resource Names (ARN) of the target groups.
    #
    # @option params [Array<String>] :names
    #   The names of the target groups.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call.)
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return with this call.
    #
    # @return [Types::DescribeTargetGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTargetGroupsOutput#target_groups #target_groups} => Array&lt;Types::TargetGroup&gt;
    #   * {Types::DescribeTargetGroupsOutput#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_target_groups({
    #     load_balancer_arn: "LoadBalancerArn",
    #     target_group_arns: ["TargetGroupArn"],
    #     names: ["TargetGroupName"],
    #     marker: "Marker",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.target_groups #=> Array
    #   resp.target_groups[0].target_group_arn #=> String
    #   resp.target_groups[0].target_group_name #=> String
    #   resp.target_groups[0].protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.target_groups[0].port #=> Integer
    #   resp.target_groups[0].vpc_id #=> String
    #   resp.target_groups[0].health_check_protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.target_groups[0].health_check_port #=> String
    #   resp.target_groups[0].health_check_interval_seconds #=> Integer
    #   resp.target_groups[0].health_check_timeout_seconds #=> Integer
    #   resp.target_groups[0].healthy_threshold_count #=> Integer
    #   resp.target_groups[0].unhealthy_threshold_count #=> Integer
    #   resp.target_groups[0].health_check_path #=> String
    #   resp.target_groups[0].matcher.http_code #=> String
    #   resp.target_groups[0].load_balancer_arns #=> Array
    #   resp.target_groups[0].load_balancer_arns[0] #=> String
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTargetGroups AWS API Documentation
    #
    # @overload describe_target_groups(params = {})
    # @param [Hash] params ({})
    def describe_target_groups(params = {}, options = {})
      req = build_request(:describe_target_groups, params)
      req.send_request(options)
    end

    # Describes the health of the specified targets or all of your targets.
    #
    # @option params [required, String] :target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #
    # @option params [Array<Types::TargetDescription>] :targets
    #   The targets.
    #
    # @return [Types::DescribeTargetHealthOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTargetHealthOutput#target_health_descriptions #target_health_descriptions} => Array&lt;Types::TargetHealthDescription&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_target_health({
    #     target_group_arn: "TargetGroupArn", # required
    #     targets: [
    #       {
    #         id: "TargetId", # required
    #         port: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.target_health_descriptions #=> Array
    #   resp.target_health_descriptions[0].target.id #=> String
    #   resp.target_health_descriptions[0].target.port #=> Integer
    #   resp.target_health_descriptions[0].health_check_port #=> String
    #   resp.target_health_descriptions[0].target_health.state #=> String, one of "initial", "healthy", "unhealthy", "unused", "draining"
    #   resp.target_health_descriptions[0].target_health.reason #=> String, one of "Elb.RegistrationInProgress", "Elb.InitialHealthChecking", "Target.ResponseCodeMismatch", "Target.Timeout", "Target.FailedHealthChecks", "Target.NotRegistered", "Target.NotInUse", "Target.DeregistrationInProgress", "Target.InvalidState", "Elb.InternalError"
    #   resp.target_health_descriptions[0].target_health.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTargetHealth AWS API Documentation
    #
    # @overload describe_target_health(params = {})
    # @param [Hash] params ({})
    def describe_target_health(params = {}, options = {})
      req = build_request(:describe_target_health, params)
      req.send_request(options)
    end

    # Modifies the specified properties of the specified listener.
    #
    # Any properties that you do not specify retain their current values.
    # However, changing the protocol from HTTPS to HTTP removes the security
    # policy and SSL certificate properties. If you change the protocol from
    # HTTP to HTTPS, you must add the security policy and server
    # certificate.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #
    # @option params [Integer] :port
    #   The port for connections from clients to the load balancer.
    #
    # @option params [String] :protocol
    #   The protocol for connections from clients to the load balancer.
    #
    # @option params [String] :ssl_policy
    #   The security policy that defines which protocols and ciphers are
    #   supported. For more information, see [Security Policies][1] in the
    #   *Application Load Balancers Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies
    #
    # @option params [Array<Types::Certificate>] :certificates
    #   The SSL server certificate.
    #
    # @option params [Array<Types::Action>] :default_actions
    #   The default actions.
    #
    # @return [Types::ModifyListenerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyListenerOutput#listeners #listeners} => Array&lt;Types::Listener&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_listener({
    #     listener_arn: "ListenerArn", # required
    #     port: 1,
    #     protocol: "HTTP", # accepts HTTP, HTTPS
    #     ssl_policy: "SslPolicyName",
    #     certificates: [
    #       {
    #         certificate_arn: "CertificateArn",
    #       },
    #     ],
    #     default_actions: [
    #       {
    #         type: "forward", # required, accepts forward
    #         target_group_arn: "TargetGroupArn", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.listeners #=> Array
    #   resp.listeners[0].listener_arn #=> String
    #   resp.listeners[0].load_balancer_arn #=> String
    #   resp.listeners[0].port #=> Integer
    #   resp.listeners[0].protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.listeners[0].certificates #=> Array
    #   resp.listeners[0].certificates[0].certificate_arn #=> String
    #   resp.listeners[0].ssl_policy #=> String
    #   resp.listeners[0].default_actions #=> Array
    #   resp.listeners[0].default_actions[0].type #=> String, one of "forward"
    #   resp.listeners[0].default_actions[0].target_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyListener AWS API Documentation
    #
    # @overload modify_listener(params = {})
    # @param [Hash] params ({})
    def modify_listener(params = {}, options = {})
      req = build_request(:modify_listener, params)
      req.send_request(options)
    end

    # Modifies the specified attributes of the specified Application Load
    # Balancer.
    #
    # If any of the specified attributes can't be modified as requested,
    # the call fails. Any existing attributes that you do not modify retain
    # their current values.
    #
    # @option params [required, String] :load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #
    # @option params [required, Array<Types::LoadBalancerAttribute>] :attributes
    #   The load balancer attributes.
    #
    # @return [Types::ModifyLoadBalancerAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyLoadBalancerAttributesOutput#attributes #attributes} => Array&lt;Types::LoadBalancerAttribute&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_load_balancer_attributes({
    #     load_balancer_arn: "LoadBalancerArn", # required
    #     attributes: [ # required
    #       {
    #         key: "LoadBalancerAttributeKey",
    #         value: "LoadBalancerAttributeValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].key #=> String
    #   resp.attributes[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyLoadBalancerAttributes AWS API Documentation
    #
    # @overload modify_load_balancer_attributes(params = {})
    # @param [Hash] params ({})
    def modify_load_balancer_attributes(params = {}, options = {})
      req = build_request(:modify_load_balancer_attributes, params)
      req.send_request(options)
    end

    # Modifies the specified rule.
    #
    # Any existing properties that you do not modify retain their current
    # values.
    #
    # To modify the default action, use ModifyListener.
    #
    # @option params [required, String] :rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #
    # @option params [Array<Types::RuleCondition>] :conditions
    #   The conditions.
    #
    # @option params [Array<Types::Action>] :actions
    #   The actions.
    #
    # @return [Types::ModifyRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyRuleOutput#rules #rules} => Array&lt;Types::Rule&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_rule({
    #     rule_arn: "RuleArn", # required
    #     conditions: [
    #       {
    #         field: "ConditionFieldName",
    #         values: ["StringValue"],
    #       },
    #     ],
    #     actions: [
    #       {
    #         type: "forward", # required, accepts forward
    #         target_group_arn: "TargetGroupArn", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.rules #=> Array
    #   resp.rules[0].rule_arn #=> String
    #   resp.rules[0].priority #=> String
    #   resp.rules[0].conditions #=> Array
    #   resp.rules[0].conditions[0].field #=> String
    #   resp.rules[0].conditions[0].values #=> Array
    #   resp.rules[0].conditions[0].values[0] #=> String
    #   resp.rules[0].actions #=> Array
    #   resp.rules[0].actions[0].type #=> String, one of "forward"
    #   resp.rules[0].actions[0].target_group_arn #=> String
    #   resp.rules[0].is_default #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyRule AWS API Documentation
    #
    # @overload modify_rule(params = {})
    # @param [Hash] params ({})
    def modify_rule(params = {}, options = {})
      req = build_request(:modify_rule, params)
      req.send_request(options)
    end

    # Modifies the health checks used when evaluating the health state of
    # the targets in the specified target group.
    #
    # To monitor the health of the targets, use DescribeTargetHealth.
    #
    # @option params [required, String] :target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #
    # @option params [String] :health_check_protocol
    #   The protocol to use to connect with the target.
    #
    # @option params [String] :health_check_port
    #   The port to use to connect with the target.
    #
    # @option params [String] :health_check_path
    #   The ping path that is the destination for the health check request.
    #
    # @option params [Integer] :health_check_interval_seconds
    #   The approximate amount of time, in seconds, between health checks of
    #   an individual target.
    #
    # @option params [Integer] :health_check_timeout_seconds
    #   The amount of time, in seconds, during which no response means a
    #   failed health check.
    #
    # @option params [Integer] :healthy_threshold_count
    #   The number of consecutive health checks successes required before
    #   considering an unhealthy target healthy.
    #
    # @option params [Integer] :unhealthy_threshold_count
    #   The number of consecutive health check failures required before
    #   considering the target unhealthy.
    #
    # @option params [Types::Matcher] :matcher
    #   The HTTP codes to use when checking for a successful response from a
    #   target.
    #
    # @return [Types::ModifyTargetGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyTargetGroupOutput#target_groups #target_groups} => Array&lt;Types::TargetGroup&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_target_group({
    #     target_group_arn: "TargetGroupArn", # required
    #     health_check_protocol: "HTTP", # accepts HTTP, HTTPS
    #     health_check_port: "HealthCheckPort",
    #     health_check_path: "Path",
    #     health_check_interval_seconds: 1,
    #     health_check_timeout_seconds: 1,
    #     healthy_threshold_count: 1,
    #     unhealthy_threshold_count: 1,
    #     matcher: {
    #       http_code: "HttpCode", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.target_groups #=> Array
    #   resp.target_groups[0].target_group_arn #=> String
    #   resp.target_groups[0].target_group_name #=> String
    #   resp.target_groups[0].protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.target_groups[0].port #=> Integer
    #   resp.target_groups[0].vpc_id #=> String
    #   resp.target_groups[0].health_check_protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.target_groups[0].health_check_port #=> String
    #   resp.target_groups[0].health_check_interval_seconds #=> Integer
    #   resp.target_groups[0].health_check_timeout_seconds #=> Integer
    #   resp.target_groups[0].healthy_threshold_count #=> Integer
    #   resp.target_groups[0].unhealthy_threshold_count #=> Integer
    #   resp.target_groups[0].health_check_path #=> String
    #   resp.target_groups[0].matcher.http_code #=> String
    #   resp.target_groups[0].load_balancer_arns #=> Array
    #   resp.target_groups[0].load_balancer_arns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyTargetGroup AWS API Documentation
    #
    # @overload modify_target_group(params = {})
    # @param [Hash] params ({})
    def modify_target_group(params = {}, options = {})
      req = build_request(:modify_target_group, params)
      req.send_request(options)
    end

    # Modifies the specified attributes of the specified target group.
    #
    # @option params [required, String] :target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #
    # @option params [required, Array<Types::TargetGroupAttribute>] :attributes
    #   The attributes.
    #
    # @return [Types::ModifyTargetGroupAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyTargetGroupAttributesOutput#attributes #attributes} => Array&lt;Types::TargetGroupAttribute&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_target_group_attributes({
    #     target_group_arn: "TargetGroupArn", # required
    #     attributes: [ # required
    #       {
    #         key: "TargetGroupAttributeKey",
    #         value: "TargetGroupAttributeValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].key #=> String
    #   resp.attributes[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyTargetGroupAttributes AWS API Documentation
    #
    # @overload modify_target_group_attributes(params = {})
    # @param [Hash] params ({})
    def modify_target_group_attributes(params = {}, options = {})
      req = build_request(:modify_target_group_attributes, params)
      req.send_request(options)
    end

    # Registers the specified targets with the specified target group.
    #
    # By default, the load balancer routes requests to registered targets
    # using the protocol and port number for the target group.
    # Alternatively, you can override the port for a target when you
    # register it.
    #
    # The target must be in the virtual private cloud (VPC) that you
    # specified for the target group. If the target is an EC2 instance, it
    # must be in the `running` state when you register it.
    #
    # To remove a target from a target group, use DeregisterTargets.
    #
    # @option params [required, String] :target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #
    # @option params [required, Array<Types::TargetDescription>] :targets
    #   The targets. The default port for a target is the port for the target
    #   group. You can specify a port override. If a target is already
    #   registered, you can register it again using a different port.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_targets({
    #     target_group_arn: "TargetGroupArn", # required
    #     targets: [ # required
    #       {
    #         id: "TargetId", # required
    #         port: 1,
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RegisterTargets AWS API Documentation
    #
    # @overload register_targets(params = {})
    # @param [Hash] params ({})
    def register_targets(params = {}, options = {})
      req = build_request(:register_targets, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified resource.
    #
    # To list the current tags for your resources, use DescribeTags.
    #
    # @option params [required, Array<String>] :resource_arns
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys for the tags to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags({
    #     resource_arns: ["ResourceArn"], # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RemoveTags AWS API Documentation
    #
    # @overload remove_tags(params = {})
    # @param [Hash] params ({})
    def remove_tags(params = {}, options = {})
      req = build_request(:remove_tags, params)
      req.send_request(options)
    end

    # Sets the type of IP addresses used by the subnets of the specified
    # Application Load Balancer.
    #
    # @option params [required, String] :load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #
    # @option params [required, String] :ip_address_type
    #   The IP address type. The possible values are `ipv4` (for IPv4
    #   addresses) and `dualstack` (for IPv4 and IPv6 addresses). Internal
    #   load balancers must use `ipv4`.
    #
    # @return [Types::SetIpAddressTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetIpAddressTypeOutput#ip_address_type #ip_address_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_ip_address_type({
    #     load_balancer_arn: "LoadBalancerArn", # required
    #     ip_address_type: "ipv4", # required, accepts ipv4, dualstack
    #   })
    #
    # @example Response structure
    #
    #   resp.ip_address_type #=> String, one of "ipv4", "dualstack"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetIpAddressType AWS API Documentation
    #
    # @overload set_ip_address_type(params = {})
    # @param [Hash] params ({})
    def set_ip_address_type(params = {}, options = {})
      req = build_request(:set_ip_address_type, params)
      req.send_request(options)
    end

    # Sets the priorities of the specified rules.
    #
    # You can reorder the rules as long as there are no priority conflicts
    # in the new order. Any existing rules that you do not specify retain
    # their current priority.
    #
    # @option params [required, Array<Types::RulePriorityPair>] :rule_priorities
    #   The rule priorities.
    #
    # @return [Types::SetRulePrioritiesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetRulePrioritiesOutput#rules #rules} => Array&lt;Types::Rule&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_rule_priorities({
    #     rule_priorities: [ # required
    #       {
    #         rule_arn: "RuleArn",
    #         priority: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.rules #=> Array
    #   resp.rules[0].rule_arn #=> String
    #   resp.rules[0].priority #=> String
    #   resp.rules[0].conditions #=> Array
    #   resp.rules[0].conditions[0].field #=> String
    #   resp.rules[0].conditions[0].values #=> Array
    #   resp.rules[0].conditions[0].values[0] #=> String
    #   resp.rules[0].actions #=> Array
    #   resp.rules[0].actions[0].type #=> String, one of "forward"
    #   resp.rules[0].actions[0].target_group_arn #=> String
    #   resp.rules[0].is_default #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetRulePriorities AWS API Documentation
    #
    # @overload set_rule_priorities(params = {})
    # @param [Hash] params ({})
    def set_rule_priorities(params = {}, options = {})
      req = build_request(:set_rule_priorities, params)
      req.send_request(options)
    end

    # Associates the specified security groups with the specified load
    # balancer. The specified security groups override the previously
    # associated security groups.
    #
    # @option params [required, String] :load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #
    # @option params [required, Array<String>] :security_groups
    #   The IDs of the security groups.
    #
    # @return [Types::SetSecurityGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetSecurityGroupsOutput#security_group_ids #security_group_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_security_groups({
    #     load_balancer_arn: "LoadBalancerArn", # required
    #     security_groups: ["SecurityGroupId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_group_ids #=> Array
    #   resp.security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetSecurityGroups AWS API Documentation
    #
    # @overload set_security_groups(params = {})
    # @param [Hash] params ({})
    def set_security_groups(params = {}, options = {})
      req = build_request(:set_security_groups, params)
      req.send_request(options)
    end

    # Enables the Availability Zone for the specified subnets for the
    # specified load balancer. The specified subnets replace the previously
    # enabled subnets.
    #
    # @option params [required, String] :load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #
    # @option params [required, Array<String>] :subnets
    #   The IDs of the subnets. You must specify at least two subnets. You can
    #   add only one subnet per Availability Zone.
    #
    # @return [Types::SetSubnetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetSubnetsOutput#availability_zones #availability_zones} => Array&lt;Types::AvailabilityZone&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_subnets({
    #     load_balancer_arn: "LoadBalancerArn", # required
    #     subnets: ["SubnetId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.availability_zones #=> Array
    #   resp.availability_zones[0].zone_name #=> String
    #   resp.availability_zones[0].subnet_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetSubnets AWS API Documentation
    #
    # @overload set_subnets(params = {})
    # @param [Hash] params ({})
    def set_subnets(params = {}, options = {})
      req = build_request(:set_subnets, params)
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
      context[:gem_name] = 'aws-sdk-elasticloadbalancingv2'
      context[:gem_version] = '1.0.0.rc7'
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
    #     client.waiter_until(waiter_name, params)
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
    # | waiter_name             | params                     | :delay   | :max_attempts |
    # | ----------------------- | -------------------------- | -------- | ------------- |
    # | load_balancer_available | {#describe_load_balancers} | 15       | 40            |
    # | load_balancer_exists    | {#describe_load_balancers} | 15       | 40            |
    # | load_balancers_deleted  | {#describe_load_balancers} | 15       | 40            |
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
        load_balancer_available: Waiters::LoadBalancerAvailable,
        load_balancer_exists: Waiters::LoadBalancerExists,
        load_balancers_deleted: Waiters::LoadBalancersDeleted
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
