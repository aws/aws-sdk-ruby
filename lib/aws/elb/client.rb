# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    class Client < Core::Client

      API_VERSION = '2011-08-15'

      extend Core::QueryClient

      # @private
      CACHEABLE_REQUESTS = Set[]

      ## client methods ##

      # Calls the ConfigureHealthCheck API operation.
      # @method configure_health_check(options = {})
      # @param [Hash] options
      #   * +:load_balancer_name+ - *required* - (String) The mnemonic name
      #     associated with the LoadBalancer. This name must be unique within
      #     the client AWS account.
      #   * +:health_check+ - *required* - (Hash) A structure containing the
      #     configuration information for the new healthcheck.
      #     * +:target+ - *required* - (String) Specifies the instance being
      #       checked. The protocol is either TCP or HTTP. The range of valid
      #       ports is one (1) through 65535. TCP is the default, specified as
      #       a TCP: port pair, for example "TCP:5000". In this case a
      #       healthcheck simply attempts to open a TCP connection to the
      #       instance on the specified port. Failure to connect within the
      #       configured timeout is considered unhealthy. For HTTP, the
      #       situation is different. HTTP is specified as a
      #       HTTP:port;/;PathToPing; grouping, for example
      #       "HTTP:80/weather/us/wa/seattle". In this case, a HTTP GET request
      #       is issued to the instance on the given port and path. Any answer
      #       other than "200 OK" within the timeout period is considered
      #       unhealthy. The total length of the HTTP ping target needs to be
      #       1024 16-bit Unicode characters or less.
      #     * +:interval+ - *required* - (Integer) Specifies the approximate
      #       interval, in seconds, between health checks of an individual
      #       instance.
      #     * +:timeout+ - *required* - (Integer) Specifies the amount of time,
      #       in seconds, during which no response means a failed health probe.
      #       This value must be less than the Interval value.
      #     * +:unhealthy_threshold+ - *required* - (Integer) Specifies the
      #       number of consecutive health probe failures required before
      #       moving the instance to the Unhealthy state.
      #     * +:healthy_threshold+ - *required* - (Integer) Specifies the
      #       number of consecutive health probe successes required before
      #       moving the instance to the Healthy state.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:health_check+ - (Hash)
      #     * +:target+ - (String)
      #     * +:interval+ - (Integer)
      #     * +:timeout+ - (Integer)
      #     * +:unhealthy_threshold+ - (Integer)
      #     * +:healthy_threshold+ - (Integer)
      define_client_method :configure_health_check, 'ConfigureHealthCheck'

      # Calls the CreateAppCookieStickinessPolicy API operation.
      # @method create_app_cookie_stickiness_policy(options = {})
      # @param [Hash] options
      #   * +:load_balancer_name+ - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      #   * +:policy_name+ - *required* - (String) The name of the policy being
      #     created. The name must be unique within the set of policies for
      #     this Load Balancer.
      #   * +:cookie_name+ - *required* - (String) Name of the application
      #     cookie used for stickiness.
      # @return [Core::Response]
      define_client_method :create_app_cookie_stickiness_policy, 'CreateAppCookieStickinessPolicy'

      # Calls the CreateLBCookieStickinessPolicy API operation.
      # @method create_lb_cookie_stickiness_policy(options = {})
      # @param [Hash] options
      #   * +:load_balancer_name+ - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      #   * +:policy_name+ - *required* - (String) The name of the policy being
      #     created. The name must be unique within the set of policies for
      #     this Load Balancer.
      #   * +:cookie_expiration_period+ - (Integer) The time period in seconds
      #     after which the cookie should be considered stale. Not specifying
      #     this parameter indicates that the sticky session will last for the
      #     duration of the browser session.
      # @return [Core::Response]
      define_client_method :create_lb_cookie_stickiness_policy, 'CreateLBCookieStickinessPolicy'

      # Calls the CreateLoadBalancer API operation.
      # @method create_load_balancer(options = {})
      # @param [Hash] options
      #   * +:load_balancer_name+ - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within your set of
      #     LoadBalancers.
      #   * +:listeners+ - *required* - (Array<Hash>) A list of the following
      #     tuples: LoadBalancerPort, InstancePort, and Protocol.
      #     * +:protocol+ - *required* - (String) Specifies the LoadBalancer
      #       transport protocol to use for routing - TCP or HTTP. This
      #       property cannot be modified for the life of the LoadBalancer.
      #     * +:load_balancer_port+ - *required* - (Integer) Specifies the
      #       external LoadBalancer port number. This property cannot be
      #       modified for the life of the LoadBalancer.
      #     * +:instance_protocol+ - (String)
      #     * +:instance_port+ - *required* - (Integer) Specifies the TCP port
      #       on which the instance server is listening. This property cannot
      #       be modified for the life of the LoadBalancer.
      #     * +:ssl_certificate_id+ - (String) The ID of the SSL certificate
      #       chain to use. For more information on SSL certificates, see
      #       Managing Keys and Certificates in the AWS Identity and Access
      #       Management documentation.
      #   * +:availability_zones+ - *required* - (Array<String>) A list of
      #     Availability Zones. At least one Availability Zone must be
      #     specified. Specified Availability Zones must be in the same EC2
      #     Region as the LoadBalancer. Traffic will be equally distributed
      #     across all zones. This list can be modified after the creation of
      #     the LoadBalancer.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:dns_name+ - (String)
      define_client_method :create_load_balancer, 'CreateLoadBalancer'

      # Calls the CreateLoadBalancerListeners API operation.
      # @method create_load_balancer_listeners(options = {})
      # @param [Hash] options
      #   * +:load_balancer_name+ - *required* - (String) The name of the new
      #     LoadBalancer. The name must be unique within your AWS account.
      #   * +:listeners+ - *required* - (Array<Hash>) A list of
      #     LoadBalancerPort, InstancePort, Protocol, and SSLCertificateId
      #     items.
      #     * +:protocol+ - *required* - (String) Specifies the LoadBalancer
      #       transport protocol to use for routing - TCP or HTTP. This
      #       property cannot be modified for the life of the LoadBalancer.
      #     * +:load_balancer_port+ - *required* - (Integer) Specifies the
      #       external LoadBalancer port number. This property cannot be
      #       modified for the life of the LoadBalancer.
      #     * +:instance_protocol+ - (String)
      #     * +:instance_port+ - *required* - (Integer) Specifies the TCP port
      #       on which the instance server is listening. This property cannot
      #       be modified for the life of the LoadBalancer.
      #     * +:ssl_certificate_id+ - (String) The ID of the SSL certificate
      #       chain to use. For more information on SSL certificates, see
      #       Managing Keys and Certificates in the AWS Identity and Access
      #       Management documentation.
      # @return [Core::Response]
      define_client_method :create_load_balancer_listeners, 'CreateLoadBalancerListeners'

      # Calls the CreateLoadBalancerPolicy API operation.
      # @method create_load_balancer_policy(options = {})
      # @param [Hash] options
      #   * +:load_balancer_name+ - *required* - (String)
      #   * +:policy_name+ - *required* - (String)
      #   * +:policy_type_name+ - *required* - (String)
      #   * +:policy_attributes+ - (Array<Hash>)
      #     * +:attribute_name+ - (String)
      #     * +:attribute_value+ - (String)
      # @return [Core::Response]
      define_client_method :create_load_balancer_policy, 'CreateLoadBalancerPolicy'

      # Calls the DeleteLoadBalancer API operation.
      # @method delete_load_balancer(options = {})
      # @param [Hash] options
      #   * +:load_balancer_name+ - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      # @return [Core::Response]
      define_client_method :delete_load_balancer, 'DeleteLoadBalancer'

      # Calls the DeleteLoadBalancerListeners API operation.
      # @method delete_load_balancer_listeners(options = {})
      # @param [Hash] options
      #   * +:load_balancer_name+ - *required* - (String) The mnemonic name
      #     associated with the LoadBalancer.
      #   * +:load_balancer_ports+ - *required* - (Array<Integer>) The client
      #     port number(s) of the LoadBalancerListener(s) to be removed.
      # @return [Core::Response]
      define_client_method :delete_load_balancer_listeners, 'DeleteLoadBalancerListeners'

      # Calls the DeleteLoadBalancerPolicy API operation.
      # @method delete_load_balancer_policy(options = {})
      # @param [Hash] options
      #   * +:load_balancer_name+ - *required* - (String) The mnemonic name
      #     associated with the LoadBalancer. The name must be unique within
      #     your AWS account.
      #   * +:policy_name+ - *required* - (String) The mnemonic name for the
      #     policy being deleted.
      # @return [Core::Response]
      define_client_method :delete_load_balancer_policy, 'DeleteLoadBalancerPolicy'

      # Calls the DeregisterInstancesFromLoadBalancer API operation.
      # @method deregister_instances_from_load_balancer(options = {})
      # @param [Hash] options
      #   * +:load_balancer_name+ - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      #   * +:instances+ - *required* - (Array<Hash>) A list of EC2 instance
      #     IDs consisting of all instances to be deregistered.
      #     * +:instance_id+ - (String) Provides an EC2 instance ID.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:instances+ - (Array<Hash>)
      #     * +:instance_id+ - (String)
      define_client_method :deregister_instances_from_load_balancer, 'DeregisterInstancesFromLoadBalancer'

      # Calls the DescribeInstanceHealth API operation.
      # @method describe_instance_health(options = {})
      # @param [Hash] options
      #   * +:load_balancer_name+ - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      #   * +:instances+ - (Array<Hash>) A list of instance IDs whose states
      #     are being queried.
      #     * +:instance_id+ - (String) Provides an EC2 instance ID.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:instance_states+ - (Array<Hash>)
      #     * +:instance_id+ - (String)
      #     * +:state+ - (String)
      #     * +:reason_code+ - (String)
      #     * +:description+ - (String)
      define_client_method :describe_instance_health, 'DescribeInstanceHealth'

      # Calls the DescribeLoadBalancerPolicies API operation.
      # @method describe_load_balancer_policies(options = {})
      # @param [Hash] options
      #   * +:load_balancer_name+ - (String)
      #   * +:policy_names+ - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:policy_descriptions+ - (Array<Hash>)
      #     * +:policy_name+ - (String)
      #     * +:policy_type_name+ - (String)
      #     * +:policy_attribute_descriptions+ - (Array<Hash>)
      #       * +:attribute_name+ - (String)
      #       * +:attribute_value+ - (String)
      define_client_method :describe_load_balancer_policies, 'DescribeLoadBalancerPolicies'

      # Calls the DescribeLoadBalancerPolicyTypes API operation.
      # @method describe_load_balancer_policy_types(options = {})
      # @param [Hash] options
      #   * +:policy_type_names+ - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:policy_type_descriptions+ - (Array<Hash>)
      #     * +:policy_type_name+ - (String)
      #     * +:description+ - (String)
      #     * +:policy_attribute_type_descriptions+ - (Array<Hash>)
      #       * +:attribute_name+ - (String)
      #       * +:attribute_type+ - (String)
      #       * +:description+ - (String)
      #       * +:default_value+ - (String)
      #       * +:cardinality+ - (String)
      define_client_method :describe_load_balancer_policy_types, 'DescribeLoadBalancerPolicyTypes'

      # Calls the DescribeLoadBalancers API operation.
      # @method describe_load_balancers(options = {})
      # @param [Hash] options
      #   * +:load_balancer_names+ - (Array<String>) A list of names associated
      #     with the LoadBalancers at creation time.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:load_balancer_descriptions+ - (Array<Hash>)
      #     * +:load_balancer_name+ - (String)
      #     * +:dns_name+ - (String)
      #     * +:canonical_hosted_zone_name+ - (String)
      #     * +:canonical_hosted_zone_name_id+ - (String)
      #     * +:listener_descriptions+ - (Array<Hash>)
      #       * +:listener+ - (Hash)
      #         * +:protocol+ - (String)
      #         * +:load_balancer_port+ - (Integer)
      #         * +:instance_protocol+ - (String)
      #         * +:instance_port+ - (Integer)
      #         * +:ssl_certificate_id+ - (String)
      #       * +:policy_names+ - (Array<String>)
      #     * +:policies+ - (Hash)
      #       * +:app_cookie_stickiness_policies+ - (Array<Hash>)
      #         * +:policy_name+ - (String)
      #         * +:cookie_name+ - (String)
      #       * +:lb_cookie_stickiness_policies+ - (Array<Hash>)
      #         * +:policy_name+ - (String)
      #         * +:cookie_expiration_period+ - (Integer)
      #       * +:other_policies+ - (Array<String>)
      #     * +:backend_server_descriptions+ - (Array<Hash>)
      #       * +:instance_port+ - (Integer)
      #       * +:policy_names+ - (Array<String>)
      #     * +:availability_zones+ - (Array<String>)
      #     * +:instances+ - (Array<Hash>)
      #       * +:instance_id+ - (String)
      #     * +:health_check+ - (Hash)
      #       * +:target+ - (String)
      #       * +:interval+ - (Integer)
      #       * +:timeout+ - (Integer)
      #       * +:unhealthy_threshold+ - (Integer)
      #       * +:healthy_threshold+ - (Integer)
      #     * +:source_security_group+ - (Hash)
      #       * +:owner_alias+ - (String)
      #       * +:group_name+ - (String)
      #     * +:created_time+ - (Time)
      define_client_method :describe_load_balancers, 'DescribeLoadBalancers'

      # Calls the DisableAvailabilityZonesForLoadBalancer API operation.
      # @method disable_availability_zones_for_load_balancer(options = {})
      # @param [Hash] options
      #   * +:load_balancer_name+ - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      #   * +:availability_zones+ - *required* - (Array<String>) A list of
      #     Availability Zones to be removed from the LoadBalancer. There must
      #     be at least one Availability Zone registered with a LoadBalancer at
      #     all times. The client cannot remove all the Availability Zones from
      #     a LoadBalancer. Specified Availability Zones must be in the same
      #     Region.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:availability_zones+ - (Array<String>)
      define_client_method :disable_availability_zones_for_load_balancer, 'DisableAvailabilityZonesForLoadBalancer'

      # Calls the EnableAvailabilityZonesForLoadBalancer API operation.
      # @method enable_availability_zones_for_load_balancer(options = {})
      # @param [Hash] options
      #   * +:load_balancer_name+ - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      #   * +:availability_zones+ - *required* - (Array<String>) A list of new
      #     Availability Zones for the LoadBalancer. Each Availability Zone
      #     must be in the same Region as the LoadBalancer.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:availability_zones+ - (Array<String>)
      define_client_method :enable_availability_zones_for_load_balancer, 'EnableAvailabilityZonesForLoadBalancer'

      # Calls the RegisterInstancesWithLoadBalancer API operation.
      # @method register_instances_with_load_balancer(options = {})
      # @param [Hash] options
      #   * +:load_balancer_name+ - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      #   * +:instances+ - *required* - (Array<Hash>) A list of instances IDs
      #     that should be registered with the LoadBalancer.
      #     * +:instance_id+ - (String) Provides an EC2 instance ID.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:instances+ - (Array<Hash>)
      #     * +:instance_id+ - (String)
      define_client_method :register_instances_with_load_balancer, 'RegisterInstancesWithLoadBalancer'

      # Calls the SetLoadBalancerListenerSSLCertificate API operation.
      # @method set_load_balancer_listener_ssl_certificate(options = {})
      # @param [Hash] options
      #   * +:load_balancer_name+ - *required* - (String) The name of the the
      #     LoadBalancer.
      #   * +:load_balancer_port+ - *required* - (Integer) The port that uses
      #     the specified SSL certificate.
      #   * +:ssl_certificate_id+ - *required* - (String) The ID of the SSL
      #     certificate chain to use. For more information on SSL certificates,
      #     see Managing Server Certificates in the AWS Identity and Access
      #     Management documentation.
      # @return [Core::Response]
      define_client_method :set_load_balancer_listener_ssl_certificate, 'SetLoadBalancerListenerSSLCertificate'

      # Calls the SetLoadBalancerPoliciesForBackendServer API operation.
      # @method set_load_balancer_policies_for_backend_server(options = {})
      # @param [Hash] options
      #   * +:load_balancer_name+ - *required* - (String)
      #   * +:instance_port+ - *required* - (Integer)
      #   * +:policy_names+ - *required* - (Array<String>)
      # @return [Core::Response]
      define_client_method :set_load_balancer_policies_for_backend_server, 'SetLoadBalancerPoliciesForBackendServer'

      # Calls the SetLoadBalancerPoliciesOfListener API operation.
      # @method set_load_balancer_policies_of_listener(options = {})
      # @param [Hash] options
      #   * +:load_balancer_name+ - *required* - (String) The name associated
      #     with the LoadBalancer. The name must be unique within the client
      #     AWS account.
      #   * +:load_balancer_port+ - *required* - (Integer) The external port of
      #     the LoadBalancer with which this policy has to be associated.
      #   * +:policy_names+ - *required* - (Array<String>) List of policies to
      #     be associated with the listener. Currently this list can have at
      #     most one policy. If the list is empty, the current policy is
      #     removed from the listener.
      # @return [Core::Response]
      define_client_method :set_load_balancer_policies_of_listener, 'SetLoadBalancerPoliciesOfListener'

      ## end client methods ##

    end
  end
end
