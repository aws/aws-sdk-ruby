# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::LexModelsV2
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::LexModelsV2::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::LexModelsV2::EndpointParameters`'
      ) do |cfg|
        Aws::LexModelsV2::EndpointProvider.new
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
          when :batch_create_custom_vocabulary_item
            Aws::LexModelsV2::Endpoints::BatchCreateCustomVocabularyItem.build(context)
          when :batch_delete_custom_vocabulary_item
            Aws::LexModelsV2::Endpoints::BatchDeleteCustomVocabularyItem.build(context)
          when :batch_update_custom_vocabulary_item
            Aws::LexModelsV2::Endpoints::BatchUpdateCustomVocabularyItem.build(context)
          when :build_bot_locale
            Aws::LexModelsV2::Endpoints::BuildBotLocale.build(context)
          when :create_bot
            Aws::LexModelsV2::Endpoints::CreateBot.build(context)
          when :create_bot_alias
            Aws::LexModelsV2::Endpoints::CreateBotAlias.build(context)
          when :create_bot_locale
            Aws::LexModelsV2::Endpoints::CreateBotLocale.build(context)
          when :create_bot_version
            Aws::LexModelsV2::Endpoints::CreateBotVersion.build(context)
          when :create_export
            Aws::LexModelsV2::Endpoints::CreateExport.build(context)
          when :create_intent
            Aws::LexModelsV2::Endpoints::CreateIntent.build(context)
          when :create_resource_policy
            Aws::LexModelsV2::Endpoints::CreateResourcePolicy.build(context)
          when :create_resource_policy_statement
            Aws::LexModelsV2::Endpoints::CreateResourcePolicyStatement.build(context)
          when :create_slot
            Aws::LexModelsV2::Endpoints::CreateSlot.build(context)
          when :create_slot_type
            Aws::LexModelsV2::Endpoints::CreateSlotType.build(context)
          when :create_test_set_discrepancy_report
            Aws::LexModelsV2::Endpoints::CreateTestSetDiscrepancyReport.build(context)
          when :create_upload_url
            Aws::LexModelsV2::Endpoints::CreateUploadUrl.build(context)
          when :delete_bot
            Aws::LexModelsV2::Endpoints::DeleteBot.build(context)
          when :delete_bot_alias
            Aws::LexModelsV2::Endpoints::DeleteBotAlias.build(context)
          when :delete_bot_locale
            Aws::LexModelsV2::Endpoints::DeleteBotLocale.build(context)
          when :delete_bot_version
            Aws::LexModelsV2::Endpoints::DeleteBotVersion.build(context)
          when :delete_custom_vocabulary
            Aws::LexModelsV2::Endpoints::DeleteCustomVocabulary.build(context)
          when :delete_export
            Aws::LexModelsV2::Endpoints::DeleteExport.build(context)
          when :delete_import
            Aws::LexModelsV2::Endpoints::DeleteImport.build(context)
          when :delete_intent
            Aws::LexModelsV2::Endpoints::DeleteIntent.build(context)
          when :delete_resource_policy
            Aws::LexModelsV2::Endpoints::DeleteResourcePolicy.build(context)
          when :delete_resource_policy_statement
            Aws::LexModelsV2::Endpoints::DeleteResourcePolicyStatement.build(context)
          when :delete_slot
            Aws::LexModelsV2::Endpoints::DeleteSlot.build(context)
          when :delete_slot_type
            Aws::LexModelsV2::Endpoints::DeleteSlotType.build(context)
          when :delete_test_set
            Aws::LexModelsV2::Endpoints::DeleteTestSet.build(context)
          when :delete_utterances
            Aws::LexModelsV2::Endpoints::DeleteUtterances.build(context)
          when :describe_bot
            Aws::LexModelsV2::Endpoints::DescribeBot.build(context)
          when :describe_bot_alias
            Aws::LexModelsV2::Endpoints::DescribeBotAlias.build(context)
          when :describe_bot_locale
            Aws::LexModelsV2::Endpoints::DescribeBotLocale.build(context)
          when :describe_bot_recommendation
            Aws::LexModelsV2::Endpoints::DescribeBotRecommendation.build(context)
          when :describe_bot_version
            Aws::LexModelsV2::Endpoints::DescribeBotVersion.build(context)
          when :describe_custom_vocabulary_metadata
            Aws::LexModelsV2::Endpoints::DescribeCustomVocabularyMetadata.build(context)
          when :describe_export
            Aws::LexModelsV2::Endpoints::DescribeExport.build(context)
          when :describe_import
            Aws::LexModelsV2::Endpoints::DescribeImport.build(context)
          when :describe_intent
            Aws::LexModelsV2::Endpoints::DescribeIntent.build(context)
          when :describe_resource_policy
            Aws::LexModelsV2::Endpoints::DescribeResourcePolicy.build(context)
          when :describe_slot
            Aws::LexModelsV2::Endpoints::DescribeSlot.build(context)
          when :describe_slot_type
            Aws::LexModelsV2::Endpoints::DescribeSlotType.build(context)
          when :describe_test_execution
            Aws::LexModelsV2::Endpoints::DescribeTestExecution.build(context)
          when :describe_test_set
            Aws::LexModelsV2::Endpoints::DescribeTestSet.build(context)
          when :describe_test_set_discrepancy_report
            Aws::LexModelsV2::Endpoints::DescribeTestSetDiscrepancyReport.build(context)
          when :describe_test_set_generation
            Aws::LexModelsV2::Endpoints::DescribeTestSetGeneration.build(context)
          when :get_test_execution_artifacts_url
            Aws::LexModelsV2::Endpoints::GetTestExecutionArtifactsUrl.build(context)
          when :list_aggregated_utterances
            Aws::LexModelsV2::Endpoints::ListAggregatedUtterances.build(context)
          when :list_bot_aliases
            Aws::LexModelsV2::Endpoints::ListBotAliases.build(context)
          when :list_bot_locales
            Aws::LexModelsV2::Endpoints::ListBotLocales.build(context)
          when :list_bot_recommendations
            Aws::LexModelsV2::Endpoints::ListBotRecommendations.build(context)
          when :list_bot_versions
            Aws::LexModelsV2::Endpoints::ListBotVersions.build(context)
          when :list_bots
            Aws::LexModelsV2::Endpoints::ListBots.build(context)
          when :list_built_in_intents
            Aws::LexModelsV2::Endpoints::ListBuiltInIntents.build(context)
          when :list_built_in_slot_types
            Aws::LexModelsV2::Endpoints::ListBuiltInSlotTypes.build(context)
          when :list_custom_vocabulary_items
            Aws::LexModelsV2::Endpoints::ListCustomVocabularyItems.build(context)
          when :list_exports
            Aws::LexModelsV2::Endpoints::ListExports.build(context)
          when :list_imports
            Aws::LexModelsV2::Endpoints::ListImports.build(context)
          when :list_intents
            Aws::LexModelsV2::Endpoints::ListIntents.build(context)
          when :list_recommended_intents
            Aws::LexModelsV2::Endpoints::ListRecommendedIntents.build(context)
          when :list_slot_types
            Aws::LexModelsV2::Endpoints::ListSlotTypes.build(context)
          when :list_slots
            Aws::LexModelsV2::Endpoints::ListSlots.build(context)
          when :list_tags_for_resource
            Aws::LexModelsV2::Endpoints::ListTagsForResource.build(context)
          when :list_test_execution_result_items
            Aws::LexModelsV2::Endpoints::ListTestExecutionResultItems.build(context)
          when :list_test_executions
            Aws::LexModelsV2::Endpoints::ListTestExecutions.build(context)
          when :list_test_set_records
            Aws::LexModelsV2::Endpoints::ListTestSetRecords.build(context)
          when :list_test_sets
            Aws::LexModelsV2::Endpoints::ListTestSets.build(context)
          when :search_associated_transcripts
            Aws::LexModelsV2::Endpoints::SearchAssociatedTranscripts.build(context)
          when :start_bot_recommendation
            Aws::LexModelsV2::Endpoints::StartBotRecommendation.build(context)
          when :start_import
            Aws::LexModelsV2::Endpoints::StartImport.build(context)
          when :start_test_execution
            Aws::LexModelsV2::Endpoints::StartTestExecution.build(context)
          when :start_test_set_generation
            Aws::LexModelsV2::Endpoints::StartTestSetGeneration.build(context)
          when :stop_bot_recommendation
            Aws::LexModelsV2::Endpoints::StopBotRecommendation.build(context)
          when :tag_resource
            Aws::LexModelsV2::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::LexModelsV2::Endpoints::UntagResource.build(context)
          when :update_bot
            Aws::LexModelsV2::Endpoints::UpdateBot.build(context)
          when :update_bot_alias
            Aws::LexModelsV2::Endpoints::UpdateBotAlias.build(context)
          when :update_bot_locale
            Aws::LexModelsV2::Endpoints::UpdateBotLocale.build(context)
          when :update_bot_recommendation
            Aws::LexModelsV2::Endpoints::UpdateBotRecommendation.build(context)
          when :update_export
            Aws::LexModelsV2::Endpoints::UpdateExport.build(context)
          when :update_intent
            Aws::LexModelsV2::Endpoints::UpdateIntent.build(context)
          when :update_resource_policy
            Aws::LexModelsV2::Endpoints::UpdateResourcePolicy.build(context)
          when :update_slot
            Aws::LexModelsV2::Endpoints::UpdateSlot.build(context)
          when :update_slot_type
            Aws::LexModelsV2::Endpoints::UpdateSlotType.build(context)
          when :update_test_set
            Aws::LexModelsV2::Endpoints::UpdateTestSet.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
