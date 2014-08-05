module Aws
  class ServiceBuilder
    class << self

      # @param [Symbol] identifier
      # @option options [required, String, Hash, Seahorse::Model::Api] 'api'
      # @option options [String, Hash, Paging::Provider] 'paging'
      # @return [Module<Service>]
      def new(identifier, options = {})
        svc_module = Module.new
        svc_module.send(:extend, Service)
        svc_module.const_set(:Errors, Module.new { extend Errors::DynamicErrors })
        svc_module.const_set(:Client, client_class(identifier, options))
        svc_module
      end

      private

      def client_class(identifier, options)
        client_class = Class.new(Seahorse::Client::Base)
        client_class.const_set(:IDENTIFIER, identifier)
        client_class.const_set(:PAGING_PROVIDER, paging_provider(options))
        client_class.set_api(api(options))
        Api::ServiceCustomizations.apply(client_class)
        client_class
      end

      def api(options)
        api = options['api']
        case api
        when Seahorse::Model::Api then api
        when Hash then Seahorse::Model::Api.new(api)
        when String then Seahorse::Model::Api.new(MultiJson.load(File.read(api)))
        else
          raise ArgumentError, "expected :api to be an Api, Hash or String"
        end
      end

      def paging_provider(options)
        paginators = options['paginators']
        case paginators
        when Paging::Provider then paginators
        when Hash then Paging::Provider.new(paginators)
        when String then Paging::Provider.new(MultiJson.load(File.read(paginators)))
        when nil then Paging::NullProvider.new
        end
      end

    end
  end
end
