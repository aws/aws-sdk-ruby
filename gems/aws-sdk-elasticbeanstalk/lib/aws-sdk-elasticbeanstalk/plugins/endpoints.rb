# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ElasticBeanstalk
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ElasticBeanstalk::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ElasticBeanstalk::EndpointParameters`'
      ) do |cfg|
        Aws::ElasticBeanstalk::EndpointProvider.new
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
          when :abort_environment_update
            Aws::ElasticBeanstalk::Endpoints::AbortEnvironmentUpdate.build(context)
          when :apply_environment_managed_action
            Aws::ElasticBeanstalk::Endpoints::ApplyEnvironmentManagedAction.build(context)
          when :associate_environment_operations_role
            Aws::ElasticBeanstalk::Endpoints::AssociateEnvironmentOperationsRole.build(context)
          when :check_dns_availability
            Aws::ElasticBeanstalk::Endpoints::CheckDNSAvailability.build(context)
          when :compose_environments
            Aws::ElasticBeanstalk::Endpoints::ComposeEnvironments.build(context)
          when :create_application
            Aws::ElasticBeanstalk::Endpoints::CreateApplication.build(context)
          when :create_application_version
            Aws::ElasticBeanstalk::Endpoints::CreateApplicationVersion.build(context)
          when :create_configuration_template
            Aws::ElasticBeanstalk::Endpoints::CreateConfigurationTemplate.build(context)
          when :create_environment
            Aws::ElasticBeanstalk::Endpoints::CreateEnvironment.build(context)
          when :create_platform_version
            Aws::ElasticBeanstalk::Endpoints::CreatePlatformVersion.build(context)
          when :create_storage_location
            Aws::ElasticBeanstalk::Endpoints::CreateStorageLocation.build(context)
          when :delete_application
            Aws::ElasticBeanstalk::Endpoints::DeleteApplication.build(context)
          when :delete_application_version
            Aws::ElasticBeanstalk::Endpoints::DeleteApplicationVersion.build(context)
          when :delete_configuration_template
            Aws::ElasticBeanstalk::Endpoints::DeleteConfigurationTemplate.build(context)
          when :delete_environment_configuration
            Aws::ElasticBeanstalk::Endpoints::DeleteEnvironmentConfiguration.build(context)
          when :delete_platform_version
            Aws::ElasticBeanstalk::Endpoints::DeletePlatformVersion.build(context)
          when :describe_account_attributes
            Aws::ElasticBeanstalk::Endpoints::DescribeAccountAttributes.build(context)
          when :describe_application_versions
            Aws::ElasticBeanstalk::Endpoints::DescribeApplicationVersions.build(context)
          when :describe_applications
            Aws::ElasticBeanstalk::Endpoints::DescribeApplications.build(context)
          when :describe_configuration_options
            Aws::ElasticBeanstalk::Endpoints::DescribeConfigurationOptions.build(context)
          when :describe_configuration_settings
            Aws::ElasticBeanstalk::Endpoints::DescribeConfigurationSettings.build(context)
          when :describe_environment_health
            Aws::ElasticBeanstalk::Endpoints::DescribeEnvironmentHealth.build(context)
          when :describe_environment_managed_action_history
            Aws::ElasticBeanstalk::Endpoints::DescribeEnvironmentManagedActionHistory.build(context)
          when :describe_environment_managed_actions
            Aws::ElasticBeanstalk::Endpoints::DescribeEnvironmentManagedActions.build(context)
          when :describe_environment_resources
            Aws::ElasticBeanstalk::Endpoints::DescribeEnvironmentResources.build(context)
          when :describe_environments
            Aws::ElasticBeanstalk::Endpoints::DescribeEnvironments.build(context)
          when :describe_events
            Aws::ElasticBeanstalk::Endpoints::DescribeEvents.build(context)
          when :describe_instances_health
            Aws::ElasticBeanstalk::Endpoints::DescribeInstancesHealth.build(context)
          when :describe_platform_version
            Aws::ElasticBeanstalk::Endpoints::DescribePlatformVersion.build(context)
          when :disassociate_environment_operations_role
            Aws::ElasticBeanstalk::Endpoints::DisassociateEnvironmentOperationsRole.build(context)
          when :list_available_solution_stacks
            Aws::ElasticBeanstalk::Endpoints::ListAvailableSolutionStacks.build(context)
          when :list_platform_branches
            Aws::ElasticBeanstalk::Endpoints::ListPlatformBranches.build(context)
          when :list_platform_versions
            Aws::ElasticBeanstalk::Endpoints::ListPlatformVersions.build(context)
          when :list_tags_for_resource
            Aws::ElasticBeanstalk::Endpoints::ListTagsForResource.build(context)
          when :rebuild_environment
            Aws::ElasticBeanstalk::Endpoints::RebuildEnvironment.build(context)
          when :request_environment_info
            Aws::ElasticBeanstalk::Endpoints::RequestEnvironmentInfo.build(context)
          when :restart_app_server
            Aws::ElasticBeanstalk::Endpoints::RestartAppServer.build(context)
          when :retrieve_environment_info
            Aws::ElasticBeanstalk::Endpoints::RetrieveEnvironmentInfo.build(context)
          when :swap_environment_cnames
            Aws::ElasticBeanstalk::Endpoints::SwapEnvironmentCNAMEs.build(context)
          when :terminate_environment
            Aws::ElasticBeanstalk::Endpoints::TerminateEnvironment.build(context)
          when :update_application
            Aws::ElasticBeanstalk::Endpoints::UpdateApplication.build(context)
          when :update_application_resource_lifecycle
            Aws::ElasticBeanstalk::Endpoints::UpdateApplicationResourceLifecycle.build(context)
          when :update_application_version
            Aws::ElasticBeanstalk::Endpoints::UpdateApplicationVersion.build(context)
          when :update_configuration_template
            Aws::ElasticBeanstalk::Endpoints::UpdateConfigurationTemplate.build(context)
          when :update_environment
            Aws::ElasticBeanstalk::Endpoints::UpdateEnvironment.build(context)
          when :update_tags_for_resource
            Aws::ElasticBeanstalk::Endpoints::UpdateTagsForResource.build(context)
          when :validate_configuration_settings
            Aws::ElasticBeanstalk::Endpoints::ValidateConfigurationSettings.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
