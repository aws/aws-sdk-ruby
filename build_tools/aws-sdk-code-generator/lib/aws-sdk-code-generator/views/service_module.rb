# frozen_string_literal: true

require 'set'

module AwsSdkCodeGenerator
  module Views
    class ServiceModule < View

      # @option options [required, Service] :service
      # @option options [required, String] :prefix
      def initialize(options)
        @service = options.fetch(:service)
        @prefix = options.fetch(:prefix)
        @codegenerated_plugins = options.fetch(:codegenerated_plugins) || []
      end

      # @return [String]
      attr_reader :prefix

      # @return [Service]
      attr_reader :service

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

      # @return [Boolean] - Return true if a check is needed before
      # requiring core to prevent circular dependencies.
      # This is required to support backwards compatibility for SSO which was
      # moved from the aws-sdk-sso gem into aws-sdk-core.
      def require_core_guard?
        @service.included_in_core?
      end

      # @return [String]
      def service_identifier
        @service.identifier
      end

      # @return [Array<Hash>] list of autoload path hashes with :path, :class_name and
      # :is_plugin keys.
      def autoloads
        paths = []
        paths << auto_load("#{@prefix}/types", :Types)
        paths << auto_load("#{@prefix}/client_api", :ClientApi)

        # these must be required before the client
        paths += @codegenerated_plugins.map do |p|
          auto_load(p.path, p.class_name.split('::').last, true)
        end

        paths << auto_load("#{@prefix}/client", :Client) unless @service.h2_required_setting?
        paths << auto_load("#{@prefix}/errors", :Errors)
        paths << auto_load("#{@prefix}/waiters", :Waiters) if @service.waiters
        paths << auto_load("#{@prefix}/resource", :Resource) unless @service.h2_required_setting?

        unless @service.legacy_endpoints?
          paths << auto_load("#{@prefix}/endpoint_parameters", :EndpointParameters)
          paths << auto_load("#{@prefix}/endpoint_provider", :EndpointProvider)
          paths << auto_load("#{@prefix}/endpoints", :Endpoints)
        end

        if @service.resources && @service.resources['resources']
          @service.resources['resources'].keys.each do |resource_name|
            path = "#{@prefix}/#{underscore(resource_name)}"
            paths << auto_load(path, resource_name)
          end
        end

        paths << auto_load("#{@prefix}/async_client", :AsyncClient) if @service.h2_setting?
        paths << auto_load("#{@prefix}/event_streams", :EventStreams) if eventstream_shape?

        paths
      end

      def auto_load(path, class_name, is_plugin = false)
        {
          file_path: path,
          class_name: class_name,
          is_plugin: is_plugin
        }
      end

      def example_var_name
        underscore(name)
      end

      def example_operation_name
        raise 'no operations found for the service' if @service.api['operations'].empty?

        underscore(@service.api['operations'].keys.first)
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
