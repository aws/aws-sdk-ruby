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
        @handlers = []
      end

      # @param [Class] handler
      # @option options [Symbol] priority (:
      def add(handler)
        @handlers << handler
      end

      # Yields the handlers.
      def each(&block)
        @handlers.each(&block)
      end

    end
  end
end
