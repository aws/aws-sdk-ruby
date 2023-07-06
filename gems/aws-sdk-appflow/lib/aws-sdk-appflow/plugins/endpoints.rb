# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Appflow
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Appflow::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Appflow::EndpointParameters`'
      ) do |cfg|
        Aws::Appflow::EndpointProvider.new
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
          when :cancel_flow_executions
            Aws::Appflow::Endpoints::CancelFlowExecutions.build(context)
          when :create_connector_profile
            Aws::Appflow::Endpoints::CreateConnectorProfile.build(context)
          when :create_flow
            Aws::Appflow::Endpoints::CreateFlow.build(context)
          when :delete_connector_profile
            Aws::Appflow::Endpoints::DeleteConnectorProfile.build(context)
          when :delete_flow
            Aws::Appflow::Endpoints::DeleteFlow.build(context)
          when :describe_connector
            Aws::Appflow::Endpoints::DescribeConnector.build(context)
          when :describe_connector_entity
            Aws::Appflow::Endpoints::DescribeConnectorEntity.build(context)
          when :describe_connector_profiles
            Aws::Appflow::Endpoints::DescribeConnectorProfiles.build(context)
          when :describe_connectors
            Aws::Appflow::Endpoints::DescribeConnectors.build(context)
          when :describe_flow
            Aws::Appflow::Endpoints::DescribeFlow.build(context)
          when :describe_flow_execution_records
            Aws::Appflow::Endpoints::DescribeFlowExecutionRecords.build(context)
          when :list_connector_entities
            Aws::Appflow::Endpoints::ListConnectorEntities.build(context)
          when :list_connectors
            Aws::Appflow::Endpoints::ListConnectors.build(context)
          when :list_flows
            Aws::Appflow::Endpoints::ListFlows.build(context)
          when :list_tags_for_resource
            Aws::Appflow::Endpoints::ListTagsForResource.build(context)
          when :register_connector
            Aws::Appflow::Endpoints::RegisterConnector.build(context)
          when :reset_connector_metadata_cache
            Aws::Appflow::Endpoints::ResetConnectorMetadataCache.build(context)
          when :start_flow
            Aws::Appflow::Endpoints::StartFlow.build(context)
          when :stop_flow
            Aws::Appflow::Endpoints::StopFlow.build(context)
          when :tag_resource
            Aws::Appflow::Endpoints::TagResource.build(context)
          when :unregister_connector
            Aws::Appflow::Endpoints::UnregisterConnector.build(context)
          when :untag_resource
            Aws::Appflow::Endpoints::UntagResource.build(context)
          when :update_connector_profile
            Aws::Appflow::Endpoints::UpdateConnectorProfile.build(context)
          when :update_connector_registration
            Aws::Appflow::Endpoints::UpdateConnectorRegistration.build(context)
          when :update_flow
            Aws::Appflow::Endpoints::UpdateFlow.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
