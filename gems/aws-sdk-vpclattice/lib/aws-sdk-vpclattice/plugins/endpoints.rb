# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::VPCLattice
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::VPCLattice::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::VPCLattice::EndpointParameters`'
      ) do |cfg|
        Aws::VPCLattice::EndpointProvider.new
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
          when :batch_update_rule
            Aws::VPCLattice::Endpoints::BatchUpdateRule.build(context)
          when :create_access_log_subscription
            Aws::VPCLattice::Endpoints::CreateAccessLogSubscription.build(context)
          when :create_listener
            Aws::VPCLattice::Endpoints::CreateListener.build(context)
          when :create_rule
            Aws::VPCLattice::Endpoints::CreateRule.build(context)
          when :create_service
            Aws::VPCLattice::Endpoints::CreateService.build(context)
          when :create_service_network
            Aws::VPCLattice::Endpoints::CreateServiceNetwork.build(context)
          when :create_service_network_service_association
            Aws::VPCLattice::Endpoints::CreateServiceNetworkServiceAssociation.build(context)
          when :create_service_network_vpc_association
            Aws::VPCLattice::Endpoints::CreateServiceNetworkVpcAssociation.build(context)
          when :create_target_group
            Aws::VPCLattice::Endpoints::CreateTargetGroup.build(context)
          when :delete_access_log_subscription
            Aws::VPCLattice::Endpoints::DeleteAccessLogSubscription.build(context)
          when :delete_auth_policy
            Aws::VPCLattice::Endpoints::DeleteAuthPolicy.build(context)
          when :delete_listener
            Aws::VPCLattice::Endpoints::DeleteListener.build(context)
          when :delete_resource_policy
            Aws::VPCLattice::Endpoints::DeleteResourcePolicy.build(context)
          when :delete_rule
            Aws::VPCLattice::Endpoints::DeleteRule.build(context)
          when :delete_service
            Aws::VPCLattice::Endpoints::DeleteService.build(context)
          when :delete_service_network
            Aws::VPCLattice::Endpoints::DeleteServiceNetwork.build(context)
          when :delete_service_network_service_association
            Aws::VPCLattice::Endpoints::DeleteServiceNetworkServiceAssociation.build(context)
          when :delete_service_network_vpc_association
            Aws::VPCLattice::Endpoints::DeleteServiceNetworkVpcAssociation.build(context)
          when :delete_target_group
            Aws::VPCLattice::Endpoints::DeleteTargetGroup.build(context)
          when :deregister_targets
            Aws::VPCLattice::Endpoints::DeregisterTargets.build(context)
          when :get_access_log_subscription
            Aws::VPCLattice::Endpoints::GetAccessLogSubscription.build(context)
          when :get_auth_policy
            Aws::VPCLattice::Endpoints::GetAuthPolicy.build(context)
          when :get_listener
            Aws::VPCLattice::Endpoints::GetListener.build(context)
          when :get_resource_policy
            Aws::VPCLattice::Endpoints::GetResourcePolicy.build(context)
          when :get_rule
            Aws::VPCLattice::Endpoints::GetRule.build(context)
          when :get_service
            Aws::VPCLattice::Endpoints::GetService.build(context)
          when :get_service_network
            Aws::VPCLattice::Endpoints::GetServiceNetwork.build(context)
          when :get_service_network_service_association
            Aws::VPCLattice::Endpoints::GetServiceNetworkServiceAssociation.build(context)
          when :get_service_network_vpc_association
            Aws::VPCLattice::Endpoints::GetServiceNetworkVpcAssociation.build(context)
          when :get_target_group
            Aws::VPCLattice::Endpoints::GetTargetGroup.build(context)
          when :list_access_log_subscriptions
            Aws::VPCLattice::Endpoints::ListAccessLogSubscriptions.build(context)
          when :list_listeners
            Aws::VPCLattice::Endpoints::ListListeners.build(context)
          when :list_rules
            Aws::VPCLattice::Endpoints::ListRules.build(context)
          when :list_service_network_service_associations
            Aws::VPCLattice::Endpoints::ListServiceNetworkServiceAssociations.build(context)
          when :list_service_network_vpc_associations
            Aws::VPCLattice::Endpoints::ListServiceNetworkVpcAssociations.build(context)
          when :list_service_networks
            Aws::VPCLattice::Endpoints::ListServiceNetworks.build(context)
          when :list_services
            Aws::VPCLattice::Endpoints::ListServices.build(context)
          when :list_tags_for_resource
            Aws::VPCLattice::Endpoints::ListTagsForResource.build(context)
          when :list_target_groups
            Aws::VPCLattice::Endpoints::ListTargetGroups.build(context)
          when :list_targets
            Aws::VPCLattice::Endpoints::ListTargets.build(context)
          when :put_auth_policy
            Aws::VPCLattice::Endpoints::PutAuthPolicy.build(context)
          when :put_resource_policy
            Aws::VPCLattice::Endpoints::PutResourcePolicy.build(context)
          when :register_targets
            Aws::VPCLattice::Endpoints::RegisterTargets.build(context)
          when :tag_resource
            Aws::VPCLattice::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::VPCLattice::Endpoints::UntagResource.build(context)
          when :update_access_log_subscription
            Aws::VPCLattice::Endpoints::UpdateAccessLogSubscription.build(context)
          when :update_listener
            Aws::VPCLattice::Endpoints::UpdateListener.build(context)
          when :update_rule
            Aws::VPCLattice::Endpoints::UpdateRule.build(context)
          when :update_service
            Aws::VPCLattice::Endpoints::UpdateService.build(context)
          when :update_service_network
            Aws::VPCLattice::Endpoints::UpdateServiceNetwork.build(context)
          when :update_service_network_vpc_association
            Aws::VPCLattice::Endpoints::UpdateServiceNetworkVpcAssociation.build(context)
          when :update_target_group
            Aws::VPCLattice::Endpoints::UpdateTargetGroup.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
