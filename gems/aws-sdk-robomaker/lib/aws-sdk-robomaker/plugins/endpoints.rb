# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::RoboMaker
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::RoboMaker::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::RoboMaker::EndpointParameters`'
      ) do |cfg|
        Aws::RoboMaker::EndpointProvider.new
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
          when :batch_delete_worlds
            Aws::RoboMaker::Endpoints::BatchDeleteWorlds.build(context)
          when :batch_describe_simulation_job
            Aws::RoboMaker::Endpoints::BatchDescribeSimulationJob.build(context)
          when :cancel_deployment_job
            Aws::RoboMaker::Endpoints::CancelDeploymentJob.build(context)
          when :cancel_simulation_job
            Aws::RoboMaker::Endpoints::CancelSimulationJob.build(context)
          when :cancel_simulation_job_batch
            Aws::RoboMaker::Endpoints::CancelSimulationJobBatch.build(context)
          when :cancel_world_export_job
            Aws::RoboMaker::Endpoints::CancelWorldExportJob.build(context)
          when :cancel_world_generation_job
            Aws::RoboMaker::Endpoints::CancelWorldGenerationJob.build(context)
          when :create_deployment_job
            Aws::RoboMaker::Endpoints::CreateDeploymentJob.build(context)
          when :create_fleet
            Aws::RoboMaker::Endpoints::CreateFleet.build(context)
          when :create_robot
            Aws::RoboMaker::Endpoints::CreateRobot.build(context)
          when :create_robot_application
            Aws::RoboMaker::Endpoints::CreateRobotApplication.build(context)
          when :create_robot_application_version
            Aws::RoboMaker::Endpoints::CreateRobotApplicationVersion.build(context)
          when :create_simulation_application
            Aws::RoboMaker::Endpoints::CreateSimulationApplication.build(context)
          when :create_simulation_application_version
            Aws::RoboMaker::Endpoints::CreateSimulationApplicationVersion.build(context)
          when :create_simulation_job
            Aws::RoboMaker::Endpoints::CreateSimulationJob.build(context)
          when :create_world_export_job
            Aws::RoboMaker::Endpoints::CreateWorldExportJob.build(context)
          when :create_world_generation_job
            Aws::RoboMaker::Endpoints::CreateWorldGenerationJob.build(context)
          when :create_world_template
            Aws::RoboMaker::Endpoints::CreateWorldTemplate.build(context)
          when :delete_fleet
            Aws::RoboMaker::Endpoints::DeleteFleet.build(context)
          when :delete_robot
            Aws::RoboMaker::Endpoints::DeleteRobot.build(context)
          when :delete_robot_application
            Aws::RoboMaker::Endpoints::DeleteRobotApplication.build(context)
          when :delete_simulation_application
            Aws::RoboMaker::Endpoints::DeleteSimulationApplication.build(context)
          when :delete_world_template
            Aws::RoboMaker::Endpoints::DeleteWorldTemplate.build(context)
          when :deregister_robot
            Aws::RoboMaker::Endpoints::DeregisterRobot.build(context)
          when :describe_deployment_job
            Aws::RoboMaker::Endpoints::DescribeDeploymentJob.build(context)
          when :describe_fleet
            Aws::RoboMaker::Endpoints::DescribeFleet.build(context)
          when :describe_robot
            Aws::RoboMaker::Endpoints::DescribeRobot.build(context)
          when :describe_robot_application
            Aws::RoboMaker::Endpoints::DescribeRobotApplication.build(context)
          when :describe_simulation_application
            Aws::RoboMaker::Endpoints::DescribeSimulationApplication.build(context)
          when :describe_simulation_job
            Aws::RoboMaker::Endpoints::DescribeSimulationJob.build(context)
          when :describe_simulation_job_batch
            Aws::RoboMaker::Endpoints::DescribeSimulationJobBatch.build(context)
          when :describe_world
            Aws::RoboMaker::Endpoints::DescribeWorld.build(context)
          when :describe_world_export_job
            Aws::RoboMaker::Endpoints::DescribeWorldExportJob.build(context)
          when :describe_world_generation_job
            Aws::RoboMaker::Endpoints::DescribeWorldGenerationJob.build(context)
          when :describe_world_template
            Aws::RoboMaker::Endpoints::DescribeWorldTemplate.build(context)
          when :get_world_template_body
            Aws::RoboMaker::Endpoints::GetWorldTemplateBody.build(context)
          when :list_deployment_jobs
            Aws::RoboMaker::Endpoints::ListDeploymentJobs.build(context)
          when :list_fleets
            Aws::RoboMaker::Endpoints::ListFleets.build(context)
          when :list_robot_applications
            Aws::RoboMaker::Endpoints::ListRobotApplications.build(context)
          when :list_robots
            Aws::RoboMaker::Endpoints::ListRobots.build(context)
          when :list_simulation_applications
            Aws::RoboMaker::Endpoints::ListSimulationApplications.build(context)
          when :list_simulation_job_batches
            Aws::RoboMaker::Endpoints::ListSimulationJobBatches.build(context)
          when :list_simulation_jobs
            Aws::RoboMaker::Endpoints::ListSimulationJobs.build(context)
          when :list_tags_for_resource
            Aws::RoboMaker::Endpoints::ListTagsForResource.build(context)
          when :list_world_export_jobs
            Aws::RoboMaker::Endpoints::ListWorldExportJobs.build(context)
          when :list_world_generation_jobs
            Aws::RoboMaker::Endpoints::ListWorldGenerationJobs.build(context)
          when :list_world_templates
            Aws::RoboMaker::Endpoints::ListWorldTemplates.build(context)
          when :list_worlds
            Aws::RoboMaker::Endpoints::ListWorlds.build(context)
          when :register_robot
            Aws::RoboMaker::Endpoints::RegisterRobot.build(context)
          when :restart_simulation_job
            Aws::RoboMaker::Endpoints::RestartSimulationJob.build(context)
          when :start_simulation_job_batch
            Aws::RoboMaker::Endpoints::StartSimulationJobBatch.build(context)
          when :sync_deployment_job
            Aws::RoboMaker::Endpoints::SyncDeploymentJob.build(context)
          when :tag_resource
            Aws::RoboMaker::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::RoboMaker::Endpoints::UntagResource.build(context)
          when :update_robot_application
            Aws::RoboMaker::Endpoints::UpdateRobotApplication.build(context)
          when :update_simulation_application
            Aws::RoboMaker::Endpoints::UpdateSimulationApplication.build(context)
          when :update_world_template
            Aws::RoboMaker::Endpoints::UpdateWorldTemplate.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
