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

      # Sends the request, returning a {Response Response}.
      #
      #     response = request.send_request
      #
      # # Streaming Responses
      #
      # By default, HTTP responses are buffered into memory.  This can be
      # bad if you are downloading large responses, e.g. large files.
      # You can avoid this by streaming the response to a block or some other
      # target.
      #
      # ## Streaming to a File
      #
      # TODO: write this
      #
      # ## Streaming to a Tempfile
      #
      # TODO: write this
      #
      # ## Block Streaming
      #
      # Pass a block to `#send` and the response will be yielded in chunks
      # and will not be loaded into memory.
      #
      #     # stream the response data
      #     response = request.send_request do |chunk|
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
      #     response = request.send_request
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
      #     request.send_request.on_complete do |response|
      #       response.complete?
      #       #=> true
      #     end
      #
      # @return [Response]
      def send_request(&block)
        if block_given?
          @context.http_response.body = Http::ResponseBodyStream.new(&block)
        end
        @handler.call(@context)
      end

    end
  end
end
