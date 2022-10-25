# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::TranscribeService
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::TranscribeService::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::TranscribeService::EndpointParameters`'
      ) do |cfg|
        Aws::TranscribeService::EndpointProvider.new
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
          when :create_call_analytics_category
            Aws::TranscribeService::Endpoints::CreateCallAnalyticsCategory.build(context)
          when :create_language_model
            Aws::TranscribeService::Endpoints::CreateLanguageModel.build(context)
          when :create_medical_vocabulary
            Aws::TranscribeService::Endpoints::CreateMedicalVocabulary.build(context)
          when :create_vocabulary
            Aws::TranscribeService::Endpoints::CreateVocabulary.build(context)
          when :create_vocabulary_filter
            Aws::TranscribeService::Endpoints::CreateVocabularyFilter.build(context)
          when :delete_call_analytics_category
            Aws::TranscribeService::Endpoints::DeleteCallAnalyticsCategory.build(context)
          when :delete_call_analytics_job
            Aws::TranscribeService::Endpoints::DeleteCallAnalyticsJob.build(context)
          when :delete_language_model
            Aws::TranscribeService::Endpoints::DeleteLanguageModel.build(context)
          when :delete_medical_transcription_job
            Aws::TranscribeService::Endpoints::DeleteMedicalTranscriptionJob.build(context)
          when :delete_medical_vocabulary
            Aws::TranscribeService::Endpoints::DeleteMedicalVocabulary.build(context)
          when :delete_transcription_job
            Aws::TranscribeService::Endpoints::DeleteTranscriptionJob.build(context)
          when :delete_vocabulary
            Aws::TranscribeService::Endpoints::DeleteVocabulary.build(context)
          when :delete_vocabulary_filter
            Aws::TranscribeService::Endpoints::DeleteVocabularyFilter.build(context)
          when :describe_language_model
            Aws::TranscribeService::Endpoints::DescribeLanguageModel.build(context)
          when :get_call_analytics_category
            Aws::TranscribeService::Endpoints::GetCallAnalyticsCategory.build(context)
          when :get_call_analytics_job
            Aws::TranscribeService::Endpoints::GetCallAnalyticsJob.build(context)
          when :get_medical_transcription_job
            Aws::TranscribeService::Endpoints::GetMedicalTranscriptionJob.build(context)
          when :get_medical_vocabulary
            Aws::TranscribeService::Endpoints::GetMedicalVocabulary.build(context)
          when :get_transcription_job
            Aws::TranscribeService::Endpoints::GetTranscriptionJob.build(context)
          when :get_vocabulary
            Aws::TranscribeService::Endpoints::GetVocabulary.build(context)
          when :get_vocabulary_filter
            Aws::TranscribeService::Endpoints::GetVocabularyFilter.build(context)
          when :list_call_analytics_categories
            Aws::TranscribeService::Endpoints::ListCallAnalyticsCategories.build(context)
          when :list_call_analytics_jobs
            Aws::TranscribeService::Endpoints::ListCallAnalyticsJobs.build(context)
          when :list_language_models
            Aws::TranscribeService::Endpoints::ListLanguageModels.build(context)
          when :list_medical_transcription_jobs
            Aws::TranscribeService::Endpoints::ListMedicalTranscriptionJobs.build(context)
          when :list_medical_vocabularies
            Aws::TranscribeService::Endpoints::ListMedicalVocabularies.build(context)
          when :list_tags_for_resource
            Aws::TranscribeService::Endpoints::ListTagsForResource.build(context)
          when :list_transcription_jobs
            Aws::TranscribeService::Endpoints::ListTranscriptionJobs.build(context)
          when :list_vocabularies
            Aws::TranscribeService::Endpoints::ListVocabularies.build(context)
          when :list_vocabulary_filters
            Aws::TranscribeService::Endpoints::ListVocabularyFilters.build(context)
          when :start_call_analytics_job
            Aws::TranscribeService::Endpoints::StartCallAnalyticsJob.build(context)
          when :start_medical_transcription_job
            Aws::TranscribeService::Endpoints::StartMedicalTranscriptionJob.build(context)
          when :start_transcription_job
            Aws::TranscribeService::Endpoints::StartTranscriptionJob.build(context)
          when :tag_resource
            Aws::TranscribeService::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::TranscribeService::Endpoints::UntagResource.build(context)
          when :update_call_analytics_category
            Aws::TranscribeService::Endpoints::UpdateCallAnalyticsCategory.build(context)
          when :update_medical_vocabulary
            Aws::TranscribeService::Endpoints::UpdateMedicalVocabulary.build(context)
          when :update_vocabulary
            Aws::TranscribeService::Endpoints::UpdateVocabulary.build(context)
          when :update_vocabulary_filter
            Aws::TranscribeService::Endpoints::UpdateVocabularyFilter.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
