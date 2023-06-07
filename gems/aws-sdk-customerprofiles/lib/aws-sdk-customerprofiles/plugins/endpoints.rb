# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CustomerProfiles
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CustomerProfiles::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CustomerProfiles::EndpointParameters`'
      ) do |cfg|
        Aws::CustomerProfiles::EndpointProvider.new
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
          when :add_profile_key
            Aws::CustomerProfiles::Endpoints::AddProfileKey.build(context)
          when :create_calculated_attribute_definition
            Aws::CustomerProfiles::Endpoints::CreateCalculatedAttributeDefinition.build(context)
          when :create_domain
            Aws::CustomerProfiles::Endpoints::CreateDomain.build(context)
          when :create_event_stream
            Aws::CustomerProfiles::Endpoints::CreateEventStream.build(context)
          when :create_integration_workflow
            Aws::CustomerProfiles::Endpoints::CreateIntegrationWorkflow.build(context)
          when :create_profile
            Aws::CustomerProfiles::Endpoints::CreateProfile.build(context)
          when :delete_calculated_attribute_definition
            Aws::CustomerProfiles::Endpoints::DeleteCalculatedAttributeDefinition.build(context)
          when :delete_domain
            Aws::CustomerProfiles::Endpoints::DeleteDomain.build(context)
          when :delete_event_stream
            Aws::CustomerProfiles::Endpoints::DeleteEventStream.build(context)
          when :delete_integration
            Aws::CustomerProfiles::Endpoints::DeleteIntegration.build(context)
          when :delete_profile
            Aws::CustomerProfiles::Endpoints::DeleteProfile.build(context)
          when :delete_profile_key
            Aws::CustomerProfiles::Endpoints::DeleteProfileKey.build(context)
          when :delete_profile_object
            Aws::CustomerProfiles::Endpoints::DeleteProfileObject.build(context)
          when :delete_profile_object_type
            Aws::CustomerProfiles::Endpoints::DeleteProfileObjectType.build(context)
          when :delete_workflow
            Aws::CustomerProfiles::Endpoints::DeleteWorkflow.build(context)
          when :get_auto_merging_preview
            Aws::CustomerProfiles::Endpoints::GetAutoMergingPreview.build(context)
          when :get_calculated_attribute_definition
            Aws::CustomerProfiles::Endpoints::GetCalculatedAttributeDefinition.build(context)
          when :get_calculated_attribute_for_profile
            Aws::CustomerProfiles::Endpoints::GetCalculatedAttributeForProfile.build(context)
          when :get_domain
            Aws::CustomerProfiles::Endpoints::GetDomain.build(context)
          when :get_event_stream
            Aws::CustomerProfiles::Endpoints::GetEventStream.build(context)
          when :get_identity_resolution_job
            Aws::CustomerProfiles::Endpoints::GetIdentityResolutionJob.build(context)
          when :get_integration
            Aws::CustomerProfiles::Endpoints::GetIntegration.build(context)
          when :get_matches
            Aws::CustomerProfiles::Endpoints::GetMatches.build(context)
          when :get_profile_object_type
            Aws::CustomerProfiles::Endpoints::GetProfileObjectType.build(context)
          when :get_profile_object_type_template
            Aws::CustomerProfiles::Endpoints::GetProfileObjectTypeTemplate.build(context)
          when :get_workflow
            Aws::CustomerProfiles::Endpoints::GetWorkflow.build(context)
          when :get_workflow_steps
            Aws::CustomerProfiles::Endpoints::GetWorkflowSteps.build(context)
          when :list_account_integrations
            Aws::CustomerProfiles::Endpoints::ListAccountIntegrations.build(context)
          when :list_calculated_attribute_definitions
            Aws::CustomerProfiles::Endpoints::ListCalculatedAttributeDefinitions.build(context)
          when :list_calculated_attributes_for_profile
            Aws::CustomerProfiles::Endpoints::ListCalculatedAttributesForProfile.build(context)
          when :list_domains
            Aws::CustomerProfiles::Endpoints::ListDomains.build(context)
          when :list_event_streams
            Aws::CustomerProfiles::Endpoints::ListEventStreams.build(context)
          when :list_identity_resolution_jobs
            Aws::CustomerProfiles::Endpoints::ListIdentityResolutionJobs.build(context)
          when :list_integrations
            Aws::CustomerProfiles::Endpoints::ListIntegrations.build(context)
          when :list_profile_object_type_templates
            Aws::CustomerProfiles::Endpoints::ListProfileObjectTypeTemplates.build(context)
          when :list_profile_object_types
            Aws::CustomerProfiles::Endpoints::ListProfileObjectTypes.build(context)
          when :list_profile_objects
            Aws::CustomerProfiles::Endpoints::ListProfileObjects.build(context)
          when :list_tags_for_resource
            Aws::CustomerProfiles::Endpoints::ListTagsForResource.build(context)
          when :list_workflows
            Aws::CustomerProfiles::Endpoints::ListWorkflows.build(context)
          when :merge_profiles
            Aws::CustomerProfiles::Endpoints::MergeProfiles.build(context)
          when :put_integration
            Aws::CustomerProfiles::Endpoints::PutIntegration.build(context)
          when :put_profile_object
            Aws::CustomerProfiles::Endpoints::PutProfileObject.build(context)
          when :put_profile_object_type
            Aws::CustomerProfiles::Endpoints::PutProfileObjectType.build(context)
          when :search_profiles
            Aws::CustomerProfiles::Endpoints::SearchProfiles.build(context)
          when :tag_resource
            Aws::CustomerProfiles::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::CustomerProfiles::Endpoints::UntagResource.build(context)
          when :update_calculated_attribute_definition
            Aws::CustomerProfiles::Endpoints::UpdateCalculatedAttributeDefinition.build(context)
          when :update_domain
            Aws::CustomerProfiles::Endpoints::UpdateDomain.build(context)
          when :update_profile
            Aws::CustomerProfiles::Endpoints::UpdateProfile.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
