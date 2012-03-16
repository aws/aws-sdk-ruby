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

require 'time'

module AWS
  module Core
  
    # Mixed into clients that use signature v3 authorization.
    # @private
    module AuthorizeV3

      def string_to_sign
        headers['date'] ||= Time.now.rfc822
      end

      def add_authorization! signer
        self.access_key_id = signer.access_key_id
        parts = []
        parts << "AWS3-HTTPS AWSAccessKeyId=#{access_key_id}"
        parts << "Algorithm=HmacSHA256"
        parts << "Signature=#{signer.sign(string_to_sign)}"
        headers['x-amzn-authorization'] = parts.join(',')
      end

    end
  end
end
