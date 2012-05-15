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
  class SimpleEmailService

    # @attr_reader [String] verification_status
    #
    # @attr_reader [String,nil] verification_token
    #
    class Identity < Core::Resource

      # @private
      def initialize email_address_or_domain, options = {}
        @identity = email_address_or_domain
        super
      end

      # @return [String] Returns the email address or domain name for
      #   this identity.
      attr_reader :identity

      attribute :verification_status

      attribute :verification_token, :static => true

      populates_from(:get_identity_verification_attributes) do |resp|
        resp.data[:verification_attributes][identity]
      end

      # @return [Boolean] Returns +true+ if this {Identity} represents an
      #   email address.
      def email_address?
        identity =~ /@/ ? true : false
      end

      # @return [Boolean] Returns +true+ if this {Identity} represents a
      #   domain.
      def domain?
        !email_address?
      end

      # @return [Boolean] Returns +true+ if this email address/domain has
      #   been verified.
      def verified?
        verification_status == 'Success'
      end

      # @return [Boolean] Returns +true+ if verification for this email 
      #   address/domain is still pending.
      def pending?
        verification_status == 'Pending'
      end

      # Deletes the current identity.
      # @return [nil]
      def delete
        client.delete_identity(:identity => identity)  
        nil
      end

      # @return [Boolean] Returns true if the identity exists.
      def exists?
        !!get_resource[:verification_attributes][identity]
      end

      protected

      def resource_identifiers
        [[:identity, identity]]
      end

      def get_resource attr = nil
        client_opts = {}
        client_opts[:identities] = [identity]
        client.get_identity_verification_attributes(client_opts)
      end

    end
  end
end
