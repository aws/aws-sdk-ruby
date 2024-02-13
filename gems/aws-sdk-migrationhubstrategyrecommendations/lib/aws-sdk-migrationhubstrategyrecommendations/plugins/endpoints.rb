# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MigrationHubStrategyRecommendations
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::MigrationHubStrategyRecommendations::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::MigrationHubStrategyRecommendations::EndpointParameters`'
      ) do |cfg|
        Aws::MigrationHubStrategyRecommendations::EndpointProvider.new
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
          when :get_application_component_details
            Aws::MigrationHubStrategyRecommendations::Endpoints::GetApplicationComponentDetails.build(context)
          when :get_application_component_strategies
            Aws::MigrationHubStrategyRecommendations::Endpoints::GetApplicationComponentStrategies.build(context)
          when :get_assessment
            Aws::MigrationHubStrategyRecommendations::Endpoints::GetAssessment.build(context)
          when :get_import_file_task
            Aws::MigrationHubStrategyRecommendations::Endpoints::GetImportFileTask.build(context)
          when :get_latest_assessment_id
            Aws::MigrationHubStrategyRecommendations::Endpoints::GetLatestAssessmentId.build(context)
          when :get_portfolio_preferences
            Aws::MigrationHubStrategyRecommendations::Endpoints::GetPortfolioPreferences.build(context)
          when :get_portfolio_summary
            Aws::MigrationHubStrategyRecommendations::Endpoints::GetPortfolioSummary.build(context)
          when :get_recommendation_report_details
            Aws::MigrationHubStrategyRecommendations::Endpoints::GetRecommendationReportDetails.build(context)
          when :get_server_details
            Aws::MigrationHubStrategyRecommendations::Endpoints::GetServerDetails.build(context)
          when :get_server_strategies
            Aws::MigrationHubStrategyRecommendations::Endpoints::GetServerStrategies.build(context)
          when :list_analyzable_servers
            Aws::MigrationHubStrategyRecommendations::Endpoints::ListAnalyzableServers.build(context)
          when :list_application_components
            Aws::MigrationHubStrategyRecommendations::Endpoints::ListApplicationComponents.build(context)
          when :list_collectors
            Aws::MigrationHubStrategyRecommendations::Endpoints::ListCollectors.build(context)
          when :list_import_file_task
            Aws::MigrationHubStrategyRecommendations::Endpoints::ListImportFileTask.build(context)
          when :list_servers
            Aws::MigrationHubStrategyRecommendations::Endpoints::ListServers.build(context)
          when :put_portfolio_preferences
            Aws::MigrationHubStrategyRecommendations::Endpoints::PutPortfolioPreferences.build(context)
          when :start_assessment
            Aws::MigrationHubStrategyRecommendations::Endpoints::StartAssessment.build(context)
          when :start_import_file_task
            Aws::MigrationHubStrategyRecommendations::Endpoints::StartImportFileTask.build(context)
          when :start_recommendation_report_generation
            Aws::MigrationHubStrategyRecommendations::Endpoints::StartRecommendationReportGeneration.build(context)
          when :stop_assessment
            Aws::MigrationHubStrategyRecommendations::Endpoints::StopAssessment.build(context)
          when :update_application_component_config
            Aws::MigrationHubStrategyRecommendations::Endpoints::UpdateApplicationComponentConfig.build(context)
          when :update_server_config
            Aws::MigrationHubStrategyRecommendations::Endpoints::UpdateServerConfig.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
