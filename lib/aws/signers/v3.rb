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

require 'time'
require 'base64'
require 'openssl'

module Aws
  # @api private
  module Signers
    class V3

      # @param [Credentials] credentials
      def initialize(credentials)
        @credentials = credentials
      end

      def sign(http_req)

        date = Time.now.httpdate
        headers['Date'] = date

        if @credentials.session_token
          http_req.headers['X-Amz-Security-Token'] = @credentials.session_token
        end

        parts = []
        parts << "AWS3-HTTPS AWSAccessKeyId=#{@credentials.access_key_id}"
        parts << "Algorithm=HmacSHA256"
        parts << "Signature=#{signature(date)}"
        headers['X-Amzn-Authorization'] = parts.join(',')
      end

      private

      def signature(date)
        Base64.encode64(
          OpenSSL::HMAC.digest(
            OpenSSL::Digest::Digest.new('sha256'),
            @credentials.secret_access_key,
            date
          )
        ).strip
      end

    end
  end
end
