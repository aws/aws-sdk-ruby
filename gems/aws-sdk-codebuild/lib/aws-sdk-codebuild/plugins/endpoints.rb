# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CodeBuild
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CodeBuild::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CodeBuild::EndpointParameters`'
      ) do |cfg|
        Aws::CodeBuild::EndpointProvider.new
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
          when :batch_delete_builds
            Aws::CodeBuild::Endpoints::BatchDeleteBuilds.build(context)
          when :batch_get_build_batches
            Aws::CodeBuild::Endpoints::BatchGetBuildBatches.build(context)
          when :batch_get_builds
            Aws::CodeBuild::Endpoints::BatchGetBuilds.build(context)
          when :batch_get_projects
            Aws::CodeBuild::Endpoints::BatchGetProjects.build(context)
          when :batch_get_report_groups
            Aws::CodeBuild::Endpoints::BatchGetReportGroups.build(context)
          when :batch_get_reports
            Aws::CodeBuild::Endpoints::BatchGetReports.build(context)
          when :create_project
            Aws::CodeBuild::Endpoints::CreateProject.build(context)
          when :create_report_group
            Aws::CodeBuild::Endpoints::CreateReportGroup.build(context)
          when :create_webhook
            Aws::CodeBuild::Endpoints::CreateWebhook.build(context)
          when :delete_build_batch
            Aws::CodeBuild::Endpoints::DeleteBuildBatch.build(context)
          when :delete_project
            Aws::CodeBuild::Endpoints::DeleteProject.build(context)
          when :delete_report
            Aws::CodeBuild::Endpoints::DeleteReport.build(context)
          when :delete_report_group
            Aws::CodeBuild::Endpoints::DeleteReportGroup.build(context)
          when :delete_resource_policy
            Aws::CodeBuild::Endpoints::DeleteResourcePolicy.build(context)
          when :delete_source_credentials
            Aws::CodeBuild::Endpoints::DeleteSourceCredentials.build(context)
          when :delete_webhook
            Aws::CodeBuild::Endpoints::DeleteWebhook.build(context)
          when :describe_code_coverages
            Aws::CodeBuild::Endpoints::DescribeCodeCoverages.build(context)
          when :describe_test_cases
            Aws::CodeBuild::Endpoints::DescribeTestCases.build(context)
          when :get_report_group_trend
            Aws::CodeBuild::Endpoints::GetReportGroupTrend.build(context)
          when :get_resource_policy
            Aws::CodeBuild::Endpoints::GetResourcePolicy.build(context)
          when :import_source_credentials
            Aws::CodeBuild::Endpoints::ImportSourceCredentials.build(context)
          when :invalidate_project_cache
            Aws::CodeBuild::Endpoints::InvalidateProjectCache.build(context)
          when :list_build_batches
            Aws::CodeBuild::Endpoints::ListBuildBatches.build(context)
          when :list_build_batches_for_project
            Aws::CodeBuild::Endpoints::ListBuildBatchesForProject.build(context)
          when :list_builds
            Aws::CodeBuild::Endpoints::ListBuilds.build(context)
          when :list_builds_for_project
            Aws::CodeBuild::Endpoints::ListBuildsForProject.build(context)
          when :list_curated_environment_images
            Aws::CodeBuild::Endpoints::ListCuratedEnvironmentImages.build(context)
          when :list_projects
            Aws::CodeBuild::Endpoints::ListProjects.build(context)
          when :list_report_groups
            Aws::CodeBuild::Endpoints::ListReportGroups.build(context)
          when :list_reports
            Aws::CodeBuild::Endpoints::ListReports.build(context)
          when :list_reports_for_report_group
            Aws::CodeBuild::Endpoints::ListReportsForReportGroup.build(context)
          when :list_shared_projects
            Aws::CodeBuild::Endpoints::ListSharedProjects.build(context)
          when :list_shared_report_groups
            Aws::CodeBuild::Endpoints::ListSharedReportGroups.build(context)
          when :list_source_credentials
            Aws::CodeBuild::Endpoints::ListSourceCredentials.build(context)
          when :put_resource_policy
            Aws::CodeBuild::Endpoints::PutResourcePolicy.build(context)
          when :retry_build
            Aws::CodeBuild::Endpoints::RetryBuild.build(context)
          when :retry_build_batch
            Aws::CodeBuild::Endpoints::RetryBuildBatch.build(context)
          when :start_build
            Aws::CodeBuild::Endpoints::StartBuild.build(context)
          when :start_build_batch
            Aws::CodeBuild::Endpoints::StartBuildBatch.build(context)
          when :stop_build
            Aws::CodeBuild::Endpoints::StopBuild.build(context)
          when :stop_build_batch
            Aws::CodeBuild::Endpoints::StopBuildBatch.build(context)
          when :update_project
            Aws::CodeBuild::Endpoints::UpdateProject.build(context)
          when :update_project_visibility
            Aws::CodeBuild::Endpoints::UpdateProjectVisibility.build(context)
          when :update_report_group
            Aws::CodeBuild::Endpoints::UpdateReportGroup.build(context)
          when :update_webhook
            Aws::CodeBuild::Endpoints::UpdateWebhook.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
