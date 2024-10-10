# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::BedrockAgent
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::BedrockAgent::EndpointProvider',
        rbs_type: 'untyped',
        docstring: <<~DOCS) do |_cfg|
The endpoint provider used to resolve endpoints. Any object that responds to
`#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
`Aws::BedrockAgent::EndpointParameters`.
        DOCS
        Aws::BedrockAgent::EndpointProvider.new
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

          with_metrics(context) { @handler.call(context) }
        end

        private

        def with_metrics(context, &block)
          metrics = []
          metrics << 'ENDPOINT_OVERRIDE' unless context.config.regional_endpoint
          if context[:auth_scheme] && context[:auth_scheme]['name'] == 'sigv4a'
            metrics << 'SIGV4A_SIGNING'
          end
          if context.config.credentials&.credentials&.account_id
            metrics << 'RESOLVED_ACCOUNT_ID'
          end
          Aws::Plugins::UserAgent.metric(*metrics, &block)
        end

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
          when :associate_agent_knowledge_base
            Aws::BedrockAgent::Endpoints::AssociateAgentKnowledgeBase.build(context)
          when :create_agent
            Aws::BedrockAgent::Endpoints::CreateAgent.build(context)
          when :create_agent_action_group
            Aws::BedrockAgent::Endpoints::CreateAgentActionGroup.build(context)
          when :create_agent_alias
            Aws::BedrockAgent::Endpoints::CreateAgentAlias.build(context)
          when :create_data_source
            Aws::BedrockAgent::Endpoints::CreateDataSource.build(context)
          when :create_flow
            Aws::BedrockAgent::Endpoints::CreateFlow.build(context)
          when :create_flow_alias
            Aws::BedrockAgent::Endpoints::CreateFlowAlias.build(context)
          when :create_flow_version
            Aws::BedrockAgent::Endpoints::CreateFlowVersion.build(context)
          when :create_knowledge_base
            Aws::BedrockAgent::Endpoints::CreateKnowledgeBase.build(context)
          when :create_prompt
            Aws::BedrockAgent::Endpoints::CreatePrompt.build(context)
          when :create_prompt_version
            Aws::BedrockAgent::Endpoints::CreatePromptVersion.build(context)
          when :delete_agent
            Aws::BedrockAgent::Endpoints::DeleteAgent.build(context)
          when :delete_agent_action_group
            Aws::BedrockAgent::Endpoints::DeleteAgentActionGroup.build(context)
          when :delete_agent_alias
            Aws::BedrockAgent::Endpoints::DeleteAgentAlias.build(context)
          when :delete_agent_version
            Aws::BedrockAgent::Endpoints::DeleteAgentVersion.build(context)
          when :delete_data_source
            Aws::BedrockAgent::Endpoints::DeleteDataSource.build(context)
          when :delete_flow
            Aws::BedrockAgent::Endpoints::DeleteFlow.build(context)
          when :delete_flow_alias
            Aws::BedrockAgent::Endpoints::DeleteFlowAlias.build(context)
          when :delete_flow_version
            Aws::BedrockAgent::Endpoints::DeleteFlowVersion.build(context)
          when :delete_knowledge_base
            Aws::BedrockAgent::Endpoints::DeleteKnowledgeBase.build(context)
          when :delete_prompt
            Aws::BedrockAgent::Endpoints::DeletePrompt.build(context)
          when :disassociate_agent_knowledge_base
            Aws::BedrockAgent::Endpoints::DisassociateAgentKnowledgeBase.build(context)
          when :get_agent
            Aws::BedrockAgent::Endpoints::GetAgent.build(context)
          when :get_agent_action_group
            Aws::BedrockAgent::Endpoints::GetAgentActionGroup.build(context)
          when :get_agent_alias
            Aws::BedrockAgent::Endpoints::GetAgentAlias.build(context)
          when :get_agent_knowledge_base
            Aws::BedrockAgent::Endpoints::GetAgentKnowledgeBase.build(context)
          when :get_agent_version
            Aws::BedrockAgent::Endpoints::GetAgentVersion.build(context)
          when :get_data_source
            Aws::BedrockAgent::Endpoints::GetDataSource.build(context)
          when :get_flow
            Aws::BedrockAgent::Endpoints::GetFlow.build(context)
          when :get_flow_alias
            Aws::BedrockAgent::Endpoints::GetFlowAlias.build(context)
          when :get_flow_version
            Aws::BedrockAgent::Endpoints::GetFlowVersion.build(context)
          when :get_ingestion_job
            Aws::BedrockAgent::Endpoints::GetIngestionJob.build(context)
          when :get_knowledge_base
            Aws::BedrockAgent::Endpoints::GetKnowledgeBase.build(context)
          when :get_prompt
            Aws::BedrockAgent::Endpoints::GetPrompt.build(context)
          when :list_agent_action_groups
            Aws::BedrockAgent::Endpoints::ListAgentActionGroups.build(context)
          when :list_agent_aliases
            Aws::BedrockAgent::Endpoints::ListAgentAliases.build(context)
          when :list_agent_knowledge_bases
            Aws::BedrockAgent::Endpoints::ListAgentKnowledgeBases.build(context)
          when :list_agent_versions
            Aws::BedrockAgent::Endpoints::ListAgentVersions.build(context)
          when :list_agents
            Aws::BedrockAgent::Endpoints::ListAgents.build(context)
          when :list_data_sources
            Aws::BedrockAgent::Endpoints::ListDataSources.build(context)
          when :list_flow_aliases
            Aws::BedrockAgent::Endpoints::ListFlowAliases.build(context)
          when :list_flow_versions
            Aws::BedrockAgent::Endpoints::ListFlowVersions.build(context)
          when :list_flows
            Aws::BedrockAgent::Endpoints::ListFlows.build(context)
          when :list_ingestion_jobs
            Aws::BedrockAgent::Endpoints::ListIngestionJobs.build(context)
          when :list_knowledge_bases
            Aws::BedrockAgent::Endpoints::ListKnowledgeBases.build(context)
          when :list_prompts
            Aws::BedrockAgent::Endpoints::ListPrompts.build(context)
          when :list_tags_for_resource
            Aws::BedrockAgent::Endpoints::ListTagsForResource.build(context)
          when :prepare_agent
            Aws::BedrockAgent::Endpoints::PrepareAgent.build(context)
          when :prepare_flow
            Aws::BedrockAgent::Endpoints::PrepareFlow.build(context)
          when :start_ingestion_job
            Aws::BedrockAgent::Endpoints::StartIngestionJob.build(context)
          when :stop_ingestion_job
            Aws::BedrockAgent::Endpoints::StopIngestionJob.build(context)
          when :tag_resource
            Aws::BedrockAgent::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::BedrockAgent::Endpoints::UntagResource.build(context)
          when :update_agent
            Aws::BedrockAgent::Endpoints::UpdateAgent.build(context)
          when :update_agent_action_group
            Aws::BedrockAgent::Endpoints::UpdateAgentActionGroup.build(context)
          when :update_agent_alias
            Aws::BedrockAgent::Endpoints::UpdateAgentAlias.build(context)
          when :update_agent_knowledge_base
            Aws::BedrockAgent::Endpoints::UpdateAgentKnowledgeBase.build(context)
          when :update_data_source
            Aws::BedrockAgent::Endpoints::UpdateDataSource.build(context)
          when :update_flow
            Aws::BedrockAgent::Endpoints::UpdateFlow.build(context)
          when :update_flow_alias
            Aws::BedrockAgent::Endpoints::UpdateFlowAlias.build(context)
          when :update_knowledge_base
            Aws::BedrockAgent::Endpoints::UpdateKnowledgeBase.build(context)
          when :update_prompt
            Aws::BedrockAgent::Endpoints::UpdatePrompt.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
