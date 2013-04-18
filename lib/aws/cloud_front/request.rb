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

module AWS
  class CloudFront

    # @api private
    class Request < Core::Http::Request

      def add_authorization! credentials

        self.access_key_id = credentials.access_key_id

        headers['x-amz-security-token'] = credentials.session_token if
          credentials.session_token

        auth = "AWS #{access_key_id}:#{signature(credentials)}"
        headers['authorization'] = auth

      end

      protected

      def signature credentials
        Core::Signer.sign(credentials.secret_access_key, string_to_sign, 'sha1')
      end

      def string_to_sign
        headers['date'] ||= Time.now.httpdate
      end

    end

  end
end
