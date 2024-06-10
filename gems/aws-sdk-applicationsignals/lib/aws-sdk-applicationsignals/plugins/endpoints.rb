# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ApplicationSignals
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ApplicationSignals::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ApplicationSignals::EndpointParameters`'
      ) do |cfg|
        Aws::ApplicationSignals::EndpointProvider.new
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
          when :batch_get_service_level_objective_budget_report
            Aws::ApplicationSignals::Endpoints::BatchGetServiceLevelObjectiveBudgetReport.build(context)
          when :create_service_level_objective
            Aws::ApplicationSignals::Endpoints::CreateServiceLevelObjective.build(context)
          when :delete_service_level_objective
            Aws::ApplicationSignals::Endpoints::DeleteServiceLevelObjective.build(context)
          when :get_service
            Aws::ApplicationSignals::Endpoints::GetService.build(context)
          when :get_service_level_objective
            Aws::ApplicationSignals::Endpoints::GetServiceLevelObjective.build(context)
          when :list_service_dependencies
            Aws::ApplicationSignals::Endpoints::ListServiceDependencies.build(context)
          when :list_service_dependents
            Aws::ApplicationSignals::Endpoints::ListServiceDependents.build(context)
          when :list_service_level_objectives
            Aws::ApplicationSignals::Endpoints::ListServiceLevelObjectives.build(context)
          when :list_service_operations
            Aws::ApplicationSignals::Endpoints::ListServiceOperations.build(context)
          when :list_services
            Aws::ApplicationSignals::Endpoints::ListServices.build(context)
          when :list_tags_for_resource
            Aws::ApplicationSignals::Endpoints::ListTagsForResource.build(context)
          when :start_discovery
            Aws::ApplicationSignals::Endpoints::StartDiscovery.build(context)
          when :tag_resource
            Aws::ApplicationSignals::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ApplicationSignals::Endpoints::UntagResource.build(context)
          when :update_service_level_objective
            Aws::ApplicationSignals::Endpoints::UpdateServiceLevelObjective.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
