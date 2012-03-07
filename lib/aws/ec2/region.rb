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
  class EC2

    # Represents an EC2 region.  You can use this to find the
    # endpoint for a given region:
    #
    #  ec2.regions["us-west-1"].endpoint
    #
    # Region also responds to all of the methods of {EC2} except
    # {EC2#regions}; for example, to list instance IDs by region,
    # you can do:
    #
    #  ec2.regions.inject({}) do |h,region|
    #    h[region.name] = region.instances.map(&:id)
    #    h
    #  end
    #
    # @attr_reader [String] endpoint The endpoint to use for this region
    #   (e.g. "ec2.eu-west-1.amazonaws.com").
    #
    class Region < Resource

      def initialize(name, options = {})
        @name = name
        super(options)
      end

      # @return [String] The name of the region (e.g. "us-east-1").
      attr_reader :name

      attribute :endpoint, :as => :region_endpoint, :static => true

      populates_from(:describe_regions) do |resp|
        resp.region_info.find{|r| r.region_name == name }
      end

      # @return [Boolean] True if the region is available for this
      #   account.
      def exists?
        !client.describe_regions(:filters => [{ :name => "region-name",
                                                :values => [name] }]).
          region_info.empty?
      end

      PROXIED_METHODS = [
        :instances,
        :security_groups,
        :key_pairs,
        :elastic_ips,
        :tags,
        :availability_zones,
        :images,
        :volumes,
        :snapshots,
        :reserved_instances,
        :reserved_instances_offerings,
        :vpcs,
        :subnets,
        :network_acls,
        :route_tables,
        :network_interfaces,
        :internet_gateways,
        :customer_gateways,
        :vpn_gateways,
        :dhcp_options,
        :vpn_connections,
      ]

      PROXIED_METHODS.each do |method|
        define_method(method) do
          EC2.new(:config => config, :ec2_endpoint => endpoint).
            send(method)
        end
      end

      protected
      def find_in_response(resp)
        resp.region_info.find { |r| r.region_name == name }
      end

    end

  end
end
