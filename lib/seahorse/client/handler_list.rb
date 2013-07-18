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
  class Client
    class HandlerList

      include Enumerable

      # @api private
      def initialize
        @handlers = {
          after_send: [],
          send: [],
          before_send: [],
          after_sign: [],
          sign: [],
          before_sign: [],
          after_build: [],
          build: [],
          before_build: [],
          after_validate: [],
          validate: [],
          before_validate: [],
        }
      end

      # @param [Class] handler
      # @option options [Symbol] priority (:build)
      def add(handler, options = {})
        @handlers[options[:priority] || :build] << handler
      end

      # Yields the handlers.
      def each(&block)
        @handlers.values.each do |handlers|
          handlers.each(&block)
        end
      end

    end
  end
end
