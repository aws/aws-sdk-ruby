require 'multi_json'
require 'thread'

module Aws
  module Resources

    @define_service_mutex = Mutex.new

    # @api private
    DEFINITIONS = Aws.service_modules.values.inject({}) do |definitions, svc|
      latest_version, sources = svc.const_get(:Client).send(:versions).to_a.last
      if definition_path = sources['resources']
        definitions[svc.name.split('::').last.to_sym] = definition_path
      end
      definitions
    end

    private_constant :DEFINITIONS

    class << self

      # @api private
      def const_missing(const_name)
        if definition_path = DEFINITIONS[const_name]
          define_service_resource(const_name, definition(definition_path))
        else
          raise NameError, "uninitialized constant Aws::Resources::#{const_name}"
        end
      end

      # @api private
      def constants
        (super + DEFINITIONS.keys).uniq.sort
      end

      private

      # Reads a resource definition JSON document from disk, returning
      # a {Resource::Definition} object.
      # @param [String] path
      # @return [Resource::Definition]
      def definition(path)
        path = File.expand_path(path, GEM_ROOT)
        Resource::Definition.new(MultiJson.load(File.read(path)), path: path)
      end

      # Constructs a resource definition for a service and all of its
      # sub resources from a {Resource::Definition}.
      # @param [Symbol] svc_name
      # @param [Resource::Definition] definition
      # @return [Class<Resource>]
      def define_service_resource(svc_name, definition)
        @define_service_mutex.synchronize do
          if const_defined?(svc_name)
            const_get(svc_name)
          else
            const_set(svc_name, build_service_resource(svc_name, definition))
          end
        end
      end

      # @param [Symbol] svc_name
      # @param [Resource::Definition] definition
      # @return [Class<Resource>]
      def build_service_resource(svc_name, definition)
        client_class = Aws.const_get(svc_name).default_client_class
        definition.define_service(svc_name, client_class)
      end

    end
  end
end
