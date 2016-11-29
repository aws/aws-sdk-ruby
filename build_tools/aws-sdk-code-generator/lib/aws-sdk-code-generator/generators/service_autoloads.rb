module AwsSdkCodeGenerator
  module Generators
    # TODO : rename this from ServiceAutoload to something more descriptive
    #        of what it really is, perhaps `ServiceModule`?
    class ServiceAutoloads

      include Helper

      # @option options [required, String] :prefix
      # @option options [required, Hash] :resources
      # @option options [required, Boolean] :waiters
      def initialize(options)
        @prefix = options.fetch(:prefix)
        @resources = options.fetch(:resources)
        @waiters = options.fetch(:waiters)
      end

      # @param [Dsl::Module] mod
      def apply(mod)
        autoloads.each do |path|
          mod.require_relative(path)
        end
      end

      private

      def autoloads
        autoloads = {}
        autoloads['Types'] = "#{@prefix}/types"
        autoloads['ClientApi'] = "#{@prefix}/client_api"
        autoloads['Client'] = "#{@prefix}/client"
        autoloads['Errors'] = "#{@prefix}/errors"
        autoloads['Waiters'] = "#{@prefix}/waiters" if @waiters
        autoloads['Resource'] = "#{@prefix}/resource"
        if @resources && @resources['resources']
          @resources['resources'].keys.each do |resource_name|
            if autoloads.key?(resource_name)
              raise "duplicate const `#{resource_name}'"
            else
              autoloads[resource_name] = "#{@prefix}/#{underscore(resource_name)}"
            end
          end
        end
        autoloads.values + ["#{@prefix}/customizations"]
      end

    end
  end
end
