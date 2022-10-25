# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MigrationHub
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::MigrationHub::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::MigrationHub::EndpointParameters`'
      ) do |cfg|
        Aws::MigrationHub::EndpointProvider.new
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
          when :associate_created_artifact
            Aws::MigrationHub::Endpoints::AssociateCreatedArtifact.build(context)
          when :associate_discovered_resource
            Aws::MigrationHub::Endpoints::AssociateDiscoveredResource.build(context)
          when :create_progress_update_stream
            Aws::MigrationHub::Endpoints::CreateProgressUpdateStream.build(context)
          when :delete_progress_update_stream
            Aws::MigrationHub::Endpoints::DeleteProgressUpdateStream.build(context)
          when :describe_application_state
            Aws::MigrationHub::Endpoints::DescribeApplicationState.build(context)
          when :describe_migration_task
            Aws::MigrationHub::Endpoints::DescribeMigrationTask.build(context)
          when :disassociate_created_artifact
            Aws::MigrationHub::Endpoints::DisassociateCreatedArtifact.build(context)
          when :disassociate_discovered_resource
            Aws::MigrationHub::Endpoints::DisassociateDiscoveredResource.build(context)
          when :import_migration_task
            Aws::MigrationHub::Endpoints::ImportMigrationTask.build(context)
          when :list_application_states
            Aws::MigrationHub::Endpoints::ListApplicationStates.build(context)
          when :list_created_artifacts
            Aws::MigrationHub::Endpoints::ListCreatedArtifacts.build(context)
          when :list_discovered_resources
            Aws::MigrationHub::Endpoints::ListDiscoveredResources.build(context)
          when :list_migration_tasks
            Aws::MigrationHub::Endpoints::ListMigrationTasks.build(context)
          when :list_progress_update_streams
            Aws::MigrationHub::Endpoints::ListProgressUpdateStreams.build(context)
          when :notify_application_state
            Aws::MigrationHub::Endpoints::NotifyApplicationState.build(context)
          when :notify_migration_task_state
            Aws::MigrationHub::Endpoints::NotifyMigrationTaskState.build(context)
          when :put_resource_attributes
            Aws::MigrationHub::Endpoints::PutResourceAttributes.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
