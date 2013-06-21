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

require 'seahorse/client/response'

module Seahorse
  class Client
    class Request

      # @param [Client] client
      # @param [String] operation_name
      # @param [Hash] params
      def initialize(operation_name, params = {})
        @operation_name = operation_name
        @params = params
        @listeners = {}
      end

      # @return [String]
      attr_reader :operation_name

      # @return [Hash] params
      attr_reader :params

      # Sends this request, returning a response or raising an error
      # if the request fails for any reason.  Calling this method
      # multiple times will send multiple requests.
      # @return [Response]
      def send
        resp = Response.new
        emit(:validate)
        emit(:build)
        emit(:sign)
        emit(:send)
        emit(:parse)
        emit(:success)
        emit(:complete)
        resp
      end

      # @param [Symbol,String] event_name
      def on(event_name, &block)
        @listeners[event_name] = block
      end

      private

      def emit event_name
        @listeners[event_name].call if @listeners[event_name]
      end

    end
  end
end
