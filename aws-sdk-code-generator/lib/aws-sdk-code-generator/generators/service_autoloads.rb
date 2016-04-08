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
        autolaods.each_pair do |const, path|
          mod.autoload(const, path)
        end
      end

      private

      def autolaods
        autoloads = {}
        autoloads['Client'] = "#{@prefix}/client"
        autoloads['ClientApi'] = "#{@prefix}/client_api"
        autoloads['Errors'] = "#{@prefix}/errors"
        autoloads['Resource'] = "#{@prefix}/resource"
        autoloads['Types'] = "#{@prefix}/types"
        autoloads['Waiters'] = "#{@prefix}/waiters"

        if @resources && @resources['resources']
          @resources['resources'].keys.each do |resource_name|
            if autoloads.key?(resource_name)
              raise "duplicate const `#{resource_name}'"
            else
              autoloads[resource_name] = "#{@prefix}/#{underscore(resource_name)}"
            end
          end
        end

        # alphabetize autoload statements
        autoloads.keys.sort.inject({}) do |hash, key|
          hash[key] = autoloads[key]
          hash
        end
      end

    end
  end
end
