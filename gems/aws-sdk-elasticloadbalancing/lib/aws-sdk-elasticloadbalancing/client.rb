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
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:elasticloadbalancing)

module Aws::ElasticLoadBalancing
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :elasticloadbalancing

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

    # Adds the specified tags to the specified load balancer. Each load
    # balancer can have a maximum of 10 tags.
    #
    # Each tag consists of a key and an optional value. If a tag with the
    # same key is already associated with the load balancer, `AddTags`
    # updates its value.
    #
    # For more information, see [Tag Your Classic Load Balancer][1] in the
    # *Classic Load Balancers Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html
    #
    # @option params [required, Array<String>] :load_balancer_names
    #   The name of the load balancer. You can specify one load balancer only.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To add tags to a load balancer
    #
    #   # This example adds two tags to the specified load balancer.
    #
    #   resp = client.add_tags({
    #     load_balancer_names: [
    #       "my-load-balancer", 
    #     ], 
    #     tags: [
    #       {
    #         key: "project", 
    #         value: "lima", 
    #       }, 
    #       {
    #         key: "department", 
    #         value: "digital-media", 
    #       }, 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags({
    #     load_balancer_names: ["AccessPointName"], # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/AddTags AWS API Documentation
    #
    # @overload add_tags(params = {})
    # @param [Hash] params ({})
    def add_tags(params = {}, options = {})
      req = build_request(:add_tags, params)
      req.send_request(options)
    end

    # Associates one or more security groups with your load balancer in a
    # virtual private cloud (VPC). The specified security groups override
    # the previously associated security groups.
    #
    # For more information, see [Security Groups for Load Balancers in a
    # VPC][1] in the *Classic Load Balancers Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-security-groups.html#elb-vpc-security-groups
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, Array<String>] :security_groups
    #   The IDs of the security groups to associate with the load balancer.
    #   Note that you cannot specify the name of the security group.
    #
    # @return [Types::ApplySecurityGroupsToLoadBalancerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApplySecurityGroupsToLoadBalancerOutput#security_groups #security_groups} => Array&lt;String&gt;
    #
    #
    # @example Example: To associate a security group with a load balancer in a VPC
    #
    #   # This example associates a security group with the specified load balancer in a VPC.
    #
    #   resp = client.apply_security_groups_to_load_balancer({
    #     load_balancer_name: "my-load-balancer", 
    #     security_groups: [
    #       "sg-fc448899", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     security_groups: [
    #       "sg-fc448899", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.apply_security_groups_to_load_balancer({
    #     load_balancer_name: "AccessPointName", # required
    #     security_groups: ["SecurityGroupId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_groups #=> Array
    #   resp.security_groups[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/ApplySecurityGroupsToLoadBalancer AWS API Documentation
    #
    # @overload apply_security_groups_to_load_balancer(params = {})
    # @param [Hash] params ({})
    def apply_security_groups_to_load_balancer(params = {}, options = {})
      req = build_request(:apply_security_groups_to_load_balancer, params)
      req.send_request(options)
    end

    # Adds one or more subnets to the set of configured subnets for the
    # specified load balancer.
    #
    # The load balancer evenly distributes requests across all registered
    # subnets. For more information, see [Add or Remove Subnets for Your
    # Load Balancer in a VPC][1] in the *Classic Load Balancers Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-manage-subnets.html
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, Array<String>] :subnets
    #   The IDs of the subnets to add. You can add only one subnet per
    #   Availability Zone.
    #
    # @return [Types::AttachLoadBalancerToSubnetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AttachLoadBalancerToSubnetsOutput#subnets #subnets} => Array&lt;String&gt;
    #
    #
    # @example Example: To attach subnets to a load balancer
    #
    #   # This example adds the specified subnet to the set of configured subnets for the specified load balancer.
    #
    #   resp = client.attach_load_balancer_to_subnets({
    #     load_balancer_name: "my-load-balancer", 
    #     subnets: [
    #       "subnet-0ecac448", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     subnets: [
    #       "subnet-15aaab61", 
    #       "subnet-0ecac448", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_load_balancer_to_subnets({
    #     load_balancer_name: "AccessPointName", # required
    #     subnets: ["SubnetId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.subnets #=> Array
    #   resp.subnets[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/AttachLoadBalancerToSubnets AWS API Documentation
    #
    # @overload attach_load_balancer_to_subnets(params = {})
    # @param [Hash] params ({})
    def attach_load_balancer_to_subnets(params = {}, options = {})
      req = build_request(:attach_load_balancer_to_subnets, params)
      req.send_request(options)
    end

    # Specifies the health check settings to use when evaluating the health
    # state of your EC2 instances.
    #
    # For more information, see [Configure Health Checks for Your Load
    # Balancer][1] in the *Classic Load Balancers Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-healthchecks.html
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, Types::HealthCheck] :health_check
    #   The configuration information.
    #
    # @return [Types::ConfigureHealthCheckOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigureHealthCheckOutput#health_check #health_check} => Types::HealthCheck
    #
    #
    # @example Example: To specify the health check settings for your backend EC2 instances
    #
    #   # This example specifies the health check settings used to evaluate the health of your backend EC2 instances.
    #
    #   resp = client.configure_health_check({
    #     health_check: {
    #       healthy_threshold: 2, 
    #       interval: 30, 
    #       target: "HTTP:80/png", 
    #       timeout: 3, 
    #       unhealthy_threshold: 2, 
    #     }, 
    #     load_balancer_name: "my-load-balancer", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     health_check: {
    #       healthy_threshold: 2, 
    #       interval: 30, 
    #       target: "HTTP:80/png", 
    #       timeout: 3, 
    #       unhealthy_threshold: 2, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.configure_health_check({
    #     load_balancer_name: "AccessPointName", # required
    #     health_check: { # required
    #       target: "HealthCheckTarget", # required
    #       interval: 1, # required
    #       timeout: 1, # required
    #       unhealthy_threshold: 1, # required
    #       healthy_threshold: 1, # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.health_check.target #=> String
    #   resp.health_check.interval #=> Integer
    #   resp.health_check.timeout #=> Integer
    #   resp.health_check.unhealthy_threshold #=> Integer
    #   resp.health_check.healthy_threshold #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/ConfigureHealthCheck AWS API Documentation
    #
    # @overload configure_health_check(params = {})
    # @param [Hash] params ({})
    def configure_health_check(params = {}, options = {})
      req = build_request(:configure_health_check, params)
      req.send_request(options)
    end

    # Generates a stickiness policy with sticky session lifetimes that
    # follow that of an application-generated cookie. This policy can be
    # associated only with HTTP/HTTPS listeners.
    #
    # This policy is similar to the policy created by
    # CreateLBCookieStickinessPolicy, except that the lifetime of the
    # special Elastic Load Balancing cookie, `AWSELB`, follows the lifetime
    # of the application-generated cookie specified in the policy
    # configuration. The load balancer only inserts a new stickiness cookie
    # when the application response includes a new application cookie.
    #
    # If the application cookie is explicitly removed or expires, the
    # session stops being sticky until a new application cookie is issued.
    #
    # For more information, see [Application-Controlled Session
    # Stickiness][1] in the *Classic Load Balancers Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy being created. Policy names must consist of
    #   alphanumeric characters and dashes (-). This name must be unique
    #   within the set of policies for this load balancer.
    #
    # @option params [required, String] :cookie_name
    #   The name of the application cookie used for stickiness.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To generate a stickiness policy for your load balancer
    #
    #   # This example generates a stickiness policy that follows the sticky session lifetimes of the application-generated
    #   # cookie.
    #
    #   resp = client.create_app_cookie_stickiness_policy({
    #     cookie_name: "my-app-cookie", 
    #     load_balancer_name: "my-load-balancer", 
    #     policy_name: "my-app-cookie-policy", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_cookie_stickiness_policy({
    #     load_balancer_name: "AccessPointName", # required
    #     policy_name: "PolicyName", # required
    #     cookie_name: "CookieName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/CreateAppCookieStickinessPolicy AWS API Documentation
    #
    # @overload create_app_cookie_stickiness_policy(params = {})
    # @param [Hash] params ({})
    def create_app_cookie_stickiness_policy(params = {}, options = {})
      req = build_request(:create_app_cookie_stickiness_policy, params)
      req.send_request(options)
    end

    # Generates a stickiness policy with sticky session lifetimes controlled
    # by the lifetime of the browser (user-agent) or a specified expiration
    # period. This policy can be associated only with HTTP/HTTPS listeners.
    #
    # When a load balancer implements this policy, the load balancer uses a
    # special cookie to track the instance for each request. When the load
    # balancer receives a request, it first checks to see if this cookie is
    # present in the request. If so, the load balancer sends the request to
    # the application server specified in the cookie. If not, the load
    # balancer sends the request to a server that is chosen based on the
    # existing load-balancing algorithm.
    #
    # A cookie is inserted into the response for binding subsequent requests
    # from the same user to that server. The validity of the cookie is based
    # on the cookie expiration time, which is specified in the policy
    # configuration.
    #
    # For more information, see [Duration-Based Session Stickiness][1] in
    # the *Classic Load Balancers Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy being created. Policy names must consist of
    #   alphanumeric characters and dashes (-). This name must be unique
    #   within the set of policies for this load balancer.
    #
    # @option params [Integer] :cookie_expiration_period
    #   The time period, in seconds, after which the cookie should be
    #   considered stale. If you do not specify this parameter, the default
    #   value is 0, which indicates that the sticky session should last for
    #   the duration of the browser session.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To generate a duration-based stickiness policy for your load balancer
    #
    #   # This example generates a stickiness policy with sticky session lifetimes controlled by the specified expiration period.
    #
    #   resp = client.create_lb_cookie_stickiness_policy({
    #     cookie_expiration_period: 60, 
    #     load_balancer_name: "my-load-balancer", 
    #     policy_name: "my-duration-cookie-policy", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_lb_cookie_stickiness_policy({
    #     load_balancer_name: "AccessPointName", # required
    #     policy_name: "PolicyName", # required
    #     cookie_expiration_period: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/CreateLBCookieStickinessPolicy AWS API Documentation
    #
    # @overload create_lb_cookie_stickiness_policy(params = {})
    # @param [Hash] params ({})
    def create_lb_cookie_stickiness_policy(params = {}, options = {})
      req = build_request(:create_lb_cookie_stickiness_policy, params)
      req.send_request(options)
    end

    # Creates a Classic Load Balancer.
    #
    # You can add listeners, security groups, subnets, and tags when you
    # create your load balancer, or you can add them later using
    # CreateLoadBalancerListeners, ApplySecurityGroupsToLoadBalancer,
    # AttachLoadBalancerToSubnets, and AddTags.
    #
    # To describe your current load balancers, see DescribeLoadBalancers.
    # When you are finished with a load balancer, you can delete it using
    # DeleteLoadBalancer.
    #
    # You can create up to 20 load balancers per region per account. You can
    # request an increase for the number of load balancers for your account.
    # For more information, see [Limits for Your Classic Load Balancer][1]
    # in the *Classic Load Balancers Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    #   This name must be unique within your set of load balancers for the
    #   region, must have a maximum of 32 characters, must contain only
    #   alphanumeric characters or hyphens, and cannot begin or end with a
    #   hyphen.
    #
    # @option params [required, Array<Types::Listener>] :listeners
    #   The listeners.
    #
    #   For more information, see [Listeners for Your Classic Load
    #   Balancer][1] in the *Classic Load Balancers Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html
    #
    # @option params [Array<String>] :availability_zones
    #   One or more Availability Zones from the same region as the load
    #   balancer.
    #
    #   You must specify at least one Availability Zone.
    #
    #   You can add more Availability Zones after you create the load balancer
    #   using EnableAvailabilityZonesForLoadBalancer.
    #
    # @option params [Array<String>] :subnets
    #   The IDs of the subnets in your VPC to attach to the load balancer.
    #   Specify one subnet per Availability Zone specified in
    #   `AvailabilityZones`.
    #
    # @option params [Array<String>] :security_groups
    #   The IDs of the security groups to assign to the load balancer.
    #
    # @option params [String] :scheme
    #   The type of a load balancer. Valid only for load balancers in a VPC.
    #
    #   By default, Elastic Load Balancing creates an Internet-facing load
    #   balancer with a DNS name that resolves to public IP addresses. For
    #   more information about Internet-facing and Internal load balancers,
    #   see [Load Balancer Scheme][1] in the *Elastic Load Balancing User
    #   Guide*.
    #
    #   Specify `internal` to create a load balancer with a DNS name that
    #   resolves to private IP addresses.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/how-elastic-load-balancing-works.html#load-balancer-scheme
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags to assign to the load balancer.
    #
    #   For more information about tagging your load balancer, see [Tag Your
    #   Classic Load Balancer][1] in the *Classic Load Balancers Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html
    #
    # @return [Types::CreateAccessPointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccessPointOutput#dns_name #dns_name} => String
    #
    #
    # @example Example: To create an HTTP load balancer in a VPC
    #
    #   # This example creates a load balancer with an HTTP listener in a VPC.
    #
    #   resp = client.create_load_balancer({
    #     listeners: [
    #       {
    #         instance_port: 80, 
    #         instance_protocol: "HTTP", 
    #         load_balancer_port: 80, 
    #         protocol: "HTTP", 
    #       }, 
    #     ], 
    #     load_balancer_name: "my-load-balancer", 
    #     security_groups: [
    #       "sg-a61988c3", 
    #     ], 
    #     subnets: [
    #       "subnet-15aaab61", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     dns_name: "my-load-balancer-1234567890.us-west-2.elb.amazonaws.com", 
    #   }
    #
    # @example Example: To create an HTTP load balancer in EC2-Classic
    #
    #   # This example creates a load balancer with an HTTP listener in EC2-Classic.
    #
    #   resp = client.create_load_balancer({
    #     availability_zones: [
    #       "us-west-2a", 
    #     ], 
    #     listeners: [
    #       {
    #         instance_port: 80, 
    #         instance_protocol: "HTTP", 
    #         load_balancer_port: 80, 
    #         protocol: "HTTP", 
    #       }, 
    #     ], 
    #     load_balancer_name: "my-load-balancer", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     dns_name: "my-load-balancer-123456789.us-west-2.elb.amazonaws.com", 
    #   }
    #
    # @example Example: To create an HTTPS load balancer in a VPC
    #
    #   # This example creates a load balancer with an HTTPS listener in a VPC.
    #
    #   resp = client.create_load_balancer({
    #     listeners: [
    #       {
    #         instance_port: 80, 
    #         instance_protocol: "HTTP", 
    #         load_balancer_port: 80, 
    #         protocol: "HTTP", 
    #       }, 
    #       {
    #         instance_port: 80, 
    #         instance_protocol: "HTTP", 
    #         load_balancer_port: 443, 
    #         protocol: "HTTPS", 
    #         ssl_certificate_id: "arn:aws:iam::123456789012:server-certificate/my-server-cert", 
    #       }, 
    #     ], 
    #     load_balancer_name: "my-load-balancer", 
    #     security_groups: [
    #       "sg-a61988c3", 
    #     ], 
    #     subnets: [
    #       "subnet-15aaab61", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     dns_name: "my-load-balancer-1234567890.us-west-2.elb.amazonaws.com", 
    #   }
    #
    # @example Example: To create an HTTPS load balancer in EC2-Classic
    #
    #   # This example creates a load balancer with an HTTPS listener in EC2-Classic.
    #
    #   resp = client.create_load_balancer({
    #     availability_zones: [
    #       "us-west-2a", 
    #     ], 
    #     listeners: [
    #       {
    #         instance_port: 80, 
    #         instance_protocol: "HTTP", 
    #         load_balancer_port: 80, 
    #         protocol: "HTTP", 
    #       }, 
    #       {
    #         instance_port: 80, 
    #         instance_protocol: "HTTP", 
    #         load_balancer_port: 443, 
    #         protocol: "HTTPS", 
    #         ssl_certificate_id: "arn:aws:iam::123456789012:server-certificate/my-server-cert", 
    #       }, 
    #     ], 
    #     load_balancer_name: "my-load-balancer", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     dns_name: "my-load-balancer-123456789.us-west-2.elb.amazonaws.com", 
    #   }
    #
    # @example Example: To create an internal load balancer
    #
    #   # This example creates an internal load balancer with an HTTP listener in a VPC.
    #
    #   resp = client.create_load_balancer({
    #     listeners: [
    #       {
    #         instance_port: 80, 
    #         instance_protocol: "HTTP", 
    #         load_balancer_port: 80, 
    #         protocol: "HTTP", 
    #       }, 
    #     ], 
    #     load_balancer_name: "my-load-balancer", 
    #     scheme: "internal", 
    #     security_groups: [
    #       "sg-a61988c3", 
    #     ], 
    #     subnets: [
    #       "subnet-15aaab61", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     dns_name: "internal-my-load-balancer-123456789.us-west-2.elb.amazonaws.com", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_load_balancer({
    #     load_balancer_name: "AccessPointName", # required
    #     listeners: [ # required
    #       {
    #         protocol: "Protocol", # required
    #         load_balancer_port: 1, # required
    #         instance_protocol: "Protocol",
    #         instance_port: 1, # required
    #         ssl_certificate_id: "SSLCertificateId",
    #       },
    #     ],
    #     availability_zones: ["AvailabilityZone"],
    #     subnets: ["SubnetId"],
    #     security_groups: ["SecurityGroupId"],
    #     scheme: "LoadBalancerScheme",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.dns_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/CreateLoadBalancer AWS API Documentation
    #
    # @overload create_load_balancer(params = {})
    # @param [Hash] params ({})
    def create_load_balancer(params = {}, options = {})
      req = build_request(:create_load_balancer, params)
      req.send_request(options)
    end

    # Creates one or more listeners for the specified load balancer. If a
    # listener with the specified port does not already exist, it is
    # created; otherwise, the properties of the new listener must match the
    # properties of the existing listener.
    #
    # For more information, see [Listeners for Your Classic Load
    # Balancer][1] in the *Classic Load Balancers Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, Array<Types::Listener>] :listeners
    #   The listeners.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To create an HTTP listener for a load balancer
    #
    #   # This example creates a listener for your load balancer at port 80 using the HTTP protocol.
    #
    #   resp = client.create_load_balancer_listeners({
    #     listeners: [
    #       {
    #         instance_port: 80, 
    #         instance_protocol: "HTTP", 
    #         load_balancer_port: 80, 
    #         protocol: "HTTP", 
    #       }, 
    #     ], 
    #     load_balancer_name: "my-load-balancer", 
    #   })
    #
    # @example Example: To create an HTTPS listener for a load balancer
    #
    #   # This example creates a listener for your load balancer at port 443 using the HTTPS protocol.
    #
    #   resp = client.create_load_balancer_listeners({
    #     listeners: [
    #       {
    #         instance_port: 80, 
    #         instance_protocol: "HTTP", 
    #         load_balancer_port: 443, 
    #         protocol: "HTTPS", 
    #         ssl_certificate_id: "arn:aws:iam::123456789012:server-certificate/my-server-cert", 
    #       }, 
    #     ], 
    #     load_balancer_name: "my-load-balancer", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_load_balancer_listeners({
    #     load_balancer_name: "AccessPointName", # required
    #     listeners: [ # required
    #       {
    #         protocol: "Protocol", # required
    #         load_balancer_port: 1, # required
    #         instance_protocol: "Protocol",
    #         instance_port: 1, # required
    #         ssl_certificate_id: "SSLCertificateId",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/CreateLoadBalancerListeners AWS API Documentation
    #
    # @overload create_load_balancer_listeners(params = {})
    # @param [Hash] params ({})
    def create_load_balancer_listeners(params = {}, options = {})
      req = build_request(:create_load_balancer_listeners, params)
      req.send_request(options)
    end

    # Creates a policy with the specified attributes for the specified load
    # balancer.
    #
    # Policies are settings that are saved for your load balancer and that
    # can be applied to the listener or the application server, depending on
    # the policy type.
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, String] :policy_name
    #   The name of the load balancer policy to be created. This name must be
    #   unique within the set of policies for this load balancer.
    #
    # @option params [required, String] :policy_type_name
    #   The name of the base policy type. To get the list of policy types, use
    #   DescribeLoadBalancerPolicyTypes.
    #
    # @option params [Array<Types::PolicyAttribute>] :policy_attributes
    #   The policy attributes.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To create a policy that enables Proxy Protocol on a load balancer
    #
    #   # This example creates a policy that enables Proxy Protocol on the specified load balancer.
    #
    #   resp = client.create_load_balancer_policy({
    #     load_balancer_name: "my-load-balancer", 
    #     policy_attributes: [
    #       {
    #         attribute_name: "ProxyProtocol", 
    #         attribute_value: "true", 
    #       }, 
    #     ], 
    #     policy_name: "my-ProxyProtocol-policy", 
    #     policy_type_name: "ProxyProtocolPolicyType", 
    #   })
    #
    # @example Example: To create a public key policy
    #
    #   # This example creates a public key policy.
    #
    #   resp = client.create_load_balancer_policy({
    #     load_balancer_name: "my-load-balancer", 
    #     policy_attributes: [
    #       {
    #         attribute_name: "PublicKey", 
    #         attribute_value: "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwAYUjnfyEyXr1pxjhFWBpMlggUcqoi3kl+dS74kj//c6x7ROtusUaeQCTgIUkayttRDWchuqo1pHC1u+n5xxXnBBe2ejbb2WRsKIQ5rXEeixsjFpFsojpSQKkzhVGI6mJVZBJDVKSHmswnwLBdofLhzvllpovBPTHe+o4haAWvDBALJU0pkSI1FecPHcs2hwxf14zHoXy1e2k36A64nXW43wtfx5qcVSIxtCEOjnYRg7RPvybaGfQ+v6Iaxb/+7J5kEvZhTFQId+bSiJImF1FSUT1W1xwzBZPUbcUkkXDj45vC2s3Z8E+Lk7a3uZhvsQHLZnrfuWjBWGWvZ/MhZYgEXAMPLE", 
    #       }, 
    #     ], 
    #     policy_name: "my-PublicKey-policy", 
    #     policy_type_name: "PublicKeyPolicyType", 
    #   })
    #
    # @example Example: To create a backend server authentication policy
    #
    #   # This example creates a backend server authentication policy that enables authentication on your backend instance using a
    #   # public key policy.
    #
    #   resp = client.create_load_balancer_policy({
    #     load_balancer_name: "my-load-balancer", 
    #     policy_attributes: [
    #       {
    #         attribute_name: "PublicKeyPolicyName", 
    #         attribute_value: "my-PublicKey-policy", 
    #       }, 
    #     ], 
    #     policy_name: "my-authentication-policy", 
    #     policy_type_name: "BackendServerAuthenticationPolicyType", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_load_balancer_policy({
    #     load_balancer_name: "AccessPointName", # required
    #     policy_name: "PolicyName", # required
    #     policy_type_name: "PolicyTypeName", # required
    #     policy_attributes: [
    #       {
    #         attribute_name: "AttributeName",
    #         attribute_value: "AttributeValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/CreateLoadBalancerPolicy AWS API Documentation
    #
    # @overload create_load_balancer_policy(params = {})
    # @param [Hash] params ({})
    def create_load_balancer_policy(params = {}, options = {})
      req = build_request(:create_load_balancer_policy, params)
      req.send_request(options)
    end

    # Deletes the specified load balancer.
    #
    # If you are attempting to recreate a load balancer, you must
    # reconfigure all settings. The DNS name associated with a deleted load
    # balancer are no longer usable. The name and associated DNS record of
    # the deleted load balancer no longer exist and traffic sent to any of
    # its IP addresses is no longer delivered to your instances.
    #
    # If the load balancer does not exist or has already been deleted, the
    # call to `DeleteLoadBalancer` still succeeds.
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a load balancer
    #
    #   # This example deletes the specified load balancer.
    #
    #   resp = client.delete_load_balancer({
    #     load_balancer_name: "my-load-balancer", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_load_balancer({
    #     load_balancer_name: "AccessPointName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DeleteLoadBalancer AWS API Documentation
    #
    # @overload delete_load_balancer(params = {})
    # @param [Hash] params ({})
    def delete_load_balancer(params = {}, options = {})
      req = build_request(:delete_load_balancer, params)
      req.send_request(options)
    end

    # Deletes the specified listeners from the specified load balancer.
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, Array<Integer>] :load_balancer_ports
    #   The client port numbers of the listeners.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a listener from your load balancer
    #
    #   # This example deletes the listener for the specified port from the specified load balancer.
    #
    #   resp = client.delete_load_balancer_listeners({
    #     load_balancer_name: "my-load-balancer", 
    #     load_balancer_ports: [
    #       80, 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_load_balancer_listeners({
    #     load_balancer_name: "AccessPointName", # required
    #     load_balancer_ports: [1], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DeleteLoadBalancerListeners AWS API Documentation
    #
    # @overload delete_load_balancer_listeners(params = {})
    # @param [Hash] params ({})
    def delete_load_balancer_listeners(params = {}, options = {})
      req = build_request(:delete_load_balancer_listeners, params)
      req.send_request(options)
    end

    # Deletes the specified policy from the specified load balancer. This
    # policy must not be enabled for any listeners.
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a policy from your load balancer
    #
    #   # This example deletes the specified policy from the specified load balancer. The policy must not be enabled on any
    #   # listener.
    #
    #   resp = client.delete_load_balancer_policy({
    #     load_balancer_name: "my-load-balancer", 
    #     policy_name: "my-duration-cookie-policy", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_load_balancer_policy({
    #     load_balancer_name: "AccessPointName", # required
    #     policy_name: "PolicyName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DeleteLoadBalancerPolicy AWS API Documentation
    #
    # @overload delete_load_balancer_policy(params = {})
    # @param [Hash] params ({})
    def delete_load_balancer_policy(params = {}, options = {})
      req = build_request(:delete_load_balancer_policy, params)
      req.send_request(options)
    end

    # Deregisters the specified instances from the specified load balancer.
    # After the instance is deregistered, it no longer receives traffic from
    # the load balancer.
    #
    # You can use DescribeLoadBalancers to verify that the instance is
    # deregistered from the load balancer.
    #
    # For more information, see [Register or De-Register EC2 Instances][1]
    # in the *Classic Load Balancers Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, Array<Types::Instance>] :instances
    #   The IDs of the instances.
    #
    # @return [Types::DeregisterEndPointsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterEndPointsOutput#instances #instances} => Array&lt;Types::Instance&gt;
    #
    #
    # @example Example: To deregister instances from a load balancer
    #
    #   # This example deregisters the specified instance from the specified load balancer.
    #
    #   resp = client.deregister_instances_from_load_balancer({
    #     instances: [
    #       {
    #         instance_id: "i-d6f6fae3", 
    #       }, 
    #     ], 
    #     load_balancer_name: "my-load-balancer", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instances: [
    #       {
    #         instance_id: "i-207d9717", 
    #       }, 
    #       {
    #         instance_id: "i-afefb49b", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_instances_from_load_balancer({
    #     load_balancer_name: "AccessPointName", # required
    #     instances: [ # required
    #       {
    #         instance_id: "InstanceId",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Array
    #   resp.instances[0].instance_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DeregisterInstancesFromLoadBalancer AWS API Documentation
    #
    # @overload deregister_instances_from_load_balancer(params = {})
    # @param [Hash] params ({})
    def deregister_instances_from_load_balancer(params = {}, options = {})
      req = build_request(:deregister_instances_from_load_balancer, params)
      req.send_request(options)
    end

    # Describes the current Elastic Load Balancing resource limits for your
    # AWS account.
    #
    # For more information, see [Limits for Your Classic Load Balancer][1]
    # in the *Classic Load Balancers Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DescribeAccountLimits AWS API Documentation
    #
    # @overload describe_account_limits(params = {})
    # @param [Hash] params ({})
    def describe_account_limits(params = {}, options = {})
      req = build_request(:describe_account_limits, params)
      req.send_request(options)
    end

    # Describes the state of the specified instances with respect to the
    # specified load balancer. If no instances are specified, the call
    # describes the state of all instances that are currently registered
    # with the load balancer. If instances are specified, their state is
    # returned even if they are no longer registered with the load balancer.
    # The state of terminated instances is not returned.
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [Array<Types::Instance>] :instances
    #   The IDs of the instances.
    #
    # @return [Types::DescribeEndPointStateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndPointStateOutput#instance_states #instance_states} => Array&lt;Types::InstanceState&gt;
    #
    #
    # @example Example: To describe the health of the instances for a load balancer
    #
    #   # This example describes the health of the instances for the specified load balancer.
    #
    #   resp = client.describe_instance_health({
    #     load_balancer_name: "my-load-balancer", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instance_states: [
    #       {
    #         description: "N/A", 
    #         instance_id: "i-207d9717", 
    #         reason_code: "N/A", 
    #         state: "InService", 
    #       }, 
    #       {
    #         description: "N/A", 
    #         instance_id: "i-afefb49b", 
    #         reason_code: "N/A", 
    #         state: "InService", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_health({
    #     load_balancer_name: "AccessPointName", # required
    #     instances: [
    #       {
    #         instance_id: "InstanceId",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_states #=> Array
    #   resp.instance_states[0].instance_id #=> String
    #   resp.instance_states[0].state #=> String
    #   resp.instance_states[0].reason_code #=> String
    #   resp.instance_states[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DescribeInstanceHealth AWS API Documentation
    #
    # @overload describe_instance_health(params = {})
    # @param [Hash] params ({})
    def describe_instance_health(params = {}, options = {})
      req = build_request(:describe_instance_health, params)
      req.send_request(options)
    end

    # Describes the attributes for the specified load balancer.
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @return [Types::DescribeLoadBalancerAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLoadBalancerAttributesOutput#load_balancer_attributes #load_balancer_attributes} => Types::LoadBalancerAttributes
    #
    #
    # @example Example: To describe the attributes of a load balancer
    #
    #   # This example describes the attributes of the specified load balancer.
    #
    #   resp = client.describe_load_balancer_attributes({
    #     load_balancer_name: "my-load-balancer", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     load_balancer_attributes: {
    #       access_log: {
    #         enabled: false, 
    #       }, 
    #       connection_draining: {
    #         enabled: false, 
    #         timeout: 300, 
    #       }, 
    #       connection_settings: {
    #         idle_timeout: 60, 
    #       }, 
    #       cross_zone_load_balancing: {
    #         enabled: false, 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancer_attributes({
    #     load_balancer_name: "AccessPointName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.load_balancer_attributes.cross_zone_load_balancing.enabled #=> Boolean
    #   resp.load_balancer_attributes.access_log.enabled #=> Boolean
    #   resp.load_balancer_attributes.access_log.s3_bucket_name #=> String
    #   resp.load_balancer_attributes.access_log.emit_interval #=> Integer
    #   resp.load_balancer_attributes.access_log.s3_bucket_prefix #=> String
    #   resp.load_balancer_attributes.connection_draining.enabled #=> Boolean
    #   resp.load_balancer_attributes.connection_draining.timeout #=> Integer
    #   resp.load_balancer_attributes.connection_settings.idle_timeout #=> Integer
    #   resp.load_balancer_attributes.additional_attributes #=> Array
    #   resp.load_balancer_attributes.additional_attributes[0].key #=> String
    #   resp.load_balancer_attributes.additional_attributes[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DescribeLoadBalancerAttributes AWS API Documentation
    #
    # @overload describe_load_balancer_attributes(params = {})
    # @param [Hash] params ({})
    def describe_load_balancer_attributes(params = {}, options = {})
      req = build_request(:describe_load_balancer_attributes, params)
      req.send_request(options)
    end

    # Describes the specified policies.
    #
    # If you specify a load balancer name, the action returns the
    # descriptions of all policies created for the load balancer. If you
    # specify a policy name associated with your load balancer, the action
    # returns the description of that policy. If you don't specify a load
    # balancer name, the action returns descriptions of the specified sample
    # policies, or descriptions of all sample policies. The names of the
    # sample policies have the `ELBSample-` prefix.
    #
    # @option params [String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [Array<String>] :policy_names
    #   The names of the policies.
    #
    # @return [Types::DescribeLoadBalancerPoliciesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLoadBalancerPoliciesOutput#policy_descriptions #policy_descriptions} => Array&lt;Types::PolicyDescription&gt;
    #
    #
    # @example Example: To describe a policy associated with a load balancer
    #
    #   # This example describes the specified policy associated with the specified load balancer.
    #
    #   resp = client.describe_load_balancer_policies({
    #     load_balancer_name: "my-load-balancer", 
    #     policy_names: [
    #       "my-authentication-policy", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy_descriptions: [
    #       {
    #         policy_attribute_descriptions: [
    #           {
    #             attribute_name: "PublicKeyPolicyName", 
    #             attribute_value: "my-PublicKey-policy", 
    #           }, 
    #         ], 
    #         policy_name: "my-authentication-policy", 
    #         policy_type_name: "BackendServerAuthenticationPolicyType", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancer_policies({
    #     load_balancer_name: "AccessPointName",
    #     policy_names: ["PolicyName"],
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_descriptions #=> Array
    #   resp.policy_descriptions[0].policy_name #=> String
    #   resp.policy_descriptions[0].policy_type_name #=> String
    #   resp.policy_descriptions[0].policy_attribute_descriptions #=> Array
    #   resp.policy_descriptions[0].policy_attribute_descriptions[0].attribute_name #=> String
    #   resp.policy_descriptions[0].policy_attribute_descriptions[0].attribute_value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DescribeLoadBalancerPolicies AWS API Documentation
    #
    # @overload describe_load_balancer_policies(params = {})
    # @param [Hash] params ({})
    def describe_load_balancer_policies(params = {}, options = {})
      req = build_request(:describe_load_balancer_policies, params)
      req.send_request(options)
    end

    # Describes the specified load balancer policy types or all load
    # balancer policy types.
    #
    # The description of each type indicates how it can be used. For
    # example, some policies can be used only with layer 7 listeners, some
    # policies can be used only with layer 4 listeners, and some policies
    # can be used only with your EC2 instances.
    #
    # You can use CreateLoadBalancerPolicy to create a policy configuration
    # for any of these policy types. Then, depending on the policy type, use
    # either SetLoadBalancerPoliciesOfListener or
    # SetLoadBalancerPoliciesForBackendServer to set the policy.
    #
    # @option params [Array<String>] :policy_type_names
    #   The names of the policy types. If no names are specified, describes
    #   all policy types defined by Elastic Load Balancing.
    #
    # @return [Types::DescribeLoadBalancerPolicyTypesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLoadBalancerPolicyTypesOutput#policy_type_descriptions #policy_type_descriptions} => Array&lt;Types::PolicyTypeDescription&gt;
    #
    #
    # @example Example: To describe a load balancer policy type defined by Elastic Load Balancing
    #
    #   # This example describes the specified load balancer policy type.
    #
    #   resp = client.describe_load_balancer_policy_types({
    #     policy_type_names: [
    #       "ProxyProtocolPolicyType", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy_type_descriptions: [
    #       {
    #         description: "Policy that controls whether to include the IP address and port of the originating request for TCP messages. This policy operates on TCP listeners only.", 
    #         policy_attribute_type_descriptions: [
    #           {
    #             attribute_name: "ProxyProtocol", 
    #             attribute_type: "Boolean", 
    #             cardinality: "ONE", 
    #           }, 
    #         ], 
    #         policy_type_name: "ProxyProtocolPolicyType", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancer_policy_types({
    #     policy_type_names: ["PolicyTypeName"],
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_type_descriptions #=> Array
    #   resp.policy_type_descriptions[0].policy_type_name #=> String
    #   resp.policy_type_descriptions[0].description #=> String
    #   resp.policy_type_descriptions[0].policy_attribute_type_descriptions #=> Array
    #   resp.policy_type_descriptions[0].policy_attribute_type_descriptions[0].attribute_name #=> String
    #   resp.policy_type_descriptions[0].policy_attribute_type_descriptions[0].attribute_type #=> String
    #   resp.policy_type_descriptions[0].policy_attribute_type_descriptions[0].description #=> String
    #   resp.policy_type_descriptions[0].policy_attribute_type_descriptions[0].default_value #=> String
    #   resp.policy_type_descriptions[0].policy_attribute_type_descriptions[0].cardinality #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DescribeLoadBalancerPolicyTypes AWS API Documentation
    #
    # @overload describe_load_balancer_policy_types(params = {})
    # @param [Hash] params ({})
    def describe_load_balancer_policy_types(params = {}, options = {})
      req = build_request(:describe_load_balancer_policy_types, params)
      req.send_request(options)
    end

    # Describes the specified the load balancers. If no load balancers are
    # specified, the call describes all of your load balancers.
    #
    # @option params [Array<String>] :load_balancer_names
    #   The names of the load balancers.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call.)
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return with this call (a number from
    #   1 to 400). The default is 400.
    #
    # @return [Types::DescribeAccessPointsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccessPointsOutput#load_balancer_descriptions #load_balancer_descriptions} => Array&lt;Types::LoadBalancerDescription&gt;
    #   * {Types::DescribeAccessPointsOutput#next_marker #next_marker} => String
    #
    #
    # @example Example: To describe one of your load balancers
    #
    #   # This example describes the specified load balancer.
    #
    #   resp = client.describe_load_balancers({
    #     load_balancer_names: [
    #       "my-load-balancer", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     load_balancer_descriptions: [
    #       {
    #         availability_zones: [
    #           "us-west-2a", 
    #         ], 
    #         backend_server_descriptions: [
    #           {
    #             instance_port: 80, 
    #             policy_names: [
    #               "my-ProxyProtocol-policy", 
    #             ], 
    #           }, 
    #         ], 
    #         canonical_hosted_zone_name: "my-load-balancer-1234567890.us-west-2.elb.amazonaws.com", 
    #         canonical_hosted_zone_name_id: "Z3DZXE0EXAMPLE", 
    #         created_time: Time.parse("2015-03-19T03:24:02.650Z"), 
    #         dns_name: "my-load-balancer-1234567890.us-west-2.elb.amazonaws.com", 
    #         health_check: {
    #           healthy_threshold: 2, 
    #           interval: 30, 
    #           target: "HTTP:80/png", 
    #           timeout: 3, 
    #           unhealthy_threshold: 2, 
    #         }, 
    #         instances: [
    #           {
    #             instance_id: "i-207d9717", 
    #           }, 
    #           {
    #             instance_id: "i-afefb49b", 
    #           }, 
    #         ], 
    #         listener_descriptions: [
    #           {
    #             listener: {
    #               instance_port: 80, 
    #               instance_protocol: "HTTP", 
    #               load_balancer_port: 80, 
    #               protocol: "HTTP", 
    #             }, 
    #             policy_names: [
    #             ], 
    #           }, 
    #           {
    #             listener: {
    #               instance_port: 443, 
    #               instance_protocol: "HTTPS", 
    #               load_balancer_port: 443, 
    #               protocol: "HTTPS", 
    #               ssl_certificate_id: "arn:aws:iam::123456789012:server-certificate/my-server-cert", 
    #             }, 
    #             policy_names: [
    #               "ELBSecurityPolicy-2015-03", 
    #             ], 
    #           }, 
    #         ], 
    #         load_balancer_name: "my-load-balancer", 
    #         policies: {
    #           app_cookie_stickiness_policies: [
    #           ], 
    #           lb_cookie_stickiness_policies: [
    #             {
    #               cookie_expiration_period: 60, 
    #               policy_name: "my-duration-cookie-policy", 
    #             }, 
    #           ], 
    #           other_policies: [
    #             "my-PublicKey-policy", 
    #             "my-authentication-policy", 
    #             "my-SSLNegotiation-policy", 
    #             "my-ProxyProtocol-policy", 
    #             "ELBSecurityPolicy-2015-03", 
    #           ], 
    #         }, 
    #         scheme: "internet-facing", 
    #         security_groups: [
    #           "sg-a61988c3", 
    #         ], 
    #         source_security_group: {
    #           group_name: "my-elb-sg", 
    #           owner_alias: "123456789012", 
    #         }, 
    #         subnets: [
    #           "subnet-15aaab61", 
    #         ], 
    #         vpc_id: "vpc-a01106c2", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancers({
    #     load_balancer_names: ["AccessPointName"],
    #     marker: "Marker",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.load_balancer_descriptions #=> Array
    #   resp.load_balancer_descriptions[0].load_balancer_name #=> String
    #   resp.load_balancer_descriptions[0].dns_name #=> String
    #   resp.load_balancer_descriptions[0].canonical_hosted_zone_name #=> String
    #   resp.load_balancer_descriptions[0].canonical_hosted_zone_name_id #=> String
    #   resp.load_balancer_descriptions[0].listener_descriptions #=> Array
    #   resp.load_balancer_descriptions[0].listener_descriptions[0].listener.protocol #=> String
    #   resp.load_balancer_descriptions[0].listener_descriptions[0].listener.load_balancer_port #=> Integer
    #   resp.load_balancer_descriptions[0].listener_descriptions[0].listener.instance_protocol #=> String
    #   resp.load_balancer_descriptions[0].listener_descriptions[0].listener.instance_port #=> Integer
    #   resp.load_balancer_descriptions[0].listener_descriptions[0].listener.ssl_certificate_id #=> String
    #   resp.load_balancer_descriptions[0].listener_descriptions[0].policy_names #=> Array
    #   resp.load_balancer_descriptions[0].listener_descriptions[0].policy_names[0] #=> String
    #   resp.load_balancer_descriptions[0].policies.app_cookie_stickiness_policies #=> Array
    #   resp.load_balancer_descriptions[0].policies.app_cookie_stickiness_policies[0].policy_name #=> String
    #   resp.load_balancer_descriptions[0].policies.app_cookie_stickiness_policies[0].cookie_name #=> String
    #   resp.load_balancer_descriptions[0].policies.lb_cookie_stickiness_policies #=> Array
    #   resp.load_balancer_descriptions[0].policies.lb_cookie_stickiness_policies[0].policy_name #=> String
    #   resp.load_balancer_descriptions[0].policies.lb_cookie_stickiness_policies[0].cookie_expiration_period #=> Integer
    #   resp.load_balancer_descriptions[0].policies.other_policies #=> Array
    #   resp.load_balancer_descriptions[0].policies.other_policies[0] #=> String
    #   resp.load_balancer_descriptions[0].backend_server_descriptions #=> Array
    #   resp.load_balancer_descriptions[0].backend_server_descriptions[0].instance_port #=> Integer
    #   resp.load_balancer_descriptions[0].backend_server_descriptions[0].policy_names #=> Array
    #   resp.load_balancer_descriptions[0].backend_server_descriptions[0].policy_names[0] #=> String
    #   resp.load_balancer_descriptions[0].availability_zones #=> Array
    #   resp.load_balancer_descriptions[0].availability_zones[0] #=> String
    #   resp.load_balancer_descriptions[0].subnets #=> Array
    #   resp.load_balancer_descriptions[0].subnets[0] #=> String
    #   resp.load_balancer_descriptions[0].vpc_id #=> String
    #   resp.load_balancer_descriptions[0].instances #=> Array
    #   resp.load_balancer_descriptions[0].instances[0].instance_id #=> String
    #   resp.load_balancer_descriptions[0].health_check.target #=> String
    #   resp.load_balancer_descriptions[0].health_check.interval #=> Integer
    #   resp.load_balancer_descriptions[0].health_check.timeout #=> Integer
    #   resp.load_balancer_descriptions[0].health_check.unhealthy_threshold #=> Integer
    #   resp.load_balancer_descriptions[0].health_check.healthy_threshold #=> Integer
    #   resp.load_balancer_descriptions[0].source_security_group.owner_alias #=> String
    #   resp.load_balancer_descriptions[0].source_security_group.group_name #=> String
    #   resp.load_balancer_descriptions[0].security_groups #=> Array
    #   resp.load_balancer_descriptions[0].security_groups[0] #=> String
    #   resp.load_balancer_descriptions[0].created_time #=> Time
    #   resp.load_balancer_descriptions[0].scheme #=> String
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DescribeLoadBalancers AWS API Documentation
    #
    # @overload describe_load_balancers(params = {})
    # @param [Hash] params ({})
    def describe_load_balancers(params = {}, options = {})
      req = build_request(:describe_load_balancers, params)
      req.send_request(options)
    end

    # Describes the tags associated with the specified load balancers.
    #
    # @option params [required, Array<String>] :load_balancer_names
    #   The names of the load balancers.
    #
    # @return [Types::DescribeTagsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTagsOutput#tag_descriptions #tag_descriptions} => Array&lt;Types::TagDescription&gt;
    #
    #
    # @example Example: To describe the tags for a load balancer
    #
    #   # This example describes the tags for the specified load balancer.
    #
    #   resp = client.describe_tags({
    #     load_balancer_names: [
    #       "my-load-balancer", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tag_descriptions: [
    #       {
    #         load_balancer_name: "my-load-balancer", 
    #         tags: [
    #           {
    #             key: "project", 
    #             value: "lima", 
    #           }, 
    #           {
    #             key: "department", 
    #             value: "digital-media", 
    #           }, 
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags({
    #     load_balancer_names: ["AccessPointName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_descriptions #=> Array
    #   resp.tag_descriptions[0].load_balancer_name #=> String
    #   resp.tag_descriptions[0].tags #=> Array
    #   resp.tag_descriptions[0].tags[0].key #=> String
    #   resp.tag_descriptions[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DescribeTags AWS API Documentation
    #
    # @overload describe_tags(params = {})
    # @param [Hash] params ({})
    def describe_tags(params = {}, options = {})
      req = build_request(:describe_tags, params)
      req.send_request(options)
    end

    # Removes the specified subnets from the set of configured subnets for
    # the load balancer.
    #
    # After a subnet is removed, all EC2 instances registered with the load
    # balancer in the removed subnet go into the `OutOfService` state. Then,
    # the load balancer balances the traffic among the remaining routable
    # subnets.
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, Array<String>] :subnets
    #   The IDs of the subnets.
    #
    # @return [Types::DetachLoadBalancerFromSubnetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetachLoadBalancerFromSubnetsOutput#subnets #subnets} => Array&lt;String&gt;
    #
    #
    # @example Example: To detach a load balancer from a subnet
    #
    #   # This example detaches the specified load balancer from the specified subnet.
    #
    #   resp = client.detach_load_balancer_from_subnets({
    #     load_balancer_name: "my-load-balancer", 
    #     subnets: [
    #       "subnet-0ecac448", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     subnets: [
    #       "subnet-15aaab61", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_load_balancer_from_subnets({
    #     load_balancer_name: "AccessPointName", # required
    #     subnets: ["SubnetId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.subnets #=> Array
    #   resp.subnets[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DetachLoadBalancerFromSubnets AWS API Documentation
    #
    # @overload detach_load_balancer_from_subnets(params = {})
    # @param [Hash] params ({})
    def detach_load_balancer_from_subnets(params = {}, options = {})
      req = build_request(:detach_load_balancer_from_subnets, params)
      req.send_request(options)
    end

    # Removes the specified Availability Zones from the set of Availability
    # Zones for the specified load balancer in EC2-Classic or a default VPC.
    #
    # For load balancers in a non-default VPC, use
    # DetachLoadBalancerFromSubnets.
    #
    # There must be at least one Availability Zone registered with a load
    # balancer at all times. After an Availability Zone is removed, all
    # instances registered with the load balancer that are in the removed
    # Availability Zone go into the `OutOfService` state. Then, the load
    # balancer attempts to equally balance the traffic among its remaining
    # Availability Zones.
    #
    # For more information, see [Add or Remove Availability Zones][1] in the
    # *Classic Load Balancers Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, Array<String>] :availability_zones
    #   The Availability Zones.
    #
    # @return [Types::RemoveAvailabilityZonesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveAvailabilityZonesOutput#availability_zones #availability_zones} => Array&lt;String&gt;
    #
    #
    # @example Example: To disable an Availability Zone for a load balancer
    #
    #   # This example removes the specified Availability Zone from the set of Availability Zones for the specified load balancer.
    #
    #   resp = client.disable_availability_zones_for_load_balancer({
    #     availability_zones: [
    #       "us-west-2a", 
    #     ], 
    #     load_balancer_name: "my-load-balancer", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     availability_zones: [
    #       "us-west-2b", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_availability_zones_for_load_balancer({
    #     load_balancer_name: "AccessPointName", # required
    #     availability_zones: ["AvailabilityZone"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.availability_zones #=> Array
    #   resp.availability_zones[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DisableAvailabilityZonesForLoadBalancer AWS API Documentation
    #
    # @overload disable_availability_zones_for_load_balancer(params = {})
    # @param [Hash] params ({})
    def disable_availability_zones_for_load_balancer(params = {}, options = {})
      req = build_request(:disable_availability_zones_for_load_balancer, params)
      req.send_request(options)
    end

    # Adds the specified Availability Zones to the set of Availability Zones
    # for the specified load balancer in EC2-Classic or a default VPC.
    #
    # For load balancers in a non-default VPC, use
    # AttachLoadBalancerToSubnets.
    #
    # The load balancer evenly distributes requests across all its
    # registered Availability Zones that contain instances. For more
    # information, see [Add or Remove Availability Zones][1] in the *Classic
    # Load Balancers Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, Array<String>] :availability_zones
    #   The Availability Zones. These must be in the same region as the load
    #   balancer.
    #
    # @return [Types::AddAvailabilityZonesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddAvailabilityZonesOutput#availability_zones #availability_zones} => Array&lt;String&gt;
    #
    #
    # @example Example: To enable an Availability Zone for a load balancer
    #
    #   # This example adds the specified Availability Zone to the specified load balancer.
    #
    #   resp = client.enable_availability_zones_for_load_balancer({
    #     availability_zones: [
    #       "us-west-2b", 
    #     ], 
    #     load_balancer_name: "my-load-balancer", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     availability_zones: [
    #       "us-west-2a", 
    #       "us-west-2b", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_availability_zones_for_load_balancer({
    #     load_balancer_name: "AccessPointName", # required
    #     availability_zones: ["AvailabilityZone"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.availability_zones #=> Array
    #   resp.availability_zones[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/EnableAvailabilityZonesForLoadBalancer AWS API Documentation
    #
    # @overload enable_availability_zones_for_load_balancer(params = {})
    # @param [Hash] params ({})
    def enable_availability_zones_for_load_balancer(params = {}, options = {})
      req = build_request(:enable_availability_zones_for_load_balancer, params)
      req.send_request(options)
    end

    # Modifies the attributes of the specified load balancer.
    #
    # You can modify the load balancer attributes, such as `AccessLogs`,
    # `ConnectionDraining`, and `CrossZoneLoadBalancing` by either enabling
    # or disabling them. Or, you can modify the load balancer attribute
    # `ConnectionSettings` by specifying an idle connection timeout value
    # for your load balancer.
    #
    # For more information, see the following in the *Classic Load Balancers
    # Guide*\:
    #
    # * [Cross-Zone Load Balancing][1]
    #
    # * [Connection Draining][2]
    #
    # * [Access Logs][3]
    #
    # * [Idle Connection Timeout][4]
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html
    # [2]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html
    # [3]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/access-log-collection.html
    # [4]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, Types::LoadBalancerAttributes] :load_balancer_attributes
    #   The attributes for the load balancer.
    #
    # @return [Types::ModifyLoadBalancerAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyLoadBalancerAttributesOutput#load_balancer_name #load_balancer_name} => String
    #   * {Types::ModifyLoadBalancerAttributesOutput#load_balancer_attributes #load_balancer_attributes} => Types::LoadBalancerAttributes
    #
    #
    # @example Example: To enable cross-zone load balancing
    #
    #   # This example enables cross-zone load balancing for the specified load balancer.
    #
    #   resp = client.modify_load_balancer_attributes({
    #     load_balancer_attributes: {
    #       cross_zone_load_balancing: {
    #         enabled: true, 
    #       }, 
    #     }, 
    #     load_balancer_name: "my-load-balancer", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     load_balancer_attributes: {
    #       cross_zone_load_balancing: {
    #         enabled: true, 
    #       }, 
    #     }, 
    #     load_balancer_name: "my-load-balancer", 
    #   }
    #
    # @example Example: To enable connection draining
    #
    #   # This example enables connection draining for the specified load balancer.
    #
    #   resp = client.modify_load_balancer_attributes({
    #     load_balancer_attributes: {
    #       connection_draining: {
    #         enabled: true, 
    #         timeout: 300, 
    #       }, 
    #     }, 
    #     load_balancer_name: "my-load-balancer", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     load_balancer_attributes: {
    #       connection_draining: {
    #         enabled: true, 
    #         timeout: 300, 
    #       }, 
    #     }, 
    #     load_balancer_name: "my-load-balancer", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_load_balancer_attributes({
    #     load_balancer_name: "AccessPointName", # required
    #     load_balancer_attributes: { # required
    #       cross_zone_load_balancing: {
    #         enabled: false, # required
    #       },
    #       access_log: {
    #         enabled: false, # required
    #         s3_bucket_name: "S3BucketName",
    #         emit_interval: 1,
    #         s3_bucket_prefix: "AccessLogPrefix",
    #       },
    #       connection_draining: {
    #         enabled: false, # required
    #         timeout: 1,
    #       },
    #       connection_settings: {
    #         idle_timeout: 1, # required
    #       },
    #       additional_attributes: [
    #         {
    #           key: "AdditionalAttributeKey",
    #           value: "AdditionalAttributeValue",
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.load_balancer_name #=> String
    #   resp.load_balancer_attributes.cross_zone_load_balancing.enabled #=> Boolean
    #   resp.load_balancer_attributes.access_log.enabled #=> Boolean
    #   resp.load_balancer_attributes.access_log.s3_bucket_name #=> String
    #   resp.load_balancer_attributes.access_log.emit_interval #=> Integer
    #   resp.load_balancer_attributes.access_log.s3_bucket_prefix #=> String
    #   resp.load_balancer_attributes.connection_draining.enabled #=> Boolean
    #   resp.load_balancer_attributes.connection_draining.timeout #=> Integer
    #   resp.load_balancer_attributes.connection_settings.idle_timeout #=> Integer
    #   resp.load_balancer_attributes.additional_attributes #=> Array
    #   resp.load_balancer_attributes.additional_attributes[0].key #=> String
    #   resp.load_balancer_attributes.additional_attributes[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/ModifyLoadBalancerAttributes AWS API Documentation
    #
    # @overload modify_load_balancer_attributes(params = {})
    # @param [Hash] params ({})
    def modify_load_balancer_attributes(params = {}, options = {})
      req = build_request(:modify_load_balancer_attributes, params)
      req.send_request(options)
    end

    # Adds the specified instances to the specified load balancer.
    #
    # The instance must be a running instance in the same network as the
    # load balancer (EC2-Classic or the same VPC). If you have EC2-Classic
    # instances and a load balancer in a VPC with ClassicLink enabled, you
    # can link the EC2-Classic instances to that VPC and then register the
    # linked EC2-Classic instances with the load balancer in the VPC.
    #
    # Note that `RegisterInstanceWithLoadBalancer` completes when the
    # request has been registered. Instance registration takes a little time
    # to complete. To check the state of the registered instances, use
    # DescribeLoadBalancers or DescribeInstanceHealth.
    #
    # After the instance is registered, it starts receiving traffic and
    # requests from the load balancer. Any instance that is not in one of
    # the Availability Zones registered for the load balancer is moved to
    # the `OutOfService` state. If an Availability Zone is added to the load
    # balancer later, any instances registered with the load balancer move
    # to the `InService` state.
    #
    # To deregister instances from a load balancer, use
    # DeregisterInstancesFromLoadBalancer.
    #
    # For more information, see [Register or De-Register EC2 Instances][1]
    # in the *Classic Load Balancers Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, Array<Types::Instance>] :instances
    #   The IDs of the instances.
    #
    # @return [Types::RegisterEndPointsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterEndPointsOutput#instances #instances} => Array&lt;Types::Instance&gt;
    #
    #
    # @example Example: To register instances with a load balancer
    #
    #   # This example registers the specified instance with the specified load balancer.
    #
    #   resp = client.register_instances_with_load_balancer({
    #     instances: [
    #       {
    #         instance_id: "i-d6f6fae3", 
    #       }, 
    #     ], 
    #     load_balancer_name: "my-load-balancer", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instances: [
    #       {
    #         instance_id: "i-d6f6fae3", 
    #       }, 
    #       {
    #         instance_id: "i-207d9717", 
    #       }, 
    #       {
    #         instance_id: "i-afefb49b", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_instances_with_load_balancer({
    #     load_balancer_name: "AccessPointName", # required
    #     instances: [ # required
    #       {
    #         instance_id: "InstanceId",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Array
    #   resp.instances[0].instance_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/RegisterInstancesWithLoadBalancer AWS API Documentation
    #
    # @overload register_instances_with_load_balancer(params = {})
    # @param [Hash] params ({})
    def register_instances_with_load_balancer(params = {}, options = {})
      req = build_request(:register_instances_with_load_balancer, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified load balancer.
    #
    # @option params [required, Array<String>] :load_balancer_names
    #   The name of the load balancer. You can specify a maximum of one load
    #   balancer name.
    #
    # @option params [required, Array<Types::TagKeyOnly>] :tags
    #   The list of tag keys to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To remove tags from a load balancer
    #
    #   # This example removes the specified tag from the specified load balancer.
    #
    #   resp = client.remove_tags({
    #     load_balancer_names: [
    #       "my-load-balancer", 
    #     ], 
    #     tags: [
    #       {
    #         key: "project", 
    #       }, 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags({
    #     load_balancer_names: ["AccessPointName"], # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/RemoveTags AWS API Documentation
    #
    # @overload remove_tags(params = {})
    # @param [Hash] params ({})
    def remove_tags(params = {}, options = {})
      req = build_request(:remove_tags, params)
      req.send_request(options)
    end

    # Sets the certificate that terminates the specified listener's SSL
    # connections. The specified certificate replaces any prior certificate
    # that was used on the same load balancer and port.
    #
    # For more information about updating your SSL certificate, see [Replace
    # the SSL Certificate for Your Load Balancer][1] in the *Classic Load
    # Balancers Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-update-ssl-cert.html
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, Integer] :load_balancer_port
    #   The port that uses the specified SSL certificate.
    #
    # @option params [required, String] :ssl_certificate_id
    #   The Amazon Resource Name (ARN) of the SSL certificate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To update the SSL certificate for an HTTPS listener
    #
    #   # This example replaces the existing SSL certificate for the specified HTTPS listener.
    #
    #   resp = client.set_load_balancer_listener_ssl_certificate({
    #     load_balancer_name: "my-load-balancer", 
    #     load_balancer_port: 443, 
    #     ssl_certificate_id: "arn:aws:iam::123456789012:server-certificate/new-server-cert", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_load_balancer_listener_ssl_certificate({
    #     load_balancer_name: "AccessPointName", # required
    #     load_balancer_port: 1, # required
    #     ssl_certificate_id: "SSLCertificateId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/SetLoadBalancerListenerSSLCertificate AWS API Documentation
    #
    # @overload set_load_balancer_listener_ssl_certificate(params = {})
    # @param [Hash] params ({})
    def set_load_balancer_listener_ssl_certificate(params = {}, options = {})
      req = build_request(:set_load_balancer_listener_ssl_certificate, params)
      req.send_request(options)
    end

    # Replaces the set of policies associated with the specified port on
    # which the EC2 instance is listening with a new set of policies. At
    # this time, only the back-end server authentication policy type can be
    # applied to the instance ports; this policy type is composed of
    # multiple public key policies.
    #
    # Each time you use `SetLoadBalancerPoliciesForBackendServer` to enable
    # the policies, use the `PolicyNames` parameter to list the policies
    # that you want to enable.
    #
    # You can use DescribeLoadBalancers or DescribeLoadBalancerPolicies to
    # verify that the policy is associated with the EC2 instance.
    #
    # For more information about enabling back-end instance authentication,
    # see [Configure Back-end Instance Authentication][1] in the *Classic
    # Load Balancers Guide*. For more information about Proxy Protocol, see
    # [Configure Proxy Protocol Support][2] in the *Classic Load Balancers
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-create-https-ssl-load-balancer.html#configure_backendauth_clt
    # [2]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-proxy-protocol.html
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, Integer] :instance_port
    #   The port number associated with the EC2 instance.
    #
    # @option params [required, Array<String>] :policy_names
    #   The names of the policies. If the list is empty, then all current
    #   polices are removed from the EC2 instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To replace the policies associated with a port for a backend instance
    #
    #   # This example replaces the policies that are currently associated with the specified port.
    #
    #   resp = client.set_load_balancer_policies_for_backend_server({
    #     instance_port: 80, 
    #     load_balancer_name: "my-load-balancer", 
    #     policy_names: [
    #       "my-ProxyProtocol-policy", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_load_balancer_policies_for_backend_server({
    #     load_balancer_name: "AccessPointName", # required
    #     instance_port: 1, # required
    #     policy_names: ["PolicyName"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/SetLoadBalancerPoliciesForBackendServer AWS API Documentation
    #
    # @overload set_load_balancer_policies_for_backend_server(params = {})
    # @param [Hash] params ({})
    def set_load_balancer_policies_for_backend_server(params = {}, options = {})
      req = build_request(:set_load_balancer_policies_for_backend_server, params)
      req.send_request(options)
    end

    # Replaces the current set of policies for the specified load balancer
    # port with the specified set of policies.
    #
    # To enable back-end server authentication, use
    # SetLoadBalancerPoliciesForBackendServer.
    #
    # For more information about setting policies, see [Update the SSL
    # Negotiation Configuration][1], [Duration-Based Session Stickiness][2],
    # and [Application-Controlled Session Stickiness][3] in the *Classic
    # Load Balancers Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/ssl-config-update.html
    # [2]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration
    # [3]: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, Integer] :load_balancer_port
    #   The external port of the load balancer.
    #
    # @option params [required, Array<String>] :policy_names
    #   The names of the policies. This list must include all policies to be
    #   enabled. If you omit a policy that is currently enabled, it is
    #   disabled. If the list is empty, all current policies are disabled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To replace the policies associated with a listener
    #
    #   # This example replaces the policies that are currently associated with the specified listener.
    #
    #   resp = client.set_load_balancer_policies_of_listener({
    #     load_balancer_name: "my-load-balancer", 
    #     load_balancer_port: 80, 
    #     policy_names: [
    #       "my-SSLNegotiation-policy", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_load_balancer_policies_of_listener({
    #     load_balancer_name: "AccessPointName", # required
    #     load_balancer_port: 1, # required
    #     policy_names: ["PolicyName"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/SetLoadBalancerPoliciesOfListener AWS API Documentation
    #
    # @overload set_load_balancer_policies_of_listener(params = {})
    # @param [Hash] params ({})
    def set_load_balancer_policies_of_listener(params = {}, options = {})
      req = build_request(:set_load_balancer_policies_of_listener, params)
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
      context[:gem_name] = 'aws-sdk-elasticloadbalancing'
      context[:gem_version] = '1.5.0'
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
    # | waiter_name             | params                      | :delay   | :max_attempts |
    # | ----------------------- | --------------------------- | -------- | ------------- |
    # | any_instance_in_service | {#describe_instance_health} | 15       | 40            |
    # | instance_deregistered   | {#describe_instance_health} | 15       | 40            |
    # | instance_in_service     | {#describe_instance_health} | 15       | 40            |
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
        any_instance_in_service: Waiters::AnyInstanceInService,
        instance_deregistered: Waiters::InstanceDeregistered,
        instance_in_service: Waiters::InstanceInService
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
