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
  class EC2

    # Client class for Amazon Elastic Compute Cloud (EC2).
    class Client < Core::QueryClient

      API_VERSION = '2013-10-15'

      def sign_request request
        version = @config.ec2_signature_version ?
          @config.ec2_signature_version.to_sym :
          (@region =~ /cn-/ ? :v4 : :v2)
        case version
        when :v4 then v4_signer.sign_request(request)
        when :v2 then v2_signer.sign_request(request)
        else
          raise "invalid signature version #{version.inspect}"
        end
      end

      # @api private
      CACHEABLE_REQUESTS = Set[
        :describe_addresses,
        :describe_availability_zones,
        :describe_bundle_tasks,
        :describe_customer_gateways,
        :describe_dhcp_options,
        :describe_image_attribute,
        :describe_images,
        :describe_instances,
        :describe_key_pairs,
        :describe_regions,
        :describe_reserved_instances,
        :describe_reserved_instances_offerings,
        :describe_security_groups,
        :describe_snapshot_attribute,
        :describe_snapshots,
        :describe_subnets,
        :describe_volume_status,
        :describe_volumes,
        :describe_vpcs,
        :describe_vpn_connections,
        :describe_vpn_gateways,
        :describe_instance_attribute,
        :describe_spot_instance_requests,
        :describe_spot_price_history,
        :describe_spot_datafeed_subscription,
        :describe_licenses,
        :describe_placement_groups,
        :describe_tags,
        :describe_internet_gateways,
        :describe_route_tables,
        :describe_network_acls,
        :describe_instance_status,
        :describe_conversion_tasks,
        :describe_network_interfaces,
        :describe_network_interface_attribute,
      ]

      protected

      # @return [Core::Signers::Version2]
      def v2_signer
        @v2_signer ||= Core::Signers::Version2.new(credential_provider)
      end

      # @return [Core::Signers::Version4]
      def v4_signer
        @v4_signer ||=
          Core::Signers::Version4.new(credential_provider, 'ec2', @region)
      end

    end

    class Client::V20130815 < Client
      define_client_methods('2013-08-15')
    end

    class Client::V20131001 < Client
      define_client_methods('2013-10-01')
    end

    class Client::V20131015 < Client
      define_client_methods('2013-10-15')
    end

  end
end
