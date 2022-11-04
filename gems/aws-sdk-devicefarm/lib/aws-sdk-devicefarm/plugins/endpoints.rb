# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DeviceFarm
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::DeviceFarm::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::DeviceFarm::EndpointParameters`'
      ) do |cfg|
        Aws::DeviceFarm::EndpointProvider.new
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
          when :create_device_pool
            Aws::DeviceFarm::Endpoints::CreateDevicePool.build(context)
          when :create_instance_profile
            Aws::DeviceFarm::Endpoints::CreateInstanceProfile.build(context)
          when :create_network_profile
            Aws::DeviceFarm::Endpoints::CreateNetworkProfile.build(context)
          when :create_project
            Aws::DeviceFarm::Endpoints::CreateProject.build(context)
          when :create_remote_access_session
            Aws::DeviceFarm::Endpoints::CreateRemoteAccessSession.build(context)
          when :create_test_grid_project
            Aws::DeviceFarm::Endpoints::CreateTestGridProject.build(context)
          when :create_test_grid_url
            Aws::DeviceFarm::Endpoints::CreateTestGridUrl.build(context)
          when :create_upload
            Aws::DeviceFarm::Endpoints::CreateUpload.build(context)
          when :create_vpce_configuration
            Aws::DeviceFarm::Endpoints::CreateVPCEConfiguration.build(context)
          when :delete_device_pool
            Aws::DeviceFarm::Endpoints::DeleteDevicePool.build(context)
          when :delete_instance_profile
            Aws::DeviceFarm::Endpoints::DeleteInstanceProfile.build(context)
          when :delete_network_profile
            Aws::DeviceFarm::Endpoints::DeleteNetworkProfile.build(context)
          when :delete_project
            Aws::DeviceFarm::Endpoints::DeleteProject.build(context)
          when :delete_remote_access_session
            Aws::DeviceFarm::Endpoints::DeleteRemoteAccessSession.build(context)
          when :delete_run
            Aws::DeviceFarm::Endpoints::DeleteRun.build(context)
          when :delete_test_grid_project
            Aws::DeviceFarm::Endpoints::DeleteTestGridProject.build(context)
          when :delete_upload
            Aws::DeviceFarm::Endpoints::DeleteUpload.build(context)
          when :delete_vpce_configuration
            Aws::DeviceFarm::Endpoints::DeleteVPCEConfiguration.build(context)
          when :get_account_settings
            Aws::DeviceFarm::Endpoints::GetAccountSettings.build(context)
          when :get_device
            Aws::DeviceFarm::Endpoints::GetDevice.build(context)
          when :get_device_instance
            Aws::DeviceFarm::Endpoints::GetDeviceInstance.build(context)
          when :get_device_pool
            Aws::DeviceFarm::Endpoints::GetDevicePool.build(context)
          when :get_device_pool_compatibility
            Aws::DeviceFarm::Endpoints::GetDevicePoolCompatibility.build(context)
          when :get_instance_profile
            Aws::DeviceFarm::Endpoints::GetInstanceProfile.build(context)
          when :get_job
            Aws::DeviceFarm::Endpoints::GetJob.build(context)
          when :get_network_profile
            Aws::DeviceFarm::Endpoints::GetNetworkProfile.build(context)
          when :get_offering_status
            Aws::DeviceFarm::Endpoints::GetOfferingStatus.build(context)
          when :get_project
            Aws::DeviceFarm::Endpoints::GetProject.build(context)
          when :get_remote_access_session
            Aws::DeviceFarm::Endpoints::GetRemoteAccessSession.build(context)
          when :get_run
            Aws::DeviceFarm::Endpoints::GetRun.build(context)
          when :get_suite
            Aws::DeviceFarm::Endpoints::GetSuite.build(context)
          when :get_test
            Aws::DeviceFarm::Endpoints::GetTest.build(context)
          when :get_test_grid_project
            Aws::DeviceFarm::Endpoints::GetTestGridProject.build(context)
          when :get_test_grid_session
            Aws::DeviceFarm::Endpoints::GetTestGridSession.build(context)
          when :get_upload
            Aws::DeviceFarm::Endpoints::GetUpload.build(context)
          when :get_vpce_configuration
            Aws::DeviceFarm::Endpoints::GetVPCEConfiguration.build(context)
          when :install_to_remote_access_session
            Aws::DeviceFarm::Endpoints::InstallToRemoteAccessSession.build(context)
          when :list_artifacts
            Aws::DeviceFarm::Endpoints::ListArtifacts.build(context)
          when :list_device_instances
            Aws::DeviceFarm::Endpoints::ListDeviceInstances.build(context)
          when :list_device_pools
            Aws::DeviceFarm::Endpoints::ListDevicePools.build(context)
          when :list_devices
            Aws::DeviceFarm::Endpoints::ListDevices.build(context)
          when :list_instance_profiles
            Aws::DeviceFarm::Endpoints::ListInstanceProfiles.build(context)
          when :list_jobs
            Aws::DeviceFarm::Endpoints::ListJobs.build(context)
          when :list_network_profiles
            Aws::DeviceFarm::Endpoints::ListNetworkProfiles.build(context)
          when :list_offering_promotions
            Aws::DeviceFarm::Endpoints::ListOfferingPromotions.build(context)
          when :list_offering_transactions
            Aws::DeviceFarm::Endpoints::ListOfferingTransactions.build(context)
          when :list_offerings
            Aws::DeviceFarm::Endpoints::ListOfferings.build(context)
          when :list_projects
            Aws::DeviceFarm::Endpoints::ListProjects.build(context)
          when :list_remote_access_sessions
            Aws::DeviceFarm::Endpoints::ListRemoteAccessSessions.build(context)
          when :list_runs
            Aws::DeviceFarm::Endpoints::ListRuns.build(context)
          when :list_samples
            Aws::DeviceFarm::Endpoints::ListSamples.build(context)
          when :list_suites
            Aws::DeviceFarm::Endpoints::ListSuites.build(context)
          when :list_tags_for_resource
            Aws::DeviceFarm::Endpoints::ListTagsForResource.build(context)
          when :list_test_grid_projects
            Aws::DeviceFarm::Endpoints::ListTestGridProjects.build(context)
          when :list_test_grid_session_actions
            Aws::DeviceFarm::Endpoints::ListTestGridSessionActions.build(context)
          when :list_test_grid_session_artifacts
            Aws::DeviceFarm::Endpoints::ListTestGridSessionArtifacts.build(context)
          when :list_test_grid_sessions
            Aws::DeviceFarm::Endpoints::ListTestGridSessions.build(context)
          when :list_tests
            Aws::DeviceFarm::Endpoints::ListTests.build(context)
          when :list_unique_problems
            Aws::DeviceFarm::Endpoints::ListUniqueProblems.build(context)
          when :list_uploads
            Aws::DeviceFarm::Endpoints::ListUploads.build(context)
          when :list_vpce_configurations
            Aws::DeviceFarm::Endpoints::ListVPCEConfigurations.build(context)
          when :purchase_offering
            Aws::DeviceFarm::Endpoints::PurchaseOffering.build(context)
          when :renew_offering
            Aws::DeviceFarm::Endpoints::RenewOffering.build(context)
          when :schedule_run
            Aws::DeviceFarm::Endpoints::ScheduleRun.build(context)
          when :stop_job
            Aws::DeviceFarm::Endpoints::StopJob.build(context)
          when :stop_remote_access_session
            Aws::DeviceFarm::Endpoints::StopRemoteAccessSession.build(context)
          when :stop_run
            Aws::DeviceFarm::Endpoints::StopRun.build(context)
          when :tag_resource
            Aws::DeviceFarm::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::DeviceFarm::Endpoints::UntagResource.build(context)
          when :update_device_instance
            Aws::DeviceFarm::Endpoints::UpdateDeviceInstance.build(context)
          when :update_device_pool
            Aws::DeviceFarm::Endpoints::UpdateDevicePool.build(context)
          when :update_instance_profile
            Aws::DeviceFarm::Endpoints::UpdateInstanceProfile.build(context)
          when :update_network_profile
            Aws::DeviceFarm::Endpoints::UpdateNetworkProfile.build(context)
          when :update_project
            Aws::DeviceFarm::Endpoints::UpdateProject.build(context)
          when :update_test_grid_project
            Aws::DeviceFarm::Endpoints::UpdateTestGridProject.build(context)
          when :update_upload
            Aws::DeviceFarm::Endpoints::UpdateUpload.build(context)
          when :update_vpce_configuration
            Aws::DeviceFarm::Endpoints::UpdateVPCEConfiguration.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
