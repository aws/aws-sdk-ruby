# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::FinSpaceData
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::FinSpaceData::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::FinSpaceData::EndpointParameters`'
      ) do |cfg|
        Aws::FinSpaceData::EndpointProvider.new
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
          when :associate_user_to_permission_group
            Aws::FinSpaceData::Endpoints::AssociateUserToPermissionGroup.build(context)
          when :create_changeset
            Aws::FinSpaceData::Endpoints::CreateChangeset.build(context)
          when :create_data_view
            Aws::FinSpaceData::Endpoints::CreateDataView.build(context)
          when :create_dataset
            Aws::FinSpaceData::Endpoints::CreateDataset.build(context)
          when :create_permission_group
            Aws::FinSpaceData::Endpoints::CreatePermissionGroup.build(context)
          when :create_user
            Aws::FinSpaceData::Endpoints::CreateUser.build(context)
          when :delete_dataset
            Aws::FinSpaceData::Endpoints::DeleteDataset.build(context)
          when :delete_permission_group
            Aws::FinSpaceData::Endpoints::DeletePermissionGroup.build(context)
          when :disable_user
            Aws::FinSpaceData::Endpoints::DisableUser.build(context)
          when :disassociate_user_from_permission_group
            Aws::FinSpaceData::Endpoints::DisassociateUserFromPermissionGroup.build(context)
          when :enable_user
            Aws::FinSpaceData::Endpoints::EnableUser.build(context)
          when :get_changeset
            Aws::FinSpaceData::Endpoints::GetChangeset.build(context)
          when :get_data_view
            Aws::FinSpaceData::Endpoints::GetDataView.build(context)
          when :get_dataset
            Aws::FinSpaceData::Endpoints::GetDataset.build(context)
          when :get_external_data_view_access_details
            Aws::FinSpaceData::Endpoints::GetExternalDataViewAccessDetails.build(context)
          when :get_permission_group
            Aws::FinSpaceData::Endpoints::GetPermissionGroup.build(context)
          when :get_programmatic_access_credentials
            Aws::FinSpaceData::Endpoints::GetProgrammaticAccessCredentials.build(context)
          when :get_user
            Aws::FinSpaceData::Endpoints::GetUser.build(context)
          when :get_working_location
            Aws::FinSpaceData::Endpoints::GetWorkingLocation.build(context)
          when :list_changesets
            Aws::FinSpaceData::Endpoints::ListChangesets.build(context)
          when :list_data_views
            Aws::FinSpaceData::Endpoints::ListDataViews.build(context)
          when :list_datasets
            Aws::FinSpaceData::Endpoints::ListDatasets.build(context)
          when :list_permission_groups
            Aws::FinSpaceData::Endpoints::ListPermissionGroups.build(context)
          when :list_permission_groups_by_user
            Aws::FinSpaceData::Endpoints::ListPermissionGroupsByUser.build(context)
          when :list_users
            Aws::FinSpaceData::Endpoints::ListUsers.build(context)
          when :list_users_by_permission_group
            Aws::FinSpaceData::Endpoints::ListUsersByPermissionGroup.build(context)
          when :reset_user_password
            Aws::FinSpaceData::Endpoints::ResetUserPassword.build(context)
          when :update_changeset
            Aws::FinSpaceData::Endpoints::UpdateChangeset.build(context)
          when :update_dataset
            Aws::FinSpaceData::Endpoints::UpdateDataset.build(context)
          when :update_permission_group
            Aws::FinSpaceData::Endpoints::UpdatePermissionGroup.build(context)
          when :update_user
            Aws::FinSpaceData::Endpoints::UpdateUser.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
