require 'aws/resource/options'

module Aws
  module Resource
    class Request

      include Options

      # @option opitons [requried, String] :method_name
      # @option options [Array<RequestParams::Param>] :params ([]) A list of
      #   request params to apply to the request when called.
      def initialize(options = {})
        @method_name = option(:method_name, options)
        @params = options[:params] || []
      end

      # @return [String] Name of the method called on the client when this
      #   operation is called.
      attr_reader :method_name

      # @return [Array<RequestParams::Param>]
      attr_reader :params

      # @option options [required, Resource] :resource
      # @option options [Hash] :params ({})
      # @return [Seahorse::Client::Response]
      def call(options = {})
        client(options).send(@method_name, build_params(options))
      end

      private

      def client(options)
        option(:client, options)
      end

      def build_params(options)
        deep_merge(user_params(options), resource_params(options))
      end

      def user_params(options)
        options[:params] || {}
      end

      def resource_params(options)
        params_hash = {}
        resources = options[:resources] || [options[:resource]]
        resources.each do |resource|
          @params.each do |param|
            param.apply(params_hash, options.merge(resource: resource))
          end
        end
        params_hash
      end

      def deep_merge(obj1, obj2)
        case obj1
        when Hash then obj1.merge(obj2) { |key, v1, v2| deep_merge(v1, v2) }
        when Array then obj2 + obj1
        else obj2
        end
      end

    end
  end
end
