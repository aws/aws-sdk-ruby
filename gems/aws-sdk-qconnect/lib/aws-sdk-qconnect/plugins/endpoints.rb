# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::QConnect
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::QConnect::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::QConnect::EndpointParameters`'
      ) do |cfg|
        Aws::QConnect::EndpointProvider.new
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
          when :create_assistant
            Aws::QConnect::Endpoints::CreateAssistant.build(context)
          when :create_assistant_association
            Aws::QConnect::Endpoints::CreateAssistantAssociation.build(context)
          when :create_content
            Aws::QConnect::Endpoints::CreateContent.build(context)
          when :create_knowledge_base
            Aws::QConnect::Endpoints::CreateKnowledgeBase.build(context)
          when :create_quick_response
            Aws::QConnect::Endpoints::CreateQuickResponse.build(context)
          when :create_session
            Aws::QConnect::Endpoints::CreateSession.build(context)
          when :delete_assistant
            Aws::QConnect::Endpoints::DeleteAssistant.build(context)
          when :delete_assistant_association
            Aws::QConnect::Endpoints::DeleteAssistantAssociation.build(context)
          when :delete_content
            Aws::QConnect::Endpoints::DeleteContent.build(context)
          when :delete_import_job
            Aws::QConnect::Endpoints::DeleteImportJob.build(context)
          when :delete_knowledge_base
            Aws::QConnect::Endpoints::DeleteKnowledgeBase.build(context)
          when :delete_quick_response
            Aws::QConnect::Endpoints::DeleteQuickResponse.build(context)
          when :get_assistant
            Aws::QConnect::Endpoints::GetAssistant.build(context)
          when :get_assistant_association
            Aws::QConnect::Endpoints::GetAssistantAssociation.build(context)
          when :get_content
            Aws::QConnect::Endpoints::GetContent.build(context)
          when :get_content_summary
            Aws::QConnect::Endpoints::GetContentSummary.build(context)
          when :get_import_job
            Aws::QConnect::Endpoints::GetImportJob.build(context)
          when :get_knowledge_base
            Aws::QConnect::Endpoints::GetKnowledgeBase.build(context)
          when :get_quick_response
            Aws::QConnect::Endpoints::GetQuickResponse.build(context)
          when :get_recommendations
            Aws::QConnect::Endpoints::GetRecommendations.build(context)
          when :get_session
            Aws::QConnect::Endpoints::GetSession.build(context)
          when :list_assistant_associations
            Aws::QConnect::Endpoints::ListAssistantAssociations.build(context)
          when :list_assistants
            Aws::QConnect::Endpoints::ListAssistants.build(context)
          when :list_contents
            Aws::QConnect::Endpoints::ListContents.build(context)
          when :list_import_jobs
            Aws::QConnect::Endpoints::ListImportJobs.build(context)
          when :list_knowledge_bases
            Aws::QConnect::Endpoints::ListKnowledgeBases.build(context)
          when :list_quick_responses
            Aws::QConnect::Endpoints::ListQuickResponses.build(context)
          when :list_tags_for_resource
            Aws::QConnect::Endpoints::ListTagsForResource.build(context)
          when :notify_recommendations_received
            Aws::QConnect::Endpoints::NotifyRecommendationsReceived.build(context)
          when :put_feedback
            Aws::QConnect::Endpoints::PutFeedback.build(context)
          when :query_assistant
            Aws::QConnect::Endpoints::QueryAssistant.build(context)
          when :remove_knowledge_base_template_uri
            Aws::QConnect::Endpoints::RemoveKnowledgeBaseTemplateUri.build(context)
          when :search_content
            Aws::QConnect::Endpoints::SearchContent.build(context)
          when :search_quick_responses
            Aws::QConnect::Endpoints::SearchQuickResponses.build(context)
          when :search_sessions
            Aws::QConnect::Endpoints::SearchSessions.build(context)
          when :start_content_upload
            Aws::QConnect::Endpoints::StartContentUpload.build(context)
          when :start_import_job
            Aws::QConnect::Endpoints::StartImportJob.build(context)
          when :tag_resource
            Aws::QConnect::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::QConnect::Endpoints::UntagResource.build(context)
          when :update_content
            Aws::QConnect::Endpoints::UpdateContent.build(context)
          when :update_knowledge_base_template_uri
            Aws::QConnect::Endpoints::UpdateKnowledgeBaseTemplateUri.build(context)
          when :update_quick_response
            Aws::QConnect::Endpoints::UpdateQuickResponse.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
