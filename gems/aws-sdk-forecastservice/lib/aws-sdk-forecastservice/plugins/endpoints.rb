# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ForecastService
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ForecastService::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ForecastService::EndpointParameters`'
      ) do |cfg|
        Aws::ForecastService::EndpointProvider.new
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
          when :create_auto_predictor
            Aws::ForecastService::Endpoints::CreateAutoPredictor.build(context)
          when :create_dataset
            Aws::ForecastService::Endpoints::CreateDataset.build(context)
          when :create_dataset_group
            Aws::ForecastService::Endpoints::CreateDatasetGroup.build(context)
          when :create_dataset_import_job
            Aws::ForecastService::Endpoints::CreateDatasetImportJob.build(context)
          when :create_explainability
            Aws::ForecastService::Endpoints::CreateExplainability.build(context)
          when :create_explainability_export
            Aws::ForecastService::Endpoints::CreateExplainabilityExport.build(context)
          when :create_forecast
            Aws::ForecastService::Endpoints::CreateForecast.build(context)
          when :create_forecast_export_job
            Aws::ForecastService::Endpoints::CreateForecastExportJob.build(context)
          when :create_monitor
            Aws::ForecastService::Endpoints::CreateMonitor.build(context)
          when :create_predictor
            Aws::ForecastService::Endpoints::CreatePredictor.build(context)
          when :create_predictor_backtest_export_job
            Aws::ForecastService::Endpoints::CreatePredictorBacktestExportJob.build(context)
          when :create_what_if_analysis
            Aws::ForecastService::Endpoints::CreateWhatIfAnalysis.build(context)
          when :create_what_if_forecast
            Aws::ForecastService::Endpoints::CreateWhatIfForecast.build(context)
          when :create_what_if_forecast_export
            Aws::ForecastService::Endpoints::CreateWhatIfForecastExport.build(context)
          when :delete_dataset
            Aws::ForecastService::Endpoints::DeleteDataset.build(context)
          when :delete_dataset_group
            Aws::ForecastService::Endpoints::DeleteDatasetGroup.build(context)
          when :delete_dataset_import_job
            Aws::ForecastService::Endpoints::DeleteDatasetImportJob.build(context)
          when :delete_explainability
            Aws::ForecastService::Endpoints::DeleteExplainability.build(context)
          when :delete_explainability_export
            Aws::ForecastService::Endpoints::DeleteExplainabilityExport.build(context)
          when :delete_forecast
            Aws::ForecastService::Endpoints::DeleteForecast.build(context)
          when :delete_forecast_export_job
            Aws::ForecastService::Endpoints::DeleteForecastExportJob.build(context)
          when :delete_monitor
            Aws::ForecastService::Endpoints::DeleteMonitor.build(context)
          when :delete_predictor
            Aws::ForecastService::Endpoints::DeletePredictor.build(context)
          when :delete_predictor_backtest_export_job
            Aws::ForecastService::Endpoints::DeletePredictorBacktestExportJob.build(context)
          when :delete_resource_tree
            Aws::ForecastService::Endpoints::DeleteResourceTree.build(context)
          when :delete_what_if_analysis
            Aws::ForecastService::Endpoints::DeleteWhatIfAnalysis.build(context)
          when :delete_what_if_forecast
            Aws::ForecastService::Endpoints::DeleteWhatIfForecast.build(context)
          when :delete_what_if_forecast_export
            Aws::ForecastService::Endpoints::DeleteWhatIfForecastExport.build(context)
          when :describe_auto_predictor
            Aws::ForecastService::Endpoints::DescribeAutoPredictor.build(context)
          when :describe_dataset
            Aws::ForecastService::Endpoints::DescribeDataset.build(context)
          when :describe_dataset_group
            Aws::ForecastService::Endpoints::DescribeDatasetGroup.build(context)
          when :describe_dataset_import_job
            Aws::ForecastService::Endpoints::DescribeDatasetImportJob.build(context)
          when :describe_explainability
            Aws::ForecastService::Endpoints::DescribeExplainability.build(context)
          when :describe_explainability_export
            Aws::ForecastService::Endpoints::DescribeExplainabilityExport.build(context)
          when :describe_forecast
            Aws::ForecastService::Endpoints::DescribeForecast.build(context)
          when :describe_forecast_export_job
            Aws::ForecastService::Endpoints::DescribeForecastExportJob.build(context)
          when :describe_monitor
            Aws::ForecastService::Endpoints::DescribeMonitor.build(context)
          when :describe_predictor
            Aws::ForecastService::Endpoints::DescribePredictor.build(context)
          when :describe_predictor_backtest_export_job
            Aws::ForecastService::Endpoints::DescribePredictorBacktestExportJob.build(context)
          when :describe_what_if_analysis
            Aws::ForecastService::Endpoints::DescribeWhatIfAnalysis.build(context)
          when :describe_what_if_forecast
            Aws::ForecastService::Endpoints::DescribeWhatIfForecast.build(context)
          when :describe_what_if_forecast_export
            Aws::ForecastService::Endpoints::DescribeWhatIfForecastExport.build(context)
          when :get_accuracy_metrics
            Aws::ForecastService::Endpoints::GetAccuracyMetrics.build(context)
          when :list_dataset_groups
            Aws::ForecastService::Endpoints::ListDatasetGroups.build(context)
          when :list_dataset_import_jobs
            Aws::ForecastService::Endpoints::ListDatasetImportJobs.build(context)
          when :list_datasets
            Aws::ForecastService::Endpoints::ListDatasets.build(context)
          when :list_explainabilities
            Aws::ForecastService::Endpoints::ListExplainabilities.build(context)
          when :list_explainability_exports
            Aws::ForecastService::Endpoints::ListExplainabilityExports.build(context)
          when :list_forecast_export_jobs
            Aws::ForecastService::Endpoints::ListForecastExportJobs.build(context)
          when :list_forecasts
            Aws::ForecastService::Endpoints::ListForecasts.build(context)
          when :list_monitor_evaluations
            Aws::ForecastService::Endpoints::ListMonitorEvaluations.build(context)
          when :list_monitors
            Aws::ForecastService::Endpoints::ListMonitors.build(context)
          when :list_predictor_backtest_export_jobs
            Aws::ForecastService::Endpoints::ListPredictorBacktestExportJobs.build(context)
          when :list_predictors
            Aws::ForecastService::Endpoints::ListPredictors.build(context)
          when :list_tags_for_resource
            Aws::ForecastService::Endpoints::ListTagsForResource.build(context)
          when :list_what_if_analyses
            Aws::ForecastService::Endpoints::ListWhatIfAnalyses.build(context)
          when :list_what_if_forecast_exports
            Aws::ForecastService::Endpoints::ListWhatIfForecastExports.build(context)
          when :list_what_if_forecasts
            Aws::ForecastService::Endpoints::ListWhatIfForecasts.build(context)
          when :resume_resource
            Aws::ForecastService::Endpoints::ResumeResource.build(context)
          when :stop_resource
            Aws::ForecastService::Endpoints::StopResource.build(context)
          when :tag_resource
            Aws::ForecastService::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ForecastService::Endpoints::UntagResource.build(context)
          when :update_dataset_group
            Aws::ForecastService::Endpoints::UpdateDatasetGroup.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
