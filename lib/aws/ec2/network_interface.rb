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

require 'aws/ec2/network_interface/attachment'

module AWS
  class EC2

    # Represents a network interface in EC2.
    class NetworkInterface < Resource

      include TaggedItem

      def initialize network_interface_id, options = {}
        @network_interface_id = network_interface_id
        super
      end

      # @return [String]
      attr_reader :network_interface_id

      alias_method :id, :network_interface_id

      attribute :vpc_id, :static => true
    
      attribute :subnet_id, :static => true

      mutable_attribute :description

      attribute :owner_id, :static => true

      attribute :status, :to_sym => true

      attribute :private_ip_address, :static => true

      attribute :private_dns_name, :static => true

      mutable_attribute :source_dest_check?, 
        :set_as => :source_dest_check

      alias_method :source_dest_check, :source_dest_check?

      attribute :attachment_details, :as => :attachment

      protected :attachment_details

      mutable_attribute :groups

      protected :groups

      populates_from(:create_network_interface) do |resp|
        resp.network_interface if resp.network_interface.network_interface_id == id
      end

      populates_from(:describe_network_interfaces) do |resp|
        resp.network_interface_set.find{|i| i.network_interface_id == id }
      end

      # @return [VPC] Returns the VPC this network interface belongs to.
      def vpc
        VPC.new(vpc_id, :config => config)
      end

      # @return [Subnet] Returns the Subnet this network interface
      #   belongs to.
      def subnet
        Subnet.new(subnet_id, :vpc_id => vpc_id, :config => config)
      end

      # @return [Array<SecurityGroup>]
      def security_groups
        groups.collect do |g|
          SecurityGroup.new(g.group_id, :name => g.group_name, :config => config)
        end
      end

      # @param [Array<SecurityGroup>,Array<String>] groups A list of
      #   security groups objects or security group ids.  This replaces
      #   the security group set on this network interface.
      #
      # @return [nil]
      #
      def set_security_groups *groups
        self.groups = [groups].flatten.collect do |g|
          g.is_a?(SecurityGroup) ? g.security_group_id : g
        end
        nil
      end
      alias_method :security_groups=, :set_security_groups

      # @return [Instance,nil] Returns the instance this network interface
      #   is attached to.  If it has not been attached, then nil is
      #   returned.
      def instance
        if attachment = self.attachment
          attachment.instance
        end
      end

      def attachment
        if details = attachment_details
          Attachment.new(self, details)
        end
      end

      # @param [Instance,String] instance The instance to attach this network
      #   interface to, may be an {Instance} object or an instance id string.
      #
      # @param [Hash] options
      #
      # @option options [Integer] :device_index (1) The index of the device 
      #  for the network interface attachment on the instance.  Defaults to 1.
      #
      # @return [nil]
      #
      def attach instance, options = {}

        instance_id = instance.is_a?(Instance) ? instance.instance_id : instance

        client_opts = {}
        client_opts[:network_interface_id] = network_interface_id
        client_opts[:instance_id] = instance_id
        client_opts[:device_index] = options[:device_index] || 1

        client.attach_network_interface(client_opts)

        nil

      end

      # Detaches this network interface.
      # @param [Hash] options
      # @option (see NetworkInterface::Attachment#detach)
      # @return (see NetworkInterface::Attachment#detach)
      def detach options = {}
        if attachment = self.attachment
          attachment.detach(options)
        else
          raise 'unable to detach network interface, no attachment present'
        end
      end

      # Deletes this network interface.
      # @return [nil]
      def delete
        client_opts = {}
        client_opts[:network_interface_id] = network_interface_id
        client.delete_network_interface(client_opts)
        nil
      end

      # @return [Boolean] Returns true if this network interface exists.
      def exists?
        begin
          get_resource
          true
        rescue Errors::InvalidNetworkInterfaceID::NotFound
          false
        end
      end

    end
  end
end
