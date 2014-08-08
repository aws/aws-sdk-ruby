module Aws

  # Base class for all {Aws} service clients.
  class Client < Seahorse::Client::Base
    class << self

      # @return [Symbol]
      # @api private
      attr_accessor :identifier

      # @return [Paging::Provider]
      # @api private
      attr_accessor :paginators

      # @api private
      def define(svc_name, options)
        client_class = Class.new(self)
        client_class.identifier = svc_name.downcase.to_sym
        client_class.set_api(load_api(options[:api]))
        Api::ServiceCustomizations.apply(client_class)
        client_class
      end

      private

      def load_api(api)
        case api
        when Seahorse::Model::Api then api
        when Hash then Seahorse::Model::Api.new(api)
        when String then Seahorse::Model::Api.new(Aws.load_json(api))
        else
          raise ArgumentError, "expected :api to be an Api, Hash or String"
        end
      end

    end
  end
end
