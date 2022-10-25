# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ConnectWisdomService
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ConnectWisdomService::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ConnectWisdomService::EndpointParameters`'
      ) do |cfg|
        Aws::ConnectWisdomService::EndpointProvider.new
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
          when :create_assistant
            Aws::ConnectWisdomService::Endpoints::CreateAssistant.build(context)
          when :create_assistant_association
            Aws::ConnectWisdomService::Endpoints::CreateAssistantAssociation.build(context)
          when :create_content
            Aws::ConnectWisdomService::Endpoints::CreateContent.build(context)
          when :create_knowledge_base
            Aws::ConnectWisdomService::Endpoints::CreateKnowledgeBase.build(context)
          when :create_session
            Aws::ConnectWisdomService::Endpoints::CreateSession.build(context)
          when :delete_assistant
            Aws::ConnectWisdomService::Endpoints::DeleteAssistant.build(context)
          when :delete_assistant_association
            Aws::ConnectWisdomService::Endpoints::DeleteAssistantAssociation.build(context)
          when :delete_content
            Aws::ConnectWisdomService::Endpoints::DeleteContent.build(context)
          when :delete_knowledge_base
            Aws::ConnectWisdomService::Endpoints::DeleteKnowledgeBase.build(context)
          when :get_assistant
            Aws::ConnectWisdomService::Endpoints::GetAssistant.build(context)
          when :get_assistant_association
            Aws::ConnectWisdomService::Endpoints::GetAssistantAssociation.build(context)
          when :get_content
            Aws::ConnectWisdomService::Endpoints::GetContent.build(context)
          when :get_content_summary
            Aws::ConnectWisdomService::Endpoints::GetContentSummary.build(context)
          when :get_knowledge_base
            Aws::ConnectWisdomService::Endpoints::GetKnowledgeBase.build(context)
          when :get_recommendations
            Aws::ConnectWisdomService::Endpoints::GetRecommendations.build(context)
          when :get_session
            Aws::ConnectWisdomService::Endpoints::GetSession.build(context)
          when :list_assistant_associations
            Aws::ConnectWisdomService::Endpoints::ListAssistantAssociations.build(context)
          when :list_assistants
            Aws::ConnectWisdomService::Endpoints::ListAssistants.build(context)
          when :list_contents
            Aws::ConnectWisdomService::Endpoints::ListContents.build(context)
          when :list_knowledge_bases
            Aws::ConnectWisdomService::Endpoints::ListKnowledgeBases.build(context)
          when :list_tags_for_resource
            Aws::ConnectWisdomService::Endpoints::ListTagsForResource.build(context)
          when :notify_recommendations_received
            Aws::ConnectWisdomService::Endpoints::NotifyRecommendationsReceived.build(context)
          when :query_assistant
            Aws::ConnectWisdomService::Endpoints::QueryAssistant.build(context)
          when :remove_knowledge_base_template_uri
            Aws::ConnectWisdomService::Endpoints::RemoveKnowledgeBaseTemplateUri.build(context)
          when :search_content
            Aws::ConnectWisdomService::Endpoints::SearchContent.build(context)
          when :search_sessions
            Aws::ConnectWisdomService::Endpoints::SearchSessions.build(context)
          when :start_content_upload
            Aws::ConnectWisdomService::Endpoints::StartContentUpload.build(context)
          when :tag_resource
            Aws::ConnectWisdomService::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ConnectWisdomService::Endpoints::UntagResource.build(context)
          when :update_content
            Aws::ConnectWisdomService::Endpoints::UpdateContent.build(context)
          when :update_knowledge_base_template_uri
            Aws::ConnectWisdomService::Endpoints::UpdateKnowledgeBaseTemplateUri.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
