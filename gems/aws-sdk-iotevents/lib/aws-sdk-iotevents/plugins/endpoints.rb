# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IoTEvents
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::IoTEvents::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::IoTEvents::EndpointParameters`'
      ) do |cfg|
        Aws::IoTEvents::EndpointProvider.new
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
          when :create_alarm_model
            Aws::IoTEvents::Endpoints::CreateAlarmModel.build(context)
          when :create_detector_model
            Aws::IoTEvents::Endpoints::CreateDetectorModel.build(context)
          when :create_input
            Aws::IoTEvents::Endpoints::CreateInput.build(context)
          when :delete_alarm_model
            Aws::IoTEvents::Endpoints::DeleteAlarmModel.build(context)
          when :delete_detector_model
            Aws::IoTEvents::Endpoints::DeleteDetectorModel.build(context)
          when :delete_input
            Aws::IoTEvents::Endpoints::DeleteInput.build(context)
          when :describe_alarm_model
            Aws::IoTEvents::Endpoints::DescribeAlarmModel.build(context)
          when :describe_detector_model
            Aws::IoTEvents::Endpoints::DescribeDetectorModel.build(context)
          when :describe_detector_model_analysis
            Aws::IoTEvents::Endpoints::DescribeDetectorModelAnalysis.build(context)
          when :describe_input
            Aws::IoTEvents::Endpoints::DescribeInput.build(context)
          when :describe_logging_options
            Aws::IoTEvents::Endpoints::DescribeLoggingOptions.build(context)
          when :get_detector_model_analysis_results
            Aws::IoTEvents::Endpoints::GetDetectorModelAnalysisResults.build(context)
          when :list_alarm_model_versions
            Aws::IoTEvents::Endpoints::ListAlarmModelVersions.build(context)
          when :list_alarm_models
            Aws::IoTEvents::Endpoints::ListAlarmModels.build(context)
          when :list_detector_model_versions
            Aws::IoTEvents::Endpoints::ListDetectorModelVersions.build(context)
          when :list_detector_models
            Aws::IoTEvents::Endpoints::ListDetectorModels.build(context)
          when :list_input_routings
            Aws::IoTEvents::Endpoints::ListInputRoutings.build(context)
          when :list_inputs
            Aws::IoTEvents::Endpoints::ListInputs.build(context)
          when :list_tags_for_resource
            Aws::IoTEvents::Endpoints::ListTagsForResource.build(context)
          when :put_logging_options
            Aws::IoTEvents::Endpoints::PutLoggingOptions.build(context)
          when :start_detector_model_analysis
            Aws::IoTEvents::Endpoints::StartDetectorModelAnalysis.build(context)
          when :tag_resource
            Aws::IoTEvents::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::IoTEvents::Endpoints::UntagResource.build(context)
          when :update_alarm_model
            Aws::IoTEvents::Endpoints::UpdateAlarmModel.build(context)
          when :update_detector_model
            Aws::IoTEvents::Endpoints::UpdateDetectorModel.build(context)
          when :update_input
            Aws::IoTEvents::Endpoints::UpdateInput.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
