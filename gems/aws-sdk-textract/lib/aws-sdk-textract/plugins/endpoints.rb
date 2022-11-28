# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Textract
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Textract::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Textract::EndpointParameters`'
      ) do |cfg|
        Aws::Textract::EndpointProvider.new
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
          when :analyze_document
            Aws::Textract::Endpoints::AnalyzeDocument.build(context)
          when :analyze_expense
            Aws::Textract::Endpoints::AnalyzeExpense.build(context)
          when :analyze_id
            Aws::Textract::Endpoints::AnalyzeID.build(context)
          when :detect_document_text
            Aws::Textract::Endpoints::DetectDocumentText.build(context)
          when :get_document_analysis
            Aws::Textract::Endpoints::GetDocumentAnalysis.build(context)
          when :get_document_text_detection
            Aws::Textract::Endpoints::GetDocumentTextDetection.build(context)
          when :get_expense_analysis
            Aws::Textract::Endpoints::GetExpenseAnalysis.build(context)
          when :get_lending_analysis
            Aws::Textract::Endpoints::GetLendingAnalysis.build(context)
          when :get_lending_analysis_summary
            Aws::Textract::Endpoints::GetLendingAnalysisSummary.build(context)
          when :start_document_analysis
            Aws::Textract::Endpoints::StartDocumentAnalysis.build(context)
          when :start_document_text_detection
            Aws::Textract::Endpoints::StartDocumentTextDetection.build(context)
          when :start_expense_analysis
            Aws::Textract::Endpoints::StartExpenseAnalysis.build(context)
          when :start_lending_analysis
            Aws::Textract::Endpoints::StartLendingAnalysis.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
