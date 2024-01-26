# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PI
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::PI::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::PI::EndpointParameters`'
      ) do |cfg|
        Aws::PI::EndpointProvider.new
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
          when :create_performance_analysis_report
            Aws::PI::Endpoints::CreatePerformanceAnalysisReport.build(context)
          when :delete_performance_analysis_report
            Aws::PI::Endpoints::DeletePerformanceAnalysisReport.build(context)
          when :describe_dimension_keys
            Aws::PI::Endpoints::DescribeDimensionKeys.build(context)
          when :get_dimension_key_details
            Aws::PI::Endpoints::GetDimensionKeyDetails.build(context)
          when :get_performance_analysis_report
            Aws::PI::Endpoints::GetPerformanceAnalysisReport.build(context)
          when :get_resource_metadata
            Aws::PI::Endpoints::GetResourceMetadata.build(context)
          when :get_resource_metrics
            Aws::PI::Endpoints::GetResourceMetrics.build(context)
          when :list_available_resource_dimensions
            Aws::PI::Endpoints::ListAvailableResourceDimensions.build(context)
          when :list_available_resource_metrics
            Aws::PI::Endpoints::ListAvailableResourceMetrics.build(context)
          when :list_performance_analysis_reports
            Aws::PI::Endpoints::ListPerformanceAnalysisReports.build(context)
          when :list_tags_for_resource
            Aws::PI::Endpoints::ListTagsForResource.build(context)
          when :tag_resource
            Aws::PI::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::PI::Endpoints::UntagResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
