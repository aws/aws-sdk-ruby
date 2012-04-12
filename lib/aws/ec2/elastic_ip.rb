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

    # @attr_reader [String,nil] instance_id Returns the instance id if 
    #   assigned to an EC2 instance, nil otherwise.
    #
    # @attr_reader [String,nil] allocation_id
    #   The ID representing the allocation of the address for use with Amazon 
    #   VPC.
    #
    # @attr_reader [String] Indicates whether this elastic ip address is for 
    #   EC2 instances ('standard') or VPC instances ('vpc').
    #
    # @attr_reader [String,nil] The ID of the association between this elastic
    #   ip address and an EC2 VPC instance (VPC only).
    #
    # @attr_reader [String,nil] The ID of the network interface (VPC only).
    #
    # @attr_reader [String,nil] network_interface_owner_id 
    #   The ID of the AWS account that owns the network interface (VPC only).
    #
    class ElasticIp < Resource

      def initialize public_ip, options = {}
        @public_ip = public_ip
        super
      end

      # @return [String] The public IP address.
      attr_reader :public_ip

      alias_method :ip_address, :public_ip

      attribute :instance_id

      ## vpc related attributes

      attribute :allocation_id, :static => true

      attribute :domain, :static => true

      attribute :association_id

      attribute :network_interface_id

      attribute :network_interface_owner_id

      populates_from(:describe_addresses) do |resp|
        resp.address_index[public_ip]
      end

      # @return [Boolean] Returns true if this is an EC2 VPC Elastic IP.
      def vpc?
        domain == 'vpc'
      end

      # @return [Boolean] Returns true if this IP address is attached to
      #   an EC2 instance.
      def associated?
        !!instance_id
      end

      alias_method :attached?, :associated?

      # @return [Instance,nil] If associated, returns the {Instance} this
      #   elastic IP address is associated to, nil otherwise.
      def instance
        if instance_id = self.instance_id
          Instance.new(instance_id, :config => config)
        end
      end

      # Releases the elastic IP address.
      #
      # (For non-VPC elastic ips) Releasing an IP address automatically 
      # disassociates it from any instance it's associated with.
      #
      # @return [nil]
      def delete
        if vpc?
          client.release_address(:allocation_id => allocation_id)
        else
          client.release_address(:public_ip => public_ip)
        end
        nil
      end
      alias_method :release, :delete

      # Disassociates this elastic IP address from an EC2 instance.
      # Raises an exception if this elastic IP is not currently
      # associated with an instance.
      # @return [nil]
      def disassociate
        if vpc?
          client.disassociate_address(:association_id => association_id)
        else
          client.disassociate_address(:public_ip => public_ip)
        end
        nil
      end

      # @return [Boolean] Returns true the elastic ip address exists in
      #   your account.
      def exists?
        begin
          get_resource
          true
        rescue Errors::InvalidAddress::NotFound
          false
        end
      end

      # @return [String] Returns the public IP address
      def to_s
        public_ip.to_s
      end

      # @private
      protected
      def resource_id_method
        :public_ip
      end

      # @private
      protected
      def response_id_method
        :public_ip
      end

      # @private
      protected
      def describe_call_name
        :describe_addresses
      end

      # @private
      protected
      def self.describe_call_name
        :describe_addresses
      end

    end
  end
end
