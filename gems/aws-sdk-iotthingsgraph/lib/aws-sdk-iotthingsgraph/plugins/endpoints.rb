# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IoTThingsGraph
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::IoTThingsGraph::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::IoTThingsGraph::EndpointParameters`'
      ) do |cfg|
        Aws::IoTThingsGraph::EndpointProvider.new
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
          when :associate_entity_to_thing
            Aws::IoTThingsGraph::Endpoints::AssociateEntityToThing.build(context)
          when :create_flow_template
            Aws::IoTThingsGraph::Endpoints::CreateFlowTemplate.build(context)
          when :create_system_instance
            Aws::IoTThingsGraph::Endpoints::CreateSystemInstance.build(context)
          when :create_system_template
            Aws::IoTThingsGraph::Endpoints::CreateSystemTemplate.build(context)
          when :delete_flow_template
            Aws::IoTThingsGraph::Endpoints::DeleteFlowTemplate.build(context)
          when :delete_namespace
            Aws::IoTThingsGraph::Endpoints::DeleteNamespace.build(context)
          when :delete_system_instance
            Aws::IoTThingsGraph::Endpoints::DeleteSystemInstance.build(context)
          when :delete_system_template
            Aws::IoTThingsGraph::Endpoints::DeleteSystemTemplate.build(context)
          when :deploy_system_instance
            Aws::IoTThingsGraph::Endpoints::DeploySystemInstance.build(context)
          when :deprecate_flow_template
            Aws::IoTThingsGraph::Endpoints::DeprecateFlowTemplate.build(context)
          when :deprecate_system_template
            Aws::IoTThingsGraph::Endpoints::DeprecateSystemTemplate.build(context)
          when :describe_namespace
            Aws::IoTThingsGraph::Endpoints::DescribeNamespace.build(context)
          when :dissociate_entity_from_thing
            Aws::IoTThingsGraph::Endpoints::DissociateEntityFromThing.build(context)
          when :get_entities
            Aws::IoTThingsGraph::Endpoints::GetEntities.build(context)
          when :get_flow_template
            Aws::IoTThingsGraph::Endpoints::GetFlowTemplate.build(context)
          when :get_flow_template_revisions
            Aws::IoTThingsGraph::Endpoints::GetFlowTemplateRevisions.build(context)
          when :get_namespace_deletion_status
            Aws::IoTThingsGraph::Endpoints::GetNamespaceDeletionStatus.build(context)
          when :get_system_instance
            Aws::IoTThingsGraph::Endpoints::GetSystemInstance.build(context)
          when :get_system_template
            Aws::IoTThingsGraph::Endpoints::GetSystemTemplate.build(context)
          when :get_system_template_revisions
            Aws::IoTThingsGraph::Endpoints::GetSystemTemplateRevisions.build(context)
          when :get_upload_status
            Aws::IoTThingsGraph::Endpoints::GetUploadStatus.build(context)
          when :list_flow_execution_messages
            Aws::IoTThingsGraph::Endpoints::ListFlowExecutionMessages.build(context)
          when :list_tags_for_resource
            Aws::IoTThingsGraph::Endpoints::ListTagsForResource.build(context)
          when :search_entities
            Aws::IoTThingsGraph::Endpoints::SearchEntities.build(context)
          when :search_flow_executions
            Aws::IoTThingsGraph::Endpoints::SearchFlowExecutions.build(context)
          when :search_flow_templates
            Aws::IoTThingsGraph::Endpoints::SearchFlowTemplates.build(context)
          when :search_system_instances
            Aws::IoTThingsGraph::Endpoints::SearchSystemInstances.build(context)
          when :search_system_templates
            Aws::IoTThingsGraph::Endpoints::SearchSystemTemplates.build(context)
          when :search_things
            Aws::IoTThingsGraph::Endpoints::SearchThings.build(context)
          when :tag_resource
            Aws::IoTThingsGraph::Endpoints::TagResource.build(context)
          when :undeploy_system_instance
            Aws::IoTThingsGraph::Endpoints::UndeploySystemInstance.build(context)
          when :untag_resource
            Aws::IoTThingsGraph::Endpoints::UntagResource.build(context)
          when :update_flow_template
            Aws::IoTThingsGraph::Endpoints::UpdateFlowTemplate.build(context)
          when :update_system_template
            Aws::IoTThingsGraph::Endpoints::UpdateSystemTemplate.build(context)
          when :upload_entity_definitions
            Aws::IoTThingsGraph::Endpoints::UploadEntityDefinitions.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
