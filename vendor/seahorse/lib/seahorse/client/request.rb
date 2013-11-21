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

      # Sends the request, returning a {Response} object.
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
      # You can stream the raw HTTP response body to a File, or any IO-like
      # object, by passing the `:target` option.
      #
      #     File.open('photo.jpg', 'wb') do |file|
      #       request.send_request(target: file)
      #     end
      #
      # ## Block Streaming
      #
      # Pass a block to `#send_request` and the response will be yielded in
      # chunks to the given block.
      #
      #     # stream the response data
      #     request.send_request do |chunk|
      #       file.write(chunk)
      #     end
      #
      # **Please Note**: When streaming to a block, it is not possible to
      # retry failed requests.
      #
      # @return [Response]
      def send_request(options = {}, &block)
        set_target(options, &block)
        resp = @handlers.to_stack.call(@context)
        close_managed_files
        resp
      end

      private

      def set_target(options, &block)
        if target = options[:target] || block
          @context.http_response.body =
            case target
            when Proc then BlockIO.new(&target)
            when String, Pathname then ManagedFile.new(target, 'wb')
            else target
          end
        end
      end

      def close_managed_files
        [
          @context.http_request.body,
          @context.http_response.body,
        ].each do |io|
          io.close if io.is_a?(ManagedFile) && io.open?
        end
      end

    end
  end
end
