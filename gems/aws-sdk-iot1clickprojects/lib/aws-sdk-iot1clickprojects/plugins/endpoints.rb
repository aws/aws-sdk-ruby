# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IoT1ClickProjects
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::IoT1ClickProjects::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::IoT1ClickProjects::EndpointParameters`'
      ) do |cfg|
        Aws::IoT1ClickProjects::EndpointProvider.new
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
          when :associate_device_with_placement
            Aws::IoT1ClickProjects::Endpoints::AssociateDeviceWithPlacement.build(context)
          when :create_placement
            Aws::IoT1ClickProjects::Endpoints::CreatePlacement.build(context)
          when :create_project
            Aws::IoT1ClickProjects::Endpoints::CreateProject.build(context)
          when :delete_placement
            Aws::IoT1ClickProjects::Endpoints::DeletePlacement.build(context)
          when :delete_project
            Aws::IoT1ClickProjects::Endpoints::DeleteProject.build(context)
          when :describe_placement
            Aws::IoT1ClickProjects::Endpoints::DescribePlacement.build(context)
          when :describe_project
            Aws::IoT1ClickProjects::Endpoints::DescribeProject.build(context)
          when :disassociate_device_from_placement
            Aws::IoT1ClickProjects::Endpoints::DisassociateDeviceFromPlacement.build(context)
          when :get_devices_in_placement
            Aws::IoT1ClickProjects::Endpoints::GetDevicesInPlacement.build(context)
          when :list_placements
            Aws::IoT1ClickProjects::Endpoints::ListPlacements.build(context)
          when :list_projects
            Aws::IoT1ClickProjects::Endpoints::ListProjects.build(context)
          when :list_tags_for_resource
            Aws::IoT1ClickProjects::Endpoints::ListTagsForResource.build(context)
          when :tag_resource
            Aws::IoT1ClickProjects::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::IoT1ClickProjects::Endpoints::UntagResource.build(context)
          when :update_placement
            Aws::IoT1ClickProjects::Endpoints::UpdatePlacement.build(context)
          when :update_project
            Aws::IoT1ClickProjects::Endpoints::UpdateProject.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
