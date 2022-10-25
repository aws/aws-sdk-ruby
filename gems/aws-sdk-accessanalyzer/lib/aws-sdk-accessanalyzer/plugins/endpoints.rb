# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AccessAnalyzer
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::AccessAnalyzer::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::AccessAnalyzer::EndpointParameters`'
      ) do |cfg|
        Aws::AccessAnalyzer::EndpointProvider.new
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
          when :apply_archive_rule
            Aws::AccessAnalyzer::Endpoints::ApplyArchiveRule.build(context)
          when :cancel_policy_generation
            Aws::AccessAnalyzer::Endpoints::CancelPolicyGeneration.build(context)
          when :create_access_preview
            Aws::AccessAnalyzer::Endpoints::CreateAccessPreview.build(context)
          when :create_analyzer
            Aws::AccessAnalyzer::Endpoints::CreateAnalyzer.build(context)
          when :create_archive_rule
            Aws::AccessAnalyzer::Endpoints::CreateArchiveRule.build(context)
          when :delete_analyzer
            Aws::AccessAnalyzer::Endpoints::DeleteAnalyzer.build(context)
          when :delete_archive_rule
            Aws::AccessAnalyzer::Endpoints::DeleteArchiveRule.build(context)
          when :get_access_preview
            Aws::AccessAnalyzer::Endpoints::GetAccessPreview.build(context)
          when :get_analyzed_resource
            Aws::AccessAnalyzer::Endpoints::GetAnalyzedResource.build(context)
          when :get_analyzer
            Aws::AccessAnalyzer::Endpoints::GetAnalyzer.build(context)
          when :get_archive_rule
            Aws::AccessAnalyzer::Endpoints::GetArchiveRule.build(context)
          when :get_finding
            Aws::AccessAnalyzer::Endpoints::GetFinding.build(context)
          when :get_generated_policy
            Aws::AccessAnalyzer::Endpoints::GetGeneratedPolicy.build(context)
          when :list_access_preview_findings
            Aws::AccessAnalyzer::Endpoints::ListAccessPreviewFindings.build(context)
          when :list_access_previews
            Aws::AccessAnalyzer::Endpoints::ListAccessPreviews.build(context)
          when :list_analyzed_resources
            Aws::AccessAnalyzer::Endpoints::ListAnalyzedResources.build(context)
          when :list_analyzers
            Aws::AccessAnalyzer::Endpoints::ListAnalyzers.build(context)
          when :list_archive_rules
            Aws::AccessAnalyzer::Endpoints::ListArchiveRules.build(context)
          when :list_findings
            Aws::AccessAnalyzer::Endpoints::ListFindings.build(context)
          when :list_policy_generations
            Aws::AccessAnalyzer::Endpoints::ListPolicyGenerations.build(context)
          when :list_tags_for_resource
            Aws::AccessAnalyzer::Endpoints::ListTagsForResource.build(context)
          when :start_policy_generation
            Aws::AccessAnalyzer::Endpoints::StartPolicyGeneration.build(context)
          when :start_resource_scan
            Aws::AccessAnalyzer::Endpoints::StartResourceScan.build(context)
          when :tag_resource
            Aws::AccessAnalyzer::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::AccessAnalyzer::Endpoints::UntagResource.build(context)
          when :update_archive_rule
            Aws::AccessAnalyzer::Endpoints::UpdateArchiveRule.build(context)
          when :update_findings
            Aws::AccessAnalyzer::Endpoints::UpdateFindings.build(context)
          when :validate_policy
            Aws::AccessAnalyzer::Endpoints::ValidatePolicy.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
