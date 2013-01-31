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
    module Signature
      module Version4

        def self.included base
          base.send(:include, Signer)
        end

        def add_authorization! credentials
          datetime = Time.now.utc.strftime("%Y%m%dT%H%M%SZ")
          headers['content-type'] ||= 'application/x-www-form-urlencoded'
          headers['host'] = host
          headers['x-amz-date'] = datetime
          headers['x-amz-security-token'] = credentials.session_token if
            credentials.session_token
          headers['x-amz-content-sha256'] ||= hexdigest(body || '')
          headers['authorization'] = authorization(credentials, datetime)
        end

        protected

        def authorization credentials, datetime
          parts = []
          parts << "AWS4-HMAC-SHA256 Credential=#{credentials.access_key_id}/#{credential_string(datetime)}"
          parts << "SignedHeaders=#{signed_headers}"
          parts << "Signature=#{signature(credentials, datetime)}"
          parts.join(', ')
        end

        def signature credentials, datetime
          k_secret = credentials.secret_access_key
          k_date = hmac("AWS4" + k_secret, datetime[0,8])
          k_region = hmac(k_date, region)
          k_service = hmac(k_region, service)
          k_credentials = hmac(k_service, 'aws4_request')
          hexhmac(k_credentials, string_to_sign(datetime))
        end

        def string_to_sign datetime
          parts = []
          parts << 'AWS4-HMAC-SHA256'
          parts << datetime
          parts << credential_string(datetime)
          parts << hexdigest(canonical_request)
          parts.join("\n")
        end

        def credential_string datetime
          parts = []
          parts << datetime[0,8]
          parts << region
          parts << service
          parts << 'aws4_request'
          parts.join("/")
        end

        def canonical_request
          parts = []
          parts << http_method
          parts << path
          parts << querystring
          parts << canonical_headers + "\n"
          parts << signed_headers
          parts << headers['x-amz-content-sha256']
          parts.join("\n")
        end

        def service
          # this method is implemented in the request class for each service
          raise NotImplementedError
        end

        def signed_headers
          to_sign = headers.keys.map{|k| k.to_s.downcase }
          to_sign.delete('authorization')
          to_sign.sort.join(";")
        end

        def canonical_headers
          headers = []
          self.headers.each_pair do |k,v|
            headers << [k,v] unless k == 'authorization'
          end
          headers = headers.sort_by(&:first)
          headers.map{|k,v| "#{k}:#{canonical_header_values(v)}" }.join("\n")
        end

        def canonical_header_values values
          values = [values] unless values.is_a?(Array)
          values.map(&:to_s).join(',').gsub(/\s+/, ' ').strip
        end

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

        def hmac key, value
          OpenSSL::HMAC.digest(OpenSSL::Digest::Digest.new('sha256'), key, value)
        end

        def hexhmac key, value
          OpenSSL::HMAC.hexdigest(OpenSSL::Digest::Digest.new('sha256'), key, value)
        end

      end
    end
  end
end
