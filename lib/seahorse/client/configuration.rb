
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

require 'uri'

module Seahorse
  class Client
    class Configuration

      def initialize(options = {})
        @options = options
      end

      def add_option(name, default = nil, &block)
        define_singleton_method(name) do
          case
          when @options.key?(name) then @options[name]
          when block then block.call
          else default
          end
        end
      end

    end
  end
end
