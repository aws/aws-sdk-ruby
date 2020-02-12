require 'set'

module AwsSdkCodeGenerator
  module Views
    class ServiceModule < View

      # @option options [required, Service] :service
      # @option options [required, String] :prefix
      def initialize(options)
        @service = options.fetch(:service)
        @prefix = options.fetch(:prefix)
      end

      # @return [String|nil]
      def generated_src_warning
        return if @service.protocol == 'api-gateway'
        GENERATED_SRC_WARNING
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
        paths << "#{@prefix}/types"
        paths << "#{@prefix}/client_api"
        paths << "#{@prefix}/client"
        paths << "#{@prefix}/errors"
        paths << "#{@prefix}/waiters" if @service.waiters
        paths << "#{@prefix}/resource"
        if @service.resources && @service.resources['resources']
          @service.resources['resources'].keys.each do |resource_name|
            path = "#{@prefix}/#{underscore(resource_name)}"
            if paths.include?(path)
              raise "resource path conflict for `#{resource_name}'"
            else
              paths << path
            end
          end
        end
        paths << "#{@prefix}/customizations"
        if @service.api['metadata']['protocolSettings'] &&
          @service.api['metadata']['protocolSettings']['h2'] == 'eventstream'
          paths << "#{@prefix}/async_client"
          paths << "#{@prefix}/event_streams"
        elsif eventstream_shape?
          paths << "#{@prefix}/event_streams"
        end
        paths.to_a
      end

      def example_var_name
        underscore(name)
      end

      def example_operation_name
        raise "no operations found for the service" if @service.api['operations'].empty?
        underscore(@service.api['operations'].keys.first)
        nil
      end

      def eventstream_shape?
        @service.api['shapes'].each do |_, shape_ref|
          return true if shape_ref['eventstream']
        end
        false
      end
    end
  end
end
