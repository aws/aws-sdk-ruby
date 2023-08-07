# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Personalize
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Personalize::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Personalize::EndpointParameters`'
      ) do |cfg|
        Aws::Personalize::EndpointProvider.new
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
          when :create_batch_inference_job
            Aws::Personalize::Endpoints::CreateBatchInferenceJob.build(context)
          when :create_batch_segment_job
            Aws::Personalize::Endpoints::CreateBatchSegmentJob.build(context)
          when :create_campaign
            Aws::Personalize::Endpoints::CreateCampaign.build(context)
          when :create_dataset
            Aws::Personalize::Endpoints::CreateDataset.build(context)
          when :create_dataset_export_job
            Aws::Personalize::Endpoints::CreateDatasetExportJob.build(context)
          when :create_dataset_group
            Aws::Personalize::Endpoints::CreateDatasetGroup.build(context)
          when :create_dataset_import_job
            Aws::Personalize::Endpoints::CreateDatasetImportJob.build(context)
          when :create_event_tracker
            Aws::Personalize::Endpoints::CreateEventTracker.build(context)
          when :create_filter
            Aws::Personalize::Endpoints::CreateFilter.build(context)
          when :create_metric_attribution
            Aws::Personalize::Endpoints::CreateMetricAttribution.build(context)
          when :create_recommender
            Aws::Personalize::Endpoints::CreateRecommender.build(context)
          when :create_schema
            Aws::Personalize::Endpoints::CreateSchema.build(context)
          when :create_solution
            Aws::Personalize::Endpoints::CreateSolution.build(context)
          when :create_solution_version
            Aws::Personalize::Endpoints::CreateSolutionVersion.build(context)
          when :delete_campaign
            Aws::Personalize::Endpoints::DeleteCampaign.build(context)
          when :delete_dataset
            Aws::Personalize::Endpoints::DeleteDataset.build(context)
          when :delete_dataset_group
            Aws::Personalize::Endpoints::DeleteDatasetGroup.build(context)
          when :delete_event_tracker
            Aws::Personalize::Endpoints::DeleteEventTracker.build(context)
          when :delete_filter
            Aws::Personalize::Endpoints::DeleteFilter.build(context)
          when :delete_metric_attribution
            Aws::Personalize::Endpoints::DeleteMetricAttribution.build(context)
          when :delete_recommender
            Aws::Personalize::Endpoints::DeleteRecommender.build(context)
          when :delete_schema
            Aws::Personalize::Endpoints::DeleteSchema.build(context)
          when :delete_solution
            Aws::Personalize::Endpoints::DeleteSolution.build(context)
          when :describe_algorithm
            Aws::Personalize::Endpoints::DescribeAlgorithm.build(context)
          when :describe_batch_inference_job
            Aws::Personalize::Endpoints::DescribeBatchInferenceJob.build(context)
          when :describe_batch_segment_job
            Aws::Personalize::Endpoints::DescribeBatchSegmentJob.build(context)
          when :describe_campaign
            Aws::Personalize::Endpoints::DescribeCampaign.build(context)
          when :describe_dataset
            Aws::Personalize::Endpoints::DescribeDataset.build(context)
          when :describe_dataset_export_job
            Aws::Personalize::Endpoints::DescribeDatasetExportJob.build(context)
          when :describe_dataset_group
            Aws::Personalize::Endpoints::DescribeDatasetGroup.build(context)
          when :describe_dataset_import_job
            Aws::Personalize::Endpoints::DescribeDatasetImportJob.build(context)
          when :describe_event_tracker
            Aws::Personalize::Endpoints::DescribeEventTracker.build(context)
          when :describe_feature_transformation
            Aws::Personalize::Endpoints::DescribeFeatureTransformation.build(context)
          when :describe_filter
            Aws::Personalize::Endpoints::DescribeFilter.build(context)
          when :describe_metric_attribution
            Aws::Personalize::Endpoints::DescribeMetricAttribution.build(context)
          when :describe_recipe
            Aws::Personalize::Endpoints::DescribeRecipe.build(context)
          when :describe_recommender
            Aws::Personalize::Endpoints::DescribeRecommender.build(context)
          when :describe_schema
            Aws::Personalize::Endpoints::DescribeSchema.build(context)
          when :describe_solution
            Aws::Personalize::Endpoints::DescribeSolution.build(context)
          when :describe_solution_version
            Aws::Personalize::Endpoints::DescribeSolutionVersion.build(context)
          when :get_solution_metrics
            Aws::Personalize::Endpoints::GetSolutionMetrics.build(context)
          when :list_batch_inference_jobs
            Aws::Personalize::Endpoints::ListBatchInferenceJobs.build(context)
          when :list_batch_segment_jobs
            Aws::Personalize::Endpoints::ListBatchSegmentJobs.build(context)
          when :list_campaigns
            Aws::Personalize::Endpoints::ListCampaigns.build(context)
          when :list_dataset_export_jobs
            Aws::Personalize::Endpoints::ListDatasetExportJobs.build(context)
          when :list_dataset_groups
            Aws::Personalize::Endpoints::ListDatasetGroups.build(context)
          when :list_dataset_import_jobs
            Aws::Personalize::Endpoints::ListDatasetImportJobs.build(context)
          when :list_datasets
            Aws::Personalize::Endpoints::ListDatasets.build(context)
          when :list_event_trackers
            Aws::Personalize::Endpoints::ListEventTrackers.build(context)
          when :list_filters
            Aws::Personalize::Endpoints::ListFilters.build(context)
          when :list_metric_attribution_metrics
            Aws::Personalize::Endpoints::ListMetricAttributionMetrics.build(context)
          when :list_metric_attributions
            Aws::Personalize::Endpoints::ListMetricAttributions.build(context)
          when :list_recipes
            Aws::Personalize::Endpoints::ListRecipes.build(context)
          when :list_recommenders
            Aws::Personalize::Endpoints::ListRecommenders.build(context)
          when :list_schemas
            Aws::Personalize::Endpoints::ListSchemas.build(context)
          when :list_solution_versions
            Aws::Personalize::Endpoints::ListSolutionVersions.build(context)
          when :list_solutions
            Aws::Personalize::Endpoints::ListSolutions.build(context)
          when :list_tags_for_resource
            Aws::Personalize::Endpoints::ListTagsForResource.build(context)
          when :start_recommender
            Aws::Personalize::Endpoints::StartRecommender.build(context)
          when :stop_recommender
            Aws::Personalize::Endpoints::StopRecommender.build(context)
          when :stop_solution_version_creation
            Aws::Personalize::Endpoints::StopSolutionVersionCreation.build(context)
          when :tag_resource
            Aws::Personalize::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Personalize::Endpoints::UntagResource.build(context)
          when :update_campaign
            Aws::Personalize::Endpoints::UpdateCampaign.build(context)
          when :update_dataset
            Aws::Personalize::Endpoints::UpdateDataset.build(context)
          when :update_metric_attribution
            Aws::Personalize::Endpoints::UpdateMetricAttribution.build(context)
          when :update_recommender
            Aws::Personalize::Endpoints::UpdateRecommender.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
