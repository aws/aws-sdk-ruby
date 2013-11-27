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
      #   an {#error}.
      attr_accessor :data

      # @return [StandardError, nil]
      attr_accessor :error

      # @param [Integer,Range<Integer>] status_code_range The block will be
      #   triggered only for responses with a status code that matches
      #   the given status code or status code range.
      # @return [self]
      def on(status_code_range, &block)
        range = status_code_range
        range = range..range if range.is_a?(Integer)
        yield(self) if range.include?(status_code)
        self
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
