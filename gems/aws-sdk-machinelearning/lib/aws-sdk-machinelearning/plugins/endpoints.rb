# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MachineLearning
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::MachineLearning::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::MachineLearning::EndpointParameters`'
      ) do |cfg|
        Aws::MachineLearning::EndpointProvider.new
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
          when :add_tags
            Aws::MachineLearning::Endpoints::AddTags.build(context)
          when :create_batch_prediction
            Aws::MachineLearning::Endpoints::CreateBatchPrediction.build(context)
          when :create_data_source_from_rds
            Aws::MachineLearning::Endpoints::CreateDataSourceFromRDS.build(context)
          when :create_data_source_from_redshift
            Aws::MachineLearning::Endpoints::CreateDataSourceFromRedshift.build(context)
          when :create_data_source_from_s3
            Aws::MachineLearning::Endpoints::CreateDataSourceFromS3.build(context)
          when :create_evaluation
            Aws::MachineLearning::Endpoints::CreateEvaluation.build(context)
          when :create_ml_model
            Aws::MachineLearning::Endpoints::CreateMLModel.build(context)
          when :create_realtime_endpoint
            Aws::MachineLearning::Endpoints::CreateRealtimeEndpoint.build(context)
          when :delete_batch_prediction
            Aws::MachineLearning::Endpoints::DeleteBatchPrediction.build(context)
          when :delete_data_source
            Aws::MachineLearning::Endpoints::DeleteDataSource.build(context)
          when :delete_evaluation
            Aws::MachineLearning::Endpoints::DeleteEvaluation.build(context)
          when :delete_ml_model
            Aws::MachineLearning::Endpoints::DeleteMLModel.build(context)
          when :delete_realtime_endpoint
            Aws::MachineLearning::Endpoints::DeleteRealtimeEndpoint.build(context)
          when :delete_tags
            Aws::MachineLearning::Endpoints::DeleteTags.build(context)
          when :describe_batch_predictions
            Aws::MachineLearning::Endpoints::DescribeBatchPredictions.build(context)
          when :describe_data_sources
            Aws::MachineLearning::Endpoints::DescribeDataSources.build(context)
          when :describe_evaluations
            Aws::MachineLearning::Endpoints::DescribeEvaluations.build(context)
          when :describe_ml_models
            Aws::MachineLearning::Endpoints::DescribeMLModels.build(context)
          when :describe_tags
            Aws::MachineLearning::Endpoints::DescribeTags.build(context)
          when :get_batch_prediction
            Aws::MachineLearning::Endpoints::GetBatchPrediction.build(context)
          when :get_data_source
            Aws::MachineLearning::Endpoints::GetDataSource.build(context)
          when :get_evaluation
            Aws::MachineLearning::Endpoints::GetEvaluation.build(context)
          when :get_ml_model
            Aws::MachineLearning::Endpoints::GetMLModel.build(context)
          when :predict
            Aws::MachineLearning::Endpoints::Predict.build(context)
          when :update_batch_prediction
            Aws::MachineLearning::Endpoints::UpdateBatchPrediction.build(context)
          when :update_data_source
            Aws::MachineLearning::Endpoints::UpdateDataSource.build(context)
          when :update_evaluation
            Aws::MachineLearning::Endpoints::UpdateEvaluation.build(context)
          when :update_ml_model
            Aws::MachineLearning::Endpoints::UpdateMLModel.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
