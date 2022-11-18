# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IoTRoboRunner
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::IoTRoboRunner::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::IoTRoboRunner::EndpointParameters`'
      ) do |cfg|
        Aws::IoTRoboRunner::EndpointProvider.new
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
          when :create_destination
            Aws::IoTRoboRunner::Endpoints::CreateDestination.build(context)
          when :create_site
            Aws::IoTRoboRunner::Endpoints::CreateSite.build(context)
          when :create_worker
            Aws::IoTRoboRunner::Endpoints::CreateWorker.build(context)
          when :create_worker_fleet
            Aws::IoTRoboRunner::Endpoints::CreateWorkerFleet.build(context)
          when :delete_destination
            Aws::IoTRoboRunner::Endpoints::DeleteDestination.build(context)
          when :delete_site
            Aws::IoTRoboRunner::Endpoints::DeleteSite.build(context)
          when :delete_worker
            Aws::IoTRoboRunner::Endpoints::DeleteWorker.build(context)
          when :delete_worker_fleet
            Aws::IoTRoboRunner::Endpoints::DeleteWorkerFleet.build(context)
          when :get_destination
            Aws::IoTRoboRunner::Endpoints::GetDestination.build(context)
          when :get_site
            Aws::IoTRoboRunner::Endpoints::GetSite.build(context)
          when :get_worker
            Aws::IoTRoboRunner::Endpoints::GetWorker.build(context)
          when :get_worker_fleet
            Aws::IoTRoboRunner::Endpoints::GetWorkerFleet.build(context)
          when :list_destinations
            Aws::IoTRoboRunner::Endpoints::ListDestinations.build(context)
          when :list_sites
            Aws::IoTRoboRunner::Endpoints::ListSites.build(context)
          when :list_worker_fleets
            Aws::IoTRoboRunner::Endpoints::ListWorkerFleets.build(context)
          when :list_workers
            Aws::IoTRoboRunner::Endpoints::ListWorkers.build(context)
          when :update_destination
            Aws::IoTRoboRunner::Endpoints::UpdateDestination.build(context)
          when :update_site
            Aws::IoTRoboRunner::Endpoints::UpdateSite.build(context)
          when :update_worker
            Aws::IoTRoboRunner::Endpoints::UpdateWorker.build(context)
          when :update_worker_fleet
            Aws::IoTRoboRunner::Endpoints::UpdateWorkerFleet.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
