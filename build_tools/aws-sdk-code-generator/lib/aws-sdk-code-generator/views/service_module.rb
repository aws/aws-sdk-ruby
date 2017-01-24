require 'set'

module AwsSdkCodeGenerator
  module Views
    class ServiceModule < View

      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)
        @gem_path = @service.gem_name
      end

      def full_name
        @service.full_name
      end

      def gem_name
        @service.gem_name
      end

      def gem_version
        @service.gem_version
      end

      def name
        @service.name
      end

      def module_name
        @service.module_name
      end

      def modules
        parts = module_name.split('::')
        (0...parts.size).map do |n|
          parts[0..n].join('::')
        end
      end

      # @return [Array<String>]
      def requires
        @service.gem_dependencies.keys
      end

      # @return [Array<String>]
      def relative_requires
        paths = Set.new
        paths << "#{@gem_path}/types"
        paths << "#{@gem_path}/client_api"
        paths << "#{@gem_path}/client"
        paths << "#{@gem_path}/errors"
        paths << "#{@gem_path}/waiters" if @service.waiters
        paths << "#{@gem_path}/resource"
        if @service.resources && @service.resources['resources']
          @service.resources['resources'].keys.each do |resource_name|
            path = "#{@gem_path}/#{underscore(resource_name)}"
            if paths.include?(path)
              raise "resource path conflict for `#{resource_name}'"
            else
              paths << path
            end
          end
        end
        paths << "#{@gem_path}/customizations"
        paths.to_a
      end

      def example_var_name
        underscore(name)
      end

      def example_operation_name
        underscore(@service.api['operations'].keys.first)
        nil
      end

    end
  end
end
