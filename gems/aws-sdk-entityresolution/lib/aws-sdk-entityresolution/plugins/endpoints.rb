# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::EntityResolution
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::EntityResolution::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::EntityResolution::EndpointParameters`'
      ) do |cfg|
        Aws::EntityResolution::EndpointProvider.new
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
          when :create_id_mapping_workflow
            Aws::EntityResolution::Endpoints::CreateIdMappingWorkflow.build(context)
          when :create_matching_workflow
            Aws::EntityResolution::Endpoints::CreateMatchingWorkflow.build(context)
          when :create_schema_mapping
            Aws::EntityResolution::Endpoints::CreateSchemaMapping.build(context)
          when :delete_id_mapping_workflow
            Aws::EntityResolution::Endpoints::DeleteIdMappingWorkflow.build(context)
          when :delete_matching_workflow
            Aws::EntityResolution::Endpoints::DeleteMatchingWorkflow.build(context)
          when :delete_schema_mapping
            Aws::EntityResolution::Endpoints::DeleteSchemaMapping.build(context)
          when :get_id_mapping_job
            Aws::EntityResolution::Endpoints::GetIdMappingJob.build(context)
          when :get_id_mapping_workflow
            Aws::EntityResolution::Endpoints::GetIdMappingWorkflow.build(context)
          when :get_match_id
            Aws::EntityResolution::Endpoints::GetMatchId.build(context)
          when :get_matching_job
            Aws::EntityResolution::Endpoints::GetMatchingJob.build(context)
          when :get_matching_workflow
            Aws::EntityResolution::Endpoints::GetMatchingWorkflow.build(context)
          when :get_provider_service
            Aws::EntityResolution::Endpoints::GetProviderService.build(context)
          when :get_schema_mapping
            Aws::EntityResolution::Endpoints::GetSchemaMapping.build(context)
          when :list_id_mapping_jobs
            Aws::EntityResolution::Endpoints::ListIdMappingJobs.build(context)
          when :list_id_mapping_workflows
            Aws::EntityResolution::Endpoints::ListIdMappingWorkflows.build(context)
          when :list_matching_jobs
            Aws::EntityResolution::Endpoints::ListMatchingJobs.build(context)
          when :list_matching_workflows
            Aws::EntityResolution::Endpoints::ListMatchingWorkflows.build(context)
          when :list_provider_services
            Aws::EntityResolution::Endpoints::ListProviderServices.build(context)
          when :list_schema_mappings
            Aws::EntityResolution::Endpoints::ListSchemaMappings.build(context)
          when :list_tags_for_resource
            Aws::EntityResolution::Endpoints::ListTagsForResource.build(context)
          when :start_id_mapping_job
            Aws::EntityResolution::Endpoints::StartIdMappingJob.build(context)
          when :start_matching_job
            Aws::EntityResolution::Endpoints::StartMatchingJob.build(context)
          when :tag_resource
            Aws::EntityResolution::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::EntityResolution::Endpoints::UntagResource.build(context)
          when :update_id_mapping_workflow
            Aws::EntityResolution::Endpoints::UpdateIdMappingWorkflow.build(context)
          when :update_matching_workflow
            Aws::EntityResolution::Endpoints::UpdateMatchingWorkflow.build(context)
          when :update_schema_mapping
            Aws::EntityResolution::Endpoints::UpdateSchemaMapping.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
