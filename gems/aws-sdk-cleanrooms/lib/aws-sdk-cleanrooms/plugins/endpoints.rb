# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CleanRooms
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CleanRooms::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CleanRooms::EndpointParameters`'
      ) do |cfg|
        Aws::CleanRooms::EndpointProvider.new
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
          when :batch_get_collaboration_analysis_template
            Aws::CleanRooms::Endpoints::BatchGetCollaborationAnalysisTemplate.build(context)
          when :batch_get_schema
            Aws::CleanRooms::Endpoints::BatchGetSchema.build(context)
          when :create_analysis_template
            Aws::CleanRooms::Endpoints::CreateAnalysisTemplate.build(context)
          when :create_collaboration
            Aws::CleanRooms::Endpoints::CreateCollaboration.build(context)
          when :create_configured_audience_model_association
            Aws::CleanRooms::Endpoints::CreateConfiguredAudienceModelAssociation.build(context)
          when :create_configured_table
            Aws::CleanRooms::Endpoints::CreateConfiguredTable.build(context)
          when :create_configured_table_analysis_rule
            Aws::CleanRooms::Endpoints::CreateConfiguredTableAnalysisRule.build(context)
          when :create_configured_table_association
            Aws::CleanRooms::Endpoints::CreateConfiguredTableAssociation.build(context)
          when :create_membership
            Aws::CleanRooms::Endpoints::CreateMembership.build(context)
          when :create_privacy_budget_template
            Aws::CleanRooms::Endpoints::CreatePrivacyBudgetTemplate.build(context)
          when :delete_analysis_template
            Aws::CleanRooms::Endpoints::DeleteAnalysisTemplate.build(context)
          when :delete_collaboration
            Aws::CleanRooms::Endpoints::DeleteCollaboration.build(context)
          when :delete_configured_audience_model_association
            Aws::CleanRooms::Endpoints::DeleteConfiguredAudienceModelAssociation.build(context)
          when :delete_configured_table
            Aws::CleanRooms::Endpoints::DeleteConfiguredTable.build(context)
          when :delete_configured_table_analysis_rule
            Aws::CleanRooms::Endpoints::DeleteConfiguredTableAnalysisRule.build(context)
          when :delete_configured_table_association
            Aws::CleanRooms::Endpoints::DeleteConfiguredTableAssociation.build(context)
          when :delete_member
            Aws::CleanRooms::Endpoints::DeleteMember.build(context)
          when :delete_membership
            Aws::CleanRooms::Endpoints::DeleteMembership.build(context)
          when :delete_privacy_budget_template
            Aws::CleanRooms::Endpoints::DeletePrivacyBudgetTemplate.build(context)
          when :get_analysis_template
            Aws::CleanRooms::Endpoints::GetAnalysisTemplate.build(context)
          when :get_collaboration
            Aws::CleanRooms::Endpoints::GetCollaboration.build(context)
          when :get_collaboration_analysis_template
            Aws::CleanRooms::Endpoints::GetCollaborationAnalysisTemplate.build(context)
          when :get_collaboration_configured_audience_model_association
            Aws::CleanRooms::Endpoints::GetCollaborationConfiguredAudienceModelAssociation.build(context)
          when :get_collaboration_privacy_budget_template
            Aws::CleanRooms::Endpoints::GetCollaborationPrivacyBudgetTemplate.build(context)
          when :get_configured_audience_model_association
            Aws::CleanRooms::Endpoints::GetConfiguredAudienceModelAssociation.build(context)
          when :get_configured_table
            Aws::CleanRooms::Endpoints::GetConfiguredTable.build(context)
          when :get_configured_table_analysis_rule
            Aws::CleanRooms::Endpoints::GetConfiguredTableAnalysisRule.build(context)
          when :get_configured_table_association
            Aws::CleanRooms::Endpoints::GetConfiguredTableAssociation.build(context)
          when :get_membership
            Aws::CleanRooms::Endpoints::GetMembership.build(context)
          when :get_privacy_budget_template
            Aws::CleanRooms::Endpoints::GetPrivacyBudgetTemplate.build(context)
          when :get_protected_query
            Aws::CleanRooms::Endpoints::GetProtectedQuery.build(context)
          when :get_schema
            Aws::CleanRooms::Endpoints::GetSchema.build(context)
          when :get_schema_analysis_rule
            Aws::CleanRooms::Endpoints::GetSchemaAnalysisRule.build(context)
          when :list_analysis_templates
            Aws::CleanRooms::Endpoints::ListAnalysisTemplates.build(context)
          when :list_collaboration_analysis_templates
            Aws::CleanRooms::Endpoints::ListCollaborationAnalysisTemplates.build(context)
          when :list_collaboration_configured_audience_model_associations
            Aws::CleanRooms::Endpoints::ListCollaborationConfiguredAudienceModelAssociations.build(context)
          when :list_collaboration_privacy_budget_templates
            Aws::CleanRooms::Endpoints::ListCollaborationPrivacyBudgetTemplates.build(context)
          when :list_collaboration_privacy_budgets
            Aws::CleanRooms::Endpoints::ListCollaborationPrivacyBudgets.build(context)
          when :list_collaborations
            Aws::CleanRooms::Endpoints::ListCollaborations.build(context)
          when :list_configured_audience_model_associations
            Aws::CleanRooms::Endpoints::ListConfiguredAudienceModelAssociations.build(context)
          when :list_configured_table_associations
            Aws::CleanRooms::Endpoints::ListConfiguredTableAssociations.build(context)
          when :list_configured_tables
            Aws::CleanRooms::Endpoints::ListConfiguredTables.build(context)
          when :list_members
            Aws::CleanRooms::Endpoints::ListMembers.build(context)
          when :list_memberships
            Aws::CleanRooms::Endpoints::ListMemberships.build(context)
          when :list_privacy_budget_templates
            Aws::CleanRooms::Endpoints::ListPrivacyBudgetTemplates.build(context)
          when :list_privacy_budgets
            Aws::CleanRooms::Endpoints::ListPrivacyBudgets.build(context)
          when :list_protected_queries
            Aws::CleanRooms::Endpoints::ListProtectedQueries.build(context)
          when :list_schemas
            Aws::CleanRooms::Endpoints::ListSchemas.build(context)
          when :list_tags_for_resource
            Aws::CleanRooms::Endpoints::ListTagsForResource.build(context)
          when :preview_privacy_impact
            Aws::CleanRooms::Endpoints::PreviewPrivacyImpact.build(context)
          when :start_protected_query
            Aws::CleanRooms::Endpoints::StartProtectedQuery.build(context)
          when :tag_resource
            Aws::CleanRooms::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::CleanRooms::Endpoints::UntagResource.build(context)
          when :update_analysis_template
            Aws::CleanRooms::Endpoints::UpdateAnalysisTemplate.build(context)
          when :update_collaboration
            Aws::CleanRooms::Endpoints::UpdateCollaboration.build(context)
          when :update_configured_audience_model_association
            Aws::CleanRooms::Endpoints::UpdateConfiguredAudienceModelAssociation.build(context)
          when :update_configured_table
            Aws::CleanRooms::Endpoints::UpdateConfiguredTable.build(context)
          when :update_configured_table_analysis_rule
            Aws::CleanRooms::Endpoints::UpdateConfiguredTableAnalysisRule.build(context)
          when :update_configured_table_association
            Aws::CleanRooms::Endpoints::UpdateConfiguredTableAssociation.build(context)
          when :update_membership
            Aws::CleanRooms::Endpoints::UpdateMembership.build(context)
          when :update_privacy_budget_template
            Aws::CleanRooms::Endpoints::UpdatePrivacyBudgetTemplate.build(context)
          when :update_protected_query
            Aws::CleanRooms::Endpoints::UpdateProtectedQuery.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
