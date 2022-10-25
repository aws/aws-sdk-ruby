# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CodeCommit
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CodeCommit::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CodeCommit::EndpointParameters`'
      ) do |cfg|
        Aws::CodeCommit::EndpointProvider.new
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
          when :associate_approval_rule_template_with_repository
            Aws::CodeCommit::Endpoints::AssociateApprovalRuleTemplateWithRepository.build(context)
          when :batch_associate_approval_rule_template_with_repositories
            Aws::CodeCommit::Endpoints::BatchAssociateApprovalRuleTemplateWithRepositories.build(context)
          when :batch_describe_merge_conflicts
            Aws::CodeCommit::Endpoints::BatchDescribeMergeConflicts.build(context)
          when :batch_disassociate_approval_rule_template_from_repositories
            Aws::CodeCommit::Endpoints::BatchDisassociateApprovalRuleTemplateFromRepositories.build(context)
          when :batch_get_commits
            Aws::CodeCommit::Endpoints::BatchGetCommits.build(context)
          when :batch_get_repositories
            Aws::CodeCommit::Endpoints::BatchGetRepositories.build(context)
          when :create_approval_rule_template
            Aws::CodeCommit::Endpoints::CreateApprovalRuleTemplate.build(context)
          when :create_branch
            Aws::CodeCommit::Endpoints::CreateBranch.build(context)
          when :create_commit
            Aws::CodeCommit::Endpoints::CreateCommit.build(context)
          when :create_pull_request
            Aws::CodeCommit::Endpoints::CreatePullRequest.build(context)
          when :create_pull_request_approval_rule
            Aws::CodeCommit::Endpoints::CreatePullRequestApprovalRule.build(context)
          when :create_repository
            Aws::CodeCommit::Endpoints::CreateRepository.build(context)
          when :create_unreferenced_merge_commit
            Aws::CodeCommit::Endpoints::CreateUnreferencedMergeCommit.build(context)
          when :delete_approval_rule_template
            Aws::CodeCommit::Endpoints::DeleteApprovalRuleTemplate.build(context)
          when :delete_branch
            Aws::CodeCommit::Endpoints::DeleteBranch.build(context)
          when :delete_comment_content
            Aws::CodeCommit::Endpoints::DeleteCommentContent.build(context)
          when :delete_file
            Aws::CodeCommit::Endpoints::DeleteFile.build(context)
          when :delete_pull_request_approval_rule
            Aws::CodeCommit::Endpoints::DeletePullRequestApprovalRule.build(context)
          when :delete_repository
            Aws::CodeCommit::Endpoints::DeleteRepository.build(context)
          when :describe_merge_conflicts
            Aws::CodeCommit::Endpoints::DescribeMergeConflicts.build(context)
          when :describe_pull_request_events
            Aws::CodeCommit::Endpoints::DescribePullRequestEvents.build(context)
          when :disassociate_approval_rule_template_from_repository
            Aws::CodeCommit::Endpoints::DisassociateApprovalRuleTemplateFromRepository.build(context)
          when :evaluate_pull_request_approval_rules
            Aws::CodeCommit::Endpoints::EvaluatePullRequestApprovalRules.build(context)
          when :get_approval_rule_template
            Aws::CodeCommit::Endpoints::GetApprovalRuleTemplate.build(context)
          when :get_blob
            Aws::CodeCommit::Endpoints::GetBlob.build(context)
          when :get_branch
            Aws::CodeCommit::Endpoints::GetBranch.build(context)
          when :get_comment
            Aws::CodeCommit::Endpoints::GetComment.build(context)
          when :get_comment_reactions
            Aws::CodeCommit::Endpoints::GetCommentReactions.build(context)
          when :get_comments_for_compared_commit
            Aws::CodeCommit::Endpoints::GetCommentsForComparedCommit.build(context)
          when :get_comments_for_pull_request
            Aws::CodeCommit::Endpoints::GetCommentsForPullRequest.build(context)
          when :get_commit
            Aws::CodeCommit::Endpoints::GetCommit.build(context)
          when :get_differences
            Aws::CodeCommit::Endpoints::GetDifferences.build(context)
          when :get_file
            Aws::CodeCommit::Endpoints::GetFile.build(context)
          when :get_folder
            Aws::CodeCommit::Endpoints::GetFolder.build(context)
          when :get_merge_commit
            Aws::CodeCommit::Endpoints::GetMergeCommit.build(context)
          when :get_merge_conflicts
            Aws::CodeCommit::Endpoints::GetMergeConflicts.build(context)
          when :get_merge_options
            Aws::CodeCommit::Endpoints::GetMergeOptions.build(context)
          when :get_pull_request
            Aws::CodeCommit::Endpoints::GetPullRequest.build(context)
          when :get_pull_request_approval_states
            Aws::CodeCommit::Endpoints::GetPullRequestApprovalStates.build(context)
          when :get_pull_request_override_state
            Aws::CodeCommit::Endpoints::GetPullRequestOverrideState.build(context)
          when :get_repository
            Aws::CodeCommit::Endpoints::GetRepository.build(context)
          when :get_repository_triggers
            Aws::CodeCommit::Endpoints::GetRepositoryTriggers.build(context)
          when :list_approval_rule_templates
            Aws::CodeCommit::Endpoints::ListApprovalRuleTemplates.build(context)
          when :list_associated_approval_rule_templates_for_repository
            Aws::CodeCommit::Endpoints::ListAssociatedApprovalRuleTemplatesForRepository.build(context)
          when :list_branches
            Aws::CodeCommit::Endpoints::ListBranches.build(context)
          when :list_pull_requests
            Aws::CodeCommit::Endpoints::ListPullRequests.build(context)
          when :list_repositories
            Aws::CodeCommit::Endpoints::ListRepositories.build(context)
          when :list_repositories_for_approval_rule_template
            Aws::CodeCommit::Endpoints::ListRepositoriesForApprovalRuleTemplate.build(context)
          when :list_tags_for_resource
            Aws::CodeCommit::Endpoints::ListTagsForResource.build(context)
          when :merge_branches_by_fast_forward
            Aws::CodeCommit::Endpoints::MergeBranchesByFastForward.build(context)
          when :merge_branches_by_squash
            Aws::CodeCommit::Endpoints::MergeBranchesBySquash.build(context)
          when :merge_branches_by_three_way
            Aws::CodeCommit::Endpoints::MergeBranchesByThreeWay.build(context)
          when :merge_pull_request_by_fast_forward
            Aws::CodeCommit::Endpoints::MergePullRequestByFastForward.build(context)
          when :merge_pull_request_by_squash
            Aws::CodeCommit::Endpoints::MergePullRequestBySquash.build(context)
          when :merge_pull_request_by_three_way
            Aws::CodeCommit::Endpoints::MergePullRequestByThreeWay.build(context)
          when :override_pull_request_approval_rules
            Aws::CodeCommit::Endpoints::OverridePullRequestApprovalRules.build(context)
          when :post_comment_for_compared_commit
            Aws::CodeCommit::Endpoints::PostCommentForComparedCommit.build(context)
          when :post_comment_for_pull_request
            Aws::CodeCommit::Endpoints::PostCommentForPullRequest.build(context)
          when :post_comment_reply
            Aws::CodeCommit::Endpoints::PostCommentReply.build(context)
          when :put_comment_reaction
            Aws::CodeCommit::Endpoints::PutCommentReaction.build(context)
          when :put_file
            Aws::CodeCommit::Endpoints::PutFile.build(context)
          when :put_repository_triggers
            Aws::CodeCommit::Endpoints::PutRepositoryTriggers.build(context)
          when :tag_resource
            Aws::CodeCommit::Endpoints::TagResource.build(context)
          when :test_repository_triggers
            Aws::CodeCommit::Endpoints::TestRepositoryTriggers.build(context)
          when :untag_resource
            Aws::CodeCommit::Endpoints::UntagResource.build(context)
          when :update_approval_rule_template_content
            Aws::CodeCommit::Endpoints::UpdateApprovalRuleTemplateContent.build(context)
          when :update_approval_rule_template_description
            Aws::CodeCommit::Endpoints::UpdateApprovalRuleTemplateDescription.build(context)
          when :update_approval_rule_template_name
            Aws::CodeCommit::Endpoints::UpdateApprovalRuleTemplateName.build(context)
          when :update_comment
            Aws::CodeCommit::Endpoints::UpdateComment.build(context)
          when :update_default_branch
            Aws::CodeCommit::Endpoints::UpdateDefaultBranch.build(context)
          when :update_pull_request_approval_rule_content
            Aws::CodeCommit::Endpoints::UpdatePullRequestApprovalRuleContent.build(context)
          when :update_pull_request_approval_state
            Aws::CodeCommit::Endpoints::UpdatePullRequestApprovalState.build(context)
          when :update_pull_request_description
            Aws::CodeCommit::Endpoints::UpdatePullRequestDescription.build(context)
          when :update_pull_request_status
            Aws::CodeCommit::Endpoints::UpdatePullRequestStatus.build(context)
          when :update_pull_request_title
            Aws::CodeCommit::Endpoints::UpdatePullRequestTitle.build(context)
          when :update_repository_description
            Aws::CodeCommit::Endpoints::UpdateRepositoryDescription.build(context)
          when :update_repository_name
            Aws::CodeCommit::Endpoints::UpdateRepositoryName.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
