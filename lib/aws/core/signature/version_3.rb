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

require 'openssl'
require 'time'

module AWS
  module Core
    module Signature
      module Version3

        def self.included base
          base.send(:include, Signer)
        end

        def add_authorization! credentials

          headers["x-amz-date"] ||= (headers["date"] ||= Time.now.httpdate)
          headers["host"] ||= host

          headers["x-amz-security-token"] = credentials.session_token if
            credentials.session_token

          # compute the authorization
          headers["x-amzn-authorization"] =
            "AWS3 "+
            "AWSAccessKeyId=#{credentials.access_key_id},"+
            "Algorithm=HmacSHA256,"+
            "SignedHeaders=#{headers_to_sign.join(';')},"+
            "Signature=#{signature(credentials)}"
        end

        protected

        def signature credentials
          Signer.sign(credentials.secret_access_key, string_to_sign)
        end

        def string_to_sign
          OpenSSL::Digest::SHA256.digest([
            http_method,
            "/",
            "",
            canonical_headers,
            body
          ].join("\n"))
        end

        def canonical_headers
          headers_to_sign.map do |name|
            value = headers[name]
            "#{name.downcase.strip}:#{value.strip}\n"
          end.sort.join
        end

        def headers_to_sign
          headers.keys.select do |header|
              header == "host" ||
              header == "content-encoding" ||
              header =~ /^x-amz/
          end
        end

      end
    end
  end
end
