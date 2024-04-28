# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Deadline
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Deadline::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Deadline::EndpointParameters`'
      ) do |cfg|
        Aws::Deadline::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)

            context[:endpoint_params] = params
            context[:endpoint_properties] = endpoint.properties
          end

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
          when :associate_member_to_farm
            Aws::Deadline::Endpoints::AssociateMemberToFarm.build(context)
          when :associate_member_to_fleet
            Aws::Deadline::Endpoints::AssociateMemberToFleet.build(context)
          when :associate_member_to_job
            Aws::Deadline::Endpoints::AssociateMemberToJob.build(context)
          when :associate_member_to_queue
            Aws::Deadline::Endpoints::AssociateMemberToQueue.build(context)
          when :assume_fleet_role_for_read
            Aws::Deadline::Endpoints::AssumeFleetRoleForRead.build(context)
          when :assume_fleet_role_for_worker
            Aws::Deadline::Endpoints::AssumeFleetRoleForWorker.build(context)
          when :assume_queue_role_for_read
            Aws::Deadline::Endpoints::AssumeQueueRoleForRead.build(context)
          when :assume_queue_role_for_user
            Aws::Deadline::Endpoints::AssumeQueueRoleForUser.build(context)
          when :assume_queue_role_for_worker
            Aws::Deadline::Endpoints::AssumeQueueRoleForWorker.build(context)
          when :batch_get_job_entity
            Aws::Deadline::Endpoints::BatchGetJobEntity.build(context)
          when :copy_job_template
            Aws::Deadline::Endpoints::CopyJobTemplate.build(context)
          when :create_budget
            Aws::Deadline::Endpoints::CreateBudget.build(context)
          when :create_farm
            Aws::Deadline::Endpoints::CreateFarm.build(context)
          when :create_fleet
            Aws::Deadline::Endpoints::CreateFleet.build(context)
          when :create_job
            Aws::Deadline::Endpoints::CreateJob.build(context)
          when :create_license_endpoint
            Aws::Deadline::Endpoints::CreateLicenseEndpoint.build(context)
          when :create_monitor
            Aws::Deadline::Endpoints::CreateMonitor.build(context)
          when :create_queue
            Aws::Deadline::Endpoints::CreateQueue.build(context)
          when :create_queue_environment
            Aws::Deadline::Endpoints::CreateQueueEnvironment.build(context)
          when :create_queue_fleet_association
            Aws::Deadline::Endpoints::CreateQueueFleetAssociation.build(context)
          when :create_storage_profile
            Aws::Deadline::Endpoints::CreateStorageProfile.build(context)
          when :create_worker
            Aws::Deadline::Endpoints::CreateWorker.build(context)
          when :delete_budget
            Aws::Deadline::Endpoints::DeleteBudget.build(context)
          when :delete_farm
            Aws::Deadline::Endpoints::DeleteFarm.build(context)
          when :delete_fleet
            Aws::Deadline::Endpoints::DeleteFleet.build(context)
          when :delete_license_endpoint
            Aws::Deadline::Endpoints::DeleteLicenseEndpoint.build(context)
          when :delete_metered_product
            Aws::Deadline::Endpoints::DeleteMeteredProduct.build(context)
          when :delete_monitor
            Aws::Deadline::Endpoints::DeleteMonitor.build(context)
          when :delete_queue
            Aws::Deadline::Endpoints::DeleteQueue.build(context)
          when :delete_queue_environment
            Aws::Deadline::Endpoints::DeleteQueueEnvironment.build(context)
          when :delete_queue_fleet_association
            Aws::Deadline::Endpoints::DeleteQueueFleetAssociation.build(context)
          when :delete_storage_profile
            Aws::Deadline::Endpoints::DeleteStorageProfile.build(context)
          when :delete_worker
            Aws::Deadline::Endpoints::DeleteWorker.build(context)
          when :disassociate_member_from_farm
            Aws::Deadline::Endpoints::DisassociateMemberFromFarm.build(context)
          when :disassociate_member_from_fleet
            Aws::Deadline::Endpoints::DisassociateMemberFromFleet.build(context)
          when :disassociate_member_from_job
            Aws::Deadline::Endpoints::DisassociateMemberFromJob.build(context)
          when :disassociate_member_from_queue
            Aws::Deadline::Endpoints::DisassociateMemberFromQueue.build(context)
          when :get_budget
            Aws::Deadline::Endpoints::GetBudget.build(context)
          when :get_farm
            Aws::Deadline::Endpoints::GetFarm.build(context)
          when :get_fleet
            Aws::Deadline::Endpoints::GetFleet.build(context)
          when :get_job
            Aws::Deadline::Endpoints::GetJob.build(context)
          when :get_license_endpoint
            Aws::Deadline::Endpoints::GetLicenseEndpoint.build(context)
          when :get_monitor
            Aws::Deadline::Endpoints::GetMonitor.build(context)
          when :get_queue
            Aws::Deadline::Endpoints::GetQueue.build(context)
          when :get_queue_environment
            Aws::Deadline::Endpoints::GetQueueEnvironment.build(context)
          when :get_queue_fleet_association
            Aws::Deadline::Endpoints::GetQueueFleetAssociation.build(context)
          when :get_session
            Aws::Deadline::Endpoints::GetSession.build(context)
          when :get_session_action
            Aws::Deadline::Endpoints::GetSessionAction.build(context)
          when :get_sessions_statistics_aggregation
            Aws::Deadline::Endpoints::GetSessionsStatisticsAggregation.build(context)
          when :get_step
            Aws::Deadline::Endpoints::GetStep.build(context)
          when :get_storage_profile
            Aws::Deadline::Endpoints::GetStorageProfile.build(context)
          when :get_storage_profile_for_queue
            Aws::Deadline::Endpoints::GetStorageProfileForQueue.build(context)
          when :get_task
            Aws::Deadline::Endpoints::GetTask.build(context)
          when :get_worker
            Aws::Deadline::Endpoints::GetWorker.build(context)
          when :list_available_metered_products
            Aws::Deadline::Endpoints::ListAvailableMeteredProducts.build(context)
          when :list_budgets
            Aws::Deadline::Endpoints::ListBudgets.build(context)
          when :list_farm_members
            Aws::Deadline::Endpoints::ListFarmMembers.build(context)
          when :list_farms
            Aws::Deadline::Endpoints::ListFarms.build(context)
          when :list_fleet_members
            Aws::Deadline::Endpoints::ListFleetMembers.build(context)
          when :list_fleets
            Aws::Deadline::Endpoints::ListFleets.build(context)
          when :list_job_members
            Aws::Deadline::Endpoints::ListJobMembers.build(context)
          when :list_jobs
            Aws::Deadline::Endpoints::ListJobs.build(context)
          when :list_license_endpoints
            Aws::Deadline::Endpoints::ListLicenseEndpoints.build(context)
          when :list_metered_products
            Aws::Deadline::Endpoints::ListMeteredProducts.build(context)
          when :list_monitors
            Aws::Deadline::Endpoints::ListMonitors.build(context)
          when :list_queue_environments
            Aws::Deadline::Endpoints::ListQueueEnvironments.build(context)
          when :list_queue_fleet_associations
            Aws::Deadline::Endpoints::ListQueueFleetAssociations.build(context)
          when :list_queue_members
            Aws::Deadline::Endpoints::ListQueueMembers.build(context)
          when :list_queues
            Aws::Deadline::Endpoints::ListQueues.build(context)
          when :list_session_actions
            Aws::Deadline::Endpoints::ListSessionActions.build(context)
          when :list_sessions
            Aws::Deadline::Endpoints::ListSessions.build(context)
          when :list_sessions_for_worker
            Aws::Deadline::Endpoints::ListSessionsForWorker.build(context)
          when :list_step_consumers
            Aws::Deadline::Endpoints::ListStepConsumers.build(context)
          when :list_step_dependencies
            Aws::Deadline::Endpoints::ListStepDependencies.build(context)
          when :list_steps
            Aws::Deadline::Endpoints::ListSteps.build(context)
          when :list_storage_profiles
            Aws::Deadline::Endpoints::ListStorageProfiles.build(context)
          when :list_storage_profiles_for_queue
            Aws::Deadline::Endpoints::ListStorageProfilesForQueue.build(context)
          when :list_tags_for_resource
            Aws::Deadline::Endpoints::ListTagsForResource.build(context)
          when :list_tasks
            Aws::Deadline::Endpoints::ListTasks.build(context)
          when :list_workers
            Aws::Deadline::Endpoints::ListWorkers.build(context)
          when :put_metered_product
            Aws::Deadline::Endpoints::PutMeteredProduct.build(context)
          when :search_jobs
            Aws::Deadline::Endpoints::SearchJobs.build(context)
          when :search_steps
            Aws::Deadline::Endpoints::SearchSteps.build(context)
          when :search_tasks
            Aws::Deadline::Endpoints::SearchTasks.build(context)
          when :search_workers
            Aws::Deadline::Endpoints::SearchWorkers.build(context)
          when :start_sessions_statistics_aggregation
            Aws::Deadline::Endpoints::StartSessionsStatisticsAggregation.build(context)
          when :tag_resource
            Aws::Deadline::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Deadline::Endpoints::UntagResource.build(context)
          when :update_budget
            Aws::Deadline::Endpoints::UpdateBudget.build(context)
          when :update_farm
            Aws::Deadline::Endpoints::UpdateFarm.build(context)
          when :update_fleet
            Aws::Deadline::Endpoints::UpdateFleet.build(context)
          when :update_job
            Aws::Deadline::Endpoints::UpdateJob.build(context)
          when :update_monitor
            Aws::Deadline::Endpoints::UpdateMonitor.build(context)
          when :update_queue
            Aws::Deadline::Endpoints::UpdateQueue.build(context)
          when :update_queue_environment
            Aws::Deadline::Endpoints::UpdateQueueEnvironment.build(context)
          when :update_queue_fleet_association
            Aws::Deadline::Endpoints::UpdateQueueFleetAssociation.build(context)
          when :update_session
            Aws::Deadline::Endpoints::UpdateSession.build(context)
          when :update_step
            Aws::Deadline::Endpoints::UpdateStep.build(context)
          when :update_storage_profile
            Aws::Deadline::Endpoints::UpdateStorageProfile.build(context)
          when :update_task
            Aws::Deadline::Endpoints::UpdateTask.build(context)
          when :update_worker
            Aws::Deadline::Endpoints::UpdateWorker.build(context)
          when :update_worker_schedule
            Aws::Deadline::Endpoints::UpdateWorkerSchedule.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
