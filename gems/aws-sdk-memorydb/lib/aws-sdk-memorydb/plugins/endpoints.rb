# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MemoryDB
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::MemoryDB::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::MemoryDB::EndpointParameters`'
      ) do |cfg|
        Aws::MemoryDB::EndpointProvider.new
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
          when :batch_update_cluster
            Aws::MemoryDB::Endpoints::BatchUpdateCluster.build(context)
          when :copy_snapshot
            Aws::MemoryDB::Endpoints::CopySnapshot.build(context)
          when :create_acl
            Aws::MemoryDB::Endpoints::CreateACL.build(context)
          when :create_cluster
            Aws::MemoryDB::Endpoints::CreateCluster.build(context)
          when :create_parameter_group
            Aws::MemoryDB::Endpoints::CreateParameterGroup.build(context)
          when :create_snapshot
            Aws::MemoryDB::Endpoints::CreateSnapshot.build(context)
          when :create_subnet_group
            Aws::MemoryDB::Endpoints::CreateSubnetGroup.build(context)
          when :create_user
            Aws::MemoryDB::Endpoints::CreateUser.build(context)
          when :delete_acl
            Aws::MemoryDB::Endpoints::DeleteACL.build(context)
          when :delete_cluster
            Aws::MemoryDB::Endpoints::DeleteCluster.build(context)
          when :delete_parameter_group
            Aws::MemoryDB::Endpoints::DeleteParameterGroup.build(context)
          when :delete_snapshot
            Aws::MemoryDB::Endpoints::DeleteSnapshot.build(context)
          when :delete_subnet_group
            Aws::MemoryDB::Endpoints::DeleteSubnetGroup.build(context)
          when :delete_user
            Aws::MemoryDB::Endpoints::DeleteUser.build(context)
          when :describe_acls
            Aws::MemoryDB::Endpoints::DescribeACLs.build(context)
          when :describe_clusters
            Aws::MemoryDB::Endpoints::DescribeClusters.build(context)
          when :describe_engine_versions
            Aws::MemoryDB::Endpoints::DescribeEngineVersions.build(context)
          when :describe_events
            Aws::MemoryDB::Endpoints::DescribeEvents.build(context)
          when :describe_parameter_groups
            Aws::MemoryDB::Endpoints::DescribeParameterGroups.build(context)
          when :describe_parameters
            Aws::MemoryDB::Endpoints::DescribeParameters.build(context)
          when :describe_reserved_nodes
            Aws::MemoryDB::Endpoints::DescribeReservedNodes.build(context)
          when :describe_reserved_nodes_offerings
            Aws::MemoryDB::Endpoints::DescribeReservedNodesOfferings.build(context)
          when :describe_service_updates
            Aws::MemoryDB::Endpoints::DescribeServiceUpdates.build(context)
          when :describe_snapshots
            Aws::MemoryDB::Endpoints::DescribeSnapshots.build(context)
          when :describe_subnet_groups
            Aws::MemoryDB::Endpoints::DescribeSubnetGroups.build(context)
          when :describe_users
            Aws::MemoryDB::Endpoints::DescribeUsers.build(context)
          when :failover_shard
            Aws::MemoryDB::Endpoints::FailoverShard.build(context)
          when :list_allowed_node_type_updates
            Aws::MemoryDB::Endpoints::ListAllowedNodeTypeUpdates.build(context)
          when :list_tags
            Aws::MemoryDB::Endpoints::ListTags.build(context)
          when :purchase_reserved_nodes_offering
            Aws::MemoryDB::Endpoints::PurchaseReservedNodesOffering.build(context)
          when :reset_parameter_group
            Aws::MemoryDB::Endpoints::ResetParameterGroup.build(context)
          when :tag_resource
            Aws::MemoryDB::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::MemoryDB::Endpoints::UntagResource.build(context)
          when :update_acl
            Aws::MemoryDB::Endpoints::UpdateACL.build(context)
          when :update_cluster
            Aws::MemoryDB::Endpoints::UpdateCluster.build(context)
          when :update_parameter_group
            Aws::MemoryDB::Endpoints::UpdateParameterGroup.build(context)
          when :update_subnet_group
            Aws::MemoryDB::Endpoints::UpdateSubnetGroup.build(context)
          when :update_user
            Aws::MemoryDB::Endpoints::UpdateUser.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
