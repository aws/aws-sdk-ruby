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

module Seahorse
  class Client
    class EventEmitter

      # @api private
      def initialize
        @listeners = Hash.new do |hash,event_name|
          hash[event_name] = []
        end
      end

      # @param [Symbol, String] event_name The name of an event you wish
      #   to register a listener for.
      def on event_name, listener = nil, &block
        listener ||= block
        unless listener.respond_to?(:call)
          msg = 'expected a block or a listener that responds to #call'
          raise ArgumentError, msg
        end
        @listeners[event_name.to_sym] << listener
        nil
      end

      # @param [Symbol] event_name
      def emit event_name
        if @listeners.key?(event_name)
          @listeners[event_name].each(&:call)
        end
      end

    end
  end
end
