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
    module Http
      class Headers

        include Enumerable

        # @api private
        def initialize(headers = {})
          @data = {}
          headers.each_pair do |key, value|
            self[key] = value
          end
        end

        # @param [String] key
        # @return [String]
        def [](key)
          @data[key.to_s.downcase]
        end

        # @param [String] key
        # @param [String] value
        def []=(key, value)
          @data[key.to_s.downcase] = value.to_s
        end

        # @param [Hash] headers
        # @return [Headers]
        def update(headers)
          headers.each_pair do |k, v|
            self[k] = v
          end
          self
        end

        # @yield [key, value]
        # @yieldparam [String] key
        # @yieldparam [String] value
        # @return [nil]
        def each(&block)
          if block_given?
            @data.each_pair do |key, value|
              yield(key, value)
            end
            nil
          else
            @data.enum_for(:each)
          end
        end
        alias each_pair each

        # @return [Boolean] Returns `true` if the header is set.
        def key?(key)
          @data.key?(key.to_s.downcase)
        end
        alias has_key? key?
        alias include? key?

        # @return [Hash]
        def to_hash
          @data.dup
        end
        alias to_h to_hash

        # @api private
        def inspect
          @data.inspect
        end

      end
    end
  end
end
