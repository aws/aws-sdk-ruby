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

    # Represents an EC2 key pair.
    class KeyPair < Resource

      def initialize name, options = {}
        @name = name.to_s
        @fingerprint = options[:fingerprint]
        @private_key = options[:private_key]
        super
      end

      # @return [String] The name of the key pair.
      attr_reader :name

      # @return [Boolean] True if the key pair exists.
      def exists?
        !client.describe_key_pairs(:filters => [{ :name => "key-name",
                                                :values => [name] }]).
          key_set.empty?
      end

      # @return [String] A SHA-1 digest of the DER encoded private key
      def fingerprint; end
      describe_call_attribute(:key_fingerprint,
                              :getter => :fingerprint,
                              :memoize => true)

      # Returns the private key.  Raises an exception if called
      # against an existing key.  You can only get the private key
      # at the time of creation. 
      #
      # @see KeyPairCollection#import
      # @note Only call this method on newly created keys.
      # @return [String] An unencrypted PEM encoded RSA private key.
      def private_key
        unless @private_key
          raise 'you can only get the private key for just-created keypairs'
        end
        @private_key
      end

      # Deletes this key pair from EC2.
      # @return [true]
      def delete
        client.delete_key_pair(:key_name => name)  
        true
      end

      [:create_key_pair,
       :import_key_pair].each do |op|
        populate_from op do |resp|
          attributes_from_response_object(resp) if
            resp.key_name == name
        end
      end

      protected
      def response_id_method
        :key_name
      end

      protected
      def find_in_response(resp)
        resp.key_index[name]
      end

    end
  end
end
