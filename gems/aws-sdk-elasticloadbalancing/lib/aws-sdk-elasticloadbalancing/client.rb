# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module ElasticLoadBalancing
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :elasticloadbalancing

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::Query)

      # @!group API Operations

      # Adds the specified tags to the specified load balancer. Each load
      # balancer can have a maximum of 10 tags.
      #
      # Each tag consists of a key and an optional value. If a tag with the
      # same key is already associated with the load balancer, `AddTags`
      # updates its value.
      #
      # For more information, see [Tag Your Load Balancer][1] in the *Elastic
      # Load Balancing Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/add-remove-tags.html
      # @option params [required, Array<String>] :load_balancer_names
      #   The name of the load balancer. You can specify one load balancer only.
      # @option params [required, Array<Types::Tag>] :tags
      #   The tags.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_tags({
      #     load_balancer_names: ["AccessPointName"], # required
      #     tags: [ # required
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue",
      #       },
      #     ],
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def add_tags(params = {}, options = {})
        req = build_request(:add_tags, params)
        req.send_request(options)
      end

      # Associates one or more security groups with your load balancer in a
      # virtual private cloud (VPC). The specified security groups override
      # the previously associated security groups.
      #
      # For more information, see [Security Groups for Load Balancers in a
      # VPC][1] in the *Elastic Load Balancing Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-security-groups.html#elb-vpc-security-groups
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [required, Array<String>] :security_groups
      #   The IDs of the security groups to associate with the load balancer.
      #   Note that you cannot specify the name of the security group.
      # @return [Types::ApplySecurityGroupsToLoadBalancerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ApplySecurityGroupsToLoadBalancerOutput#security_groups #SecurityGroups} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.apply_security_groups_to_load_balancer({
      #     load_balancer_name: "AccessPointName", # required
      #     security_groups: ["SecurityGroupId"], # required
      #   })
      #
      # @example Response structure
      #   resp.security_groups #=> Array
      #   resp.security_groups[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def apply_security_groups_to_load_balancer(params = {}, options = {})
        req = build_request(:apply_security_groups_to_load_balancer, params)
        req.send_request(options)
      end

      # Adds one or more subnets to the set of configured subnets for the
      # specified load balancer.
      #
      # The load balancer evenly distributes requests across all registered
      # subnets. For more information, see [Add or Remove Subnets for Your
      # Load Balancer in a VPC][1] in the *Elastic Load Balancing Developer
      # Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-manage-subnets.html
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [required, Array<String>] :subnets
      #   The IDs of the subnets to add for the load balancer. You can add only
      #   one subnet per Availability Zone.
      # @return [Types::AttachLoadBalancerToSubnetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AttachLoadBalancerToSubnetsOutput#subnets #Subnets} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.attach_load_balancer_to_subnets({
      #     load_balancer_name: "AccessPointName", # required
      #     subnets: ["SubnetId"], # required
      #   })
      #
      # @example Response structure
      #   resp.subnets #=> Array
      #   resp.subnets[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def attach_load_balancer_to_subnets(params = {}, options = {})
        req = build_request(:attach_load_balancer_to_subnets, params)
        req.send_request(options)
      end

      # Specifies the health check settings to use when evaluating the health
      # state of your back-end instances.
      #
      # For more information, see [Configure Health Checks][1] in the *Elastic
      # Load Balancing Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-healthchecks.html
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [required, Types::HealthCheck] :health_check
      #   The configuration information for the new health check.
      # @return [Types::ConfigureHealthCheckOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ConfigureHealthCheckOutput#health_check #HealthCheck} => Types::HealthCheck
      #
      # @example Request syntax with placeholder values
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
      #   resp.health_check.target #=> String
      #   resp.health_check.interval #=> Integer
      #   resp.health_check.timeout #=> Integer
      #   resp.health_check.unhealthy_threshold #=> Integer
      #   resp.health_check.healthy_threshold #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # Stickiness][1] in the *Elastic Load Balancing Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-sticky-sessions.html#enable-sticky-sessions-application
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [required, String] :policy_name
      #   The name of the policy being created. Policy names must consist of
      #   alphanumeric characters and dashes (-). This name must be unique
      #   within the set of policies for this load balancer.
      # @option params [required, String] :cookie_name
      #   The name of the application cookie used for stickiness.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_app_cookie_stickiness_policy({
      #     load_balancer_name: "AccessPointName", # required
      #     policy_name: "PolicyName", # required
      #     cookie_name: "CookieName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_app_cookie_stickiness_policy(params = {}, options = {})
        req = build_request(:create_app_cookie_stickiness_policy, params)
        req.send_request(options)
      end

      # Generates a stickiness policy with sticky session lifetimes controlled
      # by the lifetime of the browser (user-agent) or a specified expiration
      # period. This policy can be associated only with HTTP/HTTPS listeners.
      #
      # When a load balancer implements this policy, the load balancer uses a
      # special cookie to track the back-end server instance for each request.
      # When the load balancer receives a request, it first checks to see if
      # this cookie is present in the request. If so, the load balancer sends
      # the request to the application server specified in the cookie. If not,
      # the load balancer sends the request to a server that is chosen based
      # on the existing load-balancing algorithm.
      #
      # A cookie is inserted into the response for binding subsequent requests
      # from the same user to that server. The validity of the cookie is based
      # on the cookie expiration time, which is specified in the policy
      # configuration.
      #
      # For more information, see [Duration-Based Session Stickiness][1] in
      # the *Elastic Load Balancing Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-sticky-sessions.html#enable-sticky-sessions-duration
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [required, String] :policy_name
      #   The name of the policy being created. Policy names must consist of
      #   alphanumeric characters and dashes (-). This name must be unique
      #   within the set of policies for this load balancer.
      # @option params [Integer] :cookie_expiration_period
      #   The time period, in seconds, after which the cookie should be
      #   considered stale. If you do not specify this parameter, the sticky
      #   session lasts for the duration of the browser session.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_lb_cookie_stickiness_policy({
      #     load_balancer_name: "AccessPointName", # required
      #     policy_name: "PolicyName", # required
      #     cookie_expiration_period: 1,
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_lb_cookie_stickiness_policy(params = {}, options = {})
        req = build_request(:create_lb_cookie_stickiness_policy, params)
        req.send_request(options)
      end

      # Creates a load balancer.
      #
      # If the call completes successfully, a new load balancer is created
      # with a unique Domain Name Service (DNS) name. The load balancer
      # receives incoming traffic and routes it to the registered instances.
      # For more information, see [How Elastic Load Balancing Works][1] in the
      # *Elastic Load Balancing Developer Guide*.
      #
      # You can create up to 20 load balancers per region per account. You can
      # request an increase for the number of load balancers for your account.
      # For more information, see [Elastic Load Balancing Limits][2] in the
      # *Elastic Load Balancing Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/how-elb-works.html
      # [2]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-limits.html
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      #
      #   This name must be unique within your set of load balancers for the
      #   region, must have a maximum of 32 characters, must contain only
      #   alphanumeric characters or hyphens, and cannot begin or end with a
      #   hyphen.
      # @option params [required, Array<Types::Listener>] :listeners
      #   The listeners.
      #
      #   For more information, see [Listeners for Your Load Balancer][1] in the
      #   *Elastic Load Balancing Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-listener-config.html
      # @option params [Array<String>] :availability_zones
      #   One or more Availability Zones from the same region as the load
      #   balancer. Traffic is equally distributed across all specified
      #   Availability Zones.
      #
      #   You must specify at least one Availability Zone.
      #
      #   You can add more Availability Zones after you create the load balancer
      #   using EnableAvailabilityZonesForLoadBalancer.
      # @option params [Array<String>] :subnets
      #   The IDs of the subnets in your VPC to attach to the load balancer.
      #   Specify one subnet per Availability Zone specified in
      #   `AvailabilityZones`.
      # @option params [Array<String>] :security_groups
      #   The IDs of the security groups to assign to the load balancer.
      # @option params [String] :scheme
      #   The type of a load balancer. Valid only for load balancers in a VPC.
      #
      #   By default, Elastic Load Balancing creates an Internet-facing load
      #   balancer with a publicly resolvable DNS name, which resolves to public
      #   IP addresses. For more information about Internet-facing and Internal
      #   load balancers, see [Internet-facing and Internal Load Balancers][1]
      #   in the *Elastic Load Balancing Developer Guide*.
      #
      #   Specify `internal` to create an internal load balancer with a DNS name
      #   that resolves to private IP addresses.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/vpc-loadbalancer-types.html
      # @option params [Array<Types::Tag>] :tags
      #   A list of tags to assign to the load balancer.
      #
      #   For more information about tagging your load balancer, see
      #   [Tagging][1] in the *Elastic Load Balancing Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/TerminologyandKeyConcepts.html#tagging-elb
      # @return [Types::CreateAccessPointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateAccessPointOutput#dns_name #DNSName} => String
      #
      # @example Request syntax with placeholder values
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
      #   resp.dns_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_load_balancer(params = {}, options = {})
        req = build_request(:create_load_balancer, params)
        req.send_request(options)
      end

      # Creates one or more listeners for the specified load balancer. If a
      # listener with the specified port does not already exist, it is
      # created; otherwise, the properties of the new listener must match the
      # properties of the existing listener.
      #
      # For more information, see [Add a Listener to Your Load Balancer][1] in
      # the *Elastic Load Balancing Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/us-add-listener.html
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [required, Array<Types::Listener>] :listeners
      #   The listeners.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_load_balancer_listeners(params = {}, options = {})
        req = build_request(:create_load_balancer_listeners, params)
        req.send_request(options)
      end

      # Creates a policy with the specified attributes for the specified load
      # balancer.
      #
      # Policies are settings that are saved for your load balancer and that
      # can be applied to the front-end listener or the back-end application
      # server, depending on the policy type.
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [required, String] :policy_name
      #   The name of the load balancer policy to be created. This name must be
      #   unique within the set of policies for this load balancer.
      # @option params [required, String] :policy_type_name
      #   The name of the base policy type. To get the list of policy types, use
      #   DescribeLoadBalancerPolicyTypes.
      # @option params [Array<Types::PolicyAttribute>] :policy_attributes
      #   The attributes for the policy.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # its IP addresses is no longer delivered to back-end instances.
      #
      # If the load balancer does not exist or has already been deleted, the
      # call to `DeleteLoadBalancer` still succeeds.
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_load_balancer({
      #     load_balancer_name: "AccessPointName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_load_balancer(params = {}, options = {})
        req = build_request(:delete_load_balancer, params)
        req.send_request(options)
      end

      # Deletes the specified listeners from the specified load balancer.
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [required, Array<Integer>] :load_balancer_ports
      #   The client port numbers of the listeners.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_load_balancer_listeners({
      #     load_balancer_name: "AccessPointName", # required
      #     load_balancer_ports: [1], # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_load_balancer_listeners(params = {}, options = {})
        req = build_request(:delete_load_balancer_listeners, params)
        req.send_request(options)
      end

      # Deletes the specified policy from the specified load balancer. This
      # policy must not be enabled for any listeners.
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [required, String] :policy_name
      #   The name of the policy.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_load_balancer_policy({
      #     load_balancer_name: "AccessPointName", # required
      #     policy_name: "PolicyName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # For more information, see [Deregister and Register Amazon EC2
      # Instances][1] in the *Elastic Load Balancing Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/US_DeReg_Reg_Instances.html
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [required, Array<Types::Instance>] :instances
      #   The IDs of the instances.
      # @return [Types::DeregisterEndPointsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeregisterEndPointsOutput#instances #Instances} => Array&lt;Types::Instance&gt;
      #
      # @example Request syntax with placeholder values
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
      #   resp.instances #=> Array
      #   resp.instances[0].instance_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def deregister_instances_from_load_balancer(params = {}, options = {})
        req = build_request(:deregister_instances_from_load_balancer, params)
        req.send_request(options)
      end

      # Describes the state of the specified instances with respect to the
      # specified load balancer. If no instances are specified, the call
      # describes the state of all instances that are currently registered
      # with the load balancer. If instances are specified, their state is
      # returned even if they are no longer registered with the load balancer.
      # The state of terminated instances is not returned.
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [Array<Types::Instance>] :instances
      #   The IDs of the instances.
      # @return [Types::DescribeEndPointStateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeEndPointStateOutput#instance_states #InstanceStates} => Array&lt;Types::InstanceState&gt;
      #
      # @example Request syntax with placeholder values
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
      #   resp.instance_states #=> Array
      #   resp.instance_states[0].instance_id #=> String
      #   resp.instance_states[0].state #=> String
      #   resp.instance_states[0].reason_code #=> String
      #   resp.instance_states[0].description #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_instance_health(params = {}, options = {})
        req = build_request(:describe_instance_health, params)
        req.send_request(options)
      end

      # Describes the attributes for the specified load balancer.
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @return [Types::DescribeLoadBalancerAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeLoadBalancerAttributesOutput#load_balancer_attributes #LoadBalancerAttributes} => Types::LoadBalancerAttributes
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_load_balancer_attributes({
      #     load_balancer_name: "AccessPointName", # required
      #   })
      #
      # @example Response structure
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_load_balancer_attributes(params = {}, options = {})
        req = build_request(:describe_load_balancer_attributes, params)
        req.send_request(options)
      end

      # Describes the specified policies.
      #
      # If you specify a load balancer name, the action returns the
      # descriptions of all policies created for the load balancer. If you
      # specify a policy name associated with your load balancer, the action
      # returns the description of that policy. If you don\'t specify a load
      # balancer name, the action returns descriptions of the specified sample
      # policies, or descriptions of all sample policies. The names of the
      # sample policies have the `ELBSample-` prefix.
      # @option params [String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [Array<String>] :policy_names
      #   The names of the policies.
      # @return [Types::DescribeLoadBalancerPoliciesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeLoadBalancerPoliciesOutput#policy_descriptions #PolicyDescriptions} => Array&lt;Types::PolicyDescription&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_load_balancer_policies({
      #     load_balancer_name: "AccessPointName",
      #     policy_names: ["PolicyName"],
      #   })
      #
      # @example Response structure
      #   resp.policy_descriptions #=> Array
      #   resp.policy_descriptions[0].policy_name #=> String
      #   resp.policy_descriptions[0].policy_type_name #=> String
      #   resp.policy_descriptions[0].policy_attribute_descriptions #=> Array
      #   resp.policy_descriptions[0].policy_attribute_descriptions[0].attribute_name #=> String
      #   resp.policy_descriptions[0].policy_attribute_descriptions[0].attribute_value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_load_balancer_policies(params = {}, options = {})
        req = build_request(:describe_load_balancer_policies, params)
        req.send_request(options)
      end

      # Describes the specified load balancer policy types.
      #
      # You can use these policy types with CreateLoadBalancerPolicy to create
      # policy configurations for a load balancer.
      # @option params [Array<String>] :policy_type_names
      #   The names of the policy types. If no names are specified, describes
      #   all policy types defined by Elastic Load Balancing.
      # @return [Types::DescribeLoadBalancerPolicyTypesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeLoadBalancerPolicyTypesOutput#policy_type_descriptions #PolicyTypeDescriptions} => Array&lt;Types::PolicyTypeDescription&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_load_balancer_policy_types({
      #     policy_type_names: ["PolicyTypeName"],
      #   })
      #
      # @example Response structure
      #   resp.policy_type_descriptions #=> Array
      #   resp.policy_type_descriptions[0].policy_type_name #=> String
      #   resp.policy_type_descriptions[0].description #=> String
      #   resp.policy_type_descriptions[0].policy_attribute_type_descriptions #=> Array
      #   resp.policy_type_descriptions[0].policy_attribute_type_descriptions[0].attribute_name #=> String
      #   resp.policy_type_descriptions[0].policy_attribute_type_descriptions[0].attribute_type #=> String
      #   resp.policy_type_descriptions[0].policy_attribute_type_descriptions[0].description #=> String
      #   resp.policy_type_descriptions[0].policy_attribute_type_descriptions[0].default_value #=> String
      #   resp.policy_type_descriptions[0].policy_attribute_type_descriptions[0].cardinality #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_load_balancer_policy_types(params = {}, options = {})
        req = build_request(:describe_load_balancer_policy_types, params)
        req.send_request(options)
      end

      # Describes the specified the load balancers. If no load balancers are
      # specified, the call describes all of your load balancers.
      # @option params [Array<String>] :load_balancer_names
      #   The names of the load balancers.
      # @option params [String] :marker
      #   The marker for the next set of results. (You received this marker from
      #   a previous call.)
      # @option params [Integer] :page_size
      #   The maximum number of results to return with this call (a number from
      #   1 to 400). The default is 400.
      # @return [Types::DescribeAccessPointsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeAccessPointsOutput#load_balancer_descriptions #LoadBalancerDescriptions} => Array&lt;Types::LoadBalancerDescription&gt;
      #   * {Types::DescribeAccessPointsOutput#next_marker #NextMarker} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_load_balancers({
      #     load_balancer_names: ["AccessPointName"],
      #     marker: "Marker",
      #     page_size: 1,
      #   })
      #
      # @example Response structure
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_load_balancers(params = {}, options = {})
        req = build_request(:describe_load_balancers, params)
        req.send_request(options)
      end

      # Describes the tags associated with the specified load balancers.
      # @option params [required, Array<String>] :load_balancer_names
      #   The names of the load balancers.
      # @return [Types::DescribeTagsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeTagsOutput#tag_descriptions #TagDescriptions} => Array&lt;Types::TagDescription&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_tags({
      #     load_balancer_names: ["AccessPointName"], # required
      #   })
      #
      # @example Response structure
      #   resp.tag_descriptions #=> Array
      #   resp.tag_descriptions[0].load_balancer_name #=> String
      #   resp.tag_descriptions[0].tags #=> Array
      #   resp.tag_descriptions[0].tags[0].key #=> String
      #   resp.tag_descriptions[0].tags[0].value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [required, Array<String>] :subnets
      #   The IDs of the subnets.
      # @return [Types::DetachLoadBalancerFromSubnetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DetachLoadBalancerFromSubnetsOutput#subnets #Subnets} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.detach_load_balancer_from_subnets({
      #     load_balancer_name: "AccessPointName", # required
      #     subnets: ["SubnetId"], # required
      #   })
      #
      # @example Response structure
      #   resp.subnets #=> Array
      #   resp.subnets[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def detach_load_balancer_from_subnets(params = {}, options = {})
        req = build_request(:detach_load_balancer_from_subnets, params)
        req.send_request(options)
      end

      # Removes the specified Availability Zones from the set of Availability
      # Zones for the specified load balancer.
      #
      # There must be at least one Availability Zone registered with a load
      # balancer at all times. After an Availability Zone is removed, all
      # instances registered with the load balancer that are in the removed
      # Availability Zone go into the `OutOfService` state. Then, the load
      # balancer attempts to equally balance the traffic among its remaining
      # Availability Zones.
      #
      # For more information, see [Disable an Availability Zone from a
      # Load-Balanced Application][1] in the *Elastic Load Balancing Developer
      # Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/US_ShrinkLBApp04.html
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [required, Array<String>] :availability_zones
      #   The Availability Zones.
      # @return [Types::RemoveAvailabilityZonesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RemoveAvailabilityZonesOutput#availability_zones #AvailabilityZones} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.disable_availability_zones_for_load_balancer({
      #     load_balancer_name: "AccessPointName", # required
      #     availability_zones: ["AvailabilityZone"], # required
      #   })
      #
      # @example Response structure
      #   resp.availability_zones #=> Array
      #   resp.availability_zones[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def disable_availability_zones_for_load_balancer(params = {}, options = {})
        req = build_request(:disable_availability_zones_for_load_balancer, params)
        req.send_request(options)
      end

      # Adds the specified Availability Zones to the set of Availability Zones
      # for the specified load balancer.
      #
      # The load balancer evenly distributes requests across all its
      # registered Availability Zones that contain instances.
      #
      # For more information, see [Add Availability Zone][1] in the *Elastic
      # Load Balancing Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/US_AddLBAvailabilityZone.html
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [required, Array<String>] :availability_zones
      #   The Availability Zones. These must be in the same region as the load
      #   balancer.
      # @return [Types::AddAvailabilityZonesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AddAvailabilityZonesOutput#availability_zones #AvailabilityZones} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.enable_availability_zones_for_load_balancer({
      #     load_balancer_name: "AccessPointName", # required
      #     availability_zones: ["AvailabilityZone"], # required
      #   })
      #
      # @example Response structure
      #   resp.availability_zones #=> Array
      #   resp.availability_zones[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # For more information, see the following in the *Elastic Load Balancing
      # Developer Guide*\:
      #
      # * [Cross-Zone Load Balancing][1]
      # * [Connection Draining][2]
      # * [Access Logs][3]
      # * [Idle Connection Timeout][4]
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/TerminologyandKeyConcepts.html#request-routing
      # [2]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/TerminologyandKeyConcepts.html#conn-drain
      # [3]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/access-log-collection.html
      # [4]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/TerminologyandKeyConcepts.html#idle-timeout
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [required, Types::LoadBalancerAttributes] :load_balancer_attributes
      #   The attributes of the load balancer.
      # @return [Types::ModifyLoadBalancerAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ModifyLoadBalancerAttributesOutput#load_balancer_name #LoadBalancerName} => String
      #   * {Types::ModifyLoadBalancerAttributesOutput#load_balancer_attributes #LoadBalancerAttributes} => Types::LoadBalancerAttributes
      #
      # @example Request syntax with placeholder values
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
      #           key: "StringVal",
      #           value: "StringVal",
      #         },
      #       ],
      #     },
      #   })
      #
      # @example Response structure
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # If you stop an instance registered with a load balancer and then start
      # it, the IP addresses associated with the instance changes. Elastic
      # Load Balancing cannot recognize the new IP address, which prevents it
      # from routing traffic to the instances. We recommend that you use the
      # following sequence: stop the instance, deregister the instance, start
      # the instance, and then register the instance. To deregister instances
      # from a load balancer, use DeregisterInstancesFromLoadBalancer.
      #
      # For more information, see [Deregister and Register EC2 Instances][1]
      # in the *Elastic Load Balancing Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/US_DeReg_Reg_Instances.html
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [required, Array<Types::Instance>] :instances
      #   The IDs of the instances.
      # @return [Types::RegisterEndPointsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RegisterEndPointsOutput#instances #Instances} => Array&lt;Types::Instance&gt;
      #
      # @example Request syntax with placeholder values
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
      #   resp.instances #=> Array
      #   resp.instances[0].instance_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def register_instances_with_load_balancer(params = {}, options = {})
        req = build_request(:register_instances_with_load_balancer, params)
        req.send_request(options)
      end

      # Removes one or more tags from the specified load balancer.
      # @option params [required, Array<String>] :load_balancer_names
      #   The name of the load balancer. You can specify a maximum of one load
      #   balancer name.
      # @option params [required, Array<Types::TagKeyOnly>] :tags
      #   The list of tag keys to remove.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.remove_tags({
      #     load_balancer_names: ["AccessPointName"], # required
      #     tags: [ # required
      #       {
      #         key: "TagKey",
      #       },
      #     ],
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def remove_tags(params = {}, options = {})
        req = build_request(:remove_tags, params)
        req.send_request(options)
      end

      # Sets the certificate that terminates the specified listener\'s SSL
      # connections. The specified certificate replaces any prior certificate
      # that was used on the same load balancer and port.
      #
      # For more information about updating your SSL certificate, see
      # [Updating an SSL Certificate for a Load Balancer][1] in the *Elastic
      # Load Balancing Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/US_UpdatingLoadBalancerSSL.html
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [required, Integer] :load_balancer_port
      #   The port that uses the specified SSL certificate.
      # @option params [required, String] :ssl_certificate_id
      #   The Amazon Resource Name (ARN) of the SSL certificate.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.set_load_balancer_listener_ssl_certificate({
      #     load_balancer_name: "AccessPointName", # required
      #     load_balancer_port: 1, # required
      #     ssl_certificate_id: "SSLCertificateId", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def set_load_balancer_listener_ssl_certificate(params = {}, options = {})
        req = build_request(:set_load_balancer_listener_ssl_certificate, params)
        req.send_request(options)
      end

      # Replaces the set of policies associated with the specified port on
      # which the back-end server is listening with a new set of policies. At
      # this time, only the back-end server authentication policy type can be
      # applied to the back-end ports; this policy type is composed of
      # multiple public key policies.
      #
      # Each time you use `SetLoadBalancerPoliciesForBackendServer` to enable
      # the policies, use the `PolicyNames` parameter to list the policies
      # that you want to enable.
      #
      # You can use DescribeLoadBalancers or DescribeLoadBalancerPolicies to
      # verify that the policy is associated with the back-end server.
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [required, Integer] :instance_port
      #   The port number associated with the back-end server.
      # @option params [required, Array<String>] :policy_names
      #   The names of the policies. If the list is empty, then all current
      #   polices are removed from the back-end server.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.set_load_balancer_policies_for_backend_server({
      #     load_balancer_name: "AccessPointName", # required
      #     instance_port: 1, # required
      #     policy_names: ["PolicyName"], # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def set_load_balancer_policies_for_backend_server(params = {}, options = {})
        req = build_request(:set_load_balancer_policies_for_backend_server, params)
        req.send_request(options)
      end

      # Associates, updates, or disables a policy with a listener for the
      # specified load balancer. You can associate multiple policies with a
      # listener.
      # @option params [required, String] :load_balancer_name
      #   The name of the load balancer.
      # @option params [required, Integer] :load_balancer_port
      #   The external port of the load balancer for the policy.
      # @option params [required, Array<String>] :policy_names
      #   The names of the policies. If the list is empty, the current policy is
      #   removed from the listener.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.set_load_balancer_policies_of_listener({
      #     load_balancer_name: "AccessPointName", # required
      #     load_balancer_port: 1, # required
      #     policy_names: ["PolicyName"], # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def set_load_balancer_policies_of_listener(params = {}, options = {})
        req = build_request(:set_load_balancer_policies_of_listener, params)
        req.send_request(options)
      end

      # @!endgroup

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
          instance_in_service: Waiters::InstanceInService,
          instance_deregistered: Waiters::InstanceDeregistered,
          any_instance_in_service: Waiters::AnyInstanceInService
        }
      end

      # @api private
      class << self

        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
