# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::OpenSearchService
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::OpenSearchService::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::OpenSearchService::EndpointParameters`'
      ) do |cfg|
        Aws::OpenSearchService::EndpointProvider.new
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
          when :accept_inbound_connection
            Aws::OpenSearchService::Endpoints::AcceptInboundConnection.build(context)
          when :add_tags
            Aws::OpenSearchService::Endpoints::AddTags.build(context)
          when :associate_package
            Aws::OpenSearchService::Endpoints::AssociatePackage.build(context)
          when :authorize_vpc_endpoint_access
            Aws::OpenSearchService::Endpoints::AuthorizeVpcEndpointAccess.build(context)
          when :cancel_service_software_update
            Aws::OpenSearchService::Endpoints::CancelServiceSoftwareUpdate.build(context)
          when :create_domain
            Aws::OpenSearchService::Endpoints::CreateDomain.build(context)
          when :create_outbound_connection
            Aws::OpenSearchService::Endpoints::CreateOutboundConnection.build(context)
          when :create_package
            Aws::OpenSearchService::Endpoints::CreatePackage.build(context)
          when :create_vpc_endpoint
            Aws::OpenSearchService::Endpoints::CreateVpcEndpoint.build(context)
          when :delete_domain
            Aws::OpenSearchService::Endpoints::DeleteDomain.build(context)
          when :delete_inbound_connection
            Aws::OpenSearchService::Endpoints::DeleteInboundConnection.build(context)
          when :delete_outbound_connection
            Aws::OpenSearchService::Endpoints::DeleteOutboundConnection.build(context)
          when :delete_package
            Aws::OpenSearchService::Endpoints::DeletePackage.build(context)
          when :delete_vpc_endpoint
            Aws::OpenSearchService::Endpoints::DeleteVpcEndpoint.build(context)
          when :describe_domain
            Aws::OpenSearchService::Endpoints::DescribeDomain.build(context)
          when :describe_domain_auto_tunes
            Aws::OpenSearchService::Endpoints::DescribeDomainAutoTunes.build(context)
          when :describe_domain_change_progress
            Aws::OpenSearchService::Endpoints::DescribeDomainChangeProgress.build(context)
          when :describe_domain_config
            Aws::OpenSearchService::Endpoints::DescribeDomainConfig.build(context)
          when :describe_domain_health
            Aws::OpenSearchService::Endpoints::DescribeDomainHealth.build(context)
          when :describe_domain_nodes
            Aws::OpenSearchService::Endpoints::DescribeDomainNodes.build(context)
          when :describe_domains
            Aws::OpenSearchService::Endpoints::DescribeDomains.build(context)
          when :describe_dry_run_progress
            Aws::OpenSearchService::Endpoints::DescribeDryRunProgress.build(context)
          when :describe_inbound_connections
            Aws::OpenSearchService::Endpoints::DescribeInboundConnections.build(context)
          when :describe_instance_type_limits
            Aws::OpenSearchService::Endpoints::DescribeInstanceTypeLimits.build(context)
          when :describe_outbound_connections
            Aws::OpenSearchService::Endpoints::DescribeOutboundConnections.build(context)
          when :describe_packages
            Aws::OpenSearchService::Endpoints::DescribePackages.build(context)
          when :describe_reserved_instance_offerings
            Aws::OpenSearchService::Endpoints::DescribeReservedInstanceOfferings.build(context)
          when :describe_reserved_instances
            Aws::OpenSearchService::Endpoints::DescribeReservedInstances.build(context)
          when :describe_vpc_endpoints
            Aws::OpenSearchService::Endpoints::DescribeVpcEndpoints.build(context)
          when :dissociate_package
            Aws::OpenSearchService::Endpoints::DissociatePackage.build(context)
          when :get_compatible_versions
            Aws::OpenSearchService::Endpoints::GetCompatibleVersions.build(context)
          when :get_package_version_history
            Aws::OpenSearchService::Endpoints::GetPackageVersionHistory.build(context)
          when :get_upgrade_history
            Aws::OpenSearchService::Endpoints::GetUpgradeHistory.build(context)
          when :get_upgrade_status
            Aws::OpenSearchService::Endpoints::GetUpgradeStatus.build(context)
          when :list_domain_names
            Aws::OpenSearchService::Endpoints::ListDomainNames.build(context)
          when :list_domains_for_package
            Aws::OpenSearchService::Endpoints::ListDomainsForPackage.build(context)
          when :list_instance_type_details
            Aws::OpenSearchService::Endpoints::ListInstanceTypeDetails.build(context)
          when :list_packages_for_domain
            Aws::OpenSearchService::Endpoints::ListPackagesForDomain.build(context)
          when :list_scheduled_actions
            Aws::OpenSearchService::Endpoints::ListScheduledActions.build(context)
          when :list_tags
            Aws::OpenSearchService::Endpoints::ListTags.build(context)
          when :list_versions
            Aws::OpenSearchService::Endpoints::ListVersions.build(context)
          when :list_vpc_endpoint_access
            Aws::OpenSearchService::Endpoints::ListVpcEndpointAccess.build(context)
          when :list_vpc_endpoints
            Aws::OpenSearchService::Endpoints::ListVpcEndpoints.build(context)
          when :list_vpc_endpoints_for_domain
            Aws::OpenSearchService::Endpoints::ListVpcEndpointsForDomain.build(context)
          when :purchase_reserved_instance_offering
            Aws::OpenSearchService::Endpoints::PurchaseReservedInstanceOffering.build(context)
          when :reject_inbound_connection
            Aws::OpenSearchService::Endpoints::RejectInboundConnection.build(context)
          when :remove_tags
            Aws::OpenSearchService::Endpoints::RemoveTags.build(context)
          when :revoke_vpc_endpoint_access
            Aws::OpenSearchService::Endpoints::RevokeVpcEndpointAccess.build(context)
          when :start_service_software_update
            Aws::OpenSearchService::Endpoints::StartServiceSoftwareUpdate.build(context)
          when :update_domain_config
            Aws::OpenSearchService::Endpoints::UpdateDomainConfig.build(context)
          when :update_package
            Aws::OpenSearchService::Endpoints::UpdatePackage.build(context)
          when :update_scheduled_action
            Aws::OpenSearchService::Endpoints::UpdateScheduledAction.build(context)
          when :update_vpc_endpoint
            Aws::OpenSearchService::Endpoints::UpdateVpcEndpoint.build(context)
          when :upgrade_domain
            Aws::OpenSearchService::Endpoints::UpgradeDomain.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
