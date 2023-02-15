# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::FraudDetector
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::FraudDetector::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::FraudDetector::EndpointParameters`'
      ) do |cfg|
        Aws::FraudDetector::EndpointProvider.new
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
          when :batch_create_variable
            Aws::FraudDetector::Endpoints::BatchCreateVariable.build(context)
          when :batch_get_variable
            Aws::FraudDetector::Endpoints::BatchGetVariable.build(context)
          when :cancel_batch_import_job
            Aws::FraudDetector::Endpoints::CancelBatchImportJob.build(context)
          when :cancel_batch_prediction_job
            Aws::FraudDetector::Endpoints::CancelBatchPredictionJob.build(context)
          when :create_batch_import_job
            Aws::FraudDetector::Endpoints::CreateBatchImportJob.build(context)
          when :create_batch_prediction_job
            Aws::FraudDetector::Endpoints::CreateBatchPredictionJob.build(context)
          when :create_detector_version
            Aws::FraudDetector::Endpoints::CreateDetectorVersion.build(context)
          when :create_list
            Aws::FraudDetector::Endpoints::CreateList.build(context)
          when :create_model
            Aws::FraudDetector::Endpoints::CreateModel.build(context)
          when :create_model_version
            Aws::FraudDetector::Endpoints::CreateModelVersion.build(context)
          when :create_rule
            Aws::FraudDetector::Endpoints::CreateRule.build(context)
          when :create_variable
            Aws::FraudDetector::Endpoints::CreateVariable.build(context)
          when :delete_batch_import_job
            Aws::FraudDetector::Endpoints::DeleteBatchImportJob.build(context)
          when :delete_batch_prediction_job
            Aws::FraudDetector::Endpoints::DeleteBatchPredictionJob.build(context)
          when :delete_detector
            Aws::FraudDetector::Endpoints::DeleteDetector.build(context)
          when :delete_detector_version
            Aws::FraudDetector::Endpoints::DeleteDetectorVersion.build(context)
          when :delete_entity_type
            Aws::FraudDetector::Endpoints::DeleteEntityType.build(context)
          when :delete_event
            Aws::FraudDetector::Endpoints::DeleteEvent.build(context)
          when :delete_event_type
            Aws::FraudDetector::Endpoints::DeleteEventType.build(context)
          when :delete_events_by_event_type
            Aws::FraudDetector::Endpoints::DeleteEventsByEventType.build(context)
          when :delete_external_model
            Aws::FraudDetector::Endpoints::DeleteExternalModel.build(context)
          when :delete_label
            Aws::FraudDetector::Endpoints::DeleteLabel.build(context)
          when :delete_list
            Aws::FraudDetector::Endpoints::DeleteList.build(context)
          when :delete_model
            Aws::FraudDetector::Endpoints::DeleteModel.build(context)
          when :delete_model_version
            Aws::FraudDetector::Endpoints::DeleteModelVersion.build(context)
          when :delete_outcome
            Aws::FraudDetector::Endpoints::DeleteOutcome.build(context)
          when :delete_rule
            Aws::FraudDetector::Endpoints::DeleteRule.build(context)
          when :delete_variable
            Aws::FraudDetector::Endpoints::DeleteVariable.build(context)
          when :describe_detector
            Aws::FraudDetector::Endpoints::DescribeDetector.build(context)
          when :describe_model_versions
            Aws::FraudDetector::Endpoints::DescribeModelVersions.build(context)
          when :get_batch_import_jobs
            Aws::FraudDetector::Endpoints::GetBatchImportJobs.build(context)
          when :get_batch_prediction_jobs
            Aws::FraudDetector::Endpoints::GetBatchPredictionJobs.build(context)
          when :get_delete_events_by_event_type_status
            Aws::FraudDetector::Endpoints::GetDeleteEventsByEventTypeStatus.build(context)
          when :get_detector_version
            Aws::FraudDetector::Endpoints::GetDetectorVersion.build(context)
          when :get_detectors
            Aws::FraudDetector::Endpoints::GetDetectors.build(context)
          when :get_entity_types
            Aws::FraudDetector::Endpoints::GetEntityTypes.build(context)
          when :get_event
            Aws::FraudDetector::Endpoints::GetEvent.build(context)
          when :get_event_prediction
            Aws::FraudDetector::Endpoints::GetEventPrediction.build(context)
          when :get_event_prediction_metadata
            Aws::FraudDetector::Endpoints::GetEventPredictionMetadata.build(context)
          when :get_event_types
            Aws::FraudDetector::Endpoints::GetEventTypes.build(context)
          when :get_external_models
            Aws::FraudDetector::Endpoints::GetExternalModels.build(context)
          when :get_kms_encryption_key
            Aws::FraudDetector::Endpoints::GetKMSEncryptionKey.build(context)
          when :get_labels
            Aws::FraudDetector::Endpoints::GetLabels.build(context)
          when :get_list_elements
            Aws::FraudDetector::Endpoints::GetListElements.build(context)
          when :get_lists_metadata
            Aws::FraudDetector::Endpoints::GetListsMetadata.build(context)
          when :get_model_version
            Aws::FraudDetector::Endpoints::GetModelVersion.build(context)
          when :get_models
            Aws::FraudDetector::Endpoints::GetModels.build(context)
          when :get_outcomes
            Aws::FraudDetector::Endpoints::GetOutcomes.build(context)
          when :get_rules
            Aws::FraudDetector::Endpoints::GetRules.build(context)
          when :get_variables
            Aws::FraudDetector::Endpoints::GetVariables.build(context)
          when :list_event_predictions
            Aws::FraudDetector::Endpoints::ListEventPredictions.build(context)
          when :list_tags_for_resource
            Aws::FraudDetector::Endpoints::ListTagsForResource.build(context)
          when :put_detector
            Aws::FraudDetector::Endpoints::PutDetector.build(context)
          when :put_entity_type
            Aws::FraudDetector::Endpoints::PutEntityType.build(context)
          when :put_event_type
            Aws::FraudDetector::Endpoints::PutEventType.build(context)
          when :put_external_model
            Aws::FraudDetector::Endpoints::PutExternalModel.build(context)
          when :put_kms_encryption_key
            Aws::FraudDetector::Endpoints::PutKMSEncryptionKey.build(context)
          when :put_label
            Aws::FraudDetector::Endpoints::PutLabel.build(context)
          when :put_outcome
            Aws::FraudDetector::Endpoints::PutOutcome.build(context)
          when :send_event
            Aws::FraudDetector::Endpoints::SendEvent.build(context)
          when :tag_resource
            Aws::FraudDetector::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::FraudDetector::Endpoints::UntagResource.build(context)
          when :update_detector_version
            Aws::FraudDetector::Endpoints::UpdateDetectorVersion.build(context)
          when :update_detector_version_metadata
            Aws::FraudDetector::Endpoints::UpdateDetectorVersionMetadata.build(context)
          when :update_detector_version_status
            Aws::FraudDetector::Endpoints::UpdateDetectorVersionStatus.build(context)
          when :update_event_label
            Aws::FraudDetector::Endpoints::UpdateEventLabel.build(context)
          when :update_list
            Aws::FraudDetector::Endpoints::UpdateList.build(context)
          when :update_model
            Aws::FraudDetector::Endpoints::UpdateModel.build(context)
          when :update_model_version
            Aws::FraudDetector::Endpoints::UpdateModelVersion.build(context)
          when :update_model_version_status
            Aws::FraudDetector::Endpoints::UpdateModelVersionStatus.build(context)
          when :update_rule_metadata
            Aws::FraudDetector::Endpoints::UpdateRuleMetadata.build(context)
          when :update_rule_version
            Aws::FraudDetector::Endpoints::UpdateRuleVersion.build(context)
          when :update_variable
            Aws::FraudDetector::Endpoints::UpdateVariable.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
