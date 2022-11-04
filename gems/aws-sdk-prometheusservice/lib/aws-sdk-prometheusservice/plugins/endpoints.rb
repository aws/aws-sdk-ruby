# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PrometheusService
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::PrometheusService::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::PrometheusService::EndpointParameters`'
      ) do |cfg|
        Aws::PrometheusService::EndpointProvider.new
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
          when :create_alert_manager_definition
            Aws::PrometheusService::Endpoints::CreateAlertManagerDefinition.build(context)
          when :create_logging_configuration
            Aws::PrometheusService::Endpoints::CreateLoggingConfiguration.build(context)
          when :create_rule_groups_namespace
            Aws::PrometheusService::Endpoints::CreateRuleGroupsNamespace.build(context)
          when :create_workspace
            Aws::PrometheusService::Endpoints::CreateWorkspace.build(context)
          when :delete_alert_manager_definition
            Aws::PrometheusService::Endpoints::DeleteAlertManagerDefinition.build(context)
          when :delete_logging_configuration
            Aws::PrometheusService::Endpoints::DeleteLoggingConfiguration.build(context)
          when :delete_rule_groups_namespace
            Aws::PrometheusService::Endpoints::DeleteRuleGroupsNamespace.build(context)
          when :delete_workspace
            Aws::PrometheusService::Endpoints::DeleteWorkspace.build(context)
          when :describe_alert_manager_definition
            Aws::PrometheusService::Endpoints::DescribeAlertManagerDefinition.build(context)
          when :describe_logging_configuration
            Aws::PrometheusService::Endpoints::DescribeLoggingConfiguration.build(context)
          when :describe_rule_groups_namespace
            Aws::PrometheusService::Endpoints::DescribeRuleGroupsNamespace.build(context)
          when :describe_workspace
            Aws::PrometheusService::Endpoints::DescribeWorkspace.build(context)
          when :list_rule_groups_namespaces
            Aws::PrometheusService::Endpoints::ListRuleGroupsNamespaces.build(context)
          when :list_tags_for_resource
            Aws::PrometheusService::Endpoints::ListTagsForResource.build(context)
          when :list_workspaces
            Aws::PrometheusService::Endpoints::ListWorkspaces.build(context)
          when :put_alert_manager_definition
            Aws::PrometheusService::Endpoints::PutAlertManagerDefinition.build(context)
          when :put_rule_groups_namespace
            Aws::PrometheusService::Endpoints::PutRuleGroupsNamespace.build(context)
          when :tag_resource
            Aws::PrometheusService::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::PrometheusService::Endpoints::UntagResource.build(context)
          when :update_logging_configuration
            Aws::PrometheusService::Endpoints::UpdateLoggingConfiguration.build(context)
          when :update_workspace_alias
            Aws::PrometheusService::Endpoints::UpdateWorkspaceAlias.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
