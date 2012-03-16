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

# - docs don't match in task 2 between the sample and the detailed 
#   instructions, is the canonical request hex/hashed or just hexed?
# - the hashing method is never defined, is it a md5 hash?
# - the documentation does not discuss how to add the authorization
#   to your get or post request, 2 simple examples are provided, but with
#   no information about how to join the parts in the post request
#   (not clear about spaces vs newlines, etc)
# - document does not displ

require 'time'
require 'openssl'
require 'digest'

# bug resigning

module AWS
  module Core
  
    # Mixed into clients that use signature v4 authorization.
    module AuthorizeV4

      def add_authorization! signer
        self.access_key_id = signer.access_key_id
        datetime = Time.now.utc.strftime("%Y%m%dT%H%M%SZ")
        headers['content-type'] ||= 'application/x-www-form-urlencoded'
        headers['host'] = host
        headers['x-amz-date'] = datetime
        headers['x-amz-security-token'] = signer.session_token if signer.session_token
        headers['authorization'] = authorization(signer, datetime)
      end
      
      protected

      def authorization signer, datetime
        parts = []
        parts << "AWS4-HMAC-SHA256 Credential=#{access_key_id}/#{credential_string(datetime)}"
        parts << "SignedHeaders=#{signed_headers}"
        parts << "Signature=#{hex16(signature(signer, datetime))}"
        parts.join(', ')
      end

      def signature signer, datetime
        k_secret = signer.secret_access_key
        k_date = hmac("AWS4" + k_secret, datetime[0,8])
        k_region = hmac(k_date, region)
        k_service = hmac(k_region, service)
        k_credentials = hmac(k_service, 'aws4_request')
        hmac(k_credentials, string_to_sign(datetime))
      end

      def string_to_sign datetime
        parts = []
        parts << 'AWS4-HMAC-SHA256'
        parts << datetime
        parts << credential_string(datetime)
        parts << hex16(hash(canonical_request))
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
        parts << action_name
        parts << canonical_uri
        parts << canonical_querystring
        parts << canonical_headers + "\n"
        parts << signed_headers
        parts << hex16(hash(payload))
        parts.join("\n")
      end

      def service
        # this method is implemented in the request class for each service
        raise NotImplementedError
      end

      def action_name
        http_method.to_s.upcase
      end

      def canonical_uri
        path
      end

      def payload
        body || ''
      end

      def canonical_querystring
        http_method.to_s.upcase == 'GET' ? url_encoded_params : ''
      end

      def signed_headers
        to_sign = headers.keys.map{|k| k.to_s.downcase }
        to_sign.delete('authorization')
        to_sign.sort.join(";")
      end

      def canonical_headers
        headers = []
        self.headers.each_pair do |k,v|
          header = [k.to_s.downcase, v]
          headers << header unless header.first == 'authorization'
        end
        headers = headers.sort_by(&:first)
        headers.map{|k,v| "#{k}:#{canonical_header_values(v)}" }.join("\n")
      end

      def canonical_header_values values
        values = [values] unless values.is_a?(Array)
        values.map(&:to_s).map(&:strip).join(',')
      end

      def hex16 string
        string.unpack('H*').first
      end

      def hmac key, string
        OpenSSL::HMAC.digest(OpenSSL::Digest::Digest.new('sha256'), key, string)
      end

      def hash string
        Digest::SHA256.digest(string)
      end

    end
  end
end
