# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Neptunedata
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Neptunedata::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Neptunedata::EndpointParameters`'
      ) do |cfg|
        Aws::Neptunedata::EndpointProvider.new
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
          when :cancel_gremlin_query
            Aws::Neptunedata::Endpoints::CancelGremlinQuery.build(context)
          when :cancel_loader_job
            Aws::Neptunedata::Endpoints::CancelLoaderJob.build(context)
          when :cancel_ml_data_processing_job
            Aws::Neptunedata::Endpoints::CancelMLDataProcessingJob.build(context)
          when :cancel_ml_model_training_job
            Aws::Neptunedata::Endpoints::CancelMLModelTrainingJob.build(context)
          when :cancel_ml_model_transform_job
            Aws::Neptunedata::Endpoints::CancelMLModelTransformJob.build(context)
          when :cancel_open_cypher_query
            Aws::Neptunedata::Endpoints::CancelOpenCypherQuery.build(context)
          when :create_ml_endpoint
            Aws::Neptunedata::Endpoints::CreateMLEndpoint.build(context)
          when :delete_ml_endpoint
            Aws::Neptunedata::Endpoints::DeleteMLEndpoint.build(context)
          when :delete_propertygraph_statistics
            Aws::Neptunedata::Endpoints::DeletePropertygraphStatistics.build(context)
          when :delete_sparql_statistics
            Aws::Neptunedata::Endpoints::DeleteSparqlStatistics.build(context)
          when :execute_fast_reset
            Aws::Neptunedata::Endpoints::ExecuteFastReset.build(context)
          when :execute_gremlin_explain_query
            Aws::Neptunedata::Endpoints::ExecuteGremlinExplainQuery.build(context)
          when :execute_gremlin_profile_query
            Aws::Neptunedata::Endpoints::ExecuteGremlinProfileQuery.build(context)
          when :execute_gremlin_query
            Aws::Neptunedata::Endpoints::ExecuteGremlinQuery.build(context)
          when :execute_open_cypher_explain_query
            Aws::Neptunedata::Endpoints::ExecuteOpenCypherExplainQuery.build(context)
          when :execute_open_cypher_query
            Aws::Neptunedata::Endpoints::ExecuteOpenCypherQuery.build(context)
          when :get_engine_status
            Aws::Neptunedata::Endpoints::GetEngineStatus.build(context)
          when :get_gremlin_query_status
            Aws::Neptunedata::Endpoints::GetGremlinQueryStatus.build(context)
          when :get_loader_job_status
            Aws::Neptunedata::Endpoints::GetLoaderJobStatus.build(context)
          when :get_ml_data_processing_job
            Aws::Neptunedata::Endpoints::GetMLDataProcessingJob.build(context)
          when :get_ml_endpoint
            Aws::Neptunedata::Endpoints::GetMLEndpoint.build(context)
          when :get_ml_model_training_job
            Aws::Neptunedata::Endpoints::GetMLModelTrainingJob.build(context)
          when :get_ml_model_transform_job
            Aws::Neptunedata::Endpoints::GetMLModelTransformJob.build(context)
          when :get_open_cypher_query_status
            Aws::Neptunedata::Endpoints::GetOpenCypherQueryStatus.build(context)
          when :get_propertygraph_statistics
            Aws::Neptunedata::Endpoints::GetPropertygraphStatistics.build(context)
          when :get_propertygraph_stream
            Aws::Neptunedata::Endpoints::GetPropertygraphStream.build(context)
          when :get_propertygraph_summary
            Aws::Neptunedata::Endpoints::GetPropertygraphSummary.build(context)
          when :get_rdf_graph_summary
            Aws::Neptunedata::Endpoints::GetRDFGraphSummary.build(context)
          when :get_sparql_statistics
            Aws::Neptunedata::Endpoints::GetSparqlStatistics.build(context)
          when :get_sparql_stream
            Aws::Neptunedata::Endpoints::GetSparqlStream.build(context)
          when :list_gremlin_queries
            Aws::Neptunedata::Endpoints::ListGremlinQueries.build(context)
          when :list_loader_jobs
            Aws::Neptunedata::Endpoints::ListLoaderJobs.build(context)
          when :list_ml_data_processing_jobs
            Aws::Neptunedata::Endpoints::ListMLDataProcessingJobs.build(context)
          when :list_ml_endpoints
            Aws::Neptunedata::Endpoints::ListMLEndpoints.build(context)
          when :list_ml_model_training_jobs
            Aws::Neptunedata::Endpoints::ListMLModelTrainingJobs.build(context)
          when :list_ml_model_transform_jobs
            Aws::Neptunedata::Endpoints::ListMLModelTransformJobs.build(context)
          when :list_open_cypher_queries
            Aws::Neptunedata::Endpoints::ListOpenCypherQueries.build(context)
          when :manage_propertygraph_statistics
            Aws::Neptunedata::Endpoints::ManagePropertygraphStatistics.build(context)
          when :manage_sparql_statistics
            Aws::Neptunedata::Endpoints::ManageSparqlStatistics.build(context)
          when :start_loader_job
            Aws::Neptunedata::Endpoints::StartLoaderJob.build(context)
          when :start_ml_data_processing_job
            Aws::Neptunedata::Endpoints::StartMLDataProcessingJob.build(context)
          when :start_ml_model_training_job
            Aws::Neptunedata::Endpoints::StartMLModelTrainingJob.build(context)
          when :start_ml_model_transform_job
            Aws::Neptunedata::Endpoints::StartMLModelTransformJob.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
