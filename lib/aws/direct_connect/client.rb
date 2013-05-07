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
  class DirectConnect

    # Client class for AWS Direct Connect.
    class Client < Core::JSONClient

      # @api private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method create_connection(options = {})
      # Calls the CreateConnection API operation.
      # @param [Hash] options
      #   * `:offering_id` - *required* - (String)
      #   * `:connection_name` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:connection_id` - (String)
      #   * `:connection_name` - (String)
      #   * `:connection_state` - (String)
      #   * `:region` - (String)
      #   * `:location` - (String)

      # @!method create_private_virtual_interface(options = {})
      # Calls the CreatePrivateVirtualInterface API operation.
      # @param [Hash] options
      #   * `:connection_id` - (String)
      #   * `:new_private_virtual_interface` - (Hash) Detailed information of
      #     the private virtual interface to be created. Default: None
      #     * `:virtual_interface_name` - (String)
      #     * `:vlan` - (Integer)
      #     * `:asn` - (Integer)
      #     * `:auth_key` - (String)
      #     * `:amazon_address` - (String)
      #     * `:customer_address` - (String)
      #     * `:virtual_gateway_id` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:virtual_interface_id` - (String)
      #   * `:location` - (String)
      #   * `:connection_id` - (String)
      #   * `:virtual_interface_type` - (String)
      #   * `:virtual_interface_name` - (String)
      #   * `:vlan` - (Integer)
      #   * `:asn` - (Integer)
      #   * `:auth_key` - (String)
      #   * `:amazon_address` - (String)
      #   * `:customer_address` - (String)
      #   * `:virtual_interface_state` - (String)
      #   * `:customer_router_config` - (String)
      #   * `:virtual_gateway_id` - (String)
      #   * `:route_filter_prefixes` - (Array<Hash>)
      #     * `:cidr` - (String)

      # @!method create_public_virtual_interface(options = {})
      # Calls the CreatePublicVirtualInterface API operation.
      # @param [Hash] options
      #   * `:connection_id` - (String)
      #   * `:new_public_virtual_interface` - (Hash) Detailed information of
      #     the public virtual interface to be created. Default: None
      #     * `:virtual_interface_name` - (String)
      #     * `:vlan` - (Integer)
      #     * `:asn` - (Integer)
      #     * `:auth_key` - (String)
      #     * `:amazon_address` - (String)
      #     * `:customer_address` - (String)
      #     * `:route_filter_prefixes` - (Array<Hash>)
      #       * `:cidr` - (String) CIDR notation for the advertised route.
      #         Multiple routes are separated by commas Example:
      #         10.10.10.0/24,10.10.11.0/24
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:virtual_interface_id` - (String)
      #   * `:location` - (String)
      #   * `:connection_id` - (String)
      #   * `:virtual_interface_type` - (String)
      #   * `:virtual_interface_name` - (String)
      #   * `:vlan` - (Integer)
      #   * `:asn` - (Integer)
      #   * `:auth_key` - (String)
      #   * `:amazon_address` - (String)
      #   * `:customer_address` - (String)
      #   * `:virtual_interface_state` - (String)
      #   * `:customer_router_config` - (String)
      #   * `:virtual_gateway_id` - (String)
      #   * `:route_filter_prefixes` - (Array<Hash>)
      #     * `:cidr` - (String)

      # @!method delete_connection(options = {})
      # Calls the DeleteConnection API operation.
      # @param [Hash] options
      #   * `:connection_id` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:connection_id` - (String)
      #   * `:connection_name` - (String)
      #   * `:connection_state` - (String)
      #   * `:region` - (String)
      #   * `:location` - (String)

      # @!method delete_virtual_interface(options = {})
      # Calls the DeleteVirtualInterface API operation.
      # @param [Hash] options
      #   * `:virtual_interface_id` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:virtual_interface_state` - (String)

      # @!method describe_connection_detail(options = {})
      # Calls the DescribeConnectionDetail API operation.
      # @param [Hash] options
      #   * `:connection_id` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:connection_id` - (String)
      #   * `:connection_name` - (String)
      #   * `:connection_state` - (String)
      #   * `:region` - (String)
      #   * `:location` - (String)
      #   * `:bandwidth` - (String)
      #   * `:connection_costs` - (Array<Hash>)
      #     * `:name` - (String)
      #     * `:unit` - (String)
      #     * `:currency_code` - (String)
      #     * `:amount` - (String)
      #   * `:order_steps` - (Array<Hash>)
      #     * `:number` - (String)
      #     * `:name` - (String)
      #     * `:description` - (String)
      #     * `:owner` - (String)
      #     * `:sla` - (Integer)
      #     * `:step_state` - (String)

      # @!method describe_connections(options = {})
      # Calls the DescribeConnections API operation.
      # @param [Hash] options
      #   * `:connection_id` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:connections` - (Array<Hash>)
      #     * `:connection_id` - (String)
      #     * `:connection_name` - (String)
      #     * `:connection_state` - (String)
      #     * `:region` - (String)
      #     * `:location` - (String)

      # @!method describe_offering_detail(options = {})
      # Calls the DescribeOfferingDetail API operation.
      # @param [Hash] options
      #   * `:offering_id` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:offering_id` - (String)
      #   * `:region` - (String)
      #   * `:location` - (String)
      #   * `:offering_name` - (String)
      #   * `:description` - (String)
      #   * `:bandwidth` - (String)
      #   * `:connection_costs` - (Array<Hash>)
      #     * `:name` - (String)
      #     * `:unit` - (String)
      #     * `:currency_code` - (String)
      #     * `:amount` - (String)
      #   * `:order_steps` - (Array<Hash>)
      #     * `:number` - (String)
      #     * `:name` - (String)
      #     * `:description` - (String)
      #     * `:owner` - (String)
      #     * `:sla` - (Integer)

      # @!method describe_offerings(options = {})
      # Calls the DescribeOfferings API operation.
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:offerings` - (Array<Hash>)
      #     * `:offering_id` - (String)
      #     * `:region` - (String)
      #     * `:location` - (String)
      #     * `:offering_name` - (String)
      #     * `:description` - (String)
      #     * `:bandwidth` - (String)
      #     * `:connection_costs` - (Array<Hash>)
      #       * `:name` - (String)
      #       * `:unit` - (String)
      #       * `:currency_code` - (String)
      #       * `:amount` - (String)

      # @!method describe_virtual_gateways(options = {})
      # Calls the DescribeVirtualGateways API operation.
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:virtual_gateways` - (Array<Hash>)
      #     * `:virtual_gateway_id` - (String)
      #     * `:virtual_gateway_state` - (String)

      # @!method describe_virtual_interfaces(options = {})
      # Calls the DescribeVirtualInterfaces API operation.
      # @param [Hash] options
      #   * `:connection_id` - (String)
      #   * `:virtual_interface_id` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:virtual_interfaces` - (Array<Hash>)
      #     * `:virtual_interface_id` - (String)
      #     * `:location` - (String)
      #     * `:connection_id` - (String)
      #     * `:virtual_interface_type` - (String)
      #     * `:virtual_interface_name` - (String)
      #     * `:vlan` - (Integer)
      #     * `:asn` - (Integer)
      #     * `:auth_key` - (String)
      #     * `:amazon_address` - (String)
      #     * `:customer_address` - (String)
      #     * `:virtual_interface_state` - (String)
      #     * `:customer_router_config` - (String)
      #     * `:virtual_gateway_id` - (String)
      #     * `:route_filter_prefixes` - (Array<Hash>)
      #       * `:cidr` - (String)

      # end client methods #

      define_client_methods('2012-10-25')

    end
  end
end
