# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ElasticsearchService
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ElasticsearchService::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ElasticsearchService::EndpointParameters`'
      ) do |cfg|
        Aws::ElasticsearchService::EndpointProvider.new
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
          when :accept_inbound_cross_cluster_search_connection
            Aws::ElasticsearchService::Endpoints::AcceptInboundCrossClusterSearchConnection.build(context)
          when :add_tags
            Aws::ElasticsearchService::Endpoints::AddTags.build(context)
          when :associate_package
            Aws::ElasticsearchService::Endpoints::AssociatePackage.build(context)
          when :authorize_vpc_endpoint_access
            Aws::ElasticsearchService::Endpoints::AuthorizeVpcEndpointAccess.build(context)
          when :cancel_elasticsearch_service_software_update
            Aws::ElasticsearchService::Endpoints::CancelElasticsearchServiceSoftwareUpdate.build(context)
          when :create_elasticsearch_domain
            Aws::ElasticsearchService::Endpoints::CreateElasticsearchDomain.build(context)
          when :create_outbound_cross_cluster_search_connection
            Aws::ElasticsearchService::Endpoints::CreateOutboundCrossClusterSearchConnection.build(context)
          when :create_package
            Aws::ElasticsearchService::Endpoints::CreatePackage.build(context)
          when :create_vpc_endpoint
            Aws::ElasticsearchService::Endpoints::CreateVpcEndpoint.build(context)
          when :delete_elasticsearch_domain
            Aws::ElasticsearchService::Endpoints::DeleteElasticsearchDomain.build(context)
          when :delete_elasticsearch_service_role
            Aws::ElasticsearchService::Endpoints::DeleteElasticsearchServiceRole.build(context)
          when :delete_inbound_cross_cluster_search_connection
            Aws::ElasticsearchService::Endpoints::DeleteInboundCrossClusterSearchConnection.build(context)
          when :delete_outbound_cross_cluster_search_connection
            Aws::ElasticsearchService::Endpoints::DeleteOutboundCrossClusterSearchConnection.build(context)
          when :delete_package
            Aws::ElasticsearchService::Endpoints::DeletePackage.build(context)
          when :delete_vpc_endpoint
            Aws::ElasticsearchService::Endpoints::DeleteVpcEndpoint.build(context)
          when :describe_domain_auto_tunes
            Aws::ElasticsearchService::Endpoints::DescribeDomainAutoTunes.build(context)
          when :describe_domain_change_progress
            Aws::ElasticsearchService::Endpoints::DescribeDomainChangeProgress.build(context)
          when :describe_elasticsearch_domain
            Aws::ElasticsearchService::Endpoints::DescribeElasticsearchDomain.build(context)
          when :describe_elasticsearch_domain_config
            Aws::ElasticsearchService::Endpoints::DescribeElasticsearchDomainConfig.build(context)
          when :describe_elasticsearch_domains
            Aws::ElasticsearchService::Endpoints::DescribeElasticsearchDomains.build(context)
          when :describe_elasticsearch_instance_type_limits
            Aws::ElasticsearchService::Endpoints::DescribeElasticsearchInstanceTypeLimits.build(context)
          when :describe_inbound_cross_cluster_search_connections
            Aws::ElasticsearchService::Endpoints::DescribeInboundCrossClusterSearchConnections.build(context)
          when :describe_outbound_cross_cluster_search_connections
            Aws::ElasticsearchService::Endpoints::DescribeOutboundCrossClusterSearchConnections.build(context)
          when :describe_packages
            Aws::ElasticsearchService::Endpoints::DescribePackages.build(context)
          when :describe_reserved_elasticsearch_instance_offerings
            Aws::ElasticsearchService::Endpoints::DescribeReservedElasticsearchInstanceOfferings.build(context)
          when :describe_reserved_elasticsearch_instances
            Aws::ElasticsearchService::Endpoints::DescribeReservedElasticsearchInstances.build(context)
          when :describe_vpc_endpoints
            Aws::ElasticsearchService::Endpoints::DescribeVpcEndpoints.build(context)
          when :dissociate_package
            Aws::ElasticsearchService::Endpoints::DissociatePackage.build(context)
          when :get_compatible_elasticsearch_versions
            Aws::ElasticsearchService::Endpoints::GetCompatibleElasticsearchVersions.build(context)
          when :get_package_version_history
            Aws::ElasticsearchService::Endpoints::GetPackageVersionHistory.build(context)
          when :get_upgrade_history
            Aws::ElasticsearchService::Endpoints::GetUpgradeHistory.build(context)
          when :get_upgrade_status
            Aws::ElasticsearchService::Endpoints::GetUpgradeStatus.build(context)
          when :list_domain_names
            Aws::ElasticsearchService::Endpoints::ListDomainNames.build(context)
          when :list_domains_for_package
            Aws::ElasticsearchService::Endpoints::ListDomainsForPackage.build(context)
          when :list_elasticsearch_instance_types
            Aws::ElasticsearchService::Endpoints::ListElasticsearchInstanceTypes.build(context)
          when :list_elasticsearch_versions
            Aws::ElasticsearchService::Endpoints::ListElasticsearchVersions.build(context)
          when :list_packages_for_domain
            Aws::ElasticsearchService::Endpoints::ListPackagesForDomain.build(context)
          when :list_tags
            Aws::ElasticsearchService::Endpoints::ListTags.build(context)
          when :list_vpc_endpoint_access
            Aws::ElasticsearchService::Endpoints::ListVpcEndpointAccess.build(context)
          when :list_vpc_endpoints
            Aws::ElasticsearchService::Endpoints::ListVpcEndpoints.build(context)
          when :list_vpc_endpoints_for_domain
            Aws::ElasticsearchService::Endpoints::ListVpcEndpointsForDomain.build(context)
          when :purchase_reserved_elasticsearch_instance_offering
            Aws::ElasticsearchService::Endpoints::PurchaseReservedElasticsearchInstanceOffering.build(context)
          when :reject_inbound_cross_cluster_search_connection
            Aws::ElasticsearchService::Endpoints::RejectInboundCrossClusterSearchConnection.build(context)
          when :remove_tags
            Aws::ElasticsearchService::Endpoints::RemoveTags.build(context)
          when :revoke_vpc_endpoint_access
            Aws::ElasticsearchService::Endpoints::RevokeVpcEndpointAccess.build(context)
          when :start_elasticsearch_service_software_update
            Aws::ElasticsearchService::Endpoints::StartElasticsearchServiceSoftwareUpdate.build(context)
          when :update_elasticsearch_domain_config
            Aws::ElasticsearchService::Endpoints::UpdateElasticsearchDomainConfig.build(context)
          when :update_package
            Aws::ElasticsearchService::Endpoints::UpdatePackage.build(context)
          when :update_vpc_endpoint
            Aws::ElasticsearchService::Endpoints::UpdateVpcEndpoint.build(context)
          when :upgrade_elasticsearch_domain
            Aws::ElasticsearchService::Endpoints::UpgradeElasticsearchDomain.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
