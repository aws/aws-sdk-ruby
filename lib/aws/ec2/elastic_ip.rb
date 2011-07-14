# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'aws/ec2/resource'

module AWS
  class EC2
    class ElasticIp < Resource

      def initialize public_ip, options = {}
        @public_ip = public_ip
        @instance_id = options[:instance_id]
        super
      end

      # @private
      def self.describe_call_name; :describe_addresses; end

      # @private
      def describe_call_name; self.class.describe_call_name; end

      # @return [String] The public IP address.
      attr_reader :public_ip

      alias_method :ip_address, :public_ip

      # @return [String,nil] Returns the instance id if assigned to an
      #   EC2 instance
      def instance_id; end
      describe_call_attribute :instance_id

      # @return [Boolean] Returns true if this IP address is attached to
      #   an EC2 instance.
      def associated?
        !!instance_id
      end
      alias_method :attached?, :associated?

      # @return [Instance,nil] If associated, returns the {Instance} this
      #   elastic IP address is associated to, nil otherwise.
      def instance
        associated? ? Instance.new(instance_id, :config => config) : nil
      end

      # Releases the elastic IP address.
      #
      # (For non-VPC elastic ips) Releasing an IP address automatically 
      # disassociates it from any instance it's associated with.
      #
      # @return [true]
      def delete
        client.release_address(:public_ip => public_ip)
        true
      end

      alias_method :release, :delete

      # Disassociates this elastic IP address from an EC2 instance.
      # Raises an exception if this elastic IP is not currently
      # associated with an instance.
      # @return [true]
      def disassociate
        client.disassociate_address(:public_ip => public_ip)
        true
      end

      # @private
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
      def find_in_response(resp)
        resp.address_index[public_ip]
      end

      # @private
      protected
      def __resource_id__; public_ip; end

    end
  end
end
