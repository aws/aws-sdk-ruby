module AwsSdkCodeGenerator
  module Generators
    class ServiceAutoloads

      include Helper

      def initialize(gem_name:, resources:)
        @gem_name = gem_name
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

        autoloads['Client'] = "#{@gem_name}/client"
        autoloads['ClientApi'] = "#{@gem_name}/client_api"
        autoloads['Errors'] = "#{@gem_name}/errors"
        autoloads['Resource'] = "#{@gem_name}/resource"
        autoloads['Types'] = "#{@gem_name}/types"
        autoloads['Waiters'] = "#{@gem_name}/waiters"

        if @resources && @resources['resources']
          @resources['resources'].keys.each do |resource_name|
            if autoloads.key?(resource_name)
              raise "duplicate const `#{resource_name}'"
            else
              autoloads[resource_name] = "#{@gem_name}/#{underscore(resource_name)}"
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
