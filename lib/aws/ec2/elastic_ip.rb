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

    #
    # @attr_reader [String,nil] instance_id Returns the instance id if 
    #   assigned to an EC2 instance, nil otherwise.
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

      populates_from(:describe_addresses) do |resp|
        resp.address_index[public_ip]
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
        client.release_address(resource_options)
        nil
      end

      alias_method :release, :delete

      # Disassociates this elastic IP address from an EC2 instance.
      # Raises an exception if this elastic IP is not currently
      # associated with an instance.
      # @return [nil]
      def disassociate
        client.disassociate_address(resource_options)
        nil
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
