# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DataZone
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::DataZone::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::DataZone::EndpointParameters`'
      ) do |cfg|
        Aws::DataZone::EndpointProvider.new
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
          when :accept_predictions
            Aws::DataZone::Endpoints::AcceptPredictions.build(context)
          when :accept_subscription_request
            Aws::DataZone::Endpoints::AcceptSubscriptionRequest.build(context)
          when :cancel_subscription
            Aws::DataZone::Endpoints::CancelSubscription.build(context)
          when :create_asset
            Aws::DataZone::Endpoints::CreateAsset.build(context)
          when :create_asset_revision
            Aws::DataZone::Endpoints::CreateAssetRevision.build(context)
          when :create_asset_type
            Aws::DataZone::Endpoints::CreateAssetType.build(context)
          when :create_data_source
            Aws::DataZone::Endpoints::CreateDataSource.build(context)
          when :create_domain
            Aws::DataZone::Endpoints::CreateDomain.build(context)
          when :create_environment
            Aws::DataZone::Endpoints::CreateEnvironment.build(context)
          when :create_environment_profile
            Aws::DataZone::Endpoints::CreateEnvironmentProfile.build(context)
          when :create_form_type
            Aws::DataZone::Endpoints::CreateFormType.build(context)
          when :create_glossary
            Aws::DataZone::Endpoints::CreateGlossary.build(context)
          when :create_glossary_term
            Aws::DataZone::Endpoints::CreateGlossaryTerm.build(context)
          when :create_group_profile
            Aws::DataZone::Endpoints::CreateGroupProfile.build(context)
          when :create_listing_change_set
            Aws::DataZone::Endpoints::CreateListingChangeSet.build(context)
          when :create_project
            Aws::DataZone::Endpoints::CreateProject.build(context)
          when :create_project_membership
            Aws::DataZone::Endpoints::CreateProjectMembership.build(context)
          when :create_subscription_grant
            Aws::DataZone::Endpoints::CreateSubscriptionGrant.build(context)
          when :create_subscription_request
            Aws::DataZone::Endpoints::CreateSubscriptionRequest.build(context)
          when :create_subscription_target
            Aws::DataZone::Endpoints::CreateSubscriptionTarget.build(context)
          when :create_user_profile
            Aws::DataZone::Endpoints::CreateUserProfile.build(context)
          when :delete_asset
            Aws::DataZone::Endpoints::DeleteAsset.build(context)
          when :delete_asset_type
            Aws::DataZone::Endpoints::DeleteAssetType.build(context)
          when :delete_data_source
            Aws::DataZone::Endpoints::DeleteDataSource.build(context)
          when :delete_domain
            Aws::DataZone::Endpoints::DeleteDomain.build(context)
          when :delete_environment
            Aws::DataZone::Endpoints::DeleteEnvironment.build(context)
          when :delete_environment_blueprint_configuration
            Aws::DataZone::Endpoints::DeleteEnvironmentBlueprintConfiguration.build(context)
          when :delete_environment_profile
            Aws::DataZone::Endpoints::DeleteEnvironmentProfile.build(context)
          when :delete_form_type
            Aws::DataZone::Endpoints::DeleteFormType.build(context)
          when :delete_glossary
            Aws::DataZone::Endpoints::DeleteGlossary.build(context)
          when :delete_glossary_term
            Aws::DataZone::Endpoints::DeleteGlossaryTerm.build(context)
          when :delete_listing
            Aws::DataZone::Endpoints::DeleteListing.build(context)
          when :delete_project
            Aws::DataZone::Endpoints::DeleteProject.build(context)
          when :delete_project_membership
            Aws::DataZone::Endpoints::DeleteProjectMembership.build(context)
          when :delete_subscription_grant
            Aws::DataZone::Endpoints::DeleteSubscriptionGrant.build(context)
          when :delete_subscription_request
            Aws::DataZone::Endpoints::DeleteSubscriptionRequest.build(context)
          when :delete_subscription_target
            Aws::DataZone::Endpoints::DeleteSubscriptionTarget.build(context)
          when :get_asset
            Aws::DataZone::Endpoints::GetAsset.build(context)
          when :get_asset_type
            Aws::DataZone::Endpoints::GetAssetType.build(context)
          when :get_data_source
            Aws::DataZone::Endpoints::GetDataSource.build(context)
          when :get_data_source_run
            Aws::DataZone::Endpoints::GetDataSourceRun.build(context)
          when :get_domain
            Aws::DataZone::Endpoints::GetDomain.build(context)
          when :get_environment
            Aws::DataZone::Endpoints::GetEnvironment.build(context)
          when :get_environment_blueprint
            Aws::DataZone::Endpoints::GetEnvironmentBlueprint.build(context)
          when :get_environment_blueprint_configuration
            Aws::DataZone::Endpoints::GetEnvironmentBlueprintConfiguration.build(context)
          when :get_environment_profile
            Aws::DataZone::Endpoints::GetEnvironmentProfile.build(context)
          when :get_form_type
            Aws::DataZone::Endpoints::GetFormType.build(context)
          when :get_glossary
            Aws::DataZone::Endpoints::GetGlossary.build(context)
          when :get_glossary_term
            Aws::DataZone::Endpoints::GetGlossaryTerm.build(context)
          when :get_group_profile
            Aws::DataZone::Endpoints::GetGroupProfile.build(context)
          when :get_iam_portal_login_url
            Aws::DataZone::Endpoints::GetIamPortalLoginUrl.build(context)
          when :get_listing
            Aws::DataZone::Endpoints::GetListing.build(context)
          when :get_project
            Aws::DataZone::Endpoints::GetProject.build(context)
          when :get_subscription
            Aws::DataZone::Endpoints::GetSubscription.build(context)
          when :get_subscription_grant
            Aws::DataZone::Endpoints::GetSubscriptionGrant.build(context)
          when :get_subscription_request_details
            Aws::DataZone::Endpoints::GetSubscriptionRequestDetails.build(context)
          when :get_subscription_target
            Aws::DataZone::Endpoints::GetSubscriptionTarget.build(context)
          when :get_user_profile
            Aws::DataZone::Endpoints::GetUserProfile.build(context)
          when :list_asset_revisions
            Aws::DataZone::Endpoints::ListAssetRevisions.build(context)
          when :list_data_source_run_activities
            Aws::DataZone::Endpoints::ListDataSourceRunActivities.build(context)
          when :list_data_source_runs
            Aws::DataZone::Endpoints::ListDataSourceRuns.build(context)
          when :list_data_sources
            Aws::DataZone::Endpoints::ListDataSources.build(context)
          when :list_domains
            Aws::DataZone::Endpoints::ListDomains.build(context)
          when :list_environment_blueprint_configurations
            Aws::DataZone::Endpoints::ListEnvironmentBlueprintConfigurations.build(context)
          when :list_environment_blueprints
            Aws::DataZone::Endpoints::ListEnvironmentBlueprints.build(context)
          when :list_environment_profiles
            Aws::DataZone::Endpoints::ListEnvironmentProfiles.build(context)
          when :list_environments
            Aws::DataZone::Endpoints::ListEnvironments.build(context)
          when :list_notifications
            Aws::DataZone::Endpoints::ListNotifications.build(context)
          when :list_project_memberships
            Aws::DataZone::Endpoints::ListProjectMemberships.build(context)
          when :list_projects
            Aws::DataZone::Endpoints::ListProjects.build(context)
          when :list_subscription_grants
            Aws::DataZone::Endpoints::ListSubscriptionGrants.build(context)
          when :list_subscription_requests
            Aws::DataZone::Endpoints::ListSubscriptionRequests.build(context)
          when :list_subscription_targets
            Aws::DataZone::Endpoints::ListSubscriptionTargets.build(context)
          when :list_subscriptions
            Aws::DataZone::Endpoints::ListSubscriptions.build(context)
          when :list_tags_for_resource
            Aws::DataZone::Endpoints::ListTagsForResource.build(context)
          when :put_environment_blueprint_configuration
            Aws::DataZone::Endpoints::PutEnvironmentBlueprintConfiguration.build(context)
          when :reject_predictions
            Aws::DataZone::Endpoints::RejectPredictions.build(context)
          when :reject_subscription_request
            Aws::DataZone::Endpoints::RejectSubscriptionRequest.build(context)
          when :revoke_subscription
            Aws::DataZone::Endpoints::RevokeSubscription.build(context)
          when :search
            Aws::DataZone::Endpoints::Search.build(context)
          when :search_group_profiles
            Aws::DataZone::Endpoints::SearchGroupProfiles.build(context)
          when :search_listings
            Aws::DataZone::Endpoints::SearchListings.build(context)
          when :search_types
            Aws::DataZone::Endpoints::SearchTypes.build(context)
          when :search_user_profiles
            Aws::DataZone::Endpoints::SearchUserProfiles.build(context)
          when :start_data_source_run
            Aws::DataZone::Endpoints::StartDataSourceRun.build(context)
          when :tag_resource
            Aws::DataZone::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::DataZone::Endpoints::UntagResource.build(context)
          when :update_data_source
            Aws::DataZone::Endpoints::UpdateDataSource.build(context)
          when :update_domain
            Aws::DataZone::Endpoints::UpdateDomain.build(context)
          when :update_environment
            Aws::DataZone::Endpoints::UpdateEnvironment.build(context)
          when :update_environment_profile
            Aws::DataZone::Endpoints::UpdateEnvironmentProfile.build(context)
          when :update_glossary
            Aws::DataZone::Endpoints::UpdateGlossary.build(context)
          when :update_glossary_term
            Aws::DataZone::Endpoints::UpdateGlossaryTerm.build(context)
          when :update_group_profile
            Aws::DataZone::Endpoints::UpdateGroupProfile.build(context)
          when :update_project
            Aws::DataZone::Endpoints::UpdateProject.build(context)
          when :update_subscription_grant_status
            Aws::DataZone::Endpoints::UpdateSubscriptionGrantStatus.build(context)
          when :update_subscription_request
            Aws::DataZone::Endpoints::UpdateSubscriptionRequest.build(context)
          when :update_subscription_target
            Aws::DataZone::Endpoints::UpdateSubscriptionTarget.build(context)
          when :update_user_profile
            Aws::DataZone::Endpoints::UpdateUserProfile.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
