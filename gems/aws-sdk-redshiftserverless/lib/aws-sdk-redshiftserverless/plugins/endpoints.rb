# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::RedshiftServerless
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::RedshiftServerless::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::RedshiftServerless::EndpointParameters`'
      ) do |cfg|
        Aws::RedshiftServerless::EndpointProvider.new
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
          when :convert_recovery_point_to_snapshot
            Aws::RedshiftServerless::Endpoints::ConvertRecoveryPointToSnapshot.build(context)
          when :create_endpoint_access
            Aws::RedshiftServerless::Endpoints::CreateEndpointAccess.build(context)
          when :create_namespace
            Aws::RedshiftServerless::Endpoints::CreateNamespace.build(context)
          when :create_snapshot
            Aws::RedshiftServerless::Endpoints::CreateSnapshot.build(context)
          when :create_usage_limit
            Aws::RedshiftServerless::Endpoints::CreateUsageLimit.build(context)
          when :create_workgroup
            Aws::RedshiftServerless::Endpoints::CreateWorkgroup.build(context)
          when :delete_endpoint_access
            Aws::RedshiftServerless::Endpoints::DeleteEndpointAccess.build(context)
          when :delete_namespace
            Aws::RedshiftServerless::Endpoints::DeleteNamespace.build(context)
          when :delete_resource_policy
            Aws::RedshiftServerless::Endpoints::DeleteResourcePolicy.build(context)
          when :delete_snapshot
            Aws::RedshiftServerless::Endpoints::DeleteSnapshot.build(context)
          when :delete_usage_limit
            Aws::RedshiftServerless::Endpoints::DeleteUsageLimit.build(context)
          when :delete_workgroup
            Aws::RedshiftServerless::Endpoints::DeleteWorkgroup.build(context)
          when :get_credentials
            Aws::RedshiftServerless::Endpoints::GetCredentials.build(context)
          when :get_endpoint_access
            Aws::RedshiftServerless::Endpoints::GetEndpointAccess.build(context)
          when :get_namespace
            Aws::RedshiftServerless::Endpoints::GetNamespace.build(context)
          when :get_recovery_point
            Aws::RedshiftServerless::Endpoints::GetRecoveryPoint.build(context)
          when :get_resource_policy
            Aws::RedshiftServerless::Endpoints::GetResourcePolicy.build(context)
          when :get_snapshot
            Aws::RedshiftServerless::Endpoints::GetSnapshot.build(context)
          when :get_table_restore_status
            Aws::RedshiftServerless::Endpoints::GetTableRestoreStatus.build(context)
          when :get_usage_limit
            Aws::RedshiftServerless::Endpoints::GetUsageLimit.build(context)
          when :get_workgroup
            Aws::RedshiftServerless::Endpoints::GetWorkgroup.build(context)
          when :list_endpoint_access
            Aws::RedshiftServerless::Endpoints::ListEndpointAccess.build(context)
          when :list_namespaces
            Aws::RedshiftServerless::Endpoints::ListNamespaces.build(context)
          when :list_recovery_points
            Aws::RedshiftServerless::Endpoints::ListRecoveryPoints.build(context)
          when :list_snapshots
            Aws::RedshiftServerless::Endpoints::ListSnapshots.build(context)
          when :list_table_restore_status
            Aws::RedshiftServerless::Endpoints::ListTableRestoreStatus.build(context)
          when :list_tags_for_resource
            Aws::RedshiftServerless::Endpoints::ListTagsForResource.build(context)
          when :list_usage_limits
            Aws::RedshiftServerless::Endpoints::ListUsageLimits.build(context)
          when :list_workgroups
            Aws::RedshiftServerless::Endpoints::ListWorkgroups.build(context)
          when :put_resource_policy
            Aws::RedshiftServerless::Endpoints::PutResourcePolicy.build(context)
          when :restore_from_recovery_point
            Aws::RedshiftServerless::Endpoints::RestoreFromRecoveryPoint.build(context)
          when :restore_from_snapshot
            Aws::RedshiftServerless::Endpoints::RestoreFromSnapshot.build(context)
          when :restore_table_from_snapshot
            Aws::RedshiftServerless::Endpoints::RestoreTableFromSnapshot.build(context)
          when :tag_resource
            Aws::RedshiftServerless::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::RedshiftServerless::Endpoints::UntagResource.build(context)
          when :update_endpoint_access
            Aws::RedshiftServerless::Endpoints::UpdateEndpointAccess.build(context)
          when :update_namespace
            Aws::RedshiftServerless::Endpoints::UpdateNamespace.build(context)
          when :update_snapshot
            Aws::RedshiftServerless::Endpoints::UpdateSnapshot.build(context)
          when :update_usage_limit
            Aws::RedshiftServerless::Endpoints::UpdateUsageLimit.build(context)
          when :update_workgroup
            Aws::RedshiftServerless::Endpoints::UpdateWorkgroup.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
