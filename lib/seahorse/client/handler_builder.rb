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
    module HandlerBuilder

      def request_handler(*args, &block)
        handler(*args) do |context|
          block.call(context)
          @handler.call(context)
        end
      end

      def response_handler(*args, &block)
        handler(*args) do |context|
          @handler.call(context).on_complete do |response|
            block.call(response)
          end
        end
      end

      def handler(*args, &block)
        options = args.last.is_a?(Hash) ? args.pop : {}
        handler_class = block ? handler_for(*args, &block) : args.first
        handlers.add(handler_class, options)
      end

      # @api private
      def handler_for(name = nil, &block)
        if name
          const_set(name, new_handler(block))
        else
          new_handler(block)
        end
      end

      # @api private
      def new_handler(block)
        Class.new(Handler) do
          define_method(:call, &block)
        end
      end

    end
  end
end
