# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::LicenseManager
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::LicenseManager::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::LicenseManager::EndpointParameters`'
      ) do |cfg|
        Aws::LicenseManager::EndpointProvider.new
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
          when :accept_grant
            Aws::LicenseManager::Endpoints::AcceptGrant.build(context)
          when :check_in_license
            Aws::LicenseManager::Endpoints::CheckInLicense.build(context)
          when :checkout_borrow_license
            Aws::LicenseManager::Endpoints::CheckoutBorrowLicense.build(context)
          when :checkout_license
            Aws::LicenseManager::Endpoints::CheckoutLicense.build(context)
          when :create_grant
            Aws::LicenseManager::Endpoints::CreateGrant.build(context)
          when :create_grant_version
            Aws::LicenseManager::Endpoints::CreateGrantVersion.build(context)
          when :create_license
            Aws::LicenseManager::Endpoints::CreateLicense.build(context)
          when :create_license_configuration
            Aws::LicenseManager::Endpoints::CreateLicenseConfiguration.build(context)
          when :create_license_conversion_task_for_resource
            Aws::LicenseManager::Endpoints::CreateLicenseConversionTaskForResource.build(context)
          when :create_license_manager_report_generator
            Aws::LicenseManager::Endpoints::CreateLicenseManagerReportGenerator.build(context)
          when :create_license_version
            Aws::LicenseManager::Endpoints::CreateLicenseVersion.build(context)
          when :create_token
            Aws::LicenseManager::Endpoints::CreateToken.build(context)
          when :delete_grant
            Aws::LicenseManager::Endpoints::DeleteGrant.build(context)
          when :delete_license
            Aws::LicenseManager::Endpoints::DeleteLicense.build(context)
          when :delete_license_configuration
            Aws::LicenseManager::Endpoints::DeleteLicenseConfiguration.build(context)
          when :delete_license_manager_report_generator
            Aws::LicenseManager::Endpoints::DeleteLicenseManagerReportGenerator.build(context)
          when :delete_token
            Aws::LicenseManager::Endpoints::DeleteToken.build(context)
          when :extend_license_consumption
            Aws::LicenseManager::Endpoints::ExtendLicenseConsumption.build(context)
          when :get_access_token
            Aws::LicenseManager::Endpoints::GetAccessToken.build(context)
          when :get_grant
            Aws::LicenseManager::Endpoints::GetGrant.build(context)
          when :get_license
            Aws::LicenseManager::Endpoints::GetLicense.build(context)
          when :get_license_configuration
            Aws::LicenseManager::Endpoints::GetLicenseConfiguration.build(context)
          when :get_license_conversion_task
            Aws::LicenseManager::Endpoints::GetLicenseConversionTask.build(context)
          when :get_license_manager_report_generator
            Aws::LicenseManager::Endpoints::GetLicenseManagerReportGenerator.build(context)
          when :get_license_usage
            Aws::LicenseManager::Endpoints::GetLicenseUsage.build(context)
          when :get_service_settings
            Aws::LicenseManager::Endpoints::GetServiceSettings.build(context)
          when :list_associations_for_license_configuration
            Aws::LicenseManager::Endpoints::ListAssociationsForLicenseConfiguration.build(context)
          when :list_distributed_grants
            Aws::LicenseManager::Endpoints::ListDistributedGrants.build(context)
          when :list_failures_for_license_configuration_operations
            Aws::LicenseManager::Endpoints::ListFailuresForLicenseConfigurationOperations.build(context)
          when :list_license_configurations
            Aws::LicenseManager::Endpoints::ListLicenseConfigurations.build(context)
          when :list_license_conversion_tasks
            Aws::LicenseManager::Endpoints::ListLicenseConversionTasks.build(context)
          when :list_license_manager_report_generators
            Aws::LicenseManager::Endpoints::ListLicenseManagerReportGenerators.build(context)
          when :list_license_specifications_for_resource
            Aws::LicenseManager::Endpoints::ListLicenseSpecificationsForResource.build(context)
          when :list_license_versions
            Aws::LicenseManager::Endpoints::ListLicenseVersions.build(context)
          when :list_licenses
            Aws::LicenseManager::Endpoints::ListLicenses.build(context)
          when :list_received_grants
            Aws::LicenseManager::Endpoints::ListReceivedGrants.build(context)
          when :list_received_grants_for_organization
            Aws::LicenseManager::Endpoints::ListReceivedGrantsForOrganization.build(context)
          when :list_received_licenses
            Aws::LicenseManager::Endpoints::ListReceivedLicenses.build(context)
          when :list_received_licenses_for_organization
            Aws::LicenseManager::Endpoints::ListReceivedLicensesForOrganization.build(context)
          when :list_resource_inventory
            Aws::LicenseManager::Endpoints::ListResourceInventory.build(context)
          when :list_tags_for_resource
            Aws::LicenseManager::Endpoints::ListTagsForResource.build(context)
          when :list_tokens
            Aws::LicenseManager::Endpoints::ListTokens.build(context)
          when :list_usage_for_license_configuration
            Aws::LicenseManager::Endpoints::ListUsageForLicenseConfiguration.build(context)
          when :reject_grant
            Aws::LicenseManager::Endpoints::RejectGrant.build(context)
          when :tag_resource
            Aws::LicenseManager::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::LicenseManager::Endpoints::UntagResource.build(context)
          when :update_license_configuration
            Aws::LicenseManager::Endpoints::UpdateLicenseConfiguration.build(context)
          when :update_license_manager_report_generator
            Aws::LicenseManager::Endpoints::UpdateLicenseManagerReportGenerator.build(context)
          when :update_license_specifications_for_resource
            Aws::LicenseManager::Endpoints::UpdateLicenseSpecificationsForResource.build(context)
          when :update_service_settings
            Aws::LicenseManager::Endpoints::UpdateServiceSettings.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
