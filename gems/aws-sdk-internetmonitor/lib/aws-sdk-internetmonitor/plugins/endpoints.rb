# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::InternetMonitor
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::InternetMonitor::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::InternetMonitor::EndpointParameters`'
      ) do |cfg|
        Aws::InternetMonitor::EndpointProvider.new
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
          when :create_monitor
            Aws::InternetMonitor::Endpoints::CreateMonitor.build(context)
          when :delete_monitor
            Aws::InternetMonitor::Endpoints::DeleteMonitor.build(context)
          when :get_health_event
            Aws::InternetMonitor::Endpoints::GetHealthEvent.build(context)
          when :get_monitor
            Aws::InternetMonitor::Endpoints::GetMonitor.build(context)
          when :get_query_results
            Aws::InternetMonitor::Endpoints::GetQueryResults.build(context)
          when :get_query_status
            Aws::InternetMonitor::Endpoints::GetQueryStatus.build(context)
          when :list_health_events
            Aws::InternetMonitor::Endpoints::ListHealthEvents.build(context)
          when :list_monitors
            Aws::InternetMonitor::Endpoints::ListMonitors.build(context)
          when :list_tags_for_resource
            Aws::InternetMonitor::Endpoints::ListTagsForResource.build(context)
          when :start_query
            Aws::InternetMonitor::Endpoints::StartQuery.build(context)
          when :stop_query
            Aws::InternetMonitor::Endpoints::StopQuery.build(context)
          when :tag_resource
            Aws::InternetMonitor::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::InternetMonitor::Endpoints::UntagResource.build(context)
          when :update_monitor
            Aws::InternetMonitor::Endpoints::UpdateMonitor.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
