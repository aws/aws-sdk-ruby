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

module AWS
  module Core
    module Signature
      module Version2

        def add_authorization! credentials
          add_param('AWSAccessKeyId', credentials.access_key_id)
          if token = credentials.session_token
            add_param("SecurityToken", token)
          end
          add_param('SignatureVersion', '2')
          add_param('SignatureMethod', 'HmacSHA256')
          add_param('Signature', signature(credentials))
          self.body = url_encoded_params
        end

        protected

        def signature credentials
          Signer.sign(credentials.secret_access_key, string_to_sign)
        end

        def string_to_sign

          host =
            case port
            when 80, 443 then self.host
            else "#{self.host}:#{port}"
            end

          [
            http_method,
            host.to_s.downcase,
            path,
            params.sort.collect { |p| p.encoded }.join('&'),
          ].join("\n")

        end

      end
    end
  end
end
