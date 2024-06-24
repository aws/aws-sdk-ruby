# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CleanRoomsML
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CleanRoomsML::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CleanRoomsML::EndpointParameters`'
      ) do |cfg|
        Aws::CleanRoomsML::EndpointProvider.new
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
          when :create_audience_model
            Aws::CleanRoomsML::Endpoints::CreateAudienceModel.build(context)
          when :create_configured_audience_model
            Aws::CleanRoomsML::Endpoints::CreateConfiguredAudienceModel.build(context)
          when :create_training_dataset
            Aws::CleanRoomsML::Endpoints::CreateTrainingDataset.build(context)
          when :delete_audience_generation_job
            Aws::CleanRoomsML::Endpoints::DeleteAudienceGenerationJob.build(context)
          when :delete_audience_model
            Aws::CleanRoomsML::Endpoints::DeleteAudienceModel.build(context)
          when :delete_configured_audience_model
            Aws::CleanRoomsML::Endpoints::DeleteConfiguredAudienceModel.build(context)
          when :delete_configured_audience_model_policy
            Aws::CleanRoomsML::Endpoints::DeleteConfiguredAudienceModelPolicy.build(context)
          when :delete_training_dataset
            Aws::CleanRoomsML::Endpoints::DeleteTrainingDataset.build(context)
          when :get_audience_generation_job
            Aws::CleanRoomsML::Endpoints::GetAudienceGenerationJob.build(context)
          when :get_audience_model
            Aws::CleanRoomsML::Endpoints::GetAudienceModel.build(context)
          when :get_configured_audience_model
            Aws::CleanRoomsML::Endpoints::GetConfiguredAudienceModel.build(context)
          when :get_configured_audience_model_policy
            Aws::CleanRoomsML::Endpoints::GetConfiguredAudienceModelPolicy.build(context)
          when :get_training_dataset
            Aws::CleanRoomsML::Endpoints::GetTrainingDataset.build(context)
          when :list_audience_export_jobs
            Aws::CleanRoomsML::Endpoints::ListAudienceExportJobs.build(context)
          when :list_audience_generation_jobs
            Aws::CleanRoomsML::Endpoints::ListAudienceGenerationJobs.build(context)
          when :list_audience_models
            Aws::CleanRoomsML::Endpoints::ListAudienceModels.build(context)
          when :list_configured_audience_models
            Aws::CleanRoomsML::Endpoints::ListConfiguredAudienceModels.build(context)
          when :list_tags_for_resource
            Aws::CleanRoomsML::Endpoints::ListTagsForResource.build(context)
          when :list_training_datasets
            Aws::CleanRoomsML::Endpoints::ListTrainingDatasets.build(context)
          when :put_configured_audience_model_policy
            Aws::CleanRoomsML::Endpoints::PutConfiguredAudienceModelPolicy.build(context)
          when :start_audience_export_job
            Aws::CleanRoomsML::Endpoints::StartAudienceExportJob.build(context)
          when :start_audience_generation_job
            Aws::CleanRoomsML::Endpoints::StartAudienceGenerationJob.build(context)
          when :tag_resource
            Aws::CleanRoomsML::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::CleanRoomsML::Endpoints::UntagResource.build(context)
          when :update_configured_audience_model
            Aws::CleanRoomsML::Endpoints::UpdateConfiguredAudienceModel.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
