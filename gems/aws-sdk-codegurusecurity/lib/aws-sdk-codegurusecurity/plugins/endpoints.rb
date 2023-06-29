# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CodeGuruSecurity
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CodeGuruSecurity::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CodeGuruSecurity::EndpointParameters`'
      ) do |cfg|
        Aws::CodeGuruSecurity::EndpointProvider.new
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
          when :batch_get_findings
            Aws::CodeGuruSecurity::Endpoints::BatchGetFindings.build(context)
          when :create_scan
            Aws::CodeGuruSecurity::Endpoints::CreateScan.build(context)
          when :create_upload_url
            Aws::CodeGuruSecurity::Endpoints::CreateUploadUrl.build(context)
          when :get_account_configuration
            Aws::CodeGuruSecurity::Endpoints::GetAccountConfiguration.build(context)
          when :get_findings
            Aws::CodeGuruSecurity::Endpoints::GetFindings.build(context)
          when :get_metrics_summary
            Aws::CodeGuruSecurity::Endpoints::GetMetricsSummary.build(context)
          when :get_scan
            Aws::CodeGuruSecurity::Endpoints::GetScan.build(context)
          when :list_findings_metrics
            Aws::CodeGuruSecurity::Endpoints::ListFindingsMetrics.build(context)
          when :list_scans
            Aws::CodeGuruSecurity::Endpoints::ListScans.build(context)
          when :list_tags_for_resource
            Aws::CodeGuruSecurity::Endpoints::ListTagsForResource.build(context)
          when :tag_resource
            Aws::CodeGuruSecurity::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::CodeGuruSecurity::Endpoints::UntagResource.build(context)
          when :update_account_configuration
            Aws::CodeGuruSecurity::Endpoints::UpdateAccountConfiguration.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
