# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

module Seahorse
  module Client
    module Logging
      class Formatter

        def initialize(pattern, options = {})
          @pattern = pattern
          @max_string_size = options[:max_string_size] || 1000
        end

        # @return [String]
        attr_reader :pattern

        # @return [Integer]
        attr_reader :max_string_size

        # @param [Response] response
        # @return [String]
        def format response
          ''
        end

        class << self

          def default; end
          def colored; end
          def short; end
          def debug; end

        end
      end
    end
  end
end
