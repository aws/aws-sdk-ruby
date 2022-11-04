# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Panorama
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Panorama::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Panorama::EndpointParameters`'
      ) do |cfg|
        Aws::Panorama::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          # If endpoint was discovered, do not resolve or apply the endpoint.
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)
          end

          context[:endpoint_params] = params
          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          @handler.call(context)
        end

        private

        def apply_endpoint_headers(context, headers)
          headers.each do |key, values|
            value = values
              .compact
              .map { |s| Seahorse::Util.escape_header_list_string(s.to_s) }
              .join(',')

            context.http_request.headers[key] = value
          end
        end

        def parameters_for_operation(context)
          case context.operation_name
          when :create_application_instance
            Aws::Panorama::Endpoints::CreateApplicationInstance.build(context)
          when :create_job_for_devices
            Aws::Panorama::Endpoints::CreateJobForDevices.build(context)
          when :create_node_from_template_job
            Aws::Panorama::Endpoints::CreateNodeFromTemplateJob.build(context)
          when :create_package
            Aws::Panorama::Endpoints::CreatePackage.build(context)
          when :create_package_import_job
            Aws::Panorama::Endpoints::CreatePackageImportJob.build(context)
          when :delete_device
            Aws::Panorama::Endpoints::DeleteDevice.build(context)
          when :delete_package
            Aws::Panorama::Endpoints::DeletePackage.build(context)
          when :deregister_package_version
            Aws::Panorama::Endpoints::DeregisterPackageVersion.build(context)
          when :describe_application_instance
            Aws::Panorama::Endpoints::DescribeApplicationInstance.build(context)
          when :describe_application_instance_details
            Aws::Panorama::Endpoints::DescribeApplicationInstanceDetails.build(context)
          when :describe_device
            Aws::Panorama::Endpoints::DescribeDevice.build(context)
          when :describe_device_job
            Aws::Panorama::Endpoints::DescribeDeviceJob.build(context)
          when :describe_node
            Aws::Panorama::Endpoints::DescribeNode.build(context)
          when :describe_node_from_template_job
            Aws::Panorama::Endpoints::DescribeNodeFromTemplateJob.build(context)
          when :describe_package
            Aws::Panorama::Endpoints::DescribePackage.build(context)
          when :describe_package_import_job
            Aws::Panorama::Endpoints::DescribePackageImportJob.build(context)
          when :describe_package_version
            Aws::Panorama::Endpoints::DescribePackageVersion.build(context)
          when :list_application_instance_dependencies
            Aws::Panorama::Endpoints::ListApplicationInstanceDependencies.build(context)
          when :list_application_instance_node_instances
            Aws::Panorama::Endpoints::ListApplicationInstanceNodeInstances.build(context)
          when :list_application_instances
            Aws::Panorama::Endpoints::ListApplicationInstances.build(context)
          when :list_devices
            Aws::Panorama::Endpoints::ListDevices.build(context)
          when :list_devices_jobs
            Aws::Panorama::Endpoints::ListDevicesJobs.build(context)
          when :list_node_from_template_jobs
            Aws::Panorama::Endpoints::ListNodeFromTemplateJobs.build(context)
          when :list_nodes
            Aws::Panorama::Endpoints::ListNodes.build(context)
          when :list_package_import_jobs
            Aws::Panorama::Endpoints::ListPackageImportJobs.build(context)
          when :list_packages
            Aws::Panorama::Endpoints::ListPackages.build(context)
          when :list_tags_for_resource
            Aws::Panorama::Endpoints::ListTagsForResource.build(context)
          when :provision_device
            Aws::Panorama::Endpoints::ProvisionDevice.build(context)
          when :register_package_version
            Aws::Panorama::Endpoints::RegisterPackageVersion.build(context)
          when :remove_application_instance
            Aws::Panorama::Endpoints::RemoveApplicationInstance.build(context)
          when :signal_application_instance_node_instances
            Aws::Panorama::Endpoints::SignalApplicationInstanceNodeInstances.build(context)
          when :tag_resource
            Aws::Panorama::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Panorama::Endpoints::UntagResource.build(context)
          when :update_device_metadata
            Aws::Panorama::Endpoints::UpdateDeviceMetadata.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
