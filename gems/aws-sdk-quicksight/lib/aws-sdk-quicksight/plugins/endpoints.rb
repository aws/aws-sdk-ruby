# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::QuickSight
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::QuickSight::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::QuickSight::EndpointParameters`'
      ) do |cfg|
        Aws::QuickSight::EndpointProvider.new
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
          when :cancel_ingestion
            Aws::QuickSight::Endpoints::CancelIngestion.build(context)
          when :create_account_customization
            Aws::QuickSight::Endpoints::CreateAccountCustomization.build(context)
          when :create_account_subscription
            Aws::QuickSight::Endpoints::CreateAccountSubscription.build(context)
          when :create_analysis
            Aws::QuickSight::Endpoints::CreateAnalysis.build(context)
          when :create_dashboard
            Aws::QuickSight::Endpoints::CreateDashboard.build(context)
          when :create_data_set
            Aws::QuickSight::Endpoints::CreateDataSet.build(context)
          when :create_data_source
            Aws::QuickSight::Endpoints::CreateDataSource.build(context)
          when :create_folder
            Aws::QuickSight::Endpoints::CreateFolder.build(context)
          when :create_folder_membership
            Aws::QuickSight::Endpoints::CreateFolderMembership.build(context)
          when :create_group
            Aws::QuickSight::Endpoints::CreateGroup.build(context)
          when :create_group_membership
            Aws::QuickSight::Endpoints::CreateGroupMembership.build(context)
          when :create_iam_policy_assignment
            Aws::QuickSight::Endpoints::CreateIAMPolicyAssignment.build(context)
          when :create_ingestion
            Aws::QuickSight::Endpoints::CreateIngestion.build(context)
          when :create_namespace
            Aws::QuickSight::Endpoints::CreateNamespace.build(context)
          when :create_refresh_schedule
            Aws::QuickSight::Endpoints::CreateRefreshSchedule.build(context)
          when :create_template
            Aws::QuickSight::Endpoints::CreateTemplate.build(context)
          when :create_template_alias
            Aws::QuickSight::Endpoints::CreateTemplateAlias.build(context)
          when :create_theme
            Aws::QuickSight::Endpoints::CreateTheme.build(context)
          when :create_theme_alias
            Aws::QuickSight::Endpoints::CreateThemeAlias.build(context)
          when :create_topic
            Aws::QuickSight::Endpoints::CreateTopic.build(context)
          when :create_topic_refresh_schedule
            Aws::QuickSight::Endpoints::CreateTopicRefreshSchedule.build(context)
          when :create_vpc_connection
            Aws::QuickSight::Endpoints::CreateVPCConnection.build(context)
          when :delete_account_customization
            Aws::QuickSight::Endpoints::DeleteAccountCustomization.build(context)
          when :delete_account_subscription
            Aws::QuickSight::Endpoints::DeleteAccountSubscription.build(context)
          when :delete_analysis
            Aws::QuickSight::Endpoints::DeleteAnalysis.build(context)
          when :delete_dashboard
            Aws::QuickSight::Endpoints::DeleteDashboard.build(context)
          when :delete_data_set
            Aws::QuickSight::Endpoints::DeleteDataSet.build(context)
          when :delete_data_set_refresh_properties
            Aws::QuickSight::Endpoints::DeleteDataSetRefreshProperties.build(context)
          when :delete_data_source
            Aws::QuickSight::Endpoints::DeleteDataSource.build(context)
          when :delete_folder
            Aws::QuickSight::Endpoints::DeleteFolder.build(context)
          when :delete_folder_membership
            Aws::QuickSight::Endpoints::DeleteFolderMembership.build(context)
          when :delete_group
            Aws::QuickSight::Endpoints::DeleteGroup.build(context)
          when :delete_group_membership
            Aws::QuickSight::Endpoints::DeleteGroupMembership.build(context)
          when :delete_iam_policy_assignment
            Aws::QuickSight::Endpoints::DeleteIAMPolicyAssignment.build(context)
          when :delete_namespace
            Aws::QuickSight::Endpoints::DeleteNamespace.build(context)
          when :delete_refresh_schedule
            Aws::QuickSight::Endpoints::DeleteRefreshSchedule.build(context)
          when :delete_template
            Aws::QuickSight::Endpoints::DeleteTemplate.build(context)
          when :delete_template_alias
            Aws::QuickSight::Endpoints::DeleteTemplateAlias.build(context)
          when :delete_theme
            Aws::QuickSight::Endpoints::DeleteTheme.build(context)
          when :delete_theme_alias
            Aws::QuickSight::Endpoints::DeleteThemeAlias.build(context)
          when :delete_topic
            Aws::QuickSight::Endpoints::DeleteTopic.build(context)
          when :delete_topic_refresh_schedule
            Aws::QuickSight::Endpoints::DeleteTopicRefreshSchedule.build(context)
          when :delete_user
            Aws::QuickSight::Endpoints::DeleteUser.build(context)
          when :delete_user_by_principal_id
            Aws::QuickSight::Endpoints::DeleteUserByPrincipalId.build(context)
          when :delete_vpc_connection
            Aws::QuickSight::Endpoints::DeleteVPCConnection.build(context)
          when :describe_account_customization
            Aws::QuickSight::Endpoints::DescribeAccountCustomization.build(context)
          when :describe_account_settings
            Aws::QuickSight::Endpoints::DescribeAccountSettings.build(context)
          when :describe_account_subscription
            Aws::QuickSight::Endpoints::DescribeAccountSubscription.build(context)
          when :describe_analysis
            Aws::QuickSight::Endpoints::DescribeAnalysis.build(context)
          when :describe_analysis_definition
            Aws::QuickSight::Endpoints::DescribeAnalysisDefinition.build(context)
          when :describe_analysis_permissions
            Aws::QuickSight::Endpoints::DescribeAnalysisPermissions.build(context)
          when :describe_asset_bundle_export_job
            Aws::QuickSight::Endpoints::DescribeAssetBundleExportJob.build(context)
          when :describe_asset_bundle_import_job
            Aws::QuickSight::Endpoints::DescribeAssetBundleImportJob.build(context)
          when :describe_dashboard
            Aws::QuickSight::Endpoints::DescribeDashboard.build(context)
          when :describe_dashboard_definition
            Aws::QuickSight::Endpoints::DescribeDashboardDefinition.build(context)
          when :describe_dashboard_permissions
            Aws::QuickSight::Endpoints::DescribeDashboardPermissions.build(context)
          when :describe_data_set
            Aws::QuickSight::Endpoints::DescribeDataSet.build(context)
          when :describe_data_set_permissions
            Aws::QuickSight::Endpoints::DescribeDataSetPermissions.build(context)
          when :describe_data_set_refresh_properties
            Aws::QuickSight::Endpoints::DescribeDataSetRefreshProperties.build(context)
          when :describe_data_source
            Aws::QuickSight::Endpoints::DescribeDataSource.build(context)
          when :describe_data_source_permissions
            Aws::QuickSight::Endpoints::DescribeDataSourcePermissions.build(context)
          when :describe_folder
            Aws::QuickSight::Endpoints::DescribeFolder.build(context)
          when :describe_folder_permissions
            Aws::QuickSight::Endpoints::DescribeFolderPermissions.build(context)
          when :describe_folder_resolved_permissions
            Aws::QuickSight::Endpoints::DescribeFolderResolvedPermissions.build(context)
          when :describe_group
            Aws::QuickSight::Endpoints::DescribeGroup.build(context)
          when :describe_group_membership
            Aws::QuickSight::Endpoints::DescribeGroupMembership.build(context)
          when :describe_iam_policy_assignment
            Aws::QuickSight::Endpoints::DescribeIAMPolicyAssignment.build(context)
          when :describe_ingestion
            Aws::QuickSight::Endpoints::DescribeIngestion.build(context)
          when :describe_ip_restriction
            Aws::QuickSight::Endpoints::DescribeIpRestriction.build(context)
          when :describe_namespace
            Aws::QuickSight::Endpoints::DescribeNamespace.build(context)
          when :describe_refresh_schedule
            Aws::QuickSight::Endpoints::DescribeRefreshSchedule.build(context)
          when :describe_template
            Aws::QuickSight::Endpoints::DescribeTemplate.build(context)
          when :describe_template_alias
            Aws::QuickSight::Endpoints::DescribeTemplateAlias.build(context)
          when :describe_template_definition
            Aws::QuickSight::Endpoints::DescribeTemplateDefinition.build(context)
          when :describe_template_permissions
            Aws::QuickSight::Endpoints::DescribeTemplatePermissions.build(context)
          when :describe_theme
            Aws::QuickSight::Endpoints::DescribeTheme.build(context)
          when :describe_theme_alias
            Aws::QuickSight::Endpoints::DescribeThemeAlias.build(context)
          when :describe_theme_permissions
            Aws::QuickSight::Endpoints::DescribeThemePermissions.build(context)
          when :describe_topic
            Aws::QuickSight::Endpoints::DescribeTopic.build(context)
          when :describe_topic_permissions
            Aws::QuickSight::Endpoints::DescribeTopicPermissions.build(context)
          when :describe_topic_refresh
            Aws::QuickSight::Endpoints::DescribeTopicRefresh.build(context)
          when :describe_topic_refresh_schedule
            Aws::QuickSight::Endpoints::DescribeTopicRefreshSchedule.build(context)
          when :describe_user
            Aws::QuickSight::Endpoints::DescribeUser.build(context)
          when :describe_vpc_connection
            Aws::QuickSight::Endpoints::DescribeVPCConnection.build(context)
          when :generate_embed_url_for_anonymous_user
            Aws::QuickSight::Endpoints::GenerateEmbedUrlForAnonymousUser.build(context)
          when :generate_embed_url_for_registered_user
            Aws::QuickSight::Endpoints::GenerateEmbedUrlForRegisteredUser.build(context)
          when :get_dashboard_embed_url
            Aws::QuickSight::Endpoints::GetDashboardEmbedUrl.build(context)
          when :get_session_embed_url
            Aws::QuickSight::Endpoints::GetSessionEmbedUrl.build(context)
          when :list_analyses
            Aws::QuickSight::Endpoints::ListAnalyses.build(context)
          when :list_asset_bundle_export_jobs
            Aws::QuickSight::Endpoints::ListAssetBundleExportJobs.build(context)
          when :list_asset_bundle_import_jobs
            Aws::QuickSight::Endpoints::ListAssetBundleImportJobs.build(context)
          when :list_dashboard_versions
            Aws::QuickSight::Endpoints::ListDashboardVersions.build(context)
          when :list_dashboards
            Aws::QuickSight::Endpoints::ListDashboards.build(context)
          when :list_data_sets
            Aws::QuickSight::Endpoints::ListDataSets.build(context)
          when :list_data_sources
            Aws::QuickSight::Endpoints::ListDataSources.build(context)
          when :list_folder_members
            Aws::QuickSight::Endpoints::ListFolderMembers.build(context)
          when :list_folders
            Aws::QuickSight::Endpoints::ListFolders.build(context)
          when :list_group_memberships
            Aws::QuickSight::Endpoints::ListGroupMemberships.build(context)
          when :list_groups
            Aws::QuickSight::Endpoints::ListGroups.build(context)
          when :list_iam_policy_assignments
            Aws::QuickSight::Endpoints::ListIAMPolicyAssignments.build(context)
          when :list_iam_policy_assignments_for_user
            Aws::QuickSight::Endpoints::ListIAMPolicyAssignmentsForUser.build(context)
          when :list_ingestions
            Aws::QuickSight::Endpoints::ListIngestions.build(context)
          when :list_namespaces
            Aws::QuickSight::Endpoints::ListNamespaces.build(context)
          when :list_refresh_schedules
            Aws::QuickSight::Endpoints::ListRefreshSchedules.build(context)
          when :list_tags_for_resource
            Aws::QuickSight::Endpoints::ListTagsForResource.build(context)
          when :list_template_aliases
            Aws::QuickSight::Endpoints::ListTemplateAliases.build(context)
          when :list_template_versions
            Aws::QuickSight::Endpoints::ListTemplateVersions.build(context)
          when :list_templates
            Aws::QuickSight::Endpoints::ListTemplates.build(context)
          when :list_theme_aliases
            Aws::QuickSight::Endpoints::ListThemeAliases.build(context)
          when :list_theme_versions
            Aws::QuickSight::Endpoints::ListThemeVersions.build(context)
          when :list_themes
            Aws::QuickSight::Endpoints::ListThemes.build(context)
          when :list_topic_refresh_schedules
            Aws::QuickSight::Endpoints::ListTopicRefreshSchedules.build(context)
          when :list_topics
            Aws::QuickSight::Endpoints::ListTopics.build(context)
          when :list_user_groups
            Aws::QuickSight::Endpoints::ListUserGroups.build(context)
          when :list_users
            Aws::QuickSight::Endpoints::ListUsers.build(context)
          when :list_vpc_connections
            Aws::QuickSight::Endpoints::ListVPCConnections.build(context)
          when :put_data_set_refresh_properties
            Aws::QuickSight::Endpoints::PutDataSetRefreshProperties.build(context)
          when :register_user
            Aws::QuickSight::Endpoints::RegisterUser.build(context)
          when :restore_analysis
            Aws::QuickSight::Endpoints::RestoreAnalysis.build(context)
          when :search_analyses
            Aws::QuickSight::Endpoints::SearchAnalyses.build(context)
          when :search_dashboards
            Aws::QuickSight::Endpoints::SearchDashboards.build(context)
          when :search_data_sets
            Aws::QuickSight::Endpoints::SearchDataSets.build(context)
          when :search_data_sources
            Aws::QuickSight::Endpoints::SearchDataSources.build(context)
          when :search_folders
            Aws::QuickSight::Endpoints::SearchFolders.build(context)
          when :search_groups
            Aws::QuickSight::Endpoints::SearchGroups.build(context)
          when :start_asset_bundle_export_job
            Aws::QuickSight::Endpoints::StartAssetBundleExportJob.build(context)
          when :start_asset_bundle_import_job
            Aws::QuickSight::Endpoints::StartAssetBundleImportJob.build(context)
          when :tag_resource
            Aws::QuickSight::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::QuickSight::Endpoints::UntagResource.build(context)
          when :update_account_customization
            Aws::QuickSight::Endpoints::UpdateAccountCustomization.build(context)
          when :update_account_settings
            Aws::QuickSight::Endpoints::UpdateAccountSettings.build(context)
          when :update_analysis
            Aws::QuickSight::Endpoints::UpdateAnalysis.build(context)
          when :update_analysis_permissions
            Aws::QuickSight::Endpoints::UpdateAnalysisPermissions.build(context)
          when :update_dashboard
            Aws::QuickSight::Endpoints::UpdateDashboard.build(context)
          when :update_dashboard_permissions
            Aws::QuickSight::Endpoints::UpdateDashboardPermissions.build(context)
          when :update_dashboard_published_version
            Aws::QuickSight::Endpoints::UpdateDashboardPublishedVersion.build(context)
          when :update_data_set
            Aws::QuickSight::Endpoints::UpdateDataSet.build(context)
          when :update_data_set_permissions
            Aws::QuickSight::Endpoints::UpdateDataSetPermissions.build(context)
          when :update_data_source
            Aws::QuickSight::Endpoints::UpdateDataSource.build(context)
          when :update_data_source_permissions
            Aws::QuickSight::Endpoints::UpdateDataSourcePermissions.build(context)
          when :update_folder
            Aws::QuickSight::Endpoints::UpdateFolder.build(context)
          when :update_folder_permissions
            Aws::QuickSight::Endpoints::UpdateFolderPermissions.build(context)
          when :update_group
            Aws::QuickSight::Endpoints::UpdateGroup.build(context)
          when :update_iam_policy_assignment
            Aws::QuickSight::Endpoints::UpdateIAMPolicyAssignment.build(context)
          when :update_ip_restriction
            Aws::QuickSight::Endpoints::UpdateIpRestriction.build(context)
          when :update_public_sharing_settings
            Aws::QuickSight::Endpoints::UpdatePublicSharingSettings.build(context)
          when :update_refresh_schedule
            Aws::QuickSight::Endpoints::UpdateRefreshSchedule.build(context)
          when :update_template
            Aws::QuickSight::Endpoints::UpdateTemplate.build(context)
          when :update_template_alias
            Aws::QuickSight::Endpoints::UpdateTemplateAlias.build(context)
          when :update_template_permissions
            Aws::QuickSight::Endpoints::UpdateTemplatePermissions.build(context)
          when :update_theme
            Aws::QuickSight::Endpoints::UpdateTheme.build(context)
          when :update_theme_alias
            Aws::QuickSight::Endpoints::UpdateThemeAlias.build(context)
          when :update_theme_permissions
            Aws::QuickSight::Endpoints::UpdateThemePermissions.build(context)
          when :update_topic
            Aws::QuickSight::Endpoints::UpdateTopic.build(context)
          when :update_topic_permissions
            Aws::QuickSight::Endpoints::UpdateTopicPermissions.build(context)
          when :update_topic_refresh_schedule
            Aws::QuickSight::Endpoints::UpdateTopicRefreshSchedule.build(context)
          when :update_user
            Aws::QuickSight::Endpoints::UpdateUser.build(context)
          when :update_vpc_connection
            Aws::QuickSight::Endpoints::UpdateVPCConnection.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
