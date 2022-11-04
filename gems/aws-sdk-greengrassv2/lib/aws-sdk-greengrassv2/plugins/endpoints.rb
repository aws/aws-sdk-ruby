# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::GreengrassV2
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::GreengrassV2::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::GreengrassV2::EndpointParameters`'
      ) do |cfg|
        Aws::GreengrassV2::EndpointProvider.new
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
          when :associate_service_role_to_account
            Aws::GreengrassV2::Endpoints::AssociateServiceRoleToAccount.build(context)
          when :batch_associate_client_device_with_core_device
            Aws::GreengrassV2::Endpoints::BatchAssociateClientDeviceWithCoreDevice.build(context)
          when :batch_disassociate_client_device_from_core_device
            Aws::GreengrassV2::Endpoints::BatchDisassociateClientDeviceFromCoreDevice.build(context)
          when :cancel_deployment
            Aws::GreengrassV2::Endpoints::CancelDeployment.build(context)
          when :create_component_version
            Aws::GreengrassV2::Endpoints::CreateComponentVersion.build(context)
          when :create_deployment
            Aws::GreengrassV2::Endpoints::CreateDeployment.build(context)
          when :delete_component
            Aws::GreengrassV2::Endpoints::DeleteComponent.build(context)
          when :delete_core_device
            Aws::GreengrassV2::Endpoints::DeleteCoreDevice.build(context)
          when :delete_deployment
            Aws::GreengrassV2::Endpoints::DeleteDeployment.build(context)
          when :describe_component
            Aws::GreengrassV2::Endpoints::DescribeComponent.build(context)
          when :disassociate_service_role_from_account
            Aws::GreengrassV2::Endpoints::DisassociateServiceRoleFromAccount.build(context)
          when :get_component
            Aws::GreengrassV2::Endpoints::GetComponent.build(context)
          when :get_component_version_artifact
            Aws::GreengrassV2::Endpoints::GetComponentVersionArtifact.build(context)
          when :get_connectivity_info
            Aws::GreengrassV2::Endpoints::GetConnectivityInfo.build(context)
          when :get_core_device
            Aws::GreengrassV2::Endpoints::GetCoreDevice.build(context)
          when :get_deployment
            Aws::GreengrassV2::Endpoints::GetDeployment.build(context)
          when :get_service_role_for_account
            Aws::GreengrassV2::Endpoints::GetServiceRoleForAccount.build(context)
          when :list_client_devices_associated_with_core_device
            Aws::GreengrassV2::Endpoints::ListClientDevicesAssociatedWithCoreDevice.build(context)
          when :list_component_versions
            Aws::GreengrassV2::Endpoints::ListComponentVersions.build(context)
          when :list_components
            Aws::GreengrassV2::Endpoints::ListComponents.build(context)
          when :list_core_devices
            Aws::GreengrassV2::Endpoints::ListCoreDevices.build(context)
          when :list_deployments
            Aws::GreengrassV2::Endpoints::ListDeployments.build(context)
          when :list_effective_deployments
            Aws::GreengrassV2::Endpoints::ListEffectiveDeployments.build(context)
          when :list_installed_components
            Aws::GreengrassV2::Endpoints::ListInstalledComponents.build(context)
          when :list_tags_for_resource
            Aws::GreengrassV2::Endpoints::ListTagsForResource.build(context)
          when :resolve_component_candidates
            Aws::GreengrassV2::Endpoints::ResolveComponentCandidates.build(context)
          when :tag_resource
            Aws::GreengrassV2::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::GreengrassV2::Endpoints::UntagResource.build(context)
          when :update_connectivity_info
            Aws::GreengrassV2::Endpoints::UpdateConnectivityInfo.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
