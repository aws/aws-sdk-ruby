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

require 'stringio'

module Seahorse
  class Client
    class RequestContext

      # @option options [String] :operation_name (nil)
      # @option options [Hash] :params ({})
      # @option options [Configuration] :config (nil)
      # @option options [EventEmitter] :events (EventEmitter.new)
      # @option options [Http::Request] :http_request (Http::Request.new)
      # @option options [Http::Response] :http_response (Http::Response.new)
      #   and #rewind.
      def initialize(options = {})
        @operation_name = options[:operation_name]
        @params = options[:params] || {}
        @config = options[:config]
        @events = options[:events] || EventEmitter.new
        @http_request = options[:http_request] || Http::Request.new
        @http_response = options[:http_response] || Http::Response.new
      end

      # @return [String] Name of the API operation called.
      attr_accessor :operation_name

      # @return [Hash] The hash of request parameters.
      attr_accessor :params

      # @return [Configuration] The client configuration.
      attr_accessor :config

      # @return [EventEmitter]
      attr_accessor :events

      # @return [Http::Request]
      attr_accessor :http_request

      # @return [Http::Response]
      attr_accessor :http_response

      # Registers an event listener for the named event.  The listener
      # can be an argument that responds to `#call` or a block.
      # @see EventEmitter#on
      def on(event_name, listener = nil, &callback)
        @events.on(event_name, listener, &callback)
      end

      # @see EventEmitter#emit
      def emit(event_name, *args)
        @events.emit(event_name, *args)
      end

    end
  end
end
