# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ControlTower
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ControlTower::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ControlTower::EndpointParameters`'
      ) do |cfg|
        Aws::ControlTower::EndpointProvider.new
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
          when :create_landing_zone
            Aws::ControlTower::Endpoints::CreateLandingZone.build(context)
          when :delete_landing_zone
            Aws::ControlTower::Endpoints::DeleteLandingZone.build(context)
          when :disable_control
            Aws::ControlTower::Endpoints::DisableControl.build(context)
          when :enable_control
            Aws::ControlTower::Endpoints::EnableControl.build(context)
          when :get_control_operation
            Aws::ControlTower::Endpoints::GetControlOperation.build(context)
          when :get_enabled_control
            Aws::ControlTower::Endpoints::GetEnabledControl.build(context)
          when :get_landing_zone
            Aws::ControlTower::Endpoints::GetLandingZone.build(context)
          when :get_landing_zone_operation
            Aws::ControlTower::Endpoints::GetLandingZoneOperation.build(context)
          when :list_enabled_controls
            Aws::ControlTower::Endpoints::ListEnabledControls.build(context)
          when :list_landing_zones
            Aws::ControlTower::Endpoints::ListLandingZones.build(context)
          when :list_tags_for_resource
            Aws::ControlTower::Endpoints::ListTagsForResource.build(context)
          when :reset_landing_zone
            Aws::ControlTower::Endpoints::ResetLandingZone.build(context)
          when :tag_resource
            Aws::ControlTower::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ControlTower::Endpoints::UntagResource.build(context)
          when :update_enabled_control
            Aws::ControlTower::Endpoints::UpdateEnabledControl.build(context)
          when :update_landing_zone
            Aws::ControlTower::Endpoints::UpdateLandingZone.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
