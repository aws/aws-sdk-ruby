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

require 'seahorse/client/http/header_hash'

module Seahorse
  class Client
    module Http
      class Response

        INVALID_CODE = 'must be a numeric HTTP status code from 100..599'

        # @param [Integer] code
        # @param [Hash] headers ({})
        def initialize code, headers = {}
          self.code = code
          @headers = HeaderHash.new(headers)
        end

        # @return [Integer, nil]
        def code
          @code
        end

        # @param [Integer, number] code Must be a valid HTTP status code.
        def code= code
          code = code.to_i
          raise ArgumentError, INVALID_CODE unless code > 99 && code < 600
          @code = code.to_i
        end

        # @return [HashHash]
        attr_accessor :headers

      end
    end
  end
end
