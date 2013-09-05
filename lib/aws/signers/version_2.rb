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

module Aws
  module Signers
    class Version2

      def self.sign(context)
        new(context.config.credentials).sign(context.http_request)
      end

      def initialize(credentials)
        @credentials = credentials
      end

      # @param [Http::Request] http_request
      def sign(http_request)
        params = http_request.body.param_list
        params.set('AWSAccessKeyId', @credentials.access_key_id)
        params.set('SecurityToken', @credentials.session_token) if
          @credentials.session_token
        params.set('Timestamp', Time.now.utc.strftime('%Y-%m-%dT%H:%M:%SZ'))
        params.set('SignatureVersion', '2')
        params.set('SignatureMethod', 'HmacSHA256')
        params.delete('Signature')
        params.set('Signature', signature(http_request, params))
        http_request.body = params.to_io
      end

      private

      def signature(http_request, params)
        Base64.encode64(
          OpenSSL::HMAC.digest(
            OpenSSL::Digest::Digest.new('sha256'),
            @credentials.secret_access_key,
            string_to_sign(http_request, params)
          )
        ).strip
      end

      def string_to_sign(http_request, params)
        [
          http_request.http_method,
          host(http_request),
          http_request.pathname,
          params.to_s,
        ].join("\n")
      end

      def host(http_request)
        endpoint = http_request.endpoint
        host = endpoint.host.downcase
        if
          (endpoint.http? && endpoint.port != 80) ||
          (endpoint.https? && endpoint.port != 443)
        then
          host += ":#{endpoint.port}"
        end
        host
      end

    end
  end
end
