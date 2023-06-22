# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Kendra
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Kendra::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Kendra::EndpointParameters`'
      ) do |cfg|
        Aws::Kendra::EndpointProvider.new
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
          when :associate_entities_to_experience
            Aws::Kendra::Endpoints::AssociateEntitiesToExperience.build(context)
          when :associate_personas_to_entities
            Aws::Kendra::Endpoints::AssociatePersonasToEntities.build(context)
          when :batch_delete_document
            Aws::Kendra::Endpoints::BatchDeleteDocument.build(context)
          when :batch_delete_featured_results_set
            Aws::Kendra::Endpoints::BatchDeleteFeaturedResultsSet.build(context)
          when :batch_get_document_status
            Aws::Kendra::Endpoints::BatchGetDocumentStatus.build(context)
          when :batch_put_document
            Aws::Kendra::Endpoints::BatchPutDocument.build(context)
          when :clear_query_suggestions
            Aws::Kendra::Endpoints::ClearQuerySuggestions.build(context)
          when :create_access_control_configuration
            Aws::Kendra::Endpoints::CreateAccessControlConfiguration.build(context)
          when :create_data_source
            Aws::Kendra::Endpoints::CreateDataSource.build(context)
          when :create_experience
            Aws::Kendra::Endpoints::CreateExperience.build(context)
          when :create_faq
            Aws::Kendra::Endpoints::CreateFaq.build(context)
          when :create_featured_results_set
            Aws::Kendra::Endpoints::CreateFeaturedResultsSet.build(context)
          when :create_index
            Aws::Kendra::Endpoints::CreateIndex.build(context)
          when :create_query_suggestions_block_list
            Aws::Kendra::Endpoints::CreateQuerySuggestionsBlockList.build(context)
          when :create_thesaurus
            Aws::Kendra::Endpoints::CreateThesaurus.build(context)
          when :delete_access_control_configuration
            Aws::Kendra::Endpoints::DeleteAccessControlConfiguration.build(context)
          when :delete_data_source
            Aws::Kendra::Endpoints::DeleteDataSource.build(context)
          when :delete_experience
            Aws::Kendra::Endpoints::DeleteExperience.build(context)
          when :delete_faq
            Aws::Kendra::Endpoints::DeleteFaq.build(context)
          when :delete_index
            Aws::Kendra::Endpoints::DeleteIndex.build(context)
          when :delete_principal_mapping
            Aws::Kendra::Endpoints::DeletePrincipalMapping.build(context)
          when :delete_query_suggestions_block_list
            Aws::Kendra::Endpoints::DeleteQuerySuggestionsBlockList.build(context)
          when :delete_thesaurus
            Aws::Kendra::Endpoints::DeleteThesaurus.build(context)
          when :describe_access_control_configuration
            Aws::Kendra::Endpoints::DescribeAccessControlConfiguration.build(context)
          when :describe_data_source
            Aws::Kendra::Endpoints::DescribeDataSource.build(context)
          when :describe_experience
            Aws::Kendra::Endpoints::DescribeExperience.build(context)
          when :describe_faq
            Aws::Kendra::Endpoints::DescribeFaq.build(context)
          when :describe_featured_results_set
            Aws::Kendra::Endpoints::DescribeFeaturedResultsSet.build(context)
          when :describe_index
            Aws::Kendra::Endpoints::DescribeIndex.build(context)
          when :describe_principal_mapping
            Aws::Kendra::Endpoints::DescribePrincipalMapping.build(context)
          when :describe_query_suggestions_block_list
            Aws::Kendra::Endpoints::DescribeQuerySuggestionsBlockList.build(context)
          when :describe_query_suggestions_config
            Aws::Kendra::Endpoints::DescribeQuerySuggestionsConfig.build(context)
          when :describe_thesaurus
            Aws::Kendra::Endpoints::DescribeThesaurus.build(context)
          when :disassociate_entities_from_experience
            Aws::Kendra::Endpoints::DisassociateEntitiesFromExperience.build(context)
          when :disassociate_personas_from_entities
            Aws::Kendra::Endpoints::DisassociatePersonasFromEntities.build(context)
          when :get_query_suggestions
            Aws::Kendra::Endpoints::GetQuerySuggestions.build(context)
          when :get_snapshots
            Aws::Kendra::Endpoints::GetSnapshots.build(context)
          when :list_access_control_configurations
            Aws::Kendra::Endpoints::ListAccessControlConfigurations.build(context)
          when :list_data_source_sync_jobs
            Aws::Kendra::Endpoints::ListDataSourceSyncJobs.build(context)
          when :list_data_sources
            Aws::Kendra::Endpoints::ListDataSources.build(context)
          when :list_entity_personas
            Aws::Kendra::Endpoints::ListEntityPersonas.build(context)
          when :list_experience_entities
            Aws::Kendra::Endpoints::ListExperienceEntities.build(context)
          when :list_experiences
            Aws::Kendra::Endpoints::ListExperiences.build(context)
          when :list_faqs
            Aws::Kendra::Endpoints::ListFaqs.build(context)
          when :list_featured_results_sets
            Aws::Kendra::Endpoints::ListFeaturedResultsSets.build(context)
          when :list_groups_older_than_ordering_id
            Aws::Kendra::Endpoints::ListGroupsOlderThanOrderingId.build(context)
          when :list_indices
            Aws::Kendra::Endpoints::ListIndices.build(context)
          when :list_query_suggestions_block_lists
            Aws::Kendra::Endpoints::ListQuerySuggestionsBlockLists.build(context)
          when :list_tags_for_resource
            Aws::Kendra::Endpoints::ListTagsForResource.build(context)
          when :list_thesauri
            Aws::Kendra::Endpoints::ListThesauri.build(context)
          when :put_principal_mapping
            Aws::Kendra::Endpoints::PutPrincipalMapping.build(context)
          when :query
            Aws::Kendra::Endpoints::Query.build(context)
          when :retrieve
            Aws::Kendra::Endpoints::Retrieve.build(context)
          when :start_data_source_sync_job
            Aws::Kendra::Endpoints::StartDataSourceSyncJob.build(context)
          when :stop_data_source_sync_job
            Aws::Kendra::Endpoints::StopDataSourceSyncJob.build(context)
          when :submit_feedback
            Aws::Kendra::Endpoints::SubmitFeedback.build(context)
          when :tag_resource
            Aws::Kendra::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Kendra::Endpoints::UntagResource.build(context)
          when :update_access_control_configuration
            Aws::Kendra::Endpoints::UpdateAccessControlConfiguration.build(context)
          when :update_data_source
            Aws::Kendra::Endpoints::UpdateDataSource.build(context)
          when :update_experience
            Aws::Kendra::Endpoints::UpdateExperience.build(context)
          when :update_featured_results_set
            Aws::Kendra::Endpoints::UpdateFeaturedResultsSet.build(context)
          when :update_index
            Aws::Kendra::Endpoints::UpdateIndex.build(context)
          when :update_query_suggestions_block_list
            Aws::Kendra::Endpoints::UpdateQuerySuggestionsBlockList.build(context)
          when :update_query_suggestions_config
            Aws::Kendra::Endpoints::UpdateQuerySuggestionsConfig.build(context)
          when :update_thesaurus
            Aws::Kendra::Endpoints::UpdateThesaurus.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
