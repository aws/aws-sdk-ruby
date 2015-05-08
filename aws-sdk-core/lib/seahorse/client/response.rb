module Seahorse
  module Client
    class Response

      # @option options [RequestContext] :context (nil)
      # @option options [Integer] :status_code (nil)
      # @option options [Http::Headers] :headers (Http::Headers.new)
      # @option options [String] :body ('')
      def initialize(options = {})
        @context = options[:context] || RequestContext.new
        @data = options[:data]
        @error = options[:error]
        @http_request = @context.http_request
        @http_response = @context.http_response
        @http_response.on_error do |error|
          @error = error
        end
      end

      # @return [RequestContext]
      attr_reader :context

      # @return The response data.  This may be `nil` if the response contains
      #   an {#error}.
      attr_accessor :data

      # @return [StandardError, nil]
      attr_accessor :error

      # @overload on(status_code, &block)
      #   @param [Integer] status_code The block will be
      #     triggered only for responses with the given status code.
      #
      # @overload on(status_code_range, &block)
      #   @param [Range<Integer>] status_code_range The block will be
      #     triggered only for responses with a status code that falls
      #     witin the given range.
      #
      # @return [self]
      def on(range, &block)
        response = self
        @context.http_response.on_success(range) do
          block.call(response)
        end
        self
      end

      # Yields to the block if the response has a 200 level status code.
      # @return [self]
      def on_success(&block)
        on(200..299, &block)
      end

      # @return [Boolean] Returns `true` if the response is complete with
      #   a ~ 200 level http status code.
      def successful?
        (200..299).include?(@context.http_response.status_code) && @error.nil?
      end

      # @api private
      def inspect
        @data.inspect
      end

      # @api private
      def pretty_print(q)
        @data.pretty_print(q)
      end

      # @api private
      def respond_to?(*args)
        @data.respond_to?(args.first, false) || super
      end

      private

      def method_missing(*args, &block)
        if @data.respond_to?(args.first, false)
          @data.send(*args, &block)
        else
          super
        end
      end

    end
  end
end
