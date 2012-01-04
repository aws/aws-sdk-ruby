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

require 'base64'
require 'openssl'

module AWS
  module Core

    # Computes signatures using credentials that are stored in memory.
    class DefaultSigner

      # @return [String] The Access Key ID used to sign requests.
      attr_reader :access_key_id

      # @return [String] The Secret Access Key used to sign requests.
      attr_reader :secret_access_key

      # @return [String] The Session Token used to sign requests.
      attr_reader :session_token

      # @param [String] access_key_id The Access Key ID used to sign
      #   requests.
      #
      # @param [String] secret_access_key The Secret Access Key used to
      #   sign requests.
      #
      # @param [String] session_token The Session Token used to sign
      #   requests.  You can get credentials that include a session
      #   token using the {STS} class.
      def initialize(access_key_id, secret_access_key, session_token = nil)

        @access_key_id = access_key_id
        @secret_access_key = secret_access_key
        @session_token = session_token

        raise "Missing credentials" unless access_key_id and secret_access_key

      end

      # Signs a string using the credentials stored in memory.
      #
      # @param [String] string_to_sign The string to sign.
      #
      # @param [String] digest_method The digest method to use when
      #   computing the HMAC digest.
      def sign(string_to_sign, digest_method = 'sha256')
        Base64.encode64(
          OpenSSL::HMAC.digest(
            OpenSSL::Digest::Digest.new(digest_method),
            secret_access_key, 
            string_to_sign)).strip
      end

    end
  end
end
