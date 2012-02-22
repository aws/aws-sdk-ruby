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

    class LoadBalancerCollection

      include ListenerOpts
      include Core::Collection::Simple

      # Creates and returns a load balancer.  A load balancer requires:
      #
      # * a unique name
      # * at least one availability zone
      # * at least one listener
      #
      # An example that creates a load balancer in two availability zones
      # with a single listener:
      #
      #   load_balancer = elb.load_balancers.create('my-load-balancer',
      #     :availability_zones => %w(us-east-1a us-east-1b),
      #     :listeners => [{
      #       :port => 80,
      #       :protocol => :http,
      #       :instance_port => 80,
      #       :instance_protocol => :http,
      #     }])
      # 
      # @param [String] name The name of your load balancer.  The name must
      #   be unique within your set of load balancers.
      #
      # @param [Hash] options
      #
      # @option options [required,Array] :availability_zones An array of
      #   one or more availability zones.  Values may be availability zone
      #   name strings, or {AWS::EC2::AvailabilityZone} objects.
      #
      # @option options [required,Array] :listeners An array of load balancer
      #   listener options.  Each value must be an array with the following
      #   keys:
      #
      #   +:port+
      #   +:protocol+
      #   +:instance_port+
      #   +:instance_protocol+
      #
      #   Port values should be integers, and protocols should be symbols or
      #   strings (e.g. :http, or 'HTTP').  See {ListenerCollection#create}
      #   for more detailed description of each option.
      #
      # @option options [String,IAM::ServerCertificate] :server_certificate (nil)
      #   The ARN string of an IAM::ServerCertifcate or an 
      #   IAM::ServerCertificate object.  Reqruied for HTTPs listeners.
      #
      def create name, options = {}
        
        zones = [options[:availability_zones]].flatten.collect do |zone|
          zone.is_a?(EC2::AvailabilityZone) ? zone.name : zone
        end

        listeners = [options[:listeners]].flatten.collect do |listener_opts|
          format_listener_opts(listener_opts)
        end

        response = client.create_load_balancer(
          :load_balancer_name => name.to_s,
          :availability_zones => zones,
          :listeners => listeners)

        opts = {}
        opts[:config] = config
        opts[:dns_name] = response.dns_name

        LoadBalancer.new(name, opts)

      end

      # @return [LoadBalancer] Returns the load balancer with the given
      #   name.  This does not make a request, just returns a reference.
      def [] name
        LoadBalancer.new(name, :config => config)
      end

      protected
      def _each_item options = {}, &block
        response = client.describe_load_balancers
        response.load_balancer_descriptions.each do |description|

          load_balancer = LoadBalancer.new_from(
            :describe_load_balancers, 
            description, 
            description.load_balancer_name,
            :config => config)

          yield(load_balancer)

        end
      end
      
    end
  end
end
