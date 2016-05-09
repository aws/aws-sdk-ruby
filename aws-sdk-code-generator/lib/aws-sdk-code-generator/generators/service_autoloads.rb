module AwsSdkCodeGenerator
  module Generators
    class ServiceAutoloads

      include Helper

      def initialize(prefix:, resources:)
        @prefix = prefix
        @resources = resources
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
        autoloads['Waiters'] = "#{@prefix}/waiters"
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
        autoloads.values
      end

    end
  end
end
