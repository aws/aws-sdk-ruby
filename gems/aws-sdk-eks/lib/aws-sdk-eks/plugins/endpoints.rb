# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::EKS
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::EKS::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::EKS::EndpointParameters`'
      ) do |cfg|
        Aws::EKS::EndpointProvider.new
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
          when :associate_encryption_config
            Aws::EKS::Endpoints::AssociateEncryptionConfig.build(context)
          when :associate_identity_provider_config
            Aws::EKS::Endpoints::AssociateIdentityProviderConfig.build(context)
          when :create_addon
            Aws::EKS::Endpoints::CreateAddon.build(context)
          when :create_cluster
            Aws::EKS::Endpoints::CreateCluster.build(context)
          when :create_fargate_profile
            Aws::EKS::Endpoints::CreateFargateProfile.build(context)
          when :create_nodegroup
            Aws::EKS::Endpoints::CreateNodegroup.build(context)
          when :delete_addon
            Aws::EKS::Endpoints::DeleteAddon.build(context)
          when :delete_cluster
            Aws::EKS::Endpoints::DeleteCluster.build(context)
          when :delete_fargate_profile
            Aws::EKS::Endpoints::DeleteFargateProfile.build(context)
          when :delete_nodegroup
            Aws::EKS::Endpoints::DeleteNodegroup.build(context)
          when :deregister_cluster
            Aws::EKS::Endpoints::DeregisterCluster.build(context)
          when :describe_addon
            Aws::EKS::Endpoints::DescribeAddon.build(context)
          when :describe_addon_configuration
            Aws::EKS::Endpoints::DescribeAddonConfiguration.build(context)
          when :describe_addon_versions
            Aws::EKS::Endpoints::DescribeAddonVersions.build(context)
          when :describe_cluster
            Aws::EKS::Endpoints::DescribeCluster.build(context)
          when :describe_fargate_profile
            Aws::EKS::Endpoints::DescribeFargateProfile.build(context)
          when :describe_identity_provider_config
            Aws::EKS::Endpoints::DescribeIdentityProviderConfig.build(context)
          when :describe_nodegroup
            Aws::EKS::Endpoints::DescribeNodegroup.build(context)
          when :describe_update
            Aws::EKS::Endpoints::DescribeUpdate.build(context)
          when :disassociate_identity_provider_config
            Aws::EKS::Endpoints::DisassociateIdentityProviderConfig.build(context)
          when :list_addons
            Aws::EKS::Endpoints::ListAddons.build(context)
          when :list_clusters
            Aws::EKS::Endpoints::ListClusters.build(context)
          when :list_fargate_profiles
            Aws::EKS::Endpoints::ListFargateProfiles.build(context)
          when :list_identity_provider_configs
            Aws::EKS::Endpoints::ListIdentityProviderConfigs.build(context)
          when :list_nodegroups
            Aws::EKS::Endpoints::ListNodegroups.build(context)
          when :list_tags_for_resource
            Aws::EKS::Endpoints::ListTagsForResource.build(context)
          when :list_updates
            Aws::EKS::Endpoints::ListUpdates.build(context)
          when :register_cluster
            Aws::EKS::Endpoints::RegisterCluster.build(context)
          when :tag_resource
            Aws::EKS::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::EKS::Endpoints::UntagResource.build(context)
          when :update_addon
            Aws::EKS::Endpoints::UpdateAddon.build(context)
          when :update_cluster_config
            Aws::EKS::Endpoints::UpdateClusterConfig.build(context)
          when :update_cluster_version
            Aws::EKS::Endpoints::UpdateClusterVersion.build(context)
          when :update_nodegroup_config
            Aws::EKS::Endpoints::UpdateNodegroupConfig.build(context)
          when :update_nodegroup_version
            Aws::EKS::Endpoints::UpdateNodegroupVersion.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
