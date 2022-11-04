# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Inspector
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Inspector::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Inspector::EndpointParameters`'
      ) do |cfg|
        Aws::Inspector::EndpointProvider.new
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
          when :add_attributes_to_findings
            Aws::Inspector::Endpoints::AddAttributesToFindings.build(context)
          when :create_assessment_target
            Aws::Inspector::Endpoints::CreateAssessmentTarget.build(context)
          when :create_assessment_template
            Aws::Inspector::Endpoints::CreateAssessmentTemplate.build(context)
          when :create_exclusions_preview
            Aws::Inspector::Endpoints::CreateExclusionsPreview.build(context)
          when :create_resource_group
            Aws::Inspector::Endpoints::CreateResourceGroup.build(context)
          when :delete_assessment_run
            Aws::Inspector::Endpoints::DeleteAssessmentRun.build(context)
          when :delete_assessment_target
            Aws::Inspector::Endpoints::DeleteAssessmentTarget.build(context)
          when :delete_assessment_template
            Aws::Inspector::Endpoints::DeleteAssessmentTemplate.build(context)
          when :describe_assessment_runs
            Aws::Inspector::Endpoints::DescribeAssessmentRuns.build(context)
          when :describe_assessment_targets
            Aws::Inspector::Endpoints::DescribeAssessmentTargets.build(context)
          when :describe_assessment_templates
            Aws::Inspector::Endpoints::DescribeAssessmentTemplates.build(context)
          when :describe_cross_account_access_role
            Aws::Inspector::Endpoints::DescribeCrossAccountAccessRole.build(context)
          when :describe_exclusions
            Aws::Inspector::Endpoints::DescribeExclusions.build(context)
          when :describe_findings
            Aws::Inspector::Endpoints::DescribeFindings.build(context)
          when :describe_resource_groups
            Aws::Inspector::Endpoints::DescribeResourceGroups.build(context)
          when :describe_rules_packages
            Aws::Inspector::Endpoints::DescribeRulesPackages.build(context)
          when :get_assessment_report
            Aws::Inspector::Endpoints::GetAssessmentReport.build(context)
          when :get_exclusions_preview
            Aws::Inspector::Endpoints::GetExclusionsPreview.build(context)
          when :get_telemetry_metadata
            Aws::Inspector::Endpoints::GetTelemetryMetadata.build(context)
          when :list_assessment_run_agents
            Aws::Inspector::Endpoints::ListAssessmentRunAgents.build(context)
          when :list_assessment_runs
            Aws::Inspector::Endpoints::ListAssessmentRuns.build(context)
          when :list_assessment_targets
            Aws::Inspector::Endpoints::ListAssessmentTargets.build(context)
          when :list_assessment_templates
            Aws::Inspector::Endpoints::ListAssessmentTemplates.build(context)
          when :list_event_subscriptions
            Aws::Inspector::Endpoints::ListEventSubscriptions.build(context)
          when :list_exclusions
            Aws::Inspector::Endpoints::ListExclusions.build(context)
          when :list_findings
            Aws::Inspector::Endpoints::ListFindings.build(context)
          when :list_rules_packages
            Aws::Inspector::Endpoints::ListRulesPackages.build(context)
          when :list_tags_for_resource
            Aws::Inspector::Endpoints::ListTagsForResource.build(context)
          when :preview_agents
            Aws::Inspector::Endpoints::PreviewAgents.build(context)
          when :register_cross_account_access_role
            Aws::Inspector::Endpoints::RegisterCrossAccountAccessRole.build(context)
          when :remove_attributes_from_findings
            Aws::Inspector::Endpoints::RemoveAttributesFromFindings.build(context)
          when :set_tags_for_resource
            Aws::Inspector::Endpoints::SetTagsForResource.build(context)
          when :start_assessment_run
            Aws::Inspector::Endpoints::StartAssessmentRun.build(context)
          when :stop_assessment_run
            Aws::Inspector::Endpoints::StopAssessmentRun.build(context)
          when :subscribe_to_event
            Aws::Inspector::Endpoints::SubscribeToEvent.build(context)
          when :unsubscribe_from_event
            Aws::Inspector::Endpoints::UnsubscribeFromEvent.build(context)
          when :update_assessment_target
            Aws::Inspector::Endpoints::UpdateAssessmentTarget.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
