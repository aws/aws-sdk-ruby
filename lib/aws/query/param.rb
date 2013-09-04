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

require 'cgi'

module Aws
  module Query
    class Param

      # @param [String] name
      # @param [String, nil] value (nil)
      def initialize(name, value = nil)
        @name = name
        @value = value
      end

      # @return [String]
      attr_reader :name

      # @return [String, nil]
      attr_reader :value

      # @return [String]
      def to_s
        value ? "#{escape(name)}=#{escape(value)}" : escape(name)
      end

      # @api private
      def ==(other)
        other.kind_of?(Param) &&
        other.name == name &&
        other.value == value
      end

      # @api private
      def <=> other
        name <=> other.name
      end

      private

      def escape(str)
        CGI::escape(str.encode('UTF-8')).gsub('+', '%20').gsub('%7E', '~')
      end

    end
  end
end
