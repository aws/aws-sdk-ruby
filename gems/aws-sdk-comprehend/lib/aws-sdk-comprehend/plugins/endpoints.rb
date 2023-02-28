# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Comprehend
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Comprehend::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Comprehend::EndpointParameters`'
      ) do |cfg|
        Aws::Comprehend::EndpointProvider.new
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
          when :batch_detect_dominant_language
            Aws::Comprehend::Endpoints::BatchDetectDominantLanguage.build(context)
          when :batch_detect_entities
            Aws::Comprehend::Endpoints::BatchDetectEntities.build(context)
          when :batch_detect_key_phrases
            Aws::Comprehend::Endpoints::BatchDetectKeyPhrases.build(context)
          when :batch_detect_sentiment
            Aws::Comprehend::Endpoints::BatchDetectSentiment.build(context)
          when :batch_detect_syntax
            Aws::Comprehend::Endpoints::BatchDetectSyntax.build(context)
          when :batch_detect_targeted_sentiment
            Aws::Comprehend::Endpoints::BatchDetectTargetedSentiment.build(context)
          when :classify_document
            Aws::Comprehend::Endpoints::ClassifyDocument.build(context)
          when :contains_pii_entities
            Aws::Comprehend::Endpoints::ContainsPiiEntities.build(context)
          when :create_dataset
            Aws::Comprehend::Endpoints::CreateDataset.build(context)
          when :create_document_classifier
            Aws::Comprehend::Endpoints::CreateDocumentClassifier.build(context)
          when :create_endpoint
            Aws::Comprehend::Endpoints::CreateEndpoint.build(context)
          when :create_entity_recognizer
            Aws::Comprehend::Endpoints::CreateEntityRecognizer.build(context)
          when :create_flywheel
            Aws::Comprehend::Endpoints::CreateFlywheel.build(context)
          when :delete_document_classifier
            Aws::Comprehend::Endpoints::DeleteDocumentClassifier.build(context)
          when :delete_endpoint
            Aws::Comprehend::Endpoints::DeleteEndpoint.build(context)
          when :delete_entity_recognizer
            Aws::Comprehend::Endpoints::DeleteEntityRecognizer.build(context)
          when :delete_flywheel
            Aws::Comprehend::Endpoints::DeleteFlywheel.build(context)
          when :delete_resource_policy
            Aws::Comprehend::Endpoints::DeleteResourcePolicy.build(context)
          when :describe_dataset
            Aws::Comprehend::Endpoints::DescribeDataset.build(context)
          when :describe_document_classification_job
            Aws::Comprehend::Endpoints::DescribeDocumentClassificationJob.build(context)
          when :describe_document_classifier
            Aws::Comprehend::Endpoints::DescribeDocumentClassifier.build(context)
          when :describe_dominant_language_detection_job
            Aws::Comprehend::Endpoints::DescribeDominantLanguageDetectionJob.build(context)
          when :describe_endpoint
            Aws::Comprehend::Endpoints::DescribeEndpoint.build(context)
          when :describe_entities_detection_job
            Aws::Comprehend::Endpoints::DescribeEntitiesDetectionJob.build(context)
          when :describe_entity_recognizer
            Aws::Comprehend::Endpoints::DescribeEntityRecognizer.build(context)
          when :describe_events_detection_job
            Aws::Comprehend::Endpoints::DescribeEventsDetectionJob.build(context)
          when :describe_flywheel
            Aws::Comprehend::Endpoints::DescribeFlywheel.build(context)
          when :describe_flywheel_iteration
            Aws::Comprehend::Endpoints::DescribeFlywheelIteration.build(context)
          when :describe_key_phrases_detection_job
            Aws::Comprehend::Endpoints::DescribeKeyPhrasesDetectionJob.build(context)
          when :describe_pii_entities_detection_job
            Aws::Comprehend::Endpoints::DescribePiiEntitiesDetectionJob.build(context)
          when :describe_resource_policy
            Aws::Comprehend::Endpoints::DescribeResourcePolicy.build(context)
          when :describe_sentiment_detection_job
            Aws::Comprehend::Endpoints::DescribeSentimentDetectionJob.build(context)
          when :describe_targeted_sentiment_detection_job
            Aws::Comprehend::Endpoints::DescribeTargetedSentimentDetectionJob.build(context)
          when :describe_topics_detection_job
            Aws::Comprehend::Endpoints::DescribeTopicsDetectionJob.build(context)
          when :detect_dominant_language
            Aws::Comprehend::Endpoints::DetectDominantLanguage.build(context)
          when :detect_entities
            Aws::Comprehend::Endpoints::DetectEntities.build(context)
          when :detect_key_phrases
            Aws::Comprehend::Endpoints::DetectKeyPhrases.build(context)
          when :detect_pii_entities
            Aws::Comprehend::Endpoints::DetectPiiEntities.build(context)
          when :detect_sentiment
            Aws::Comprehend::Endpoints::DetectSentiment.build(context)
          when :detect_syntax
            Aws::Comprehend::Endpoints::DetectSyntax.build(context)
          when :detect_targeted_sentiment
            Aws::Comprehend::Endpoints::DetectTargetedSentiment.build(context)
          when :import_model
            Aws::Comprehend::Endpoints::ImportModel.build(context)
          when :list_datasets
            Aws::Comprehend::Endpoints::ListDatasets.build(context)
          when :list_document_classification_jobs
            Aws::Comprehend::Endpoints::ListDocumentClassificationJobs.build(context)
          when :list_document_classifier_summaries
            Aws::Comprehend::Endpoints::ListDocumentClassifierSummaries.build(context)
          when :list_document_classifiers
            Aws::Comprehend::Endpoints::ListDocumentClassifiers.build(context)
          when :list_dominant_language_detection_jobs
            Aws::Comprehend::Endpoints::ListDominantLanguageDetectionJobs.build(context)
          when :list_endpoints
            Aws::Comprehend::Endpoints::ListEndpoints.build(context)
          when :list_entities_detection_jobs
            Aws::Comprehend::Endpoints::ListEntitiesDetectionJobs.build(context)
          when :list_entity_recognizer_summaries
            Aws::Comprehend::Endpoints::ListEntityRecognizerSummaries.build(context)
          when :list_entity_recognizers
            Aws::Comprehend::Endpoints::ListEntityRecognizers.build(context)
          when :list_events_detection_jobs
            Aws::Comprehend::Endpoints::ListEventsDetectionJobs.build(context)
          when :list_flywheel_iteration_history
            Aws::Comprehend::Endpoints::ListFlywheelIterationHistory.build(context)
          when :list_flywheels
            Aws::Comprehend::Endpoints::ListFlywheels.build(context)
          when :list_key_phrases_detection_jobs
            Aws::Comprehend::Endpoints::ListKeyPhrasesDetectionJobs.build(context)
          when :list_pii_entities_detection_jobs
            Aws::Comprehend::Endpoints::ListPiiEntitiesDetectionJobs.build(context)
          when :list_sentiment_detection_jobs
            Aws::Comprehend::Endpoints::ListSentimentDetectionJobs.build(context)
          when :list_tags_for_resource
            Aws::Comprehend::Endpoints::ListTagsForResource.build(context)
          when :list_targeted_sentiment_detection_jobs
            Aws::Comprehend::Endpoints::ListTargetedSentimentDetectionJobs.build(context)
          when :list_topics_detection_jobs
            Aws::Comprehend::Endpoints::ListTopicsDetectionJobs.build(context)
          when :put_resource_policy
            Aws::Comprehend::Endpoints::PutResourcePolicy.build(context)
          when :start_document_classification_job
            Aws::Comprehend::Endpoints::StartDocumentClassificationJob.build(context)
          when :start_dominant_language_detection_job
            Aws::Comprehend::Endpoints::StartDominantLanguageDetectionJob.build(context)
          when :start_entities_detection_job
            Aws::Comprehend::Endpoints::StartEntitiesDetectionJob.build(context)
          when :start_events_detection_job
            Aws::Comprehend::Endpoints::StartEventsDetectionJob.build(context)
          when :start_flywheel_iteration
            Aws::Comprehend::Endpoints::StartFlywheelIteration.build(context)
          when :start_key_phrases_detection_job
            Aws::Comprehend::Endpoints::StartKeyPhrasesDetectionJob.build(context)
          when :start_pii_entities_detection_job
            Aws::Comprehend::Endpoints::StartPiiEntitiesDetectionJob.build(context)
          when :start_sentiment_detection_job
            Aws::Comprehend::Endpoints::StartSentimentDetectionJob.build(context)
          when :start_targeted_sentiment_detection_job
            Aws::Comprehend::Endpoints::StartTargetedSentimentDetectionJob.build(context)
          when :start_topics_detection_job
            Aws::Comprehend::Endpoints::StartTopicsDetectionJob.build(context)
          when :stop_dominant_language_detection_job
            Aws::Comprehend::Endpoints::StopDominantLanguageDetectionJob.build(context)
          when :stop_entities_detection_job
            Aws::Comprehend::Endpoints::StopEntitiesDetectionJob.build(context)
          when :stop_events_detection_job
            Aws::Comprehend::Endpoints::StopEventsDetectionJob.build(context)
          when :stop_key_phrases_detection_job
            Aws::Comprehend::Endpoints::StopKeyPhrasesDetectionJob.build(context)
          when :stop_pii_entities_detection_job
            Aws::Comprehend::Endpoints::StopPiiEntitiesDetectionJob.build(context)
          when :stop_sentiment_detection_job
            Aws::Comprehend::Endpoints::StopSentimentDetectionJob.build(context)
          when :stop_targeted_sentiment_detection_job
            Aws::Comprehend::Endpoints::StopTargetedSentimentDetectionJob.build(context)
          when :stop_training_document_classifier
            Aws::Comprehend::Endpoints::StopTrainingDocumentClassifier.build(context)
          when :stop_training_entity_recognizer
            Aws::Comprehend::Endpoints::StopTrainingEntityRecognizer.build(context)
          when :tag_resource
            Aws::Comprehend::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Comprehend::Endpoints::UntagResource.build(context)
          when :update_endpoint
            Aws::Comprehend::Endpoints::UpdateEndpoint.build(context)
          when :update_flywheel
            Aws::Comprehend::Endpoints::UpdateFlywheel.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
