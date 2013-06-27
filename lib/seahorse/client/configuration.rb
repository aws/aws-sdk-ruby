
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

require 'uri'

module Seahorse
  class Client
    class Configuration

      def initialize(options = {})
        @options = options
      end

      class << self

        def add_option(name, default = nil)
          define_method(name) do
            @options.key?(name) ? @options[name] : default
          end
        end

      end

      add_option :ssl_default, true

    end
  end
end
