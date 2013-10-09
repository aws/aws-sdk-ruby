require 'thread'

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
      end

      # @return [RequestContext]
      attr_reader :context

      # @return [Http::Request]
      attr_reader :http_request

      # @return [Http::Response]
      attr_reader :http_response

      # @return The response data.  This may be `nil` if the response contains
      #   an #{error}.
      attr_accessor :data

      # @return [StandardError, nil]
      attr_accessor :error

      # @param [Range<Integer>] status_code_range (nil) When present, the
      #   `block` will be triggered only for responses with a status code
      #   in the given range.
      # @return [Response] Returns self.
      def on_status(status_code_range = nil, &block)
        if status_code_range.nil? || status_code_range.include?(status_code)
          yield(self)
        end
        self
      end

      # Yields to the given block if the HTTP request received a response.
      def on_complete(&block)
        on_status(200..599, &block)
      end

      # Yields to the given block if the HTTP request received response with a
      # ~ 200 level status code.
      def on_success(&block)
        on_status(200..299, &block)
      end

      # Yields to the given block if the HTTP request received response with a
      # ~ 300 level status code.
      def on_redirect(&block)
        on_status(300..399, &block)
      end

      # Yields to the given block if the HTTP request received response with a
      # ~ 400 or 500 level status code.
      def on_error(&block)
        on_status(400..599, &block)
      end

      # Yields to the given block if the HTTP request failed to receive any
      # response.  This generally indicates there was a network 
      # level status code.
      def on_failure(&block)
        on_status(0..0, &block)
      end

      # @api private
      def respond_to?(*args)
        @data.respond_to?(args.first, false) || super
      end

      # @api private
      def inspect
        if @data
          @data.respond_to?(:pretty_inspect) ? @data.pretty_inspect : super
        else
          super
        end
      end

      private

      def status_code
        @http_response.status_code
      end

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
