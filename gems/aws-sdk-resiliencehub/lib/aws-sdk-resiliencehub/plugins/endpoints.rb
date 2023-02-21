# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ResilienceHub
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ResilienceHub::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ResilienceHub::EndpointParameters`'
      ) do |cfg|
        Aws::ResilienceHub::EndpointProvider.new
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
          when :add_draft_app_version_resource_mappings
            Aws::ResilienceHub::Endpoints::AddDraftAppVersionResourceMappings.build(context)
          when :create_app
            Aws::ResilienceHub::Endpoints::CreateApp.build(context)
          when :create_app_version_app_component
            Aws::ResilienceHub::Endpoints::CreateAppVersionAppComponent.build(context)
          when :create_app_version_resource
            Aws::ResilienceHub::Endpoints::CreateAppVersionResource.build(context)
          when :create_recommendation_template
            Aws::ResilienceHub::Endpoints::CreateRecommendationTemplate.build(context)
          when :create_resiliency_policy
            Aws::ResilienceHub::Endpoints::CreateResiliencyPolicy.build(context)
          when :delete_app
            Aws::ResilienceHub::Endpoints::DeleteApp.build(context)
          when :delete_app_assessment
            Aws::ResilienceHub::Endpoints::DeleteAppAssessment.build(context)
          when :delete_app_input_source
            Aws::ResilienceHub::Endpoints::DeleteAppInputSource.build(context)
          when :delete_app_version_app_component
            Aws::ResilienceHub::Endpoints::DeleteAppVersionAppComponent.build(context)
          when :delete_app_version_resource
            Aws::ResilienceHub::Endpoints::DeleteAppVersionResource.build(context)
          when :delete_recommendation_template
            Aws::ResilienceHub::Endpoints::DeleteRecommendationTemplate.build(context)
          when :delete_resiliency_policy
            Aws::ResilienceHub::Endpoints::DeleteResiliencyPolicy.build(context)
          when :describe_app
            Aws::ResilienceHub::Endpoints::DescribeApp.build(context)
          when :describe_app_assessment
            Aws::ResilienceHub::Endpoints::DescribeAppAssessment.build(context)
          when :describe_app_version
            Aws::ResilienceHub::Endpoints::DescribeAppVersion.build(context)
          when :describe_app_version_app_component
            Aws::ResilienceHub::Endpoints::DescribeAppVersionAppComponent.build(context)
          when :describe_app_version_resource
            Aws::ResilienceHub::Endpoints::DescribeAppVersionResource.build(context)
          when :describe_app_version_resources_resolution_status
            Aws::ResilienceHub::Endpoints::DescribeAppVersionResourcesResolutionStatus.build(context)
          when :describe_app_version_template
            Aws::ResilienceHub::Endpoints::DescribeAppVersionTemplate.build(context)
          when :describe_draft_app_version_resources_import_status
            Aws::ResilienceHub::Endpoints::DescribeDraftAppVersionResourcesImportStatus.build(context)
          when :describe_resiliency_policy
            Aws::ResilienceHub::Endpoints::DescribeResiliencyPolicy.build(context)
          when :import_resources_to_draft_app_version
            Aws::ResilienceHub::Endpoints::ImportResourcesToDraftAppVersion.build(context)
          when :list_alarm_recommendations
            Aws::ResilienceHub::Endpoints::ListAlarmRecommendations.build(context)
          when :list_app_assessments
            Aws::ResilienceHub::Endpoints::ListAppAssessments.build(context)
          when :list_app_component_compliances
            Aws::ResilienceHub::Endpoints::ListAppComponentCompliances.build(context)
          when :list_app_component_recommendations
            Aws::ResilienceHub::Endpoints::ListAppComponentRecommendations.build(context)
          when :list_app_input_sources
            Aws::ResilienceHub::Endpoints::ListAppInputSources.build(context)
          when :list_app_version_app_components
            Aws::ResilienceHub::Endpoints::ListAppVersionAppComponents.build(context)
          when :list_app_version_resource_mappings
            Aws::ResilienceHub::Endpoints::ListAppVersionResourceMappings.build(context)
          when :list_app_version_resources
            Aws::ResilienceHub::Endpoints::ListAppVersionResources.build(context)
          when :list_app_versions
            Aws::ResilienceHub::Endpoints::ListAppVersions.build(context)
          when :list_apps
            Aws::ResilienceHub::Endpoints::ListApps.build(context)
          when :list_recommendation_templates
            Aws::ResilienceHub::Endpoints::ListRecommendationTemplates.build(context)
          when :list_resiliency_policies
            Aws::ResilienceHub::Endpoints::ListResiliencyPolicies.build(context)
          when :list_sop_recommendations
            Aws::ResilienceHub::Endpoints::ListSopRecommendations.build(context)
          when :list_suggested_resiliency_policies
            Aws::ResilienceHub::Endpoints::ListSuggestedResiliencyPolicies.build(context)
          when :list_tags_for_resource
            Aws::ResilienceHub::Endpoints::ListTagsForResource.build(context)
          when :list_test_recommendations
            Aws::ResilienceHub::Endpoints::ListTestRecommendations.build(context)
          when :list_unsupported_app_version_resources
            Aws::ResilienceHub::Endpoints::ListUnsupportedAppVersionResources.build(context)
          when :publish_app_version
            Aws::ResilienceHub::Endpoints::PublishAppVersion.build(context)
          when :put_draft_app_version_template
            Aws::ResilienceHub::Endpoints::PutDraftAppVersionTemplate.build(context)
          when :remove_draft_app_version_resource_mappings
            Aws::ResilienceHub::Endpoints::RemoveDraftAppVersionResourceMappings.build(context)
          when :resolve_app_version_resources
            Aws::ResilienceHub::Endpoints::ResolveAppVersionResources.build(context)
          when :start_app_assessment
            Aws::ResilienceHub::Endpoints::StartAppAssessment.build(context)
          when :tag_resource
            Aws::ResilienceHub::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ResilienceHub::Endpoints::UntagResource.build(context)
          when :update_app
            Aws::ResilienceHub::Endpoints::UpdateApp.build(context)
          when :update_app_version
            Aws::ResilienceHub::Endpoints::UpdateAppVersion.build(context)
          when :update_app_version_app_component
            Aws::ResilienceHub::Endpoints::UpdateAppVersionAppComponent.build(context)
          when :update_app_version_resource
            Aws::ResilienceHub::Endpoints::UpdateAppVersionResource.build(context)
          when :update_resiliency_policy
            Aws::ResilienceHub::Endpoints::UpdateResiliencyPolicy.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
