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

module Aws
  module Query
    class ParamList

      include Enumerable

      # @api private
      def initialize
        @params = {}
      end

      # @param [String] param_name
      # @param [String, nil] param_value
      # @return [Param]
      def set(param_name, param_value = nil)
        param = Param.new(param_name, param_value)
        @params[param.name] = param
        param
      end

      # @param [String] param_name
      # @return [Param, nil]
      def delete(param_name)
        @params.delete(param_name)
      end

      # @return [Enumerable]
      def each(&block)
        to_a.each(&block)
      end

      # @return [Boolean]
      def empty?
        @params.empty?
      end

      # @return [Array<Param>] Returns an array of sorted {Param} objects.
      def to_a
        @params.values.sort
      end

      # @return [String]
      def to_s
        to_a.map(&:to_s).join('&')
      end

    end
  end
end
