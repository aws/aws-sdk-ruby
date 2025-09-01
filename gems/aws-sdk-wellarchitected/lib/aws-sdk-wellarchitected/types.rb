# frozen_string_literal: true

# This is generated code!

module Aws::WellArchitected
  # This module contains the types returned by client operations.
  module Types

    # <p>User does not have sufficient access to perform this action.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Account-level: Input for the Jira configuration.</p>
    # @!attribute issue_management_status
    #   <p>Account-level: Jira issue management status.</p>
    #   @return [String]
    # @!attribute issue_management_type
    #   <p>Account-level: Jira issue management type.</p>
    #   @return [String]
    # @!attribute jira_project_key
    #   <p>Account-level: Jira project key to sync workloads to.</p>
    #   @return [String]
    # @!attribute integration_status
    #   <p>Account-level: Configuration status of the Jira integration.</p>
    #   @return [String]
    class AccountJiraConfigurationInput < Struct.new(
      :issue_management_status,
      :issue_management_type,
      :jira_project_key,
      :integration_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Account-level: Output configuration of the Jira integration.</p>
    # @!attribute integration_status
    #   <p>Account-level: Configuration status of the Jira integration.</p>
    #   @return [String]
    # @!attribute issue_management_status
    #   <p>Account-level: Jira issue management status.</p>
    #   @return [String]
    # @!attribute issue_management_type
    #   <p>Account-level: Jira issue management type.</p>
    #   @return [String]
    # @!attribute subdomain
    #   <p>Account-level: Jira subdomain URL.</p>
    #   @return [String]
    # @!attribute jira_project_key
    #   <p>Account-level: Jira project key to sync workloads to.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Account-level: Status message on configuration of the Jira integration.</p>
    #   @return [String]
    class AccountJiraConfigurationOutput < Struct.new(
      :integration_status,
      :issue_management_status,
      :issue_management_type,
      :subdomain,
      :jira_project_key,
      :status_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AccountJiraIssueManagementStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    module AdditionalResourceType
      HELPFUL_RESOURCE = 'HELPFUL_RESOURCE'
      IMPROVEMENT_PLAN = 'IMPROVEMENT_PLAN'
    end

    # <p>The choice level additional resources for a custom lens.</p>
    #          <p>This field does not apply to Amazon Web Services official lenses.</p>
    # @!attribute type
    #   <p>Type of additional resource for a custom lens.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The URLs for additional resources, either helpful resources or improvement plans, for a custom lens. Up to five additional URLs can be specified.</p>
    #   @return [Array<Types::ChoiceContent>]
    class AdditionalResources < Struct.new(
      :type,
      :content,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An answer of the question.</p>
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #   @return [String]
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [String]
    # @!attribute question_title
    #   <p>The title of the question.</p>
    #   @return [String]
    # @!attribute question_description
    #   <p>The description of the question.</p>
    #   @return [String]
    # @!attribute improvement_plan_url
    #   <p>The improvement plan URL for a question in an Amazon Web Services official lenses.</p>
    #            <p>This value is only available if the question has been answered.</p>
    #            <p>This value does not apply to custom lenses.</p>
    #   @return [String]
    # @!attribute helpful_resource_url
    #   <p>The helpful resource URL.</p>
    #            <p>For Amazon Web Services official lenses, this is the helpful resource URL for a question or choice.</p>
    #            <p>For custom lenses, this is the helpful resource URL for a question and is only provided
    #               if <code>HelpfulResourceDisplayText</code> was specified for the question.</p>
    #   @return [String]
    # @!attribute helpful_resource_display_text
    #   <p>The helpful resource text to be displayed for a custom lens.</p>
    #            <p>This field does not apply to Amazon Web Services official lenses.</p>
    #   @return [String]
    # @!attribute choices
    #   <p>List of choices available for a question.</p>
    #   @return [Array<Types::Choice>]
    # @!attribute selected_choices
    #   <p>List of selected choice IDs in a question answer.</p>
    #            <p>The values entered replace the previously selected choices.</p>
    #   @return [Array<String>]
    # @!attribute choice_answers
    #   <p>A list of selected choices to a question in your workload.</p>
    #   @return [Array<Types::ChoiceAnswer>]
    # @!attribute is_applicable
    #   <p>Defines whether this question is applicable to a lens review.</p>
    #   @return [Boolean]
    # @!attribute risk
    #   <p>The risk for a given workload, lens review, pillar, or question.</p>
    #   @return [String]
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason why the question is not applicable to your workload.</p>
    #   @return [String]
    # @!attribute jira_configuration
    #   <p>Configuration of the Jira integration.</p>
    #   @return [Types::JiraConfiguration]
    class Answer < Struct.new(
      :question_id,
      :pillar_id,
      :question_title,
      :question_description,
      :improvement_plan_url,
      :helpful_resource_url,
      :helpful_resource_display_text,
      :choices,
      :selected_choices,
      :choice_answers,
      :is_applicable,
      :risk,
      :notes,
      :reason,
      :jira_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AnswerReason
      OUT_OF_SCOPE = 'OUT_OF_SCOPE'
      BUSINESS_PRIORITIES = 'BUSINESS_PRIORITIES'
      ARCHITECTURE_CONSTRAINTS = 'ARCHITECTURE_CONSTRAINTS'
      OTHER = 'OTHER'
      NONE = 'NONE'
    end

    # <p>An answer summary of a lens review in a workload.</p>
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #   @return [String]
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [String]
    # @!attribute question_title
    #   <p>The title of the question.</p>
    #   @return [String]
    # @!attribute choices
    #   <p>List of choices available for a question.</p>
    #   @return [Array<Types::Choice>]
    # @!attribute selected_choices
    #   <p>List of selected choice IDs in a question answer.</p>
    #            <p>The values entered replace the previously selected choices.</p>
    #   @return [Array<String>]
    # @!attribute choice_answer_summaries
    #   <p>A list of selected choices to a question in your workload.</p>
    #   @return [Array<Types::ChoiceAnswerSummary>]
    # @!attribute is_applicable
    #   <p>Defines whether this question is applicable to a lens review.</p>
    #   @return [Boolean]
    # @!attribute risk
    #   <p>The risk for a given workload, lens review, pillar, or question.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason why a choice is non-applicable to a question in your workload.</p>
    #   @return [String]
    # @!attribute question_type
    #   <p>The type of the question.</p>
    #   @return [String]
    # @!attribute jira_configuration
    #   <p>Configuration of the Jira integration.</p>
    #   @return [Types::JiraConfiguration]
    class AnswerSummary < Struct.new(
      :question_id,
      :pillar_id,
      :question_title,
      :choices,
      :selected_choices,
      :choice_answer_summaries,
      :is_applicable,
      :risk,
      :reason,
      :question_type,
      :jira_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input to associate lens reviews.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute lens_aliases
    #   <p>List of lens aliases to associate or disassociate with a workload. Up to 10 lenses can be specified.</p>
    #            <p>Identify a lens using its <a>LensSummary$LensAlias</a>.</p>
    #   @return [Array<String>]
    class AssociateLensesInput < Struct.new(
      :workload_id,
      :lens_aliases,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute profile_arns
    #   <p>The list of profile ARNs to associate with the workload.</p>
    #   @return [Array<String>]
    class AssociateProfilesInput < Struct.new(
      :workload_id,
      :profile_arns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A best practice, or question choice, that has been identified as a risk in this question.</p>
    # @!attribute choice_id
    #   <p>The ID of a choice.</p>
    #   @return [String]
    # @!attribute choice_title
    #   <p>The title of a choice.</p>
    #   @return [String]
    class BestPractice < Struct.new(
      :choice_id,
      :choice_title,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Account details for a Well-Architected best practice in relation to Trusted Advisor checks.</p>
    # @!attribute id
    #   <p>Trusted Advisor check ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Trusted Advisor check name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Trusted Advisor check description.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>Provider of the check related to the best practice.</p>
    #   @return [String]
    # @!attribute lens_arn
    #   <p>Well-Architected Lens ARN associated to the check.</p>
    #   @return [String]
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [String]
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #   @return [String]
    # @!attribute choice_id
    #   <p>The ID of a choice.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status associated to the check.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>An Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute flagged_resources
    #   <p>Count of flagged resources associated to the check.</p>
    #   @return [Integer]
    # @!attribute reason
    #   <p>Reason associated to the check.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    class CheckDetail < Struct.new(
      :id,
      :name,
      :description,
      :provider,
      :lens_arn,
      :pillar_id,
      :question_id,
      :choice_id,
      :status,
      :account_id,
      :flagged_resources,
      :reason,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CheckFailureReason
      ASSUME_ROLE_ERROR = 'ASSUME_ROLE_ERROR'
      ACCESS_DENIED = 'ACCESS_DENIED'
      UNKNOWN_ERROR = 'UNKNOWN_ERROR'
      PREMIUM_SUPPORT_REQUIRED = 'PREMIUM_SUPPORT_REQUIRED'
    end

    module CheckProvider
      TRUSTED_ADVISOR = 'TRUSTED_ADVISOR'
    end

    module CheckStatus
      OKAY = 'OKAY'
      WARNING = 'WARNING'
      ERROR = 'ERROR'
      NOT_AVAILABLE = 'NOT_AVAILABLE'
      FETCH_FAILED = 'FETCH_FAILED'
    end

    # <p>Trusted Advisor check summary.</p>
    # @!attribute id
    #   <p>Trusted Advisor check ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Trusted Advisor check name.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>Provider of the check related to the best practice.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Trusted Advisor check description.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    # @!attribute lens_arn
    #   <p>Well-Architected Lens ARN associated to the check.</p>
    #   @return [String]
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [String]
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #   @return [String]
    # @!attribute choice_id
    #   <p>The ID of a choice.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status associated to the check.</p>
    #   @return [String]
    # @!attribute account_summary
    #   <p>Account summary associated to the check.</p>
    #   @return [Hash<String, Integer>]
    class CheckSummary < Struct.new(
      :id,
      :name,
      :provider,
      :description,
      :updated_at,
      :lens_arn,
      :pillar_id,
      :question_id,
      :choice_id,
      :status,
      :account_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A choice available to answer question.</p>
    # @!attribute choice_id
    #   <p>The ID of a choice.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of a choice.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a choice.</p>
    #   @return [String]
    # @!attribute helpful_resource
    #   <p>The helpful resource (both text and URL) for a particular choice.</p>
    #            <p>This field only applies to custom lenses. Each choice can have only one helpful resource.</p>
    #   @return [Types::ChoiceContent]
    # @!attribute improvement_plan
    #   <p>The improvement plan (both text and URL) for a particular choice.</p>
    #            <p>This field only applies to custom lenses. Each choice can have only one improvement plan.</p>
    #   @return [Types::ChoiceContent]
    # @!attribute additional_resources
    #   <p>The additional resources for a choice in a custom lens.</p>
    #            <p>A choice can have up to two additional resources: one of type <code>HELPFUL_RESOURCE</code>, 
    #               one of type <code>IMPROVEMENT_PLAN</code>, or both.</p>
    #   @return [Array<Types::AdditionalResources>]
    class Choice < Struct.new(
      :choice_id,
      :title,
      :description,
      :helpful_resource,
      :improvement_plan,
      :additional_resources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A choice that has been answered on a question in your workload.</p>
    # @!attribute choice_id
    #   <p>The ID of a choice.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a choice.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason why a choice is non-applicable to a question in your workload.</p>
    #   @return [String]
    # @!attribute notes
    #   <p>The notes associated with a choice.</p>
    #   @return [String]
    class ChoiceAnswer < Struct.new(
      :choice_id,
      :status,
      :reason,
      :notes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A choice summary that has been answered on a question in your workload.</p>
    # @!attribute choice_id
    #   <p>The ID of a choice.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a choice.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason why a choice is non-applicable to a question in your workload.</p>
    #   @return [String]
    class ChoiceAnswerSummary < Struct.new(
      :choice_id,
      :status,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The choice content.</p>
    # @!attribute display_text
    #   <p>The display text for the choice content.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL for the choice content.</p>
    #   @return [String]
    class ChoiceContent < Struct.new(
      :display_text,
      :url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The choice level improvement plan.</p>
    # @!attribute choice_id
    #   <p>The ID of a choice.</p>
    #   @return [String]
    # @!attribute display_text
    #   <p>The display text for the improvement plan.</p>
    #   @return [String]
    # @!attribute improvement_plan_url
    #   <p>The improvement plan URL for a question in an Amazon Web Services official lenses.</p>
    #            <p>This value is only available if the question has been answered.</p>
    #            <p>This value does not apply to custom lenses.</p>
    #   @return [String]
    class ChoiceImprovementPlan < Struct.new(
      :choice_id,
      :display_text,
      :improvement_plan_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ChoiceReason
      OUT_OF_SCOPE = 'OUT_OF_SCOPE'
      BUSINESS_PRIORITIES = 'BUSINESS_PRIORITIES'
      ARCHITECTURE_CONSTRAINTS = 'ARCHITECTURE_CONSTRAINTS'
      OTHER = 'OTHER'
      NONE = 'NONE'
    end

    module ChoiceStatus
      SELECTED = 'SELECTED'
      NOT_APPLICABLE = 'NOT_APPLICABLE'
      UNSELECTED = 'UNSELECTED'
    end

    # <p>A list of choices to be updated.</p>
    # @!attribute status
    #   <p>The status of a choice.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason why a choice is non-applicable to a question in your workload.</p>
    #   @return [String]
    # @!attribute notes
    #   <p>The notes associated with a choice.</p>
    #   @return [String]
    class ChoiceUpdate < Struct.new(
      :status,
      :reason,
      :notes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource has already been processed, was deleted, or is too large.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the resource affected.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of the resource affected.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A metric that contributes to the consolidated report.</p>
    # @!attribute metric_type
    #   <p>The metric type of a metric in the consolidated report. Currently only WORKLOAD metric types are supported.</p>
    #   @return [String]
    # @!attribute risk_counts
    #   <p>A map from risk names to the count of how many questions have that rating.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #            <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    #   @return [String]
    # @!attribute workload_arn
    #   <p>The ARN for the workload.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    # @!attribute lenses
    #   <p>The metrics for the lenses in the workload.</p>
    #   @return [Array<Types::LensMetric>]
    # @!attribute lenses_applied_count
    #   <p>The total number of lenses applied to the workload.</p>
    #   @return [Integer]
    class ConsolidatedReportMetric < Struct.new(
      :metric_type,
      :risk_counts,
      :workload_id,
      :workload_name,
      :workload_arn,
      :updated_at,
      :lenses,
      :lenses_applied_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute shared_with
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which 
    #               the workload, lens, profile, or review template is shared.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    class CreateLensShareInput < Struct.new(
      :lens_alias,
      :shared_with,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute share_id
    #   <p>The ID associated with the share.</p>
    #   @return [String]
    class CreateLensShareOutput < Struct.new(
      :share_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute lens_version
    #   <p>The version of the lens being created.</p>
    #   @return [String]
    # @!attribute is_major_version
    #   <p>Set to true if this new major lens version.</p>
    #   @return [Boolean]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    class CreateLensVersionInput < Struct.new(
      :lens_alias,
      :lens_version,
      :is_major_version,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #   @return [String]
    # @!attribute lens_version
    #   <p>The version of the lens.</p>
    #   @return [String]
    class CreateLensVersionOutput < Struct.new(
      :lens_arn,
      :lens_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input for milestone creation.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute milestone_name
    #   <p>The name of the milestone in a workload.</p>
    #            <p>Milestone names must be unique within a workload.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    class CreateMilestoneInput < Struct.new(
      :workload_id,
      :milestone_name,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output of a create milestone call.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    #   @return [Integer]
    class CreateMilestoneOutput < Struct.new(
      :workload_id,
      :milestone_number,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute profile_name
    #   <p>Name of the profile.</p>
    #   @return [String]
    # @!attribute profile_description
    #   <p>The profile description.</p>
    #   @return [String]
    # @!attribute profile_questions
    #   <p>The profile questions.</p>
    #   @return [Array<Types::ProfileQuestionUpdate>]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the profile.</p>
    #   @return [Hash<String, String>]
    class CreateProfileInput < Struct.new(
      :profile_name,
      :profile_description,
      :profile_questions,
      :client_request_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute profile_arn
    #   <p>The profile ARN.</p>
    #   @return [String]
    # @!attribute profile_version
    #   <p>Version of the profile.</p>
    #   @return [String]
    class CreateProfileOutput < Struct.new(
      :profile_arn,
      :profile_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute profile_arn
    #   <p>The profile ARN.</p>
    #   @return [String]
    # @!attribute shared_with
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which 
    #               the workload, lens, profile, or review template is shared.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    class CreateProfileShareInput < Struct.new(
      :profile_arn,
      :shared_with,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute share_id
    #   <p>The ID associated with the share.</p>
    #   @return [String]
    # @!attribute profile_arn
    #   <p>The profile ARN.</p>
    #   @return [String]
    class CreateProfileShareOutput < Struct.new(
      :share_id,
      :profile_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>Name of the review template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The review template description.</p>
    #   @return [String]
    # @!attribute lenses
    #   <p>Lenses applied to the review template.</p>
    #   @return [Array<String>]
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the review template.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    class CreateReviewTemplateInput < Struct.new(
      :template_name,
      :description,
      :lenses,
      :notes,
      :tags,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    class CreateReviewTemplateOutput < Struct.new(
      :template_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    # @!attribute shared_with
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which 
    #               the workload, lens, profile, or review template is shared.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    class CreateTemplateShareInput < Struct.new(
      :template_arn,
      :shared_with,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    # @!attribute share_id
    #   <p>The ID associated with the share.</p>
    #   @return [String]
    class CreateTemplateShareOutput < Struct.new(
      :template_arn,
      :share_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input for workload creation.</p>
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #            <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the workload.</p>
    #   @return [String]
    # @!attribute environment
    #   <p>The environment for the workload.</p>
    #   @return [String]
    # @!attribute account_ids
    #   <p>The list of Amazon Web Services account IDs associated with the workload.</p>
    #   @return [Array<String>]
    # @!attribute aws_regions
    #   <p>The list of Amazon Web Services Regions associated with the workload, for example,
    #                   <code>us-east-2</code>, or <code>ca-central-1</code>.</p>
    #   @return [Array<String>]
    # @!attribute non_aws_regions
    #   <p> The list of non-Amazon Web Services Regions associated with the workload.</p>
    #   @return [Array<String>]
    # @!attribute pillar_priorities
    #   <p>The priorities of the pillars, which are used to order items in the improvement plan.
    #               Each pillar is represented by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [Array<String>]
    # @!attribute architectural_design
    #   <p>The URL of the architectural design for the workload.</p>
    #   @return [String]
    # @!attribute review_owner
    #   <p>The review owner of the workload. The name, email address, or identifier for the
    #               primary group or individual that owns the workload review process.</p>
    #   @return [String]
    # @!attribute industry_type
    #   <p>The industry type for the workload.</p>
    #            <p>If specified, must be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Agriculture</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Automobile</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Defense</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Design and Engineering</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Digital Advertising</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Education</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environmental Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Financial Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Gaming</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>General Public Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Healthcare</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Hospitality</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InfoTech</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Justice and Public Safety</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Life Sciences</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Manufacturing</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Media & Entertainment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Mining & Resources</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Oil & Gas</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Power & Utilities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Professional Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Real Estate & Construction</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Retail & Wholesale</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Social Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Telecommunications</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Travel, Transportation & Logistics</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Other</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute industry
    #   <p>The industry for the workload.</p>
    #   @return [String]
    # @!attribute lenses
    #   <p>The list of lenses associated with the workload. Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #            <p>If a review template that specifies lenses is applied to the workload, those lenses are applied
    #           to the workload in addition to these lenses.</p>
    #   @return [Array<String>]
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be associated with the workload.</p>
    #   @return [Hash<String, String>]
    # @!attribute discovery_config
    #   <p>Well-Architected discovery configuration settings associated to the workload.</p>
    #   @return [Types::WorkloadDiscoveryConfig]
    # @!attribute applications
    #   <p>List of AppRegistry application ARNs associated to the workload.</p>
    #   @return [Array<String>]
    # @!attribute profile_arns
    #   <p>The list of profile ARNs associated with the workload.</p>
    #   @return [Array<String>]
    # @!attribute review_template_arns
    #   <p>The list of review template ARNs to associate with the workload.</p>
    #   @return [Array<String>]
    # @!attribute jira_configuration
    #   <p>Jira configuration settings when creating a workload.</p>
    #   @return [Types::WorkloadJiraConfigurationInput]
    class CreateWorkloadInput < Struct.new(
      :workload_name,
      :description,
      :environment,
      :account_ids,
      :aws_regions,
      :non_aws_regions,
      :pillar_priorities,
      :architectural_design,
      :review_owner,
      :industry_type,
      :industry,
      :lenses,
      :notes,
      :client_request_token,
      :tags,
      :discovery_config,
      :applications,
      :profile_arns,
      :review_template_arns,
      :jira_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output of a create workload call.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute workload_arn
    #   <p>The ARN for the workload.</p>
    #   @return [String]
    class CreateWorkloadOutput < Struct.new(
      :workload_id,
      :workload_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input for Create Workload Share</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute shared_with
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which 
    #               the workload, lens, profile, or review template is shared.</p>
    #   @return [String]
    # @!attribute permission_type
    #   <p>Permission granted on a share request.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    class CreateWorkloadShareInput < Struct.new(
      :workload_id,
      :shared_with,
      :permission_type,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input for Create Workload Share</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute share_id
    #   <p>The ID associated with the share.</p>
    #   @return [String]
    class CreateWorkloadShareOutput < Struct.new(
      :workload_id,
      :share_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DefinitionType
      WORKLOAD_METADATA = 'WORKLOAD_METADATA'
      APP_REGISTRY = 'APP_REGISTRY'
    end

    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    # @!attribute lens_status
    #   <p>The status of the lens to be deleted.</p>
    #   @return [String]
    class DeleteLensInput < Struct.new(
      :lens_alias,
      :client_request_token,
      :lens_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute share_id
    #   <p>The ID associated with the share.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    class DeleteLensShareInput < Struct.new(
      :share_id,
      :lens_alias,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute profile_arn
    #   <p>The profile ARN.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    class DeleteProfileInput < Struct.new(
      :profile_arn,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute share_id
    #   <p>The ID associated with the share.</p>
    #   @return [String]
    # @!attribute profile_arn
    #   <p>The profile ARN.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    class DeleteProfileShareInput < Struct.new(
      :share_id,
      :profile_arn,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    class DeleteReviewTemplateInput < Struct.new(
      :template_arn,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute share_id
    #   <p>The ID associated with the share.</p>
    #   @return [String]
    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    class DeleteTemplateShareInput < Struct.new(
      :share_id,
      :template_arn,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input for workload deletion.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    class DeleteWorkloadInput < Struct.new(
      :workload_id,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input for Delete Workload Share</p>
    # @!attribute share_id
    #   <p>The ID associated with the share.</p>
    #   @return [String]
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    class DeleteWorkloadShareInput < Struct.new(
      :share_id,
      :workload_id,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DifferenceStatus
      UPDATED = 'UPDATED'
      NEW = 'NEW'
      DELETED = 'DELETED'
    end

    # <p>Input to disassociate lens reviews.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute lens_aliases
    #   <p>List of lens aliases to associate or disassociate with a workload. Up to 10 lenses can be specified.</p>
    #            <p>Identify a lens using its <a>LensSummary$LensAlias</a>.</p>
    #   @return [Array<String>]
    class DisassociateLensesInput < Struct.new(
      :workload_id,
      :lens_aliases,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute profile_arns
    #   <p>The list of profile ARNs to disassociate from the workload.</p>
    #   @return [Array<String>]
    class DisassociateProfilesInput < Struct.new(
      :workload_id,
      :profile_arns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DiscoveryIntegrationStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute lens_version
    #   <p>The lens version to be exported.</p>
    #   @return [String]
    class ExportLensInput < Struct.new(
      :lens_alias,
      :lens_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute lens_json
    #   <p>The JSON representation of a lens.</p>
    #   @return [String]
    class ExportLensOutput < Struct.new(
      :lens_json,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input to get answer.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #   @return [String]
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    #   @return [Integer]
    class GetAnswerInput < Struct.new(
      :workload_id,
      :lens_alias,
      :question_id,
      :milestone_number,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output of a get answer call.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    #   @return [Integer]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #   @return [String]
    # @!attribute answer
    #   <p>An answer of the question.</p>
    #   @return [Types::Answer]
    class GetAnswerOutput < Struct.new(
      :workload_id,
      :milestone_number,
      :lens_alias,
      :lens_arn,
      :answer,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute format
    #   <p>The format of the consolidated report.</p>
    #            <p>For <code>PDF</code>, <code>Base64String</code> is returned. For <code>JSON</code>, 
    #               <code>Metrics</code> is returned.</p>
    #   @return [String]
    # @!attribute include_shared_resources
    #   <p>Set to <code>true</code> to have shared resources included in the report.</p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #   @return [Integer]
    class GetConsolidatedReportInput < Struct.new(
      :format,
      :include_shared_resources,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute metrics
    #   <p>The metrics that make up the consolidated report.</p>
    #            <p>Only returned when <code>JSON</code> format is requested.</p>
    #   @return [Array<Types::ConsolidatedReportMetric>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute base64_string
    #   <p>The Base64-encoded string representation of a lens review report.</p>
    #            <p>This data can be used to create a PDF file.</p>
    #            <p>Only returned by <a>GetConsolidatedReport</a> 
    #            when <code>PDF</code> format is requested.</p>
    #   @return [String]
    class GetConsolidatedReportOutput < Struct.new(
      :metrics,
      :next_token,
      :base64_string,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_sharing_status
    #   <p>Amazon Web Services Organizations sharing status.</p>
    #   @return [String]
    # @!attribute discovery_integration_status
    #   <p>Discovery integration status.</p>
    #   @return [String]
    # @!attribute jira_configuration
    #   <p>Jira configuration status.</p>
    #   @return [Types::AccountJiraConfigurationOutput]
    class GetGlobalSettingsOutput < Struct.new(
      :organization_sharing_status,
      :discovery_integration_status,
      :jira_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute lens_version
    #   <p>The lens version to be retrieved.</p>
    #   @return [String]
    class GetLensInput < Struct.new(
      :lens_alias,
      :lens_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute lens
    #   <p>A lens return object.</p>
    #   @return [Types::Lens]
    class GetLensOutput < Struct.new(
      :lens,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input to get lens review.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    #   @return [Integer]
    class GetLensReviewInput < Struct.new(
      :workload_id,
      :lens_alias,
      :milestone_number,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output of a get lens review call.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    #   @return [Integer]
    # @!attribute lens_review
    #   <p>A lens review of a question.</p>
    #   @return [Types::LensReview]
    class GetLensReviewOutput < Struct.new(
      :workload_id,
      :milestone_number,
      :lens_review,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input to get lens review report.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    #   @return [Integer]
    class GetLensReviewReportInput < Struct.new(
      :workload_id,
      :lens_alias,
      :milestone_number,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output of a get lens review report call.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    #   @return [Integer]
    # @!attribute lens_review_report
    #   <p>A report of a lens review.</p>
    #   @return [Types::LensReviewReport]
    class GetLensReviewReportOutput < Struct.new(
      :workload_id,
      :milestone_number,
      :lens_review_report,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute base_lens_version
    #   <p>The base version of the lens.</p>
    #   @return [String]
    # @!attribute target_lens_version
    #   <p>The lens version to target a difference for.</p>
    #   @return [String]
    class GetLensVersionDifferenceInput < Struct.new(
      :lens_alias,
      :base_lens_version,
      :target_lens_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #   @return [String]
    # @!attribute base_lens_version
    #   <p>The base version of the lens.</p>
    #   @return [String]
    # @!attribute target_lens_version
    #   <p>The target lens version for the lens.</p>
    #   @return [String]
    # @!attribute latest_lens_version
    #   <p>The latest version of the lens.</p>
    #   @return [String]
    # @!attribute version_differences
    #   <p>The differences between the base and latest versions of the lens.</p>
    #   @return [Types::VersionDifferences]
    class GetLensVersionDifferenceOutput < Struct.new(
      :lens_alias,
      :lens_arn,
      :base_lens_version,
      :target_lens_version,
      :latest_lens_version,
      :version_differences,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input to get a milestone.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    #   @return [Integer]
    class GetMilestoneInput < Struct.new(
      :workload_id,
      :milestone_number,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output of a get milestone call.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute milestone
    #   <p>A milestone return object.</p>
    #   @return [Types::Milestone]
    class GetMilestoneOutput < Struct.new(
      :workload_id,
      :milestone,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute profile_arn
    #   <p>The profile ARN.</p>
    #   @return [String]
    # @!attribute profile_version
    #   <p>The profile version.</p>
    #   @return [String]
    class GetProfileInput < Struct.new(
      :profile_arn,
      :profile_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute profile
    #   <p>The profile.</p>
    #   @return [Types::Profile]
    class GetProfileOutput < Struct.new(
      :profile,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class GetProfileTemplateInput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute profile_template
    #   <p>The profile template.</p>
    #   @return [Types::ProfileTemplate]
    class GetProfileTemplateOutput < Struct.new(
      :profile_template,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #   @return [String]
    class GetReviewTemplateAnswerInput < Struct.new(
      :template_arn,
      :lens_alias,
      :question_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute answer
    #   <p>An answer of the question.</p>
    #   @return [Types::ReviewTemplateAnswer]
    class GetReviewTemplateAnswerOutput < Struct.new(
      :template_arn,
      :lens_alias,
      :answer,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    class GetReviewTemplateInput < Struct.new(
      :template_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    class GetReviewTemplateLensReviewInput < Struct.new(
      :template_arn,
      :lens_alias,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    # @!attribute lens_review
    #   <p>A lens review of a question.</p>
    #   @return [Types::ReviewTemplateLensReview]
    class GetReviewTemplateLensReviewOutput < Struct.new(
      :template_arn,
      :lens_review,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute review_template
    #   <p>The review template.</p>
    #   @return [Types::ReviewTemplate]
    class GetReviewTemplateOutput < Struct.new(
      :review_template,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input to get a workload.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    class GetWorkloadInput < Struct.new(
      :workload_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output of a get workload call.</p>
    # @!attribute workload
    #   <p>A workload return object.</p>
    #   @return [Types::Workload]
    class GetWorkloadOutput < Struct.new(
      :workload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute json_string
    #   <p>The JSON representation of a lens.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to associate to a lens.</p>
    #   @return [Hash<String, String>]
    class ImportLensInput < Struct.new(
      :lens_alias,
      :json_string,
      :client_request_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute lens_arn
    #   <p>The ARN for the lens that was created or updated.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the imported lens.</p>
    #   @return [String]
    class ImportLensOutput < Struct.new(
      :lens_arn,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ImportLensStatus
      IN_PROGRESS = 'IN_PROGRESS'
      COMPLETE = 'COMPLETE'
      ERROR = 'ERROR'
    end

    # <p>An improvement summary of a lens review in a workload.</p>
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #   @return [String]
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [String]
    # @!attribute question_title
    #   <p>The title of the question.</p>
    #   @return [String]
    # @!attribute risk
    #   <p>The risk for a given workload, lens review, pillar, or question.</p>
    #   @return [String]
    # @!attribute improvement_plan_url
    #   <p>The improvement plan URL for a question in an Amazon Web Services official lenses.</p>
    #            <p>This value is only available if the question has been answered.</p>
    #            <p>This value does not apply to custom lenses.</p>
    #   @return [String]
    # @!attribute improvement_plans
    #   <p>The improvement plan details.</p>
    #   @return [Array<Types::ChoiceImprovementPlan>]
    # @!attribute jira_configuration
    #   <p>Configuration of the Jira integration.</p>
    #   @return [Types::JiraConfiguration]
    class ImprovementSummary < Struct.new(
      :question_id,
      :pillar_id,
      :question_title,
      :risk,
      :improvement_plan_url,
      :improvement_plans,
      :jira_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module IntegratingService
      JIRA = 'JIRA'
    end

    module IntegrationStatus
      CONFIGURED = 'CONFIGURED'
      NOT_CONFIGURED = 'NOT_CONFIGURED'
    end

    module IntegrationStatusInput
      NOT_CONFIGURED = 'NOT_CONFIGURED'
    end

    # <p>There is a problem with the Well-Architected Tool API service.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module IssueManagementType
      AUTO = 'AUTO'
      MANUAL = 'MANUAL'
    end

    # <p>Configuration of the Jira integration.</p>
    # @!attribute jira_issue_url
    #   <p>The URL of the associated Jira issue.</p>
    #   @return [String]
    # @!attribute last_synced_time
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    class JiraConfiguration < Struct.new(
      :jira_issue_url,
      :last_synced_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Selected questions in the workload.</p>
    # @!attribute selected_pillars
    #   <p>Selected pillars in the workload.</p>
    #   @return [Array<Types::SelectedPillar>]
    class JiraSelectedQuestionConfiguration < Struct.new(
      :selected_pillars,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A lens return object.</p>
    # @!attribute lens_arn
    #   <p>The ARN of a lens.</p>
    #   @return [String]
    # @!attribute lens_version
    #   <p>The version of a lens.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The full name of the lens.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the lens.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The Amazon Web Services account ID that owns the lens.</p>
    #   @return [String]
    # @!attribute share_invitation_id
    #   <p>The ID assigned to the share invitation.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the lens.</p>
    #   @return [Hash<String, String>]
    class Lens < Struct.new(
      :lens_arn,
      :lens_version,
      :name,
      :description,
      :owner,
      :share_invitation_id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A metric for a particular lens in a workload.</p>
    # @!attribute lens_arn
    #   <p>The lens ARN.</p>
    #   @return [String]
    # @!attribute pillars
    #   <p>The metrics for the pillars in a lens.</p>
    #   @return [Array<Types::PillarMetric>]
    # @!attribute risk_counts
    #   <p>A map from risk names to the count of how many questions have that rating.</p>
    #   @return [Hash<String, Integer>]
    class LensMetric < Struct.new(
      :lens_arn,
      :pillars,
      :risk_counts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A lens review of a question.</p>
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #   @return [String]
    # @!attribute lens_version
    #   <p>The version of the lens.</p>
    #   @return [String]
    # @!attribute lens_name
    #   <p>The full name of the lens.</p>
    #   @return [String]
    # @!attribute lens_status
    #   <p>The status of the lens.</p>
    #   @return [String]
    # @!attribute pillar_review_summaries
    #   <p>List of pillar review summaries of lens review in a workload.</p>
    #   @return [Array<Types::PillarReviewSummary>]
    # @!attribute jira_configuration
    #   <p>Jira configuration status of the Lens review.</p>
    #   @return [Types::JiraSelectedQuestionConfiguration]
    # @!attribute updated_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    #   @return [String]
    # @!attribute risk_counts
    #   <p>A map from risk names to the count of how many questions have that rating.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute profiles
    #   <p>The profiles associated with the workload.</p>
    #   @return [Array<Types::WorkloadProfile>]
    # @!attribute prioritized_risk_counts
    #   <p>A map from risk names to the count of how many questions have that rating.</p>
    #   @return [Hash<String, Integer>]
    class LensReview < Struct.new(
      :lens_alias,
      :lens_arn,
      :lens_version,
      :lens_name,
      :lens_status,
      :pillar_review_summaries,
      :jira_configuration,
      :updated_at,
      :notes,
      :risk_counts,
      :next_token,
      :profiles,
      :prioritized_risk_counts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A report of a lens review.</p>
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #   @return [String]
    # @!attribute base64_string
    #   <p>The Base64-encoded string representation of a lens review report.</p>
    #            <p>This data can be used to create a PDF file.</p>
    #            <p>Only returned by <a>GetConsolidatedReport</a> 
    #            when <code>PDF</code> format is requested.</p>
    #   @return [String]
    class LensReviewReport < Struct.new(
      :lens_alias,
      :lens_arn,
      :base64_string,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A lens review summary of a workload.</p>
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #   @return [String]
    # @!attribute lens_version
    #   <p>The version of the lens.</p>
    #   @return [String]
    # @!attribute lens_name
    #   <p>The full name of the lens.</p>
    #   @return [String]
    # @!attribute lens_status
    #   <p>The status of the lens.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    # @!attribute risk_counts
    #   <p>A map from risk names to the count of how many questions have that rating.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute profiles
    #   <p>The profiles associated with the workload.</p>
    #   @return [Array<Types::WorkloadProfile>]
    # @!attribute prioritized_risk_counts
    #   <p>A map from risk names to the count of how many questions have that rating.</p>
    #   @return [Hash<String, Integer>]
    class LensReviewSummary < Struct.new(
      :lens_alias,
      :lens_arn,
      :lens_version,
      :lens_name,
      :lens_status,
      :updated_at,
      :risk_counts,
      :profiles,
      :prioritized_risk_counts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A lens share summary return object.</p>
    # @!attribute share_id
    #   <p>The ID associated with the share.</p>
    #   @return [String]
    # @!attribute shared_with
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which 
    #               the workload, lens, profile, or review template is shared.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the share request.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Optional message to compliment the Status field.</p>
    #   @return [String]
    class LensShareSummary < Struct.new(
      :share_id,
      :shared_with,
      :status,
      :status_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LensStatus
      CURRENT = 'CURRENT'
      NOT_CURRENT = 'NOT_CURRENT'
      DEPRECATED = 'DEPRECATED'
      DELETED = 'DELETED'
      UNSHARED = 'UNSHARED'
    end

    module LensStatusType
      ALL = 'ALL'
      DRAFT = 'DRAFT'
      PUBLISHED = 'PUBLISHED'
    end

    # <p>A lens summary of a lens.</p>
    # @!attribute lens_arn
    #   <p>The ARN of the lens.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute lens_name
    #   <p>The full name of the lens.</p>
    #   @return [String]
    # @!attribute lens_type
    #   <p>The type of the lens.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the lens.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    # @!attribute lens_version
    #   <p>The version of the lens.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>An Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute lens_status
    #   <p>The status of the lens.</p>
    #   @return [String]
    class LensSummary < Struct.new(
      :lens_arn,
      :lens_alias,
      :lens_name,
      :lens_type,
      :description,
      :created_at,
      :updated_at,
      :lens_version,
      :owner,
      :lens_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LensType
      AWS_OFFICIAL = 'AWS_OFFICIAL'
      CUSTOM_SHARED = 'CUSTOM_SHARED'
      CUSTOM_SELF = 'CUSTOM_SELF'
    end

    # <p>Lens upgrade summary return object.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #            <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #   @return [String]
    # @!attribute current_lens_version
    #   <p>The current version of the lens.</p>
    #   @return [String]
    # @!attribute latest_lens_version
    #   <p>The latest version of the lens.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>
    #               <code>ResourceArn</code> of the lens being upgraded</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the workload.</p>
    #            <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    #   @return [String]
    class LensUpgradeSummary < Struct.new(
      :workload_id,
      :workload_name,
      :lens_alias,
      :lens_arn,
      :current_lens_version,
      :latest_lens_version,
      :resource_arn,
      :resource_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input to list answers.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [String]
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #   @return [Integer]
    # @!attribute question_priority
    #   <p>The priority of the question.</p>
    #   @return [String]
    class ListAnswersInput < Struct.new(
      :workload_id,
      :lens_alias,
      :pillar_id,
      :milestone_number,
      :next_token,
      :max_results,
      :question_priority,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output of a list answers call.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    #   @return [Integer]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #   @return [String]
    # @!attribute answer_summaries
    #   <p>List of answer summaries of lens review in a workload.</p>
    #   @return [Array<Types::AnswerSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    class ListAnswersOutput < Struct.new(
      :workload_id,
      :milestone_number,
      :lens_alias,
      :lens_arn,
      :answer_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #   @return [Integer]
    # @!attribute lens_arn
    #   <p>Well-Architected Lens ARN.</p>
    #   @return [String]
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [String]
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #   @return [String]
    # @!attribute choice_id
    #   <p>The ID of a choice.</p>
    #   @return [String]
    class ListCheckDetailsInput < Struct.new(
      :workload_id,
      :next_token,
      :max_results,
      :lens_arn,
      :pillar_id,
      :question_id,
      :choice_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute check_details
    #   <p>The details about the Trusted Advisor checks related to the Well-Architected best practice.</p>
    #   @return [Array<Types::CheckDetail>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    class ListCheckDetailsOutput < Struct.new(
      :check_details,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #   @return [Integer]
    # @!attribute lens_arn
    #   <p>Well-Architected Lens ARN.</p>
    #   @return [String]
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [String]
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #   @return [String]
    # @!attribute choice_id
    #   <p>The ID of a choice.</p>
    #   @return [String]
    class ListCheckSummariesInput < Struct.new(
      :workload_id,
      :next_token,
      :max_results,
      :lens_arn,
      :pillar_id,
      :question_id,
      :choice_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute check_summaries
    #   <p>List of Trusted Advisor summaries related to the Well-Architected best practice.</p>
    #   @return [Array<Types::CheckSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    class ListCheckSummariesOutput < Struct.new(
      :check_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input to list lens review improvements.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [String]
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #   @return [Integer]
    # @!attribute question_priority
    #   <p>The priority of the question.</p>
    #   @return [String]
    class ListLensReviewImprovementsInput < Struct.new(
      :workload_id,
      :lens_alias,
      :pillar_id,
      :milestone_number,
      :next_token,
      :max_results,
      :question_priority,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output of a list lens review improvements call.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    #   @return [Integer]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #   @return [String]
    # @!attribute improvement_summaries
    #   <p>List of improvement summaries of lens review in a workload.</p>
    #   @return [Array<Types::ImprovementSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    class ListLensReviewImprovementsOutput < Struct.new(
      :workload_id,
      :milestone_number,
      :lens_alias,
      :lens_arn,
      :improvement_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input to list lens reviews.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #   @return [Integer]
    class ListLensReviewsInput < Struct.new(
      :workload_id,
      :milestone_number,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output of a list lens reviews call.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    #   @return [Integer]
    # @!attribute lens_review_summaries
    #   <p>List of lens summaries of lens reviews of a workload.</p>
    #   @return [Array<Types::LensReviewSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    class ListLensReviewsOutput < Struct.new(
      :workload_id,
      :milestone_number,
      :lens_review_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute shared_with_prefix
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which the lens is shared.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the share request.</p>
    #   @return [String]
    class ListLensSharesInput < Struct.new(
      :lens_alias,
      :shared_with_prefix,
      :next_token,
      :max_results,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute lens_share_summaries
    #   <p>A list of lens share summaries.</p>
    #   @return [Array<Types::LensShareSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    class ListLensSharesOutput < Struct.new(
      :lens_share_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input to list lenses.</p>
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #   @return [Integer]
    # @!attribute lens_type
    #   <p>The type of lenses to be returned.</p>
    #   @return [String]
    # @!attribute lens_status
    #   <p>The status of lenses to be returned.</p>
    #   @return [String]
    # @!attribute lens_name
    #   <p>The full name of the lens.</p>
    #   @return [String]
    class ListLensesInput < Struct.new(
      :next_token,
      :max_results,
      :lens_type,
      :lens_status,
      :lens_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output of a list lenses call.</p>
    # @!attribute lens_summaries
    #   <p>List of lens summaries of available lenses.</p>
    #   @return [Array<Types::LensSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    class ListLensesOutput < Struct.new(
      :lens_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input to list all milestones for a workload.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #   @return [Integer]
    class ListMilestonesInput < Struct.new(
      :workload_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output of a list milestones call.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute milestone_summaries
    #   <p>A list of milestone summaries.</p>
    #   @return [Array<Types::MilestoneSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    class ListMilestonesOutput < Struct.new(
      :workload_id,
      :milestone_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #   @return [Integer]
    # @!attribute resource_arn
    #   <p>The ARN for the related resource for the notification.</p>
    #            <note>
    #               <p>Only one of <code>WorkloadID</code> or <code>ResourceARN</code> should be specified.</p>
    #            </note>
    #   @return [String]
    class ListNotificationsInput < Struct.new(
      :workload_id,
      :next_token,
      :max_results,
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute notification_summaries
    #   <p>List of lens notification summaries in a workload.</p>
    #   @return [Array<Types::NotificationSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    class ListNotificationsOutput < Struct.new(
      :notification_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #   @return [Integer]
    class ListProfileNotificationsInput < Struct.new(
      :workload_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute notification_summaries
    #   <p>Notification summaries.</p>
    #   @return [Array<Types::ProfileNotificationSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    class ListProfileNotificationsOutput < Struct.new(
      :notification_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute profile_arn
    #   <p>The profile ARN.</p>
    #   @return [String]
    # @!attribute shared_with_prefix
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which the profile is shared.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the share request.</p>
    #   @return [String]
    class ListProfileSharesInput < Struct.new(
      :profile_arn,
      :shared_with_prefix,
      :next_token,
      :max_results,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute profile_share_summaries
    #   <p>Profile share summaries.</p>
    #   @return [Array<Types::ProfileShareSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    class ListProfileSharesOutput < Struct.new(
      :profile_share_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute profile_name_prefix
    #   <p>An optional string added to the beginning of each profile name returned in the
    #               results.</p>
    #   @return [String]
    # @!attribute profile_owner_type
    #   <p>Profile owner type.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #   @return [Integer]
    class ListProfilesInput < Struct.new(
      :profile_name_prefix,
      :profile_owner_type,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute profile_summaries
    #   <p>Profile summaries.</p>
    #   @return [Array<Types::ProfileSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    class ListProfilesOutput < Struct.new(
      :profile_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The ARN of the review template.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #   @return [Integer]
    class ListReviewTemplateAnswersInput < Struct.new(
      :template_arn,
      :lens_alias,
      :pillar_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The ARN of the review template.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute answer_summaries
    #   <p>List of answer summaries of a lens review in a review template.</p>
    #   @return [Array<Types::ReviewTemplateAnswerSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    class ListReviewTemplateAnswersOutput < Struct.new(
      :template_arn,
      :lens_alias,
      :answer_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #   @return [Integer]
    class ListReviewTemplatesInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute review_templates
    #   <p>List of review templates.</p>
    #   @return [Array<Types::ReviewTemplateSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    class ListReviewTemplatesOutput < Struct.new(
      :review_templates,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input for List Share Invitations</p>
    # @!attribute workload_name_prefix
    #   <p>An optional string added to the beginning of each workload name returned in the
    #               results.</p>
    #   @return [String]
    # @!attribute lens_name_prefix
    #   <p>An optional string added to the beginning of each lens name returned in the results.</p>
    #   @return [String]
    # @!attribute share_resource_type
    #   <p>The type of share invitations to be returned.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #   @return [Integer]
    # @!attribute profile_name_prefix
    #   <p>An optional string added to the beginning of each profile name returned in the
    #               results.</p>
    #   @return [String]
    # @!attribute template_name_prefix
    #   <p>An optional string added to the beginning of each review template name returned in the
    #               results.</p>
    #   @return [String]
    class ListShareInvitationsInput < Struct.new(
      :workload_name_prefix,
      :lens_name_prefix,
      :share_resource_type,
      :next_token,
      :max_results,
      :profile_name_prefix,
      :template_name_prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input for List Share Invitations</p>
    # @!attribute share_invitation_summaries
    #   <p>List of share invitation summaries in a workload.</p>
    #   @return [Array<Types::ShareInvitationSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    class ListShareInvitationsOutput < Struct.new(
      :share_invitation_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_arn
    #   <p>The ARN for the workload.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :workload_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    # @!attribute shared_with_prefix
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit
    #               (OU) ID with which the profile is shared.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the share request.</p>
    #   @return [String]
    class ListTemplateSharesInput < Struct.new(
      :template_arn,
      :shared_with_prefix,
      :next_token,
      :max_results,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    # @!attribute template_share_summaries
    #   <p>A review template share summary return object.</p>
    #   @return [Array<Types::TemplateShareSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    class ListTemplateSharesOutput < Struct.new(
      :template_arn,
      :template_share_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input for List Workload Share</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute shared_with_prefix
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which the workload is shared.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the share request.</p>
    #   @return [String]
    class ListWorkloadSharesInput < Struct.new(
      :workload_id,
      :shared_with_prefix,
      :next_token,
      :max_results,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input for List Workload Share</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute workload_share_summaries
    #   <p>A list of workload share summaries.</p>
    #   @return [Array<Types::WorkloadShareSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    class ListWorkloadSharesOutput < Struct.new(
      :workload_id,
      :workload_share_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input to list all workloads.</p>
    # @!attribute workload_name_prefix
    #   <p>An optional string added to the beginning of each workload name returned in the
    #               results.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #   @return [Integer]
    class ListWorkloadsInput < Struct.new(
      :workload_name_prefix,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output of a list workloads call.</p>
    # @!attribute workload_summaries
    #   <p>A list of workload summaries.</p>
    #   @return [Array<Types::WorkloadSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    class ListWorkloadsOutput < Struct.new(
      :workload_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MetricType
      WORKLOAD = 'WORKLOAD'
    end

    # <p>A milestone return object.</p>
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    #   @return [Integer]
    # @!attribute milestone_name
    #   <p>The name of the milestone in a workload.</p>
    #            <p>Milestone names must be unique within a workload.</p>
    #   @return [String]
    # @!attribute recorded_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    # @!attribute workload
    #   <p>A workload return object.</p>
    #   @return [Types::Workload]
    class Milestone < Struct.new(
      :milestone_number,
      :milestone_name,
      :recorded_at,
      :workload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A milestone summary return object.</p>
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    #   @return [Integer]
    # @!attribute milestone_name
    #   <p>The name of the milestone in a workload.</p>
    #            <p>Milestone names must be unique within a workload.</p>
    #   @return [String]
    # @!attribute recorded_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    # @!attribute workload_summary
    #   <p>A workload summary return object.</p>
    #   @return [Types::WorkloadSummary]
    class MilestoneSummary < Struct.new(
      :milestone_number,
      :milestone_name,
      :recorded_at,
      :workload_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A notification summary return object.</p>
    # @!attribute type
    #   <p>The type of notification.</p>
    #   @return [String]
    # @!attribute lens_upgrade_summary
    #   <p>Summary of lens upgrade.</p>
    #   @return [Types::LensUpgradeSummary]
    class NotificationSummary < Struct.new(
      :type,
      :lens_upgrade_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module NotificationType
      LENS_VERSION_UPGRADED = 'LENS_VERSION_UPGRADED'
      LENS_VERSION_DEPRECATED = 'LENS_VERSION_DEPRECATED'
    end

    module OrganizationSharingStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>Permission granted on a share request.</p>
    module PermissionType
      READONLY = 'READONLY'
      CONTRIBUTOR = 'CONTRIBUTOR'
    end

    # <p>A pillar difference return object.</p>
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [String]
    # @!attribute pillar_name
    #   <p>The name of the pillar.</p>
    #   @return [String]
    # @!attribute difference_status
    #   <p>Indicates the type of change to the pillar.</p>
    #   @return [String]
    # @!attribute question_differences
    #   <p>List of question differences.</p>
    #   @return [Array<Types::QuestionDifference>]
    class PillarDifference < Struct.new(
      :pillar_id,
      :pillar_name,
      :difference_status,
      :question_differences,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A metric for a particular pillar in a lens.</p>
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [String]
    # @!attribute risk_counts
    #   <p>A map from risk names to the count of how many questions have that rating.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute questions
    #   <p>The questions that have been identified as risks in the pillar.</p>
    #   @return [Array<Types::QuestionMetric>]
    class PillarMetric < Struct.new(
      :pillar_id,
      :risk_counts,
      :questions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A pillar review summary of a lens review.</p>
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [String]
    # @!attribute pillar_name
    #   <p>The name of the pillar.</p>
    #   @return [String]
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    #   @return [String]
    # @!attribute risk_counts
    #   <p>A map from risk names to the count of how many questions have that rating.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute prioritized_risk_counts
    #   <p>A map from risk names to the count of how many questions have that rating.</p>
    #   @return [Hash<String, Integer>]
    class PillarReviewSummary < Struct.new(
      :pillar_id,
      :pillar_name,
      :notes,
      :risk_counts,
      :prioritized_risk_counts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A profile.</p>
    # @!attribute profile_arn
    #   <p>The profile ARN.</p>
    #   @return [String]
    # @!attribute profile_version
    #   <p>The profile version.</p>
    #   @return [String]
    # @!attribute profile_name
    #   <p>The profile name.</p>
    #   @return [String]
    # @!attribute profile_description
    #   <p>The profile description.</p>
    #   @return [String]
    # @!attribute profile_questions
    #   <p>Profile questions.</p>
    #   @return [Array<Types::ProfileQuestion>]
    # @!attribute owner
    #   <p>An Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    # @!attribute share_invitation_id
    #   <p>The ID assigned to the share invitation.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the profile.</p>
    #   @return [Hash<String, String>]
    class Profile < Struct.new(
      :profile_arn,
      :profile_version,
      :profile_name,
      :profile_description,
      :profile_questions,
      :owner,
      :created_at,
      :updated_at,
      :share_invitation_id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The profile choice.</p>
    # @!attribute choice_id
    #   <p>The ID of a choice.</p>
    #   @return [String]
    # @!attribute choice_title
    #   <p>The title of a choice.</p>
    #   @return [String]
    # @!attribute choice_description
    #   <p>The description of a choice.</p>
    #   @return [String]
    class ProfileChoice < Struct.new(
      :choice_id,
      :choice_title,
      :choice_description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The profile notification summary.</p>
    # @!attribute current_profile_version
    #   <p>The current profile version.</p>
    #   @return [String]
    # @!attribute latest_profile_version
    #   <p>The latest profile version.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of notification.</p>
    #   @return [String]
    # @!attribute profile_arn
    #   <p>The profile ARN.</p>
    #   @return [String]
    # @!attribute profile_name
    #   <p>The profile name.</p>
    #   @return [String]
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #            <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    #   @return [String]
    class ProfileNotificationSummary < Struct.new(
      :current_profile_version,
      :latest_profile_version,
      :type,
      :profile_arn,
      :profile_name,
      :workload_id,
      :workload_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ProfileNotificationType
      PROFILE_ANSWERS_UPDATED = 'PROFILE_ANSWERS_UPDATED'
      PROFILE_DELETED = 'PROFILE_DELETED'
    end

    module ProfileOwnerType
      SELF = 'SELF'
      SHARED = 'SHARED'
    end

    # <p>A profile question.</p>
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #   @return [String]
    # @!attribute question_title
    #   <p>The title of the question.</p>
    #   @return [String]
    # @!attribute question_description
    #   <p>The description of the question.</p>
    #   @return [String]
    # @!attribute question_choices
    #   <p>The question choices.</p>
    #   @return [Array<Types::ProfileChoice>]
    # @!attribute selected_choice_ids
    #   <p>The selected choices.</p>
    #   @return [Array<String>]
    # @!attribute min_selected_choices
    #   <p>The minimum number of selected choices.</p>
    #   @return [Integer]
    # @!attribute max_selected_choices
    #   <p>The maximum number of selected choices.</p>
    #   @return [Integer]
    class ProfileQuestion < Struct.new(
      :question_id,
      :question_title,
      :question_description,
      :question_choices,
      :selected_choice_ids,
      :min_selected_choices,
      :max_selected_choices,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An update to a profile question.</p>
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #   @return [String]
    # @!attribute selected_choice_ids
    #   <p>The selected choices.</p>
    #   @return [Array<String>]
    class ProfileQuestionUpdate < Struct.new(
      :question_id,
      :selected_choice_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary of a profile share.</p>
    # @!attribute share_id
    #   <p>The ID associated with the share.</p>
    #   @return [String]
    # @!attribute shared_with
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which 
    #               the workload, lens, profile, or review template is shared.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the share request.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Profile share invitation status message.</p>
    #   @return [String]
    class ProfileShareSummary < Struct.new(
      :share_id,
      :shared_with,
      :status,
      :status_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary of a profile.</p>
    # @!attribute profile_arn
    #   <p>The profile ARN.</p>
    #   @return [String]
    # @!attribute profile_version
    #   <p>The profile version.</p>
    #   @return [String]
    # @!attribute profile_name
    #   <p>The profile name.</p>
    #   @return [String]
    # @!attribute profile_description
    #   <p>The profile description.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>An Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    class ProfileSummary < Struct.new(
      :profile_arn,
      :profile_version,
      :profile_name,
      :profile_description,
      :owner,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The profile template.</p>
    # @!attribute template_name
    #   <p>The name of the profile template.</p>
    #   @return [String]
    # @!attribute template_questions
    #   <p>Profile template questions.</p>
    #   @return [Array<Types::ProfileTemplateQuestion>]
    # @!attribute created_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    class ProfileTemplate < Struct.new(
      :template_name,
      :template_questions,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A profile template choice.</p>
    # @!attribute choice_id
    #   <p>The ID of a choice.</p>
    #   @return [String]
    # @!attribute choice_title
    #   <p>The title of a choice.</p>
    #   @return [String]
    # @!attribute choice_description
    #   <p>The description of a choice.</p>
    #   @return [String]
    class ProfileTemplateChoice < Struct.new(
      :choice_id,
      :choice_title,
      :choice_description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A profile template question.</p>
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #   @return [String]
    # @!attribute question_title
    #   <p>The title of the question.</p>
    #   @return [String]
    # @!attribute question_description
    #   <p>The description of the question.</p>
    #   @return [String]
    # @!attribute question_choices
    #   <p>The question choices.</p>
    #   @return [Array<Types::ProfileTemplateChoice>]
    # @!attribute min_selected_choices
    #   <p>The minimum number of choices selected.</p>
    #   @return [Integer]
    # @!attribute max_selected_choices
    #   <p>The maximum number of choices selected.</p>
    #   @return [Integer]
    class ProfileTemplateQuestion < Struct.new(
      :question_id,
      :question_title,
      :question_description,
      :question_choices,
      :min_selected_choices,
      :max_selected_choices,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Question
      UNANSWERED = 'UNANSWERED'
      ANSWERED = 'ANSWERED'
    end

    # <p>A question difference return object.</p>
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #   @return [String]
    # @!attribute question_title
    #   <p>The title of the question.</p>
    #   @return [String]
    # @!attribute difference_status
    #   <p>Indicates the type of change to the question.</p>
    #   @return [String]
    class QuestionDifference < Struct.new(
      :question_id,
      :question_title,
      :difference_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A metric for a particular question in the pillar. </p>
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #   @return [String]
    # @!attribute risk
    #   <p>The risk for a given workload, lens review, pillar, or question.</p>
    #   @return [String]
    # @!attribute best_practices
    #   <p>The best practices, or choices, that have been identified as contributing to risk in a question.</p>
    #   @return [Array<Types::BestPractice>]
    class QuestionMetric < Struct.new(
      :question_id,
      :risk,
      :best_practices,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module QuestionPriority
      PRIORITIZED = 'PRIORITIZED'
      NONE = 'NONE'
    end

    module QuestionType
      PRIORITIZED = 'PRIORITIZED'
      NON_PRIORITIZED = 'NON_PRIORITIZED'
    end

    module ReportFormat
      PDF = 'PDF'
      JSON = 'JSON'
    end

    # <p>The requested resource was not found.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the resource affected.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of the resource affected.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A review template.</p>
    # @!attribute description
    #   <p>The review template description.</p>
    #   @return [String]
    # @!attribute lenses
    #   <p>The lenses applied to the review template.</p>
    #   @return [Array<String>]
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    #   @return [String]
    # @!attribute question_counts
    #   <p>A count of how many total questions are answered and unanswered in the review template.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute owner
    #   <p>An Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the review template.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the review template.</p>
    #   @return [Hash<String, String>]
    # @!attribute update_status
    #   <p>The latest status of a review template.</p>
    #   @return [String]
    # @!attribute share_invitation_id
    #   <p>The ID assigned to the template share invitation.</p>
    #   @return [String]
    class ReviewTemplate < Struct.new(
      :description,
      :lenses,
      :notes,
      :question_counts,
      :owner,
      :updated_at,
      :template_arn,
      :template_name,
      :tags,
      :update_status,
      :share_invitation_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An answer of the question.</p>
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #   @return [String]
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [String]
    # @!attribute question_title
    #   <p>The title of the question.</p>
    #   @return [String]
    # @!attribute question_description
    #   <p>The description of the question.</p>
    #   @return [String]
    # @!attribute improvement_plan_url
    #   <p>The improvement plan URL for a question in an Amazon Web Services official lenses.</p>
    #            <p>This value is only available if the question has been answered.</p>
    #            <p>This value does not apply to custom lenses.</p>
    #   @return [String]
    # @!attribute helpful_resource_url
    #   <p>The helpful resource URL.</p>
    #            <p>For Amazon Web Services official lenses, this is the helpful resource URL for a question or choice.</p>
    #            <p>For custom lenses, this is the helpful resource URL for a question and is only provided
    #               if <code>HelpfulResourceDisplayText</code> was specified for the question.</p>
    #   @return [String]
    # @!attribute helpful_resource_display_text
    #   <p>The helpful resource text to be displayed for a custom lens.</p>
    #            <note>
    #               <p>This field does not apply to Amazon Web Services official lenses.</p>
    #            </note>
    #   @return [String]
    # @!attribute choices
    #   <p>List of choices available for a question.</p>
    #   @return [Array<Types::Choice>]
    # @!attribute selected_choices
    #   <p>List of selected choice IDs in a question answer.</p>
    #            <p>The values entered replace the previously selected choices.</p>
    #   @return [Array<String>]
    # @!attribute choice_answers
    #   <p>A list of selected choices to a question in your review template.</p>
    #   @return [Array<Types::ChoiceAnswer>]
    # @!attribute is_applicable
    #   <p>Defines whether this question is applicable to a lens review.</p>
    #   @return [Boolean]
    # @!attribute answer_status
    #   <p>The status of whether or not this question has been answered.</p>
    #   @return [String]
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason why the question is not applicable to your review template.</p>
    #   @return [String]
    class ReviewTemplateAnswer < Struct.new(
      :question_id,
      :pillar_id,
      :question_title,
      :question_description,
      :improvement_plan_url,
      :helpful_resource_url,
      :helpful_resource_display_text,
      :choices,
      :selected_choices,
      :choice_answers,
      :is_applicable,
      :answer_status,
      :notes,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ReviewTemplateAnswerStatus
      UNANSWERED = 'UNANSWERED'
      ANSWERED = 'ANSWERED'
    end

    # <p>The summary of review template answers.</p>
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #   @return [String]
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [String]
    # @!attribute question_title
    #   <p>The title of the question.</p>
    #   @return [String]
    # @!attribute choices
    #   <p>List of choices available for a question.</p>
    #   @return [Array<Types::Choice>]
    # @!attribute selected_choices
    #   <p>List of selected choice IDs in a question answer.</p>
    #            <p>The values entered replace the previously selected choices.</p>
    #   @return [Array<String>]
    # @!attribute choice_answer_summaries
    #   <p>A list of selected choices to a question in the review template.</p>
    #   @return [Array<Types::ChoiceAnswerSummary>]
    # @!attribute is_applicable
    #   <p>Defines whether this question is applicable to a lens review.</p>
    #   @return [Boolean]
    # @!attribute answer_status
    #   <p>The status of whether or not this question has been answered.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason why a choice is not-applicable to a question in the review template.</p>
    #   @return [String]
    # @!attribute question_type
    #   <p>The type of question.</p>
    #   @return [String]
    class ReviewTemplateAnswerSummary < Struct.new(
      :question_id,
      :pillar_id,
      :question_title,
      :choices,
      :selected_choices,
      :choice_answer_summaries,
      :is_applicable,
      :answer_status,
      :reason,
      :question_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The lens review of a review template.</p>
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute lens_arn
    #   <p>The lens ARN.</p>
    #   @return [String]
    # @!attribute lens_version
    #   <p>The version of the lens.</p>
    #   @return [String]
    # @!attribute lens_name
    #   <p>The full name of the lens.</p>
    #   @return [String]
    # @!attribute lens_status
    #   <p>The status of the lens.</p>
    #   @return [String]
    # @!attribute pillar_review_summaries
    #   <p>Pillar review summaries of a lens review.</p>
    #   @return [Array<Types::ReviewTemplatePillarReviewSummary>]
    # @!attribute updated_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    #   @return [String]
    # @!attribute question_counts
    #   <p>A count of how many questions are answered and unanswered in the lens review.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #   @return [String]
    class ReviewTemplateLensReview < Struct.new(
      :lens_alias,
      :lens_arn,
      :lens_version,
      :lens_name,
      :lens_status,
      :pillar_review_summaries,
      :updated_at,
      :notes,
      :question_counts,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary of a review template.</p>
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [String]
    # @!attribute pillar_name
    #   <p>The name of the pillar.</p>
    #   @return [String]
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    #   @return [String]
    # @!attribute question_counts
    #   <p>A count of how many questions are answered and unanswered in the requested pillar of the lens review.</p>
    #   @return [Hash<String, Integer>]
    class ReviewTemplatePillarReviewSummary < Struct.new(
      :pillar_id,
      :pillar_name,
      :notes,
      :question_counts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary of a review template.</p>
    # @!attribute description
    #   <p>Description of the review template.</p>
    #   @return [String]
    # @!attribute lenses
    #   <p>Lenses associated with the review template.</p>
    #   @return [Array<String>]
    # @!attribute owner
    #   <p>An Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the review template.</p>
    #   @return [String]
    # @!attribute update_status
    #   <p>The latest status of a review template.</p>
    #   @return [String]
    class ReviewTemplateSummary < Struct.new(
      :description,
      :lenses,
      :owner,
      :updated_at,
      :template_arn,
      :template_name,
      :update_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ReviewTemplateUpdateStatus
      CURRENT = 'CURRENT'
      LENS_NOT_CURRENT = 'LENS_NOT_CURRENT'
    end

    # <p>The risk for a given workload, lens review, pillar, or question.</p>
    module Risk
      UNANSWERED = 'UNANSWERED'
      HIGH = 'HIGH'
      MEDIUM = 'MEDIUM'
      NONE = 'NONE'
      NOT_APPLICABLE = 'NOT_APPLICABLE'
    end

    # <p>The selected pillar.</p>
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [String]
    # @!attribute selected_question_ids
    #   <p>Selected question IDs in the selected pillar.</p>
    #   @return [Array<String>]
    class SelectedPillar < Struct.new(
      :pillar_id,
      :selected_question_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The user has reached their resource quota.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the resource affected.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of the resource affected.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Service Quotas requirement to identify originating quota.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>Service Quotas requirement to identify originating service.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The share invitation.</p>
    # @!attribute share_invitation_id
    #   <p>The ID assigned to the share invitation.</p>
    #   @return [String]
    # @!attribute share_resource_type
    #   <p>The resource type of the share invitation.</p>
    #   @return [String]
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #   @return [String]
    # @!attribute profile_arn
    #   <p>The profile ARN.</p>
    #   @return [String]
    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    class ShareInvitation < Struct.new(
      :share_invitation_id,
      :share_resource_type,
      :workload_id,
      :lens_alias,
      :lens_arn,
      :profile_arn,
      :template_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Share invitation action taken by contributor.</p>
    module ShareInvitationAction
      ACCEPT = 'ACCEPT'
      REJECT = 'REJECT'
    end

    # <p>A share invitation summary return object.</p>
    # @!attribute share_invitation_id
    #   <p>The ID assigned to the share invitation.</p>
    #   @return [String]
    # @!attribute shared_by
    #   <p>An Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute shared_with
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which 
    #               the workload, lens, profile, or review template is shared.</p>
    #   @return [String]
    # @!attribute permission_type
    #   <p>Permission granted on a share request.</p>
    #   @return [String]
    # @!attribute share_resource_type
    #   <p>The resource type of the share invitation.</p>
    #   @return [String]
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #            <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    #   @return [String]
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute lens_name
    #   <p>The full name of the lens.</p>
    #   @return [String]
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #   @return [String]
    # @!attribute profile_name
    #   <p>The profile name.</p>
    #   @return [String]
    # @!attribute profile_arn
    #   <p>The profile ARN.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the review template.</p>
    #   @return [String]
    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    class ShareInvitationSummary < Struct.new(
      :share_invitation_id,
      :shared_by,
      :shared_with,
      :permission_type,
      :share_resource_type,
      :workload_name,
      :workload_id,
      :lens_name,
      :lens_arn,
      :profile_name,
      :profile_arn,
      :template_name,
      :template_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ShareResourceType
      WORKLOAD = 'WORKLOAD'
      LENS = 'LENS'
      PROFILE = 'PROFILE'
      TEMPLATE = 'TEMPLATE'
    end

    # <p>The status of the share request.</p>
    module ShareStatus
      ACCEPTED = 'ACCEPTED'
      REJECTED = 'REJECTED'
      PENDING = 'PENDING'
      REVOKED = 'REVOKED'
      EXPIRED = 'EXPIRED'
      ASSOCIATING = 'ASSOCIATING'
      ASSOCIATED = 'ASSOCIATED'
      FAILED = 'FAILED'
    end

    # @!attribute workload_arn
    #   <p>The ARN for the workload.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :workload_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary of a review template share.</p>
    # @!attribute share_id
    #   <p>The ID associated with the share.</p>
    #   @return [String]
    # @!attribute shared_with
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which 
    #               the workload, lens, profile, or review template is shared.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the share request.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Review template share invitation status message. </p>
    #   @return [String]
    class TemplateShareSummary < Struct.new(
      :share_id,
      :shared_with,
      :status,
      :status_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Request was denied due to request throttling.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Service Quotas requirement to identify originating quota.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>Service Quotas requirement to identify originating service.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TrustedAdvisorIntegrationStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # @!attribute workload_arn
    #   <p>The ARN for the workload.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys. Existing tags of the resource 
    #               whose keys are members of this list are removed from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :workload_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input to update answer.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #   @return [String]
    # @!attribute selected_choices
    #   <p>List of selected choice IDs in a question answer.</p>
    #            <p>The values entered replace the previously selected choices.</p>
    #   @return [Array<String>]
    # @!attribute choice_updates
    #   <p>A list of choices to update on a question in your workload.  The String key 
    #               corresponds to the choice ID to be updated.</p>
    #   @return [Hash<String, Types::ChoiceUpdate>]
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    #   @return [String]
    # @!attribute is_applicable
    #   <p>Defines whether this question is applicable to a lens review.</p>
    #   @return [Boolean]
    # @!attribute reason
    #   <p>The reason why a question is not applicable to your workload.</p>
    #   @return [String]
    class UpdateAnswerInput < Struct.new(
      :workload_id,
      :lens_alias,
      :question_id,
      :selected_choices,
      :choice_updates,
      :notes,
      :is_applicable,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output of a update answer call.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #   @return [String]
    # @!attribute answer
    #   <p>An answer of the question.</p>
    #   @return [Types::Answer]
    class UpdateAnswerOutput < Struct.new(
      :workload_id,
      :lens_alias,
      :lens_arn,
      :answer,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_sharing_status
    #   <p>The status of organization sharing settings.</p>
    #   @return [String]
    # @!attribute discovery_integration_status
    #   <p>The status of discovery support settings.</p>
    #   @return [String]
    # @!attribute jira_configuration
    #   <p>The status of Jira integration settings.</p>
    #   @return [Types::AccountJiraConfigurationInput]
    class UpdateGlobalSettingsInput < Struct.new(
      :organization_sharing_status,
      :discovery_integration_status,
      :jira_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    # @!attribute integrating_service
    #   <p>Which integrated service to update.</p>
    #   @return [String]
    class UpdateIntegrationInput < Struct.new(
      :workload_id,
      :client_request_token,
      :integrating_service,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input for update lens review.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute lens_notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    #   @return [String]
    # @!attribute pillar_notes
    #   <p>List of pillar notes of a lens review in a workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    #   @return [Hash<String, String>]
    # @!attribute jira_configuration
    #   <p>Configuration of the Jira integration.</p>
    #   @return [Types::JiraSelectedQuestionConfiguration]
    class UpdateLensReviewInput < Struct.new(
      :workload_id,
      :lens_alias,
      :lens_notes,
      :pillar_notes,
      :jira_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output of a update lens review call.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute lens_review
    #   <p>A lens review of a question.</p>
    #   @return [Types::LensReview]
    class UpdateLensReviewOutput < Struct.new(
      :workload_id,
      :lens_review,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute profile_arn
    #   <p>The profile ARN.</p>
    #   @return [String]
    # @!attribute profile_description
    #   <p>The profile description.</p>
    #   @return [String]
    # @!attribute profile_questions
    #   <p>Profile questions.</p>
    #   @return [Array<Types::ProfileQuestionUpdate>]
    class UpdateProfileInput < Struct.new(
      :profile_arn,
      :profile_description,
      :profile_questions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute profile
    #   <p>The profile.</p>
    #   @return [Types::Profile]
    class UpdateProfileOutput < Struct.new(
      :profile,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #   @return [String]
    # @!attribute selected_choices
    #   <p>List of selected choice IDs in a question answer.</p>
    #            <p>The values entered replace the previously selected choices.</p>
    #   @return [Array<String>]
    # @!attribute choice_updates
    #   <p>A list of choices to be updated.</p>
    #   @return [Hash<String, Types::ChoiceUpdate>]
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    #   @return [String]
    # @!attribute is_applicable
    #   <p>Defines whether this question is applicable to a lens review.</p>
    #   @return [Boolean]
    # @!attribute reason
    #   <p>The update reason.</p>
    #   @return [String]
    class UpdateReviewTemplateAnswerInput < Struct.new(
      :template_arn,
      :lens_alias,
      :question_id,
      :selected_choices,
      :choice_updates,
      :notes,
      :is_applicable,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute answer
    #   <p>An answer of the question.</p>
    #   @return [Types::ReviewTemplateAnswer]
    class UpdateReviewTemplateAnswerOutput < Struct.new(
      :template_arn,
      :lens_alias,
      :answer,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The review template name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The review template description.</p>
    #   @return [String]
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    #   @return [String]
    # @!attribute lenses_to_associate
    #   <p>A list of lens aliases or ARNs to apply to the review template.</p>
    #   @return [Array<String>]
    # @!attribute lenses_to_disassociate
    #   <p>A list of lens aliases or ARNs to unapply to the review template. The <code>wellarchitected</code> lens cannot be unapplied.</p>
    #   @return [Array<String>]
    class UpdateReviewTemplateInput < Struct.new(
      :template_arn,
      :template_name,
      :description,
      :notes,
      :lenses_to_associate,
      :lenses_to_disassociate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute lens_notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    #   @return [String]
    # @!attribute pillar_notes
    #   <p>List of pillar notes of a lens review in a workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    #   @return [Hash<String, String>]
    class UpdateReviewTemplateLensReviewInput < Struct.new(
      :template_arn,
      :lens_alias,
      :lens_notes,
      :pillar_notes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The review template ARN.</p>
    #   @return [String]
    # @!attribute lens_review
    #   <p>A lens review of a question.</p>
    #   @return [Types::ReviewTemplateLensReview]
    class UpdateReviewTemplateLensReviewOutput < Struct.new(
      :template_arn,
      :lens_review,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute review_template
    #   <p>A review template.</p>
    #   @return [Types::ReviewTemplate]
    class UpdateReviewTemplateOutput < Struct.new(
      :review_template,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input for Update Share Invitation</p>
    # @!attribute share_invitation_id
    #   <p>The ID assigned to the share invitation.</p>
    #   @return [String]
    # @!attribute share_invitation_action
    #   <p>Share invitation action taken by contributor.</p>
    #   @return [String]
    class UpdateShareInvitationInput < Struct.new(
      :share_invitation_id,
      :share_invitation_action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute share_invitation
    #   <p>The updated workload or custom lens share invitation.</p>
    #   @return [Types::ShareInvitation]
    class UpdateShareInvitationOutput < Struct.new(
      :share_invitation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input to update a workload.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #            <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the workload.</p>
    #   @return [String]
    # @!attribute environment
    #   <p>The environment for the workload.</p>
    #   @return [String]
    # @!attribute account_ids
    #   <p>The list of Amazon Web Services account IDs associated with the workload.</p>
    #   @return [Array<String>]
    # @!attribute aws_regions
    #   <p>The list of Amazon Web Services Regions associated with the workload, for example,
    #                   <code>us-east-2</code>, or <code>ca-central-1</code>.</p>
    #   @return [Array<String>]
    # @!attribute non_aws_regions
    #   <p> The list of non-Amazon Web Services Regions associated with the workload.</p>
    #   @return [Array<String>]
    # @!attribute pillar_priorities
    #   <p>The priorities of the pillars, which are used to order items in the improvement plan.
    #               Each pillar is represented by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [Array<String>]
    # @!attribute architectural_design
    #   <p>The URL of the architectural design for the workload.</p>
    #   @return [String]
    # @!attribute review_owner
    #   <p>The review owner of the workload. The name, email address, or identifier for the
    #               primary group or individual that owns the workload review process.</p>
    #   @return [String]
    # @!attribute is_review_owner_update_acknowledged
    #   <p>Flag indicating whether the workload owner has acknowledged that the <i>Review
    #                   owner</i> field is required.</p>
    #            <p>If a <b>Review owner</b> is not added to the workload within
    #               60 days of acknowledgement, access to the workload is restricted until an owner is
    #               added.</p>
    #   @return [Boolean]
    # @!attribute industry_type
    #   <p>The industry type for the workload.</p>
    #            <p>If specified, must be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Agriculture</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Automobile</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Defense</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Design and Engineering</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Digital Advertising</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Education</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environmental Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Financial Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Gaming</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>General Public Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Healthcare</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Hospitality</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InfoTech</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Justice and Public Safety</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Life Sciences</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Manufacturing</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Media & Entertainment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Mining & Resources</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Oil & Gas</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Power & Utilities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Professional Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Real Estate & Construction</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Retail & Wholesale</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Social Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Telecommunications</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Travel, Transportation & Logistics</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Other</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute industry
    #   <p>The industry for the workload.</p>
    #   @return [String]
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    #   @return [String]
    # @!attribute improvement_status
    #   <p>The improvement status for a workload.</p>
    #   @return [String]
    # @!attribute discovery_config
    #   <p>Well-Architected discovery configuration settings to associate to the workload.</p>
    #   @return [Types::WorkloadDiscoveryConfig]
    # @!attribute applications
    #   <p>List of AppRegistry application ARNs to associate to the workload.</p>
    #   @return [Array<String>]
    # @!attribute jira_configuration
    #   <p>Configuration of the Jira integration.</p>
    #   @return [Types::WorkloadJiraConfigurationInput]
    class UpdateWorkloadInput < Struct.new(
      :workload_id,
      :workload_name,
      :description,
      :environment,
      :account_ids,
      :aws_regions,
      :non_aws_regions,
      :pillar_priorities,
      :architectural_design,
      :review_owner,
      :is_review_owner_update_acknowledged,
      :industry_type,
      :industry,
      :notes,
      :improvement_status,
      :discovery_config,
      :applications,
      :jira_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output of an update workload call.</p>
    # @!attribute workload
    #   <p>A workload return object.</p>
    #   @return [Types::Workload]
    class UpdateWorkloadOutput < Struct.new(
      :workload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input for Update Workload Share</p>
    # @!attribute share_id
    #   <p>The ID associated with the share.</p>
    #   @return [String]
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute permission_type
    #   <p>Permission granted on a share request.</p>
    #   @return [String]
    class UpdateWorkloadShareInput < Struct.new(
      :share_id,
      :workload_id,
      :permission_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input for Update Workload Share</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute workload_share
    #   <p>A workload share return object.</p>
    #   @return [Types::WorkloadShare]
    class UpdateWorkloadShareOutput < Struct.new(
      :workload_id,
      :workload_share,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute milestone_name
    #   <p>The name of the milestone in a workload.</p>
    #            <p>Milestone names must be unique within a workload.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    class UpgradeLensReviewInput < Struct.new(
      :workload_id,
      :lens_alias,
      :milestone_name,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute profile_arn
    #   <p>The profile ARN.</p>
    #   @return [String]
    # @!attribute milestone_name
    #   <p>The name of the milestone in a workload.</p>
    #            <p>Milestone names must be unique within a workload.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    class UpgradeProfileVersionInput < Struct.new(
      :workload_id,
      :profile_arn,
      :milestone_name,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The ARN of the review template.</p>
    #   @return [String]
    # @!attribute lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    #   @return [String]
    class UpgradeReviewTemplateLensReviewInput < Struct.new(
      :template_arn,
      :lens_alias,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The user input is not valid.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason why the request failed validation.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The fields that caused the error, if applicable.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Stores information about a field passed inside a request that resulted in an exception.</p>
    # @!attribute name
    #   <p>The field name for which validation failed.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The reason why the request failed validation.</p>
    module ValidationExceptionReason
      UNKNOWN_OPERATION = 'UNKNOWN_OPERATION'
      CANNOT_PARSE = 'CANNOT_PARSE'
      FIELD_VALIDATION_FAILED = 'FIELD_VALIDATION_FAILED'
      OTHER = 'OTHER'
    end

    # <p>The differences between the base and latest versions of the lens.</p>
    # @!attribute pillar_differences
    #   <p>The differences between the base and latest versions of the lens.</p>
    #   @return [Array<Types::PillarDifference>]
    class VersionDifferences < Struct.new(
      :pillar_differences,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A workload return object.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute workload_arn
    #   <p>The ARN for the workload.</p>
    #   @return [String]
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #            <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the workload.</p>
    #   @return [String]
    # @!attribute environment
    #   <p>The environment for the workload.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    # @!attribute account_ids
    #   <p>The list of Amazon Web Services account IDs associated with the workload.</p>
    #   @return [Array<String>]
    # @!attribute aws_regions
    #   <p>The list of Amazon Web Services Regions associated with the workload, for example,
    #                   <code>us-east-2</code>, or <code>ca-central-1</code>.</p>
    #   @return [Array<String>]
    # @!attribute non_aws_regions
    #   <p> The list of non-Amazon Web Services Regions associated with the workload.</p>
    #   @return [Array<String>]
    # @!attribute architectural_design
    #   <p>The URL of the architectural design for the workload.</p>
    #   @return [String]
    # @!attribute review_owner
    #   <p>The review owner of the workload. The name, email address, or identifier for the
    #               primary group or individual that owns the workload review process.</p>
    #   @return [String]
    # @!attribute review_restriction_date
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    # @!attribute is_review_owner_update_acknowledged
    #   <p>Flag indicating whether the workload owner has acknowledged that the <i>Review
    #                   owner</i> field is required.</p>
    #            <p>If a <b>Review owner</b> is not added to the workload within
    #               60 days of acknowledgement, access to the workload is restricted until an owner is
    #               added.</p>
    #   @return [Boolean]
    # @!attribute industry_type
    #   <p>The industry type for the workload.</p>
    #            <p>If specified, must be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Agriculture</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Automobile</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Defense</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Design and Engineering</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Digital Advertising</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Education</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environmental Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Financial Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Gaming</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>General Public Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Healthcare</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Hospitality</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InfoTech</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Justice and Public Safety</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Life Sciences</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Manufacturing</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Media & Entertainment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Mining & Resources</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Oil & Gas</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Power & Utilities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Professional Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Real Estate & Construction</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Retail & Wholesale</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Social Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Telecommunications</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Travel, Transportation & Logistics</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Other</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute industry
    #   <p>The industry for the workload.</p>
    #   @return [String]
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    #   @return [String]
    # @!attribute improvement_status
    #   <p>The improvement status for a workload.</p>
    #   @return [String]
    # @!attribute risk_counts
    #   <p>A map from risk names to the count of how many questions have that rating.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute pillar_priorities
    #   <p>The priorities of the pillars, which are used to order items in the improvement plan.
    #               Each pillar is represented by its <a>PillarReviewSummary$PillarId</a>.</p>
    #   @return [Array<String>]
    # @!attribute lenses
    #   <p>The list of lenses associated with the workload. Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #            <p>If a review template that specifies lenses is applied to the workload, those lenses are applied
    #           to the workload in addition to these lenses.</p>
    #   @return [Array<String>]
    # @!attribute owner
    #   <p>An Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute share_invitation_id
    #   <p>The ID assigned to the share invitation.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the workload.</p>
    #   @return [Hash<String, String>]
    # @!attribute discovery_config
    #   <p>Discovery configuration associated to the workload.</p>
    #   @return [Types::WorkloadDiscoveryConfig]
    # @!attribute applications
    #   <p>List of AppRegistry application ARNs associated to the workload.</p>
    #   @return [Array<String>]
    # @!attribute profiles
    #   <p>Profile associated with a workload.</p>
    #   @return [Array<Types::WorkloadProfile>]
    # @!attribute prioritized_risk_counts
    #   <p>A map from risk names to the count of how many questions have that rating.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute jira_configuration
    #   <p>Jira configuration for a specific workload.</p>
    #   @return [Types::WorkloadJiraConfigurationOutput]
    class Workload < Struct.new(
      :workload_id,
      :workload_arn,
      :workload_name,
      :description,
      :environment,
      :updated_at,
      :account_ids,
      :aws_regions,
      :non_aws_regions,
      :architectural_design,
      :review_owner,
      :review_restriction_date,
      :is_review_owner_update_acknowledged,
      :industry_type,
      :industry,
      :notes,
      :improvement_status,
      :risk_counts,
      :pillar_priorities,
      :lenses,
      :owner,
      :share_invitation_id,
      :tags,
      :discovery_config,
      :applications,
      :profiles,
      :prioritized_risk_counts,
      :jira_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Discovery configuration associated to the workload.</p>
    # @!attribute trusted_advisor_integration_status
    #   <p>Discovery integration status in respect to Trusted Advisor for the workload.</p>
    #   @return [String]
    # @!attribute workload_resource_definition
    #   <p>The mode to use for identifying resources associated with the workload.</p>
    #            <p>You can specify <code>WORKLOAD_METADATA</code>, <code>APP_REGISTRY</code>, or both.</p>
    #   @return [Array<String>]
    class WorkloadDiscoveryConfig < Struct.new(
      :trusted_advisor_integration_status,
      :workload_resource_definition,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The environment for the workload.</p>
    module WorkloadEnvironment
      PRODUCTION = 'PRODUCTION'
      PREPRODUCTION = 'PREPRODUCTION'
    end

    # <p>The improvement status for a workload.</p>
    module WorkloadImprovementStatus
      NOT_APPLICABLE = 'NOT_APPLICABLE'
      NOT_STARTED = 'NOT_STARTED'
      IN_PROGRESS = 'IN_PROGRESS'
      COMPLETE = 'COMPLETE'
      RISK_ACKNOWLEDGED = 'RISK_ACKNOWLEDGED'
    end

    module WorkloadIssueManagementStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
      INHERIT = 'INHERIT'
    end

    # <p>Workload-level: Input for the Jira configuration.</p>
    # @!attribute issue_management_status
    #   <p>Workload-level: Jira issue management status.</p>
    #   @return [String]
    # @!attribute issue_management_type
    #   <p>Workload-level: Jira issue management type.</p>
    #   @return [String]
    # @!attribute jira_project_key
    #   <p>Workload-level: Jira project key to sync workloads to.</p>
    #   @return [String]
    class WorkloadJiraConfigurationInput < Struct.new(
      :issue_management_status,
      :issue_management_type,
      :jira_project_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Workload-level: Output configuration of the Jira integration.</p>
    # @!attribute issue_management_status
    #   <p>Workload-level: Jira issue management status.</p>
    #   @return [String]
    # @!attribute issue_management_type
    #   <p>Workload-level: Jira issue management type.</p>
    #   @return [String]
    # @!attribute jira_project_key
    #   <p>Workload-level: Jira project key to sync workloads to.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Workload-level: Status message on configuration of the Jira integration.</p>
    #   @return [String]
    class WorkloadJiraConfigurationOutput < Struct.new(
      :issue_management_status,
      :issue_management_type,
      :jira_project_key,
      :status_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The profile associated with a workload.</p>
    # @!attribute profile_arn
    #   <p>The profile ARN.</p>
    #   @return [String]
    # @!attribute profile_version
    #   <p>The profile version.</p>
    #   @return [String]
    class WorkloadProfile < Struct.new(
      :profile_arn,
      :profile_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A workload share return object.</p>
    # @!attribute share_id
    #   <p>The ID associated with the share.</p>
    #   @return [String]
    # @!attribute shared_by
    #   <p>An Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute shared_with
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which 
    #               the workload, lens, profile, or review template is shared.</p>
    #   @return [String]
    # @!attribute permission_type
    #   <p>Permission granted on a share request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the share request.</p>
    #   @return [String]
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #            <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    #   @return [String]
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    class WorkloadShare < Struct.new(
      :share_id,
      :shared_by,
      :shared_with,
      :permission_type,
      :status,
      :workload_name,
      :workload_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A workload share summary return object.</p>
    # @!attribute share_id
    #   <p>The ID associated with the share.</p>
    #   @return [String]
    # @!attribute shared_with
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which 
    #               the workload, lens, profile, or review template is shared.</p>
    #   @return [String]
    # @!attribute permission_type
    #   <p>Permission granted on a share request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the share request.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Optional message to compliment the Status field.</p>
    #   @return [String]
    class WorkloadShareSummary < Struct.new(
      :share_id,
      :shared_with,
      :permission_type,
      :status,
      :status_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A workload summary return object.</p>
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute workload_arn
    #   <p>The ARN for the workload.</p>
    #   @return [String]
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #            <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>An Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time recorded.</p>
    #   @return [Time]
    # @!attribute lenses
    #   <p>The list of lenses associated with the workload. Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #            <p>If a review template that specifies lenses is applied to the workload, those lenses are applied
    #           to the workload in addition to these lenses.</p>
    #   @return [Array<String>]
    # @!attribute risk_counts
    #   <p>A map from risk names to the count of how many questions have that rating.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute improvement_status
    #   <p>The improvement status for a workload.</p>
    #   @return [String]
    # @!attribute profiles
    #   <p>Profile associated with a workload.</p>
    #   @return [Array<Types::WorkloadProfile>]
    # @!attribute prioritized_risk_counts
    #   <p>A map from risk names to the count of how many questions have that rating.</p>
    #   @return [Hash<String, Integer>]
    class WorkloadSummary < Struct.new(
      :workload_id,
      :workload_arn,
      :workload_name,
      :owner,
      :updated_at,
      :lenses,
      :risk_counts,
      :improvement_status,
      :profiles,
      :prioritized_risk_counts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
