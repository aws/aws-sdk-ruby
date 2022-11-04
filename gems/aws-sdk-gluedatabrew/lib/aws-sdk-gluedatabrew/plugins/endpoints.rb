# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::GlueDataBrew
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::GlueDataBrew::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::GlueDataBrew::EndpointParameters`'
      ) do |cfg|
        Aws::GlueDataBrew::EndpointProvider.new
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
          when :batch_delete_recipe_version
            Aws::GlueDataBrew::Endpoints::BatchDeleteRecipeVersion.build(context)
          when :create_dataset
            Aws::GlueDataBrew::Endpoints::CreateDataset.build(context)
          when :create_profile_job
            Aws::GlueDataBrew::Endpoints::CreateProfileJob.build(context)
          when :create_project
            Aws::GlueDataBrew::Endpoints::CreateProject.build(context)
          when :create_recipe
            Aws::GlueDataBrew::Endpoints::CreateRecipe.build(context)
          when :create_recipe_job
            Aws::GlueDataBrew::Endpoints::CreateRecipeJob.build(context)
          when :create_ruleset
            Aws::GlueDataBrew::Endpoints::CreateRuleset.build(context)
          when :create_schedule
            Aws::GlueDataBrew::Endpoints::CreateSchedule.build(context)
          when :delete_dataset
            Aws::GlueDataBrew::Endpoints::DeleteDataset.build(context)
          when :delete_job
            Aws::GlueDataBrew::Endpoints::DeleteJob.build(context)
          when :delete_project
            Aws::GlueDataBrew::Endpoints::DeleteProject.build(context)
          when :delete_recipe_version
            Aws::GlueDataBrew::Endpoints::DeleteRecipeVersion.build(context)
          when :delete_ruleset
            Aws::GlueDataBrew::Endpoints::DeleteRuleset.build(context)
          when :delete_schedule
            Aws::GlueDataBrew::Endpoints::DeleteSchedule.build(context)
          when :describe_dataset
            Aws::GlueDataBrew::Endpoints::DescribeDataset.build(context)
          when :describe_job
            Aws::GlueDataBrew::Endpoints::DescribeJob.build(context)
          when :describe_job_run
            Aws::GlueDataBrew::Endpoints::DescribeJobRun.build(context)
          when :describe_project
            Aws::GlueDataBrew::Endpoints::DescribeProject.build(context)
          when :describe_recipe
            Aws::GlueDataBrew::Endpoints::DescribeRecipe.build(context)
          when :describe_ruleset
            Aws::GlueDataBrew::Endpoints::DescribeRuleset.build(context)
          when :describe_schedule
            Aws::GlueDataBrew::Endpoints::DescribeSchedule.build(context)
          when :list_datasets
            Aws::GlueDataBrew::Endpoints::ListDatasets.build(context)
          when :list_job_runs
            Aws::GlueDataBrew::Endpoints::ListJobRuns.build(context)
          when :list_jobs
            Aws::GlueDataBrew::Endpoints::ListJobs.build(context)
          when :list_projects
            Aws::GlueDataBrew::Endpoints::ListProjects.build(context)
          when :list_recipe_versions
            Aws::GlueDataBrew::Endpoints::ListRecipeVersions.build(context)
          when :list_recipes
            Aws::GlueDataBrew::Endpoints::ListRecipes.build(context)
          when :list_rulesets
            Aws::GlueDataBrew::Endpoints::ListRulesets.build(context)
          when :list_schedules
            Aws::GlueDataBrew::Endpoints::ListSchedules.build(context)
          when :list_tags_for_resource
            Aws::GlueDataBrew::Endpoints::ListTagsForResource.build(context)
          when :publish_recipe
            Aws::GlueDataBrew::Endpoints::PublishRecipe.build(context)
          when :send_project_session_action
            Aws::GlueDataBrew::Endpoints::SendProjectSessionAction.build(context)
          when :start_job_run
            Aws::GlueDataBrew::Endpoints::StartJobRun.build(context)
          when :start_project_session
            Aws::GlueDataBrew::Endpoints::StartProjectSession.build(context)
          when :stop_job_run
            Aws::GlueDataBrew::Endpoints::StopJobRun.build(context)
          when :tag_resource
            Aws::GlueDataBrew::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::GlueDataBrew::Endpoints::UntagResource.build(context)
          when :update_dataset
            Aws::GlueDataBrew::Endpoints::UpdateDataset.build(context)
          when :update_profile_job
            Aws::GlueDataBrew::Endpoints::UpdateProfileJob.build(context)
          when :update_project
            Aws::GlueDataBrew::Endpoints::UpdateProject.build(context)
          when :update_recipe
            Aws::GlueDataBrew::Endpoints::UpdateRecipe.build(context)
          when :update_recipe_job
            Aws::GlueDataBrew::Endpoints::UpdateRecipeJob.build(context)
          when :update_ruleset
            Aws::GlueDataBrew::Endpoints::UpdateRuleset.build(context)
          when :update_schedule
            Aws::GlueDataBrew::Endpoints::UpdateSchedule.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
