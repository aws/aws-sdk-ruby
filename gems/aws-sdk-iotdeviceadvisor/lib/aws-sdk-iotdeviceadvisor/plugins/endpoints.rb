# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IoTDeviceAdvisor
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::IoTDeviceAdvisor::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::IoTDeviceAdvisor::EndpointParameters`'
      ) do |cfg|
        Aws::IoTDeviceAdvisor::EndpointProvider.new
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
          when :create_suite_definition
            Aws::IoTDeviceAdvisor::Endpoints::CreateSuiteDefinition.build(context)
          when :delete_suite_definition
            Aws::IoTDeviceAdvisor::Endpoints::DeleteSuiteDefinition.build(context)
          when :get_endpoint
            Aws::IoTDeviceAdvisor::Endpoints::GetEndpoint.build(context)
          when :get_suite_definition
            Aws::IoTDeviceAdvisor::Endpoints::GetSuiteDefinition.build(context)
          when :get_suite_run
            Aws::IoTDeviceAdvisor::Endpoints::GetSuiteRun.build(context)
          when :get_suite_run_report
            Aws::IoTDeviceAdvisor::Endpoints::GetSuiteRunReport.build(context)
          when :list_suite_definitions
            Aws::IoTDeviceAdvisor::Endpoints::ListSuiteDefinitions.build(context)
          when :list_suite_runs
            Aws::IoTDeviceAdvisor::Endpoints::ListSuiteRuns.build(context)
          when :list_tags_for_resource
            Aws::IoTDeviceAdvisor::Endpoints::ListTagsForResource.build(context)
          when :start_suite_run
            Aws::IoTDeviceAdvisor::Endpoints::StartSuiteRun.build(context)
          when :stop_suite_run
            Aws::IoTDeviceAdvisor::Endpoints::StopSuiteRun.build(context)
          when :tag_resource
            Aws::IoTDeviceAdvisor::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::IoTDeviceAdvisor::Endpoints::UntagResource.build(context)
          when :update_suite_definition
            Aws::IoTDeviceAdvisor::Endpoints::UpdateSuiteDefinition.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
