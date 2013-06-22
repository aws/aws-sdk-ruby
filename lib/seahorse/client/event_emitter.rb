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
      EXPECTED_CALLABLE = 'expected listener or block that responds to #call'

      # @api private
      def initialize
        @listeners = Hash.new do |hash,event_name|
          hash[event_name] = []
        end
      end

      # Registers a listener for the given event.  When {#emit} is called,
      # the listener will be called.  Any additional arguments passed
      # to {#emit} will be passed along to the listener's #call method.
      #
      # A listener is any object that responds to #call.  You can also
      # register a listener using the block form of this method.
      #
      # @example Register a listener with a block
      #
      #    event_emitter.on(:event_name) do |arg1, arg2|
      #      # arg1 will be 'abc' and arg2 will be 'xyz'
      #    end
      #    event_emitter.emit(:event_name, 'abc', 'xyz')
      #
      # @example Register a listener with an object that responds to #call
      #
      #    class Listener
      #      def call *args
      #        puts "Called with #{args.inspect}"
      #      end
      #    end
      #
      #    event_emitter.on(:event_name, Listener.new)
      #    event_emitter.emit(:event_name, 'abc', 'xyz')
      #
      # @param [Symbol, String] event_name The name of an event.
      # @param [#call] listener
      # @return [nil]
      def on event_name, listener = nil, &block
        @listeners[event_name.to_sym] << callable(listener || block)
        nil
      end

      # Calls each of the event listeners with *args.
      # @param [Symbol, String] event_name
      def emit event_name, *args
        @listeners.fetch(event_name.to_sym, []).each do |listener|
          listener.call(*args)
        end
        nil
      end

      private

      def callable obj
        raise ArgumentError, EXPECTED_CALLABLE unless obj.respond_to?(:call)
        obj
      end

    end
  end
end
