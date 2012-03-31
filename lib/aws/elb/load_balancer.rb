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

    # @attr_reader [String] name The name of the load balancer.
    #
    # @attr_reader [Array<String>] availability_zone_names Return the names of
    #   the availability zones this load balancer routes traffic to.
    #
    # @attr_reader [String] canonical_hosted_zone_name Provides the name of 
    #   the Amazon Route 53 hosted zone that is associated with the load
    #   balancer.  For more information: {http://docs.amazonwebservices.com/ElasticLoadBalancing/latest/DeveloperGuide/index.html?using-domain-names-with-elb.html}.
    #
    # @attr_reader [String] canonical_hosted_zone_name_id Provides the ID of 
    #   the Amazon Route 53 hosted zone name that is associated with the 
    #   load balancer.  For more information: {http://docs.amazonwebservices.com/ElasticLoadBalancing/latest/DeveloperGuide/index.html?using-domain-names-with-elb.html}.
    #
    # @attr_reader [String] dns_name Specifies the external DNS name 
    #   associated with this load balancer.
    #
    class LoadBalancer < Core::Resource

      def initialize name, options = {}
        super(options.merge(:name => name.to_s))
      end

      attribute :name, :as => :load_balancer_name, :static => true

      #availability_zones
      attribute :availability_zone_names, :as => :availability_zones

      #backend_server_policies
      attribute :backend_server_descriptions

      attribute :canonical_hosted_zone_name, :static => true

      attribute :canonical_hosted_zone_name_id, :static => true

      attribute :created_time, :static => true

      attribute :dns_name, :static => true

      #health_check_configuration
      attribute :health_check_description, :as => :health_check

      #instances
      attribute :instance_descriptions, :as => :instances

      #listeners
      attribute :listener_descriptions

      #source_security_group
      attribute :security_group_description, 
        :as => :source_security_group, 
        :static => true

      populates_from(:describe_load_balancers) do |resp|
        resp.load_balancer_descriptions.find do |lb|
          lb.load_balancer_name == name
        end
      end

      # A collection that help maanage the availability zones for 
      # this load balancer.
      #
      # @example enable an availability zone
      #
      #   load_balancer.availability_zones.enable('us-east-1b')
      #
      # @example disable an availability zone
      #
      #   load_balancer.availability_zones.disable('us-east-1b')
      #
      # @example list enabled availability zoens
      #
      #   load_balancer.availability_zones.each do |zone|
      #     puts zone.name
      #   end
      #
      # @return [AvailabilityZoneCollection] Returns a collection that 
      #   represents this load balancer's availability zones.  You can
      #   use this collection to enable and disable availability zones.
      def availability_zones
        AvailabilityZoneCollection.new(self)
      end

      # @return [ListenerCollection]
      def listeners
        ListenerCollection.new(self)
      end

      # @return [PolicyCollection]
      def policies
        LoadBalancerPolicyCollection.new(self)
      end

      # @return [InstanceCollection]
      def instances
        InstanceCollection.new(self)
      end

      # @return [BackendServerPolicyCollection]
      def backend_server_policies
        BackendServerPolicyCollection.new(self)
      end

      # Updates the configuration that drives the instance health checks.
      #
      # You only need to pass the options you want to change.  You can 
      # call {#health_check_configuration} if you want to see what the
      # current configuration values are.
      #
      # @param [Hash] options
      #
      # @option options [Integer] :healthy_threshold Specifies the number of
      #   consecutive health probe successes required before moving the 
      #   instance to the Healthy state.
      #
      # @option options [Integer] :unhealthy_threshold Specifies the number 
      #   of consecutive health probe failures required before moving the 
      #   instance to the Unhealthy state.
      #
      # @option options [Integer] :interval Specifies the approximate 
      #   interval, in seconds, between health checks of an individual 
      #   instance.
      #
      # @option options [Integer] :timeout Specifies the amount of time, in 
      #   seconds, during which no response means a failed health probe.  
      #   This value must be less than the +:interval+ value.
      #
      # @option options [String] :target Specifies the instance being checked. 
      #
      #   This option should be formatted like: "TCP:80"
      #
      #   * The protocol is either TCP, HTTP, HTTPS, or SSL. 
      #   * The range of valid ports is one (1) through 65535.
      #
      #   TCP is the default, specified as a TCP: port pair, for example 
      #   "TCP:5000". In this case a healthcheck simply attempts to open a 
      #   TCP connection to the instance on the specified port. Failure to 
      #   connect within the configured timeout is considered unhealthy.
      #
      #   SSL is also specified as SSL: port pair, for example, SSL:5000.
      #   For HTTP or HTTPS protocol, the situation is different. You have 
      #   to include a ping path in the string. HTTP is specified as a 
      #   HTTP:port;/;PathToPing; grouping, for example 
      #   "HTTP:80/weather/us/wa/seattle". In this case, a HTTP GET request 
      #   is issued to the instance on the given port and path. Any answer 
      #   other than "200 OK" within the timeout period is considered 
      #   unhealthy.
      #
      #   The total length of the HTTP ping target needs to be 1024 16-bit 
      #   Unicode characters or less.
      #
      def configure_health_check options = {}

        new_config = health_check_configuration.merge(options)

        response = client.configure_health_check(
          :load_balancer_name => name,
          :health_check => new_config)

        new_config

      end

      # Returns a hash of the various health probes conducted on the 
      # load balancer instances.  The following entries are returned:
      #
      #   * +:healthy_threshold+
      #   * +:unhealthy_threshold+
      #   * +:interval+
      #   * +:target+
      #   * +:timeout+
      #
      # See {#configure_health_check} for more details on what each of the
      # configuration values mean.
      #
      # @return [Hash]
      #
      def health_check_configuration
        cfg = health_check_description
        {
          :healthy_threshold => cfg.healthy_threshold,
          :unhealthy_threshold => cfg.unhealthy_threshold,
          :interval => cfg.interval,
          :target => cfg.target,
          :timeout => cfg.timeout,
        }
      end

      # Generally you don't need to call this method, rather you can
      # just pass the load balancer as a source to the various
      # authorize and revoke methods of {EC2::SecurityGroup}:
      #
      #   security_group.authorize_ingress(load_balancer)
      #
      #   security_group.revoke_ingress(load_balancer)
      #
      # @return [Hash] Returns a hash that can be passed to the following
      #   {EC2::SecurityGroup} methods as a source:
      #
      #   * {EC2::SecurityGroup#authorize_ingress}
      #   * {EC2::SecurityGroup#authorize_egress}
      #
      def source_security_group
        { 
          :group_name => security_group_description.group_name,
          :user_id => security_group_description.owner_alias,
        }
      end

      # @return [Boolean] Returns true if the load balancer exists.
      def exists?
        client.describe_load_balancers(:load_balancer_names => [name])
        true
      rescue Errors::LoadBalancerNotFound
        false
      end

      # Deletes the load balancer.
      # @return [nil]
      def delete
        client.delete_load_balancer(:load_balancer_name => name)
        nil
      end

      protected
      def resource_identifiers
        [[:load_balancer_name,name]]
      end

      protected
      def get_resource attr_name
        # describing all, makes memoization more efficient
        client.describe_load_balancers
      end

    end
  end
end
