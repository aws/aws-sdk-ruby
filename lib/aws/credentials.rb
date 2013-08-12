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
  class Credentials

    # @param [String] access_key_id
    # @param [String] secret_access_key
    # @param [String] session_token (nil)
    def initialize(access_key_id, secret_access_key, session_token = nil)
      @access_key_id = access_key_id
      @secret_access_key = secret_access_key
      @session_token = session_token
    end

    # @return [String, nil]
    attr_accessor :access_key_id

    # @return [String, nil]
    attr_accessor :secret_access_key

    # @return [String, nil]
    attr_accessor :session_token

    def set?
      @access_key_id && @secret_access_key
    end

  end
end
