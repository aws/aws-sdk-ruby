# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ConfigService
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ConfigService::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ConfigService::EndpointParameters`'
      ) do |cfg|
        Aws::ConfigService::EndpointProvider.new
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
          when :batch_get_aggregate_resource_config
            Aws::ConfigService::Endpoints::BatchGetAggregateResourceConfig.build(context)
          when :batch_get_resource_config
            Aws::ConfigService::Endpoints::BatchGetResourceConfig.build(context)
          when :delete_aggregation_authorization
            Aws::ConfigService::Endpoints::DeleteAggregationAuthorization.build(context)
          when :delete_config_rule
            Aws::ConfigService::Endpoints::DeleteConfigRule.build(context)
          when :delete_configuration_aggregator
            Aws::ConfigService::Endpoints::DeleteConfigurationAggregator.build(context)
          when :delete_configuration_recorder
            Aws::ConfigService::Endpoints::DeleteConfigurationRecorder.build(context)
          when :delete_conformance_pack
            Aws::ConfigService::Endpoints::DeleteConformancePack.build(context)
          when :delete_delivery_channel
            Aws::ConfigService::Endpoints::DeleteDeliveryChannel.build(context)
          when :delete_evaluation_results
            Aws::ConfigService::Endpoints::DeleteEvaluationResults.build(context)
          when :delete_organization_config_rule
            Aws::ConfigService::Endpoints::DeleteOrganizationConfigRule.build(context)
          when :delete_organization_conformance_pack
            Aws::ConfigService::Endpoints::DeleteOrganizationConformancePack.build(context)
          when :delete_pending_aggregation_request
            Aws::ConfigService::Endpoints::DeletePendingAggregationRequest.build(context)
          when :delete_remediation_configuration
            Aws::ConfigService::Endpoints::DeleteRemediationConfiguration.build(context)
          when :delete_remediation_exceptions
            Aws::ConfigService::Endpoints::DeleteRemediationExceptions.build(context)
          when :delete_resource_config
            Aws::ConfigService::Endpoints::DeleteResourceConfig.build(context)
          when :delete_retention_configuration
            Aws::ConfigService::Endpoints::DeleteRetentionConfiguration.build(context)
          when :delete_stored_query
            Aws::ConfigService::Endpoints::DeleteStoredQuery.build(context)
          when :deliver_config_snapshot
            Aws::ConfigService::Endpoints::DeliverConfigSnapshot.build(context)
          when :describe_aggregate_compliance_by_config_rules
            Aws::ConfigService::Endpoints::DescribeAggregateComplianceByConfigRules.build(context)
          when :describe_aggregate_compliance_by_conformance_packs
            Aws::ConfigService::Endpoints::DescribeAggregateComplianceByConformancePacks.build(context)
          when :describe_aggregation_authorizations
            Aws::ConfigService::Endpoints::DescribeAggregationAuthorizations.build(context)
          when :describe_compliance_by_config_rule
            Aws::ConfigService::Endpoints::DescribeComplianceByConfigRule.build(context)
          when :describe_compliance_by_resource
            Aws::ConfigService::Endpoints::DescribeComplianceByResource.build(context)
          when :describe_config_rule_evaluation_status
            Aws::ConfigService::Endpoints::DescribeConfigRuleEvaluationStatus.build(context)
          when :describe_config_rules
            Aws::ConfigService::Endpoints::DescribeConfigRules.build(context)
          when :describe_configuration_aggregator_sources_status
            Aws::ConfigService::Endpoints::DescribeConfigurationAggregatorSourcesStatus.build(context)
          when :describe_configuration_aggregators
            Aws::ConfigService::Endpoints::DescribeConfigurationAggregators.build(context)
          when :describe_configuration_recorder_status
            Aws::ConfigService::Endpoints::DescribeConfigurationRecorderStatus.build(context)
          when :describe_configuration_recorders
            Aws::ConfigService::Endpoints::DescribeConfigurationRecorders.build(context)
          when :describe_conformance_pack_compliance
            Aws::ConfigService::Endpoints::DescribeConformancePackCompliance.build(context)
          when :describe_conformance_pack_status
            Aws::ConfigService::Endpoints::DescribeConformancePackStatus.build(context)
          when :describe_conformance_packs
            Aws::ConfigService::Endpoints::DescribeConformancePacks.build(context)
          when :describe_delivery_channel_status
            Aws::ConfigService::Endpoints::DescribeDeliveryChannelStatus.build(context)
          when :describe_delivery_channels
            Aws::ConfigService::Endpoints::DescribeDeliveryChannels.build(context)
          when :describe_organization_config_rule_statuses
            Aws::ConfigService::Endpoints::DescribeOrganizationConfigRuleStatuses.build(context)
          when :describe_organization_config_rules
            Aws::ConfigService::Endpoints::DescribeOrganizationConfigRules.build(context)
          when :describe_organization_conformance_pack_statuses
            Aws::ConfigService::Endpoints::DescribeOrganizationConformancePackStatuses.build(context)
          when :describe_organization_conformance_packs
            Aws::ConfigService::Endpoints::DescribeOrganizationConformancePacks.build(context)
          when :describe_pending_aggregation_requests
            Aws::ConfigService::Endpoints::DescribePendingAggregationRequests.build(context)
          when :describe_remediation_configurations
            Aws::ConfigService::Endpoints::DescribeRemediationConfigurations.build(context)
          when :describe_remediation_exceptions
            Aws::ConfigService::Endpoints::DescribeRemediationExceptions.build(context)
          when :describe_remediation_execution_status
            Aws::ConfigService::Endpoints::DescribeRemediationExecutionStatus.build(context)
          when :describe_retention_configurations
            Aws::ConfigService::Endpoints::DescribeRetentionConfigurations.build(context)
          when :get_aggregate_compliance_details_by_config_rule
            Aws::ConfigService::Endpoints::GetAggregateComplianceDetailsByConfigRule.build(context)
          when :get_aggregate_config_rule_compliance_summary
            Aws::ConfigService::Endpoints::GetAggregateConfigRuleComplianceSummary.build(context)
          when :get_aggregate_conformance_pack_compliance_summary
            Aws::ConfigService::Endpoints::GetAggregateConformancePackComplianceSummary.build(context)
          when :get_aggregate_discovered_resource_counts
            Aws::ConfigService::Endpoints::GetAggregateDiscoveredResourceCounts.build(context)
          when :get_aggregate_resource_config
            Aws::ConfigService::Endpoints::GetAggregateResourceConfig.build(context)
          when :get_compliance_details_by_config_rule
            Aws::ConfigService::Endpoints::GetComplianceDetailsByConfigRule.build(context)
          when :get_compliance_details_by_resource
            Aws::ConfigService::Endpoints::GetComplianceDetailsByResource.build(context)
          when :get_compliance_summary_by_config_rule
            Aws::ConfigService::Endpoints::GetComplianceSummaryByConfigRule.build(context)
          when :get_compliance_summary_by_resource_type
            Aws::ConfigService::Endpoints::GetComplianceSummaryByResourceType.build(context)
          when :get_conformance_pack_compliance_details
            Aws::ConfigService::Endpoints::GetConformancePackComplianceDetails.build(context)
          when :get_conformance_pack_compliance_summary
            Aws::ConfigService::Endpoints::GetConformancePackComplianceSummary.build(context)
          when :get_custom_rule_policy
            Aws::ConfigService::Endpoints::GetCustomRulePolicy.build(context)
          when :get_discovered_resource_counts
            Aws::ConfigService::Endpoints::GetDiscoveredResourceCounts.build(context)
          when :get_organization_config_rule_detailed_status
            Aws::ConfigService::Endpoints::GetOrganizationConfigRuleDetailedStatus.build(context)
          when :get_organization_conformance_pack_detailed_status
            Aws::ConfigService::Endpoints::GetOrganizationConformancePackDetailedStatus.build(context)
          when :get_organization_custom_rule_policy
            Aws::ConfigService::Endpoints::GetOrganizationCustomRulePolicy.build(context)
          when :get_resource_config_history
            Aws::ConfigService::Endpoints::GetResourceConfigHistory.build(context)
          when :get_resource_evaluation_summary
            Aws::ConfigService::Endpoints::GetResourceEvaluationSummary.build(context)
          when :get_stored_query
            Aws::ConfigService::Endpoints::GetStoredQuery.build(context)
          when :list_aggregate_discovered_resources
            Aws::ConfigService::Endpoints::ListAggregateDiscoveredResources.build(context)
          when :list_conformance_pack_compliance_scores
            Aws::ConfigService::Endpoints::ListConformancePackComplianceScores.build(context)
          when :list_discovered_resources
            Aws::ConfigService::Endpoints::ListDiscoveredResources.build(context)
          when :list_resource_evaluations
            Aws::ConfigService::Endpoints::ListResourceEvaluations.build(context)
          when :list_stored_queries
            Aws::ConfigService::Endpoints::ListStoredQueries.build(context)
          when :list_tags_for_resource
            Aws::ConfigService::Endpoints::ListTagsForResource.build(context)
          when :put_aggregation_authorization
            Aws::ConfigService::Endpoints::PutAggregationAuthorization.build(context)
          when :put_config_rule
            Aws::ConfigService::Endpoints::PutConfigRule.build(context)
          when :put_configuration_aggregator
            Aws::ConfigService::Endpoints::PutConfigurationAggregator.build(context)
          when :put_configuration_recorder
            Aws::ConfigService::Endpoints::PutConfigurationRecorder.build(context)
          when :put_conformance_pack
            Aws::ConfigService::Endpoints::PutConformancePack.build(context)
          when :put_delivery_channel
            Aws::ConfigService::Endpoints::PutDeliveryChannel.build(context)
          when :put_evaluations
            Aws::ConfigService::Endpoints::PutEvaluations.build(context)
          when :put_external_evaluation
            Aws::ConfigService::Endpoints::PutExternalEvaluation.build(context)
          when :put_organization_config_rule
            Aws::ConfigService::Endpoints::PutOrganizationConfigRule.build(context)
          when :put_organization_conformance_pack
            Aws::ConfigService::Endpoints::PutOrganizationConformancePack.build(context)
          when :put_remediation_configurations
            Aws::ConfigService::Endpoints::PutRemediationConfigurations.build(context)
          when :put_remediation_exceptions
            Aws::ConfigService::Endpoints::PutRemediationExceptions.build(context)
          when :put_resource_config
            Aws::ConfigService::Endpoints::PutResourceConfig.build(context)
          when :put_retention_configuration
            Aws::ConfigService::Endpoints::PutRetentionConfiguration.build(context)
          when :put_stored_query
            Aws::ConfigService::Endpoints::PutStoredQuery.build(context)
          when :select_aggregate_resource_config
            Aws::ConfigService::Endpoints::SelectAggregateResourceConfig.build(context)
          when :select_resource_config
            Aws::ConfigService::Endpoints::SelectResourceConfig.build(context)
          when :start_config_rules_evaluation
            Aws::ConfigService::Endpoints::StartConfigRulesEvaluation.build(context)
          when :start_configuration_recorder
            Aws::ConfigService::Endpoints::StartConfigurationRecorder.build(context)
          when :start_remediation_execution
            Aws::ConfigService::Endpoints::StartRemediationExecution.build(context)
          when :start_resource_evaluation
            Aws::ConfigService::Endpoints::StartResourceEvaluation.build(context)
          when :stop_configuration_recorder
            Aws::ConfigService::Endpoints::StopConfigurationRecorder.build(context)
          when :tag_resource
            Aws::ConfigService::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ConfigService::Endpoints::UntagResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
