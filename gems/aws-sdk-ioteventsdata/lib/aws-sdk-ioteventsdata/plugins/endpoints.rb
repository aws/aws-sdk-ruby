# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IoTEventsData
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::IoTEventsData::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::IoTEventsData::EndpointParameters`'
      ) do |cfg|
        Aws::IoTEventsData::EndpointProvider.new
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
          when :batch_acknowledge_alarm
            Aws::IoTEventsData::Endpoints::BatchAcknowledgeAlarm.build(context)
          when :batch_delete_detector
            Aws::IoTEventsData::Endpoints::BatchDeleteDetector.build(context)
          when :batch_disable_alarm
            Aws::IoTEventsData::Endpoints::BatchDisableAlarm.build(context)
          when :batch_enable_alarm
            Aws::IoTEventsData::Endpoints::BatchEnableAlarm.build(context)
          when :batch_put_message
            Aws::IoTEventsData::Endpoints::BatchPutMessage.build(context)
          when :batch_reset_alarm
            Aws::IoTEventsData::Endpoints::BatchResetAlarm.build(context)
          when :batch_snooze_alarm
            Aws::IoTEventsData::Endpoints::BatchSnoozeAlarm.build(context)
          when :batch_update_detector
            Aws::IoTEventsData::Endpoints::BatchUpdateDetector.build(context)
          when :describe_alarm
            Aws::IoTEventsData::Endpoints::DescribeAlarm.build(context)
          when :describe_detector
            Aws::IoTEventsData::Endpoints::DescribeDetector.build(context)
          when :list_alarms
            Aws::IoTEventsData::Endpoints::ListAlarms.build(context)
          when :list_detectors
            Aws::IoTEventsData::Endpoints::ListDetectors.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
