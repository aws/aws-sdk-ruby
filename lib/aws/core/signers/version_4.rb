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
require 'openssl'
require 'digest'

module AWS
  module Core
    module Signers
      # @api private
      class Version4

        # @param [CredentialProviders::Provider] credentials
        # @param [String] service_name
        # @param [String] region
        def initialize credentials, service_name, region
          @credentials = credentials
          @service_name = service_name
          @region = region
        end

        # @return [CredentialProviders::Provider]
        attr_reader :credentials

        # @return [String]
        attr_reader :service_name

        # @return [String]
        attr_reader :region

        # @param [Http::Request] req
        # @return [Http::Request]
        def sign_request req
          datetime = Time.now.utc.strftime("%Y%m%dT%H%M%SZ")
          req.headers['content-type'] ||= 'application/x-www-form-urlencoded'
          req.headers['host'] = req.host
          req.headers['x-amz-date'] = datetime
          req.headers['x-amz-security-token'] = credentials.session_token if
            credentials.session_token
          req.headers['x-amz-content-sha256'] ||= hexdigest(req.body || '')
          req.headers['authorization'] = authorization(req, datetime)
          req
        end

        private

        # @param [Http::Request] req
        # @param [String] datetime
        def authorization req, datetime
          parts = []
          parts << "AWS4-HMAC-SHA256 Credential=#{credentials.access_key_id}/#{credential_string(datetime)}"
          parts << "SignedHeaders=#{signed_headers(req)}"
          parts << "Signature=#{signature(req, datetime)}"
          parts.join(', ')
        end

        # @param [Http::Request] req
        # @param [String] datetime
        def signature req, datetime
          k_secret = credentials.secret_access_key
          k_date = hmac("AWS4" + k_secret, datetime[0,8])
          k_region = hmac(k_date, region)
          k_service = hmac(k_region, service_name)
          k_credentials = hmac(k_service, 'aws4_request')
          hexhmac(k_credentials, string_to_sign(req, datetime))
        end

        # @param [Http::Request] req
        # @param [String] datetime
        def string_to_sign req, datetime
          parts = []
          parts << 'AWS4-HMAC-SHA256'
          parts << datetime
          parts << credential_string(datetime)
          parts << hexdigest(canonical_request(req))
          parts.join("\n")
        end

        # @param [String] datetime
        def credential_string datetime
          parts = []
          parts << datetime[0,8]
          parts << region
          parts << service_name
          parts << 'aws4_request'
          parts.join("/")
        end

        # @param [Http::Request] req
        def canonical_request req
          parts = []
          parts << req.http_method
          parts << req.path
          parts << req.querystring
          parts << canonical_headers(req) + "\n"
          parts << signed_headers(req)
          parts << req.headers['x-amz-content-sha256']
          parts.join("\n")
        end

        # @param [Http::Request] req
        def signed_headers req
          to_sign = req.headers.keys.map{|k| k.to_s.downcase }
          to_sign.delete('authorization')
          to_sign.sort.join(";")
        end

        # @param [Http::Request] req
        def canonical_headers req
          headers = []
          req.headers.each_pair do |k,v|
            headers << [k,v] unless k == 'authorization'
          end
          headers = headers.sort_by(&:first)
          headers.map{|k,v| "#{k}:#{canonical_header_values(v)}" }.join("\n")
        end

        # @param [String,Array<String>] values
        def canonical_header_values values
          values = [values] unless values.is_a?(Array)
          values.map(&:to_s).join(',').gsub(/\s+/, ' ').strip
        end

        # @param [String] value
        # @return [String]
        def hexdigest value
          digest = Digest::SHA256.new
          if value.respond_to?(:read)
            chunk = nil
            chunk_size = 1024 * 1024 # 1 megabyte
            digest.update(chunk) while chunk = value.read(chunk_size)
            value.rewind
          else
            digest.update(value)
          end
          digest.hexdigest
        end

        # @param [String] key
        # @param [String] value
        # @return [String]
        def hmac key, value
          OpenSSL::HMAC.digest(sha256_digest, key, value)
        end

        # @param [String] key
        # @param [String] value
        # @return [String]
        def hexhmac key, value
          OpenSSL::HMAC.hexdigest(sha256_digest, key, value)
        end

        def sha256_digest
          OpenSSL::Digest::Digest.new('sha256')
        end

      end
    end
  end
end
