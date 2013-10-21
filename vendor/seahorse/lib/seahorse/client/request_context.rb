require 'stringio'

module Seahorse
  module Client
    class RequestContext

      # @option options [String] :operation_name (nil)
      # @option options [Hash] :params ({})
      # @option options [Configuration] :config (nil)
      # @option options [Http::Request] :http_request (Http::Request.new)
      # @option options [Http::Response] :http_response (Http::Response.new)
      #   and #rewind.
      def initialize(options = {})
        @operation_name = options[:operation_name]
        @params = options[:params] || {}
        @config = options[:config]
        @http_request = options[:http_request] || Http::Request.new
        @http_response = options[:http_response] || Http::Response.new
        @retries = 0
        @metadata = {}
      end

      # @return [String] Name of the API operation called.
      attr_accessor :operation_name

      # @return [Hash] The hash of request parameters.
      attr_accessor :params

      # @return [Configuration] The client configuration.
      attr_accessor :config

      # @return [Http::Request]
      attr_accessor :http_request

      # @return [Http::Response]
      attr_accessor :http_response

      # @return [Integer]
      attr_accessor :retries

      # Returns the metadata for the given `key`.
      # @param [Symbol] key
      # @return [Object]
      def [](key)
        @metadata[key]
      end

      # Sets the request context metadata for the given `key`.  Request metadata
      # useful for handlers that need to keep state on the request, without
      # sending that data with the request over HTTP.
      # @param [Symbol] key
      # @param [Object] value
      def []=(key, value)
        @metadata[key] = value
      end

      # @return [Model::Operation]
      def operation
        @operation ||= config.api.operations[operation_name]
      end

    end
  end
end
