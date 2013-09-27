module Seahorse
  module Client
    class Request

      include HandlerBuilder

      # @param [HandlerList] handlers
      # @param [RequestContext] context
      def initialize(handlers, context)
        @handlers = handlers
        @context = context
      end

      # @return [HandlerList]
      attr_reader :handlers

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
      def send_request(options = {}, &block)
        @context.http_response.body = BlockIO.new(&block) if block_given?
        @context.http_response.body = options[:target] if options[:target]
        @handlers.to_stack.call(@context)
      end

    end
  end
end
