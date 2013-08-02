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
    class Version3
      # @param [RequestContext] context
      def self.sign(context)
        new(context.config.credentials).sign(context.http_request)
      end

      # @param [Credentials] credentials
      def initialize(credentials)
        @credentials = credentials
      end

      def sign(http_request)
        http_request.headers["X-Amz-Date"] = Time.now.rfc822
        http_request.headers["Host"] ||= http_request.endpoint.host
        if token = credentials.session_token
          http_request.headers["X-Amz-Security-Token"] = token
        end

        parts = []
        parts << "AWS3 AWSAccessKeyId=#{credentials.access_key_id}"
        parts << "Algorithm=HmacSHA256"
        parts << "SignedHeaders=#{signed_headers(http_request)}"
        parts << "Signature=#{signature(http_request)}"
        http_request.headers["X-Amzn-Authorization"] = parts.join(',')
      end

      private

      # @param [Credentials]
      attr_reader :credentials

      def string_to_sign(http_request)
        OpenSSL::Digest::SHA256.digest([
          http_request.http_method,
          "/",
          "",
          canonical_headers(http_request),
          body(http_request),
        ].join("\n"))
      end

      def body(http_request)
        body = http_request.body.read
        http_request.body.rewind
        body
      end

      def canonical_headers(http_request)
        headers_to_sign(http_request).map do |name|
          "#{name.downcase.strip}:#{http_request.headers[name].strip}\n"
        end.sort.join
      end

      def signed_headers(http_request)
        headers_to_sign(http_request).map(&:downcase).join(';')
      end

      def headers_to_sign(http_request)
        http_request.headers.keys.select do |header|
          header == "host" ||
          header == "content-encoding" ||
          header =~ /^x-amz/
        end
      end

      # @param [Http::Request] http_request
      # @return [String]
      def signature(http_request)
        Base64.encode64(
          OpenSSL::HMAC.digest(
            OpenSSL::Digest::Digest.new('sha256'),
            credentials.secret_access_key,
            string_to_sign(http_request)
          )
        ).strip
      end
    end
  end
end
