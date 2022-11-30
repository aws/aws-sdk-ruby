# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SageMakerGeospatial
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::SageMakerGeospatial::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::SageMakerGeospatial::EndpointParameters`'
      ) do |cfg|
        Aws::SageMakerGeospatial::EndpointProvider.new
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
          when :delete_earth_observation_job
            Aws::SageMakerGeospatial::Endpoints::DeleteEarthObservationJob.build(context)
          when :delete_vector_enrichment_job
            Aws::SageMakerGeospatial::Endpoints::DeleteVectorEnrichmentJob.build(context)
          when :export_earth_observation_job
            Aws::SageMakerGeospatial::Endpoints::ExportEarthObservationJob.build(context)
          when :export_vector_enrichment_job
            Aws::SageMakerGeospatial::Endpoints::ExportVectorEnrichmentJob.build(context)
          when :get_earth_observation_job
            Aws::SageMakerGeospatial::Endpoints::GetEarthObservationJob.build(context)
          when :get_raster_data_collection
            Aws::SageMakerGeospatial::Endpoints::GetRasterDataCollection.build(context)
          when :get_tile
            Aws::SageMakerGeospatial::Endpoints::GetTile.build(context)
          when :get_vector_enrichment_job
            Aws::SageMakerGeospatial::Endpoints::GetVectorEnrichmentJob.build(context)
          when :list_earth_observation_jobs
            Aws::SageMakerGeospatial::Endpoints::ListEarthObservationJobs.build(context)
          when :list_raster_data_collections
            Aws::SageMakerGeospatial::Endpoints::ListRasterDataCollections.build(context)
          when :list_tags_for_resource
            Aws::SageMakerGeospatial::Endpoints::ListTagsForResource.build(context)
          when :list_vector_enrichment_jobs
            Aws::SageMakerGeospatial::Endpoints::ListVectorEnrichmentJobs.build(context)
          when :search_raster_data_collection
            Aws::SageMakerGeospatial::Endpoints::SearchRasterDataCollection.build(context)
          when :start_earth_observation_job
            Aws::SageMakerGeospatial::Endpoints::StartEarthObservationJob.build(context)
          when :start_vector_enrichment_job
            Aws::SageMakerGeospatial::Endpoints::StartVectorEnrichmentJob.build(context)
          when :stop_earth_observation_job
            Aws::SageMakerGeospatial::Endpoints::StopEarthObservationJob.build(context)
          when :stop_vector_enrichment_job
            Aws::SageMakerGeospatial::Endpoints::StopVectorEnrichmentJob.build(context)
          when :tag_resource
            Aws::SageMakerGeospatial::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::SageMakerGeospatial::Endpoints::UntagResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
