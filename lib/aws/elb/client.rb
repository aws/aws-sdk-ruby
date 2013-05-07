# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class ELB

    # Client class for Elastic Load Balancing (ELB).
    class Client < Core::QueryClient

      # @api private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method apply_security_groups_to_load_balancer(options = {})
      # Calls the ApplySecurityGroupsToLoadBalancer API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      #   * `:security_groups` - *required* - (Array<String>) A list of
      #     security group IDs to associate with your LoadBalancer in VPC. The
      #     security group IDs must be provided as the ID and not the security
      #     group name (For example, sg-1234).
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:security_groups` - (Array<String>)

      # @!method attach_load_balancer_to_subnets(options = {})
      # Calls the AttachLoadBalancerToSubnets API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      #   * `:subnets` - *required* - (Array<String>) A list of subnet IDs to
      #     add for the LoadBalancer.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:subnets` - (Array<String>)

      # @!method configure_health_check(options = {})
      # Calls the ConfigureHealthCheck API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The mnemonic name
      #     associated with the LoadBalancer. This name must be unique within
      #     the client AWS account.
      #   * `:health_check` - *required* - (Hash) A structure containing the
      #     configuration information for the new healthcheck.
      #     * `:target` - *required* - (String) Specifies the instance being
      #       checked. The protocol is either TCP, HTTP, HTTPS, or SSL. The
      #       range of valid ports is one (1) through 65535. TCP is the
      #       default, specified as a TCP: port pair, for example "TCP:5000".
      #       In this case a healthcheck simply attempts to open a TCP
      #       connection to the instance on the specified port. Failure to
      #       connect within the configured timeout is considered unhealthy.
      #       SSL is also specified as SSL: port pair, for example, SSL:5000.
      #       For HTTP or HTTPS protocol, the situation is different. You have
      #       to include a ping path in the string. HTTP is specified as a
      #       HTTP:port;/;PathToPing; grouping, for example
      #       "HTTP:80/weather/us/wa/seattle". In this case, a HTTP GET request
      #       is issued to the instance on the given port and path. Any answer
      #       other than "200 OK" within the timeout period is considered
      #       unhealthy. The total length of the HTTP ping target needs to be
      #       1024 16-bit Unicode characters or less.
      #     * `:interval` - *required* - (Integer) Specifies the approximate
      #       interval, in seconds, between health checks of an individual
      #       instance.
      #     * `:timeout` - *required* - (Integer) Specifies the amount of time,
      #       in seconds, during which no response means a failed health probe.
      #       This value must be less than the Interval value.
      #     * `:unhealthy_threshold` - *required* - (Integer) Specifies the
      #       number of consecutive health probe failures required before
      #       moving the instance to the Unhealthy state.
      #     * `:healthy_threshold` - *required* - (Integer) Specifies the
      #       number of consecutive health probe successes required before
      #       moving the instance to the Healthy state.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:health_check` - (Hash)
      #     * `:target` - (String)
      #     * `:interval` - (Integer)
      #     * `:timeout` - (Integer)
      #     * `:unhealthy_threshold` - (Integer)
      #     * `:healthy_threshold` - (Integer)

      # @!method create_app_cookie_stickiness_policy(options = {})
      # Calls the CreateAppCookieStickinessPolicy API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      #   * `:policy_name` - *required* - (String) The name of the policy being
      #     created. The name must be unique within the set of policies for
      #     this LoadBalancer.
      #   * `:cookie_name` - *required* - (String) Name of the application
      #     cookie used for stickiness.
      # @return [Core::Response]

      # @!method create_lb_cookie_stickiness_policy(options = {})
      # Calls the CreateLBCookieStickinessPolicy API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      #   * `:policy_name` - *required* - (String) The name of the policy being
      #     created. The name must be unique within the set of policies for
      #     this LoadBalancer.
      #   * `:cookie_expiration_period` - (Integer) The time period in seconds
      #     after which the cookie should be considered stale. Not specifying
      #     this parameter indicates that the sticky session will last for the
      #     duration of the browser session.
      # @return [Core::Response]

      # @!method create_load_balancer(options = {})
      # Calls the CreateLoadBalancer API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within your set of
      #     LoadBalancers.
      #   * `:listeners` - *required* - (Array<Hash>) A list of the following
      #     tuples: LoadBalancerPort, InstancePort, and Protocol.
      #     * `:protocol` - *required* - (String) Specifies the LoadBalancer
      #       transport protocol to use for routing - HTTP, HTTPS, TCP or SSL.
      #       This property cannot be modified for the life of the
      #       LoadBalancer.
      #     * `:load_balancer_port` - *required* - (Integer) Specifies the
      #       external LoadBalancer port number. This property cannot be
      #       modified for the life of the LoadBalancer.
      #     * `:instance_protocol` - (String) Specifies the protocol to use for
      #       routing traffic to back-end instances - HTTP, HTTPS, TCP, or SSL.
      #       This property cannot be modified for the life of the
      #       LoadBalancer. If the front-end protocol is HTTP or HTTPS,
      #       InstanceProtocol has to be at the same protocol layer, i.e., HTTP
      #       or HTTPS. Likewise, if the front-end protocol is TCP or SSL,
      #       InstanceProtocol has to be TCP or SSL. If there is another
      #       listener with the same InstancePort whose InstanceProtocol is
      #       secure, i.e., HTTPS or SSL, the listener's InstanceProtocol has
      #       to be secure, i.e., HTTPS or SSL. If there is another listener
      #       with the same InstancePort whose InstanceProtocol is HTTP or TCP,
      #       the listener's InstanceProtocol must be either HTTP or TCP.
      #     * `:instance_port` - *required* - (Integer) Specifies the TCP port
      #       on which the instance server is listening. This property cannot
      #       be modified for the life of the LoadBalancer.
      #     * `:ssl_certificate_id` - (String) The ARN string of the server
      #       certificate. To get the ARN of the server certificate, call the
      #       AWS Identity and Access Management UploadServerCertificate API.
      #   * `:availability_zones` - (Array<String>) A list of Availability
      #     Zones. At least one Availability Zone must be specified. Specified
      #     Availability Zones must be in the same EC2 Region as the
      #     LoadBalancer. Traffic will be equally distributed across all zones.
      #     This list can be modified after the creation of the LoadBalancer.
      #   * `:subnets` - (Array<String>) A list of subnet IDs in your VPC to
      #     attach to your LoadBalancer.
      #   * `:security_groups` - (Array<String>) The security groups assigned
      #     to your LoadBalancer within your VPC.
      #   * `:scheme` - (String) The type of a LoadBalancer. This option is
      #     only available for LoadBalancers attached to a Amazon VPC. By
      #     default, Elastic Load Balancer creates an internet-facing load
      #     balancer with publicly resolvable DNS name that resolves to public
      #     IP addresses. Specify the value internal for this option to create
      #     an internal load balancer with a DNS name that resolves to private
      #     IP addresses.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:dns_name` - (String)

      # @!method create_load_balancer_listeners(options = {})
      # Calls the CreateLoadBalancerListeners API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The name of the new
      #     LoadBalancer. The name must be unique within your AWS account.
      #   * `:listeners` - *required* - (Array<Hash>) A list of
      #     LoadBalancerPort, InstancePort, Protocol, and SSLCertificateId
      #     items.
      #     * `:protocol` - *required* - (String) Specifies the LoadBalancer
      #       transport protocol to use for routing - HTTP, HTTPS, TCP or SSL.
      #       This property cannot be modified for the life of the
      #       LoadBalancer.
      #     * `:load_balancer_port` - *required* - (Integer) Specifies the
      #       external LoadBalancer port number. This property cannot be
      #       modified for the life of the LoadBalancer.
      #     * `:instance_protocol` - (String) Specifies the protocol to use for
      #       routing traffic to back-end instances - HTTP, HTTPS, TCP, or SSL.
      #       This property cannot be modified for the life of the
      #       LoadBalancer. If the front-end protocol is HTTP or HTTPS,
      #       InstanceProtocol has to be at the same protocol layer, i.e., HTTP
      #       or HTTPS. Likewise, if the front-end protocol is TCP or SSL,
      #       InstanceProtocol has to be TCP or SSL. If there is another
      #       listener with the same InstancePort whose InstanceProtocol is
      #       secure, i.e., HTTPS or SSL, the listener's InstanceProtocol has
      #       to be secure, i.e., HTTPS or SSL. If there is another listener
      #       with the same InstancePort whose InstanceProtocol is HTTP or TCP,
      #       the listener's InstanceProtocol must be either HTTP or TCP.
      #     * `:instance_port` - *required* - (Integer) Specifies the TCP port
      #       on which the instance server is listening. This property cannot
      #       be modified for the life of the LoadBalancer.
      #     * `:ssl_certificate_id` - (String) The ARN string of the server
      #       certificate. To get the ARN of the server certificate, call the
      #       AWS Identity and Access Management UploadServerCertificate API.
      # @return [Core::Response]

      # @!method create_load_balancer_policy(options = {})
      # Calls the CreateLoadBalancerPolicy API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The name associated
      #     with the LoadBalancer for which the policy is being created. This
      #     name must be unique within the client AWS account.
      #   * `:policy_name` - *required* - (String) The name of the LoadBalancer
      #     policy being created. The name must be unique within the set of
      #     policies for this LoadBalancer.
      #   * `:policy_type_name` - *required* - (String) The name of the base
      #     policy type being used to create this policy. To get the list of
      #     policy types, use the DescribeLoadBalancerPolicyTypes action.
      #   * `:policy_attributes` - (Array<Hash>) A list of attributes
      #     associated with the policy being created.
      #     * `:attribute_name` - (String) The name of the attribute associated
      #       with the policy.
      #     * `:attribute_value` - (String) The value of the attribute
      #       associated with the policy.
      # @return [Core::Response]

      # @!method delete_load_balancer(options = {})
      # Calls the DeleteLoadBalancer API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      # @return [Core::Response]

      # @!method delete_load_balancer_listeners(options = {})
      # Calls the DeleteLoadBalancerListeners API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The mnemonic name
      #     associated with the LoadBalancer.
      #   * `:load_balancer_ports` - *required* - (Array<Integer>) The client
      #     port number(s) of the LoadBalancerListener(s) to be removed.
      # @return [Core::Response]

      # @!method delete_load_balancer_policy(options = {})
      # Calls the DeleteLoadBalancerPolicy API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The mnemonic name
      #     associated with the LoadBalancer. The name must be unique within
      #     your AWS account.
      #   * `:policy_name` - *required* - (String) The mnemonic name for the
      #     policy being deleted.
      # @return [Core::Response]

      # @!method deregister_instances_from_load_balancer(options = {})
      # Calls the DeregisterInstancesFromLoadBalancer API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      #   * `:instances` - *required* - (Array<Hash>) A list of EC2 instance
      #     IDs consisting of all instances to be deregistered.
      #     * `:instance_id` - (String) Provides an EC2 instance ID.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:instances` - (Array<Hash>)
      #     * `:instance_id` - (String)

      # @!method describe_instance_health(options = {})
      # Calls the DescribeInstanceHealth API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      #   * `:instances` - (Array<Hash>) A list of instance IDs whose states
      #     are being queried.
      #     * `:instance_id` - (String) Provides an EC2 instance ID.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:instance_states` - (Array<Hash>)
      #     * `:instance_id` - (String)
      #     * `:state` - (String)
      #     * `:reason_code` - (String)
      #     * `:description` - (String)

      # @!method describe_load_balancer_policies(options = {})
      # Calls the DescribeLoadBalancerPolicies API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - (String) The mnemonic name associated with
      #     the LoadBalancer. If no name is specified, the operation returns
      #     the attributes of either all the sample policies pre-defined by
      #     Elastic Load Balancing or the specified sample polices.
      #   * `:policy_names` - (Array<String>) The names of LoadBalancer
      #     policies you've created or Elastic Load Balancing sample policy
      #     names.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:policy_descriptions` - (Array<Hash>)
      #     * `:policy_name` - (String)
      #     * `:policy_type_name` - (String)
      #     * `:policy_attribute_descriptions` - (Array<Hash>)
      #       * `:attribute_name` - (String)
      #       * `:attribute_value` - (String)

      # @!method describe_load_balancer_policy_types(options = {})
      # Calls the DescribeLoadBalancerPolicyTypes API operation.
      # @param [Hash] options
      #   * `:policy_type_names` - (Array<String>) Specifies the name of the
      #     policy types. If no names are specified, returns the description of
      #     all the policy types defined by Elastic Load Balancing service.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:policy_type_descriptions` - (Array<Hash>)
      #     * `:policy_type_name` - (String)
      #     * `:description` - (String)
      #     * `:policy_attribute_type_descriptions` - (Array<Hash>)
      #       * `:attribute_name` - (String)
      #       * `:attribute_type` - (String)
      #       * `:description` - (String)
      #       * `:default_value` - (String)
      #       * `:cardinality` - (String)

      # @!method describe_load_balancers(options = {})
      # Calls the DescribeLoadBalancers API operation.
      # @param [Hash] options
      #   * `:load_balancer_names` - (Array<String>) A list of names associated
      #     with the LoadBalancers at creation time.
      #   * `:marker` - (String) An optional parameter reserved for future use.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:load_balancer_descriptions` - (Array<Hash>)
      #     * `:load_balancer_name` - (String)
      #     * `:dns_name` - (String)
      #     * `:canonical_hosted_zone_name` - (String)
      #     * `:canonical_hosted_zone_name_id` - (String)
      #     * `:listener_descriptions` - (Array<Hash>)
      #       * `:listener` - (Hash)
      #         * `:protocol` - (String)
      #         * `:load_balancer_port` - (Integer)
      #         * `:instance_protocol` - (String)
      #         * `:instance_port` - (Integer)
      #         * `:ssl_certificate_id` - (String)
      #       * `:policy_names` - (Array<String>)
      #     * `:policies` - (Hash)
      #       * `:app_cookie_stickiness_policies` - (Array<Hash>)
      #         * `:policy_name` - (String)
      #         * `:cookie_name` - (String)
      #       * `:lb_cookie_stickiness_policies` - (Array<Hash>)
      #         * `:policy_name` - (String)
      #         * `:cookie_expiration_period` - (Integer)
      #       * `:other_policies` - (Array<String>)
      #     * `:backend_server_descriptions` - (Array<Hash>)
      #       * `:instance_port` - (Integer)
      #       * `:policy_names` - (Array<String>)
      #     * `:availability_zones` - (Array<String>)
      #     * `:subnets` - (Array<String>)
      #     * `:vpc_id` - (String)
      #     * `:instances` - (Array<Hash>)
      #       * `:instance_id` - (String)
      #     * `:health_check` - (Hash)
      #       * `:target` - (String)
      #       * `:interval` - (Integer)
      #       * `:timeout` - (Integer)
      #       * `:unhealthy_threshold` - (Integer)
      #       * `:healthy_threshold` - (Integer)
      #     * `:source_security_group` - (Hash)
      #       * `:owner_alias` - (String)
      #       * `:group_name` - (String)
      #     * `:security_groups` - (Array<String>)
      #     * `:created_time` - (Time)
      #     * `:scheme` - (String)
      #   * `:next_marker` - (String)

      # @!method detach_load_balancer_from_subnets(options = {})
      # Calls the DetachLoadBalancerFromSubnets API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The name associated
      #     with the LoadBalancer to be detached. The name must be unique
      #     within the client AWS account.
      #   * `:subnets` - *required* - (Array<String>) A list of subnet IDs to
      #     remove from the set of configured subnets for the LoadBalancer.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:subnets` - (Array<String>)

      # @!method disable_availability_zones_for_load_balancer(options = {})
      # Calls the DisableAvailabilityZonesForLoadBalancer API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      #   * `:availability_zones` - *required* - (Array<String>) A list of
      #     Availability Zones to be removed from the LoadBalancer. There must
      #     be at least one Availability Zone registered with a LoadBalancer at
      #     all times. The client cannot remove all the Availability Zones from
      #     a LoadBalancer. Specified Availability Zones must be in the same
      #     Region.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:availability_zones` - (Array<String>)

      # @!method enable_availability_zones_for_load_balancer(options = {})
      # Calls the EnableAvailabilityZonesForLoadBalancer API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      #   * `:availability_zones` - *required* - (Array<String>) A list of new
      #     Availability Zones for the LoadBalancer. Each Availability Zone
      #     must be in the same Region as the LoadBalancer.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:availability_zones` - (Array<String>)

      # @!method register_instances_with_load_balancer(options = {})
      # Calls the RegisterInstancesWithLoadBalancer API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      #   * `:instances` - *required* - (Array<Hash>) A list of instance IDs
      #     that should be registered with the LoadBalancer. When the instance
      #     is stopped and then restarted, the IP addresses associated with
      #     your instance changes. Elastic Load Balancing cannot recognize the
      #     new IP address, which prevents it from routing traffic to your
      #     instances. We recommend that you de-register your Amazon EC2
      #     instances from your load balancer after you stop your instance, and
      #     then register the load balancer with your instance after you've
      #     restarted. To de-register your instances from load balancer, use
      #     DeregisterInstancesFromLoadBalancer action.
      #     * `:instance_id` - (String) Provides an EC2 instance ID.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:instances` - (Array<Hash>)
      #     * `:instance_id` - (String)

      # @!method set_load_balancer_listener_ssl_certificate(options = {})
      # Calls the SetLoadBalancerListenerSSLCertificate API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The name of the the
      #     LoadBalancer.
      #   * `:load_balancer_port` - *required* - (Integer) The port that uses
      #     the specified SSL certificate.
      #   * `:ssl_certificate_id` - *required* - (String) The ID of the SSL
      #     certificate chain to use. For more information on SSL certificates,
      #     see Managing Server Certificates in the AWS Identity and Access
      #     Management documentation.
      # @return [Core::Response]

      # @!method set_load_balancer_policies_for_backend_server(options = {})
      # Calls the SetLoadBalancerPoliciesForBackendServer API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The mnemonic name
      #     associated with the LoadBalancer. This name must be unique within
      #     the client AWS account.
      #   * `:instance_port` - *required* - (Integer) The port number
      #     associated with the back-end server.
      #   * `:policy_names` - *required* - (Array<String>) List of policy names
      #     to be set. If the list is empty, then all current polices are
      #     removed from the back-end server.
      # @return [Core::Response]

      # @!method set_load_balancer_policies_of_listener(options = {})
      # Calls the SetLoadBalancerPoliciesOfListener API operation.
      # @param [Hash] options
      #   * `:load_balancer_name` - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      #   * `:load_balancer_port` - *required* - (Integer) The external port of
      #     the LoadBalancer with which this policy applies to.
      #   * `:policy_names` - *required* - (Array<String>) List of policies to
      #     be associated with the listener. Currently this list can have at
      #     most one policy. If the list is empty, the current policy is
      #     removed from the listener.
      # @return [Core::Response]

      # end client methods #

      define_client_methods('2012-06-01')

    end
  end
end
