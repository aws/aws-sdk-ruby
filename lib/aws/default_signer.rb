# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'base64'
require 'openssl'

module AWS

  # @private
  class DefaultSigner

    attr_reader :access_key_id, :secret_access_key

    def initialize(access_key_id, secret_access_key)
      @access_key_id = access_key_id
      @secret_access_key = secret_access_key
    end

    def sign(string_to_sign, digest_method = 'sha256')
      Base64.encode64(
        OpenSSL::HMAC.digest(
          OpenSSL::Digest::Digest.new(digest_method),
          secret_access_key, 
          string_to_sign)).strip
    end

  end
end
