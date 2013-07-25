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
    class Request

      # @param [Handler] handler
      # @param [RequestContext] context
      def initialize(handler, context)
        @handler = handler
        @context = context
      end

      # @return [Handler]
      attr_reader :handler

      # @return [RequestContext]
      attr_reader :context

      # Registers an event listener for the named event.  The listener
      # can be an argument that responds to `#call` or a block.
      # @see EventEmitter#on
      def on(event_name, listener = nil, &callback)
        @context.on(event_name, &callback)
      end

      # Sends the request, returning a {Response Response}.
      #
      #     response = request.send
      #
      # # Streaming Responses
      #
      # By default, HTTP responses are buffered into memory.  This can be
      # problematic if you are downloading large response object, like
      # files.
      #
      # To avoid buffering the response in memory, you can pass block
      # to `#send`.  The response will be read in chunks and yielded to
      # the block.
      #
      #     # stream the response data
      #     response = request.send do |chunk|
      #       file.write(chunk)
      #     end
      #
      # **Please Note**: When streaming to a block, retries are disabled.
      #
      # # Asynchronous Requests
      #
      # If you are using a HTTP handler that makes asynchronous requests,
      # then you will need to wait for the returned response to be
      # complete before you inspect the response.
      #
      #     response = request.send
      #     response.complete?
      #     #=> false
      #
      #     response.on_complete do
      #       response.complete?
      #       #=> true
      #     end
      #
      # The {Response#on_complete on_complete} method can also yield the
      # {Response Response} object to your block.
      #
      #     request.send.on_complete do |response|
      #       response.complete?
      #       #=> true
      #     end
      #
      # @return [Response]
      def send
        @handler.call(@context)
      end

    end
  end
end
