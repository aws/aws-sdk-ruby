# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SimSpaceWeaver
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::SimSpaceWeaver::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::SimSpaceWeaver::EndpointParameters`'
      ) do |cfg|
        Aws::SimSpaceWeaver::EndpointProvider.new
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
          when :create_snapshot
            Aws::SimSpaceWeaver::Endpoints::CreateSnapshot.build(context)
          when :delete_app
            Aws::SimSpaceWeaver::Endpoints::DeleteApp.build(context)
          when :delete_simulation
            Aws::SimSpaceWeaver::Endpoints::DeleteSimulation.build(context)
          when :describe_app
            Aws::SimSpaceWeaver::Endpoints::DescribeApp.build(context)
          when :describe_simulation
            Aws::SimSpaceWeaver::Endpoints::DescribeSimulation.build(context)
          when :list_apps
            Aws::SimSpaceWeaver::Endpoints::ListApps.build(context)
          when :list_simulations
            Aws::SimSpaceWeaver::Endpoints::ListSimulations.build(context)
          when :list_tags_for_resource
            Aws::SimSpaceWeaver::Endpoints::ListTagsForResource.build(context)
          when :start_app
            Aws::SimSpaceWeaver::Endpoints::StartApp.build(context)
          when :start_clock
            Aws::SimSpaceWeaver::Endpoints::StartClock.build(context)
          when :start_simulation
            Aws::SimSpaceWeaver::Endpoints::StartSimulation.build(context)
          when :stop_app
            Aws::SimSpaceWeaver::Endpoints::StopApp.build(context)
          when :stop_clock
            Aws::SimSpaceWeaver::Endpoints::StopClock.build(context)
          when :stop_simulation
            Aws::SimSpaceWeaver::Endpoints::StopSimulation.build(context)
          when :tag_resource
            Aws::SimSpaceWeaver::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::SimSpaceWeaver::Endpoints::UntagResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
