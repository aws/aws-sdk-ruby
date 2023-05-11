# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Support
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Support::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Support::EndpointParameters`'
      ) do |cfg|
        Aws::Support::EndpointProvider.new
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
          when :add_attachments_to_set
            Aws::Support::Endpoints::AddAttachmentsToSet.build(context)
          when :add_communication_to_case
            Aws::Support::Endpoints::AddCommunicationToCase.build(context)
          when :create_case
            Aws::Support::Endpoints::CreateCase.build(context)
          when :describe_attachment
            Aws::Support::Endpoints::DescribeAttachment.build(context)
          when :describe_cases
            Aws::Support::Endpoints::DescribeCases.build(context)
          when :describe_communications
            Aws::Support::Endpoints::DescribeCommunications.build(context)
          when :describe_create_case_options
            Aws::Support::Endpoints::DescribeCreateCaseOptions.build(context)
          when :describe_services
            Aws::Support::Endpoints::DescribeServices.build(context)
          when :describe_severity_levels
            Aws::Support::Endpoints::DescribeSeverityLevels.build(context)
          when :describe_supported_languages
            Aws::Support::Endpoints::DescribeSupportedLanguages.build(context)
          when :describe_trusted_advisor_check_refresh_statuses
            Aws::Support::Endpoints::DescribeTrustedAdvisorCheckRefreshStatuses.build(context)
          when :describe_trusted_advisor_check_result
            Aws::Support::Endpoints::DescribeTrustedAdvisorCheckResult.build(context)
          when :describe_trusted_advisor_check_summaries
            Aws::Support::Endpoints::DescribeTrustedAdvisorCheckSummaries.build(context)
          when :describe_trusted_advisor_checks
            Aws::Support::Endpoints::DescribeTrustedAdvisorChecks.build(context)
          when :refresh_trusted_advisor_check
            Aws::Support::Endpoints::RefreshTrustedAdvisorCheck.build(context)
          when :resolve_case
            Aws::Support::Endpoints::ResolveCase.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
