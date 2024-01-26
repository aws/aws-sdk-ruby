# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::QBusiness
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::QBusiness::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::QBusiness::EndpointParameters`'
      ) do |cfg|
        Aws::QBusiness::EndpointProvider.new
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
          when :batch_delete_document
            Aws::QBusiness::Endpoints::BatchDeleteDocument.build(context)
          when :batch_put_document
            Aws::QBusiness::Endpoints::BatchPutDocument.build(context)
          when :chat_sync
            Aws::QBusiness::Endpoints::ChatSync.build(context)
          when :create_application
            Aws::QBusiness::Endpoints::CreateApplication.build(context)
          when :create_data_source
            Aws::QBusiness::Endpoints::CreateDataSource.build(context)
          when :create_index
            Aws::QBusiness::Endpoints::CreateIndex.build(context)
          when :create_plugin
            Aws::QBusiness::Endpoints::CreatePlugin.build(context)
          when :create_retriever
            Aws::QBusiness::Endpoints::CreateRetriever.build(context)
          when :create_user
            Aws::QBusiness::Endpoints::CreateUser.build(context)
          when :create_web_experience
            Aws::QBusiness::Endpoints::CreateWebExperience.build(context)
          when :delete_application
            Aws::QBusiness::Endpoints::DeleteApplication.build(context)
          when :delete_chat_controls_configuration
            Aws::QBusiness::Endpoints::DeleteChatControlsConfiguration.build(context)
          when :delete_conversation
            Aws::QBusiness::Endpoints::DeleteConversation.build(context)
          when :delete_data_source
            Aws::QBusiness::Endpoints::DeleteDataSource.build(context)
          when :delete_group
            Aws::QBusiness::Endpoints::DeleteGroup.build(context)
          when :delete_index
            Aws::QBusiness::Endpoints::DeleteIndex.build(context)
          when :delete_plugin
            Aws::QBusiness::Endpoints::DeletePlugin.build(context)
          when :delete_retriever
            Aws::QBusiness::Endpoints::DeleteRetriever.build(context)
          when :delete_user
            Aws::QBusiness::Endpoints::DeleteUser.build(context)
          when :delete_web_experience
            Aws::QBusiness::Endpoints::DeleteWebExperience.build(context)
          when :get_application
            Aws::QBusiness::Endpoints::GetApplication.build(context)
          when :get_chat_controls_configuration
            Aws::QBusiness::Endpoints::GetChatControlsConfiguration.build(context)
          when :get_data_source
            Aws::QBusiness::Endpoints::GetDataSource.build(context)
          when :get_group
            Aws::QBusiness::Endpoints::GetGroup.build(context)
          when :get_index
            Aws::QBusiness::Endpoints::GetIndex.build(context)
          when :get_plugin
            Aws::QBusiness::Endpoints::GetPlugin.build(context)
          when :get_retriever
            Aws::QBusiness::Endpoints::GetRetriever.build(context)
          when :get_user
            Aws::QBusiness::Endpoints::GetUser.build(context)
          when :get_web_experience
            Aws::QBusiness::Endpoints::GetWebExperience.build(context)
          when :list_applications
            Aws::QBusiness::Endpoints::ListApplications.build(context)
          when :list_conversations
            Aws::QBusiness::Endpoints::ListConversations.build(context)
          when :list_data_source_sync_jobs
            Aws::QBusiness::Endpoints::ListDataSourceSyncJobs.build(context)
          when :list_data_sources
            Aws::QBusiness::Endpoints::ListDataSources.build(context)
          when :list_documents
            Aws::QBusiness::Endpoints::ListDocuments.build(context)
          when :list_groups
            Aws::QBusiness::Endpoints::ListGroups.build(context)
          when :list_indices
            Aws::QBusiness::Endpoints::ListIndices.build(context)
          when :list_messages
            Aws::QBusiness::Endpoints::ListMessages.build(context)
          when :list_plugins
            Aws::QBusiness::Endpoints::ListPlugins.build(context)
          when :list_retrievers
            Aws::QBusiness::Endpoints::ListRetrievers.build(context)
          when :list_tags_for_resource
            Aws::QBusiness::Endpoints::ListTagsForResource.build(context)
          when :list_web_experiences
            Aws::QBusiness::Endpoints::ListWebExperiences.build(context)
          when :put_feedback
            Aws::QBusiness::Endpoints::PutFeedback.build(context)
          when :put_group
            Aws::QBusiness::Endpoints::PutGroup.build(context)
          when :start_data_source_sync_job
            Aws::QBusiness::Endpoints::StartDataSourceSyncJob.build(context)
          when :stop_data_source_sync_job
            Aws::QBusiness::Endpoints::StopDataSourceSyncJob.build(context)
          when :tag_resource
            Aws::QBusiness::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::QBusiness::Endpoints::UntagResource.build(context)
          when :update_application
            Aws::QBusiness::Endpoints::UpdateApplication.build(context)
          when :update_chat_controls_configuration
            Aws::QBusiness::Endpoints::UpdateChatControlsConfiguration.build(context)
          when :update_data_source
            Aws::QBusiness::Endpoints::UpdateDataSource.build(context)
          when :update_index
            Aws::QBusiness::Endpoints::UpdateIndex.build(context)
          when :update_plugin
            Aws::QBusiness::Endpoints::UpdatePlugin.build(context)
          when :update_retriever
            Aws::QBusiness::Endpoints::UpdateRetriever.build(context)
          when :update_user
            Aws::QBusiness::Endpoints::UpdateUser.build(context)
          when :update_web_experience
            Aws::QBusiness::Endpoints::UpdateWebExperience.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
