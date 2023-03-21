# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::WorkDocs
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::WorkDocs::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::WorkDocs::EndpointParameters`'
      ) do |cfg|
        Aws::WorkDocs::EndpointProvider.new
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
          when :abort_document_version_upload
            Aws::WorkDocs::Endpoints::AbortDocumentVersionUpload.build(context)
          when :activate_user
            Aws::WorkDocs::Endpoints::ActivateUser.build(context)
          when :add_resource_permissions
            Aws::WorkDocs::Endpoints::AddResourcePermissions.build(context)
          when :create_comment
            Aws::WorkDocs::Endpoints::CreateComment.build(context)
          when :create_custom_metadata
            Aws::WorkDocs::Endpoints::CreateCustomMetadata.build(context)
          when :create_folder
            Aws::WorkDocs::Endpoints::CreateFolder.build(context)
          when :create_labels
            Aws::WorkDocs::Endpoints::CreateLabels.build(context)
          when :create_notification_subscription
            Aws::WorkDocs::Endpoints::CreateNotificationSubscription.build(context)
          when :create_user
            Aws::WorkDocs::Endpoints::CreateUser.build(context)
          when :deactivate_user
            Aws::WorkDocs::Endpoints::DeactivateUser.build(context)
          when :delete_comment
            Aws::WorkDocs::Endpoints::DeleteComment.build(context)
          when :delete_custom_metadata
            Aws::WorkDocs::Endpoints::DeleteCustomMetadata.build(context)
          when :delete_document
            Aws::WorkDocs::Endpoints::DeleteDocument.build(context)
          when :delete_document_version
            Aws::WorkDocs::Endpoints::DeleteDocumentVersion.build(context)
          when :delete_folder
            Aws::WorkDocs::Endpoints::DeleteFolder.build(context)
          when :delete_folder_contents
            Aws::WorkDocs::Endpoints::DeleteFolderContents.build(context)
          when :delete_labels
            Aws::WorkDocs::Endpoints::DeleteLabels.build(context)
          when :delete_notification_subscription
            Aws::WorkDocs::Endpoints::DeleteNotificationSubscription.build(context)
          when :delete_user
            Aws::WorkDocs::Endpoints::DeleteUser.build(context)
          when :describe_activities
            Aws::WorkDocs::Endpoints::DescribeActivities.build(context)
          when :describe_comments
            Aws::WorkDocs::Endpoints::DescribeComments.build(context)
          when :describe_document_versions
            Aws::WorkDocs::Endpoints::DescribeDocumentVersions.build(context)
          when :describe_folder_contents
            Aws::WorkDocs::Endpoints::DescribeFolderContents.build(context)
          when :describe_groups
            Aws::WorkDocs::Endpoints::DescribeGroups.build(context)
          when :describe_notification_subscriptions
            Aws::WorkDocs::Endpoints::DescribeNotificationSubscriptions.build(context)
          when :describe_resource_permissions
            Aws::WorkDocs::Endpoints::DescribeResourcePermissions.build(context)
          when :describe_root_folders
            Aws::WorkDocs::Endpoints::DescribeRootFolders.build(context)
          when :describe_users
            Aws::WorkDocs::Endpoints::DescribeUsers.build(context)
          when :get_current_user
            Aws::WorkDocs::Endpoints::GetCurrentUser.build(context)
          when :get_document
            Aws::WorkDocs::Endpoints::GetDocument.build(context)
          when :get_document_path
            Aws::WorkDocs::Endpoints::GetDocumentPath.build(context)
          when :get_document_version
            Aws::WorkDocs::Endpoints::GetDocumentVersion.build(context)
          when :get_folder
            Aws::WorkDocs::Endpoints::GetFolder.build(context)
          when :get_folder_path
            Aws::WorkDocs::Endpoints::GetFolderPath.build(context)
          when :get_resources
            Aws::WorkDocs::Endpoints::GetResources.build(context)
          when :initiate_document_version_upload
            Aws::WorkDocs::Endpoints::InitiateDocumentVersionUpload.build(context)
          when :remove_all_resource_permissions
            Aws::WorkDocs::Endpoints::RemoveAllResourcePermissions.build(context)
          when :remove_resource_permission
            Aws::WorkDocs::Endpoints::RemoveResourcePermission.build(context)
          when :restore_document_versions
            Aws::WorkDocs::Endpoints::RestoreDocumentVersions.build(context)
          when :search_resources
            Aws::WorkDocs::Endpoints::SearchResources.build(context)
          when :update_document
            Aws::WorkDocs::Endpoints::UpdateDocument.build(context)
          when :update_document_version
            Aws::WorkDocs::Endpoints::UpdateDocumentVersion.build(context)
          when :update_folder
            Aws::WorkDocs::Endpoints::UpdateFolder.build(context)
          when :update_user
            Aws::WorkDocs::Endpoints::UpdateUser.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
