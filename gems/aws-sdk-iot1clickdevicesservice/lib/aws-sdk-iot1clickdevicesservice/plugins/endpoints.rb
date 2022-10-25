# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IoT1ClickDevicesService
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::IoT1ClickDevicesService::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::IoT1ClickDevicesService::EndpointParameters`'
      ) do |cfg|
        Aws::IoT1ClickDevicesService::EndpointProvider.new
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
          when :claim_devices_by_claim_code
            Aws::IoT1ClickDevicesService::Endpoints::ClaimDevicesByClaimCode.build(context)
          when :describe_device
            Aws::IoT1ClickDevicesService::Endpoints::DescribeDevice.build(context)
          when :finalize_device_claim
            Aws::IoT1ClickDevicesService::Endpoints::FinalizeDeviceClaim.build(context)
          when :get_device_methods
            Aws::IoT1ClickDevicesService::Endpoints::GetDeviceMethods.build(context)
          when :initiate_device_claim
            Aws::IoT1ClickDevicesService::Endpoints::InitiateDeviceClaim.build(context)
          when :invoke_device_method
            Aws::IoT1ClickDevicesService::Endpoints::InvokeDeviceMethod.build(context)
          when :list_device_events
            Aws::IoT1ClickDevicesService::Endpoints::ListDeviceEvents.build(context)
          when :list_devices
            Aws::IoT1ClickDevicesService::Endpoints::ListDevices.build(context)
          when :list_tags_for_resource
            Aws::IoT1ClickDevicesService::Endpoints::ListTagsForResource.build(context)
          when :tag_resource
            Aws::IoT1ClickDevicesService::Endpoints::TagResource.build(context)
          when :unclaim_device
            Aws::IoT1ClickDevicesService::Endpoints::UnclaimDevice.build(context)
          when :untag_resource
            Aws::IoT1ClickDevicesService::Endpoints::UntagResource.build(context)
          when :update_device_state
            Aws::IoT1ClickDevicesService::Endpoints::UpdateDeviceState.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
