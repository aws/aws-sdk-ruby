# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::WellArchitected
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::WellArchitected::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::WellArchitected::EndpointParameters`'
      ) do |cfg|
        Aws::WellArchitected::EndpointProvider.new
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
          when :associate_lenses
            Aws::WellArchitected::Endpoints::AssociateLenses.build(context)
          when :associate_profiles
            Aws::WellArchitected::Endpoints::AssociateProfiles.build(context)
          when :create_lens_share
            Aws::WellArchitected::Endpoints::CreateLensShare.build(context)
          when :create_lens_version
            Aws::WellArchitected::Endpoints::CreateLensVersion.build(context)
          when :create_milestone
            Aws::WellArchitected::Endpoints::CreateMilestone.build(context)
          when :create_profile
            Aws::WellArchitected::Endpoints::CreateProfile.build(context)
          when :create_profile_share
            Aws::WellArchitected::Endpoints::CreateProfileShare.build(context)
          when :create_workload
            Aws::WellArchitected::Endpoints::CreateWorkload.build(context)
          when :create_workload_share
            Aws::WellArchitected::Endpoints::CreateWorkloadShare.build(context)
          when :delete_lens
            Aws::WellArchitected::Endpoints::DeleteLens.build(context)
          when :delete_lens_share
            Aws::WellArchitected::Endpoints::DeleteLensShare.build(context)
          when :delete_profile
            Aws::WellArchitected::Endpoints::DeleteProfile.build(context)
          when :delete_profile_share
            Aws::WellArchitected::Endpoints::DeleteProfileShare.build(context)
          when :delete_workload
            Aws::WellArchitected::Endpoints::DeleteWorkload.build(context)
          when :delete_workload_share
            Aws::WellArchitected::Endpoints::DeleteWorkloadShare.build(context)
          when :disassociate_lenses
            Aws::WellArchitected::Endpoints::DisassociateLenses.build(context)
          when :disassociate_profiles
            Aws::WellArchitected::Endpoints::DisassociateProfiles.build(context)
          when :export_lens
            Aws::WellArchitected::Endpoints::ExportLens.build(context)
          when :get_answer
            Aws::WellArchitected::Endpoints::GetAnswer.build(context)
          when :get_consolidated_report
            Aws::WellArchitected::Endpoints::GetConsolidatedReport.build(context)
          when :get_lens
            Aws::WellArchitected::Endpoints::GetLens.build(context)
          when :get_lens_review
            Aws::WellArchitected::Endpoints::GetLensReview.build(context)
          when :get_lens_review_report
            Aws::WellArchitected::Endpoints::GetLensReviewReport.build(context)
          when :get_lens_version_difference
            Aws::WellArchitected::Endpoints::GetLensVersionDifference.build(context)
          when :get_milestone
            Aws::WellArchitected::Endpoints::GetMilestone.build(context)
          when :get_profile
            Aws::WellArchitected::Endpoints::GetProfile.build(context)
          when :get_profile_template
            Aws::WellArchitected::Endpoints::GetProfileTemplate.build(context)
          when :get_workload
            Aws::WellArchitected::Endpoints::GetWorkload.build(context)
          when :import_lens
            Aws::WellArchitected::Endpoints::ImportLens.build(context)
          when :list_answers
            Aws::WellArchitected::Endpoints::ListAnswers.build(context)
          when :list_check_details
            Aws::WellArchitected::Endpoints::ListCheckDetails.build(context)
          when :list_check_summaries
            Aws::WellArchitected::Endpoints::ListCheckSummaries.build(context)
          when :list_lens_review_improvements
            Aws::WellArchitected::Endpoints::ListLensReviewImprovements.build(context)
          when :list_lens_reviews
            Aws::WellArchitected::Endpoints::ListLensReviews.build(context)
          when :list_lens_shares
            Aws::WellArchitected::Endpoints::ListLensShares.build(context)
          when :list_lenses
            Aws::WellArchitected::Endpoints::ListLenses.build(context)
          when :list_milestones
            Aws::WellArchitected::Endpoints::ListMilestones.build(context)
          when :list_notifications
            Aws::WellArchitected::Endpoints::ListNotifications.build(context)
          when :list_profile_notifications
            Aws::WellArchitected::Endpoints::ListProfileNotifications.build(context)
          when :list_profile_shares
            Aws::WellArchitected::Endpoints::ListProfileShares.build(context)
          when :list_profiles
            Aws::WellArchitected::Endpoints::ListProfiles.build(context)
          when :list_share_invitations
            Aws::WellArchitected::Endpoints::ListShareInvitations.build(context)
          when :list_tags_for_resource
            Aws::WellArchitected::Endpoints::ListTagsForResource.build(context)
          when :list_workload_shares
            Aws::WellArchitected::Endpoints::ListWorkloadShares.build(context)
          when :list_workloads
            Aws::WellArchitected::Endpoints::ListWorkloads.build(context)
          when :tag_resource
            Aws::WellArchitected::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::WellArchitected::Endpoints::UntagResource.build(context)
          when :update_answer
            Aws::WellArchitected::Endpoints::UpdateAnswer.build(context)
          when :update_global_settings
            Aws::WellArchitected::Endpoints::UpdateGlobalSettings.build(context)
          when :update_lens_review
            Aws::WellArchitected::Endpoints::UpdateLensReview.build(context)
          when :update_profile
            Aws::WellArchitected::Endpoints::UpdateProfile.build(context)
          when :update_share_invitation
            Aws::WellArchitected::Endpoints::UpdateShareInvitation.build(context)
          when :update_workload
            Aws::WellArchitected::Endpoints::UpdateWorkload.build(context)
          when :update_workload_share
            Aws::WellArchitected::Endpoints::UpdateWorkloadShare.build(context)
          when :upgrade_lens_review
            Aws::WellArchitected::Endpoints::UpgradeLensReview.build(context)
          when :upgrade_profile_version
            Aws::WellArchitected::Endpoints::UpgradeProfileVersion.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
