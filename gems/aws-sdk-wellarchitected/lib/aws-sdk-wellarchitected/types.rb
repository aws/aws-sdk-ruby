# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WellArchitected
  module Types

    # User does not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The choice level additional resources for a custom lens.
    #
    # This field does not apply to Amazon Web Services official lenses.
    #
    # @!attribute [rw] type
    #   Type of additional resource for a custom lens.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The URLs for additional resources, either helpful resources or
    #   improvement plans, for a custom lens. Up to five additional URLs can
    #   be specified.
    #   @return [Array<Types::ChoiceContent>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/AdditionalResources AWS API Documentation
    #
    class AdditionalResources < Struct.new(
      :type,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # An answer of the question.
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] question_title
    #   The title of the question.
    #   @return [String]
    #
    # @!attribute [rw] question_description
    #   The description of the question.
    #   @return [String]
    #
    # @!attribute [rw] improvement_plan_url
    #   The improvement plan URL for a question in an Amazon Web Services
    #   official lenses.
    #
    #   This value is only available if the question has been answered.
    #
    #   This value does not apply to custom lenses.
    #   @return [String]
    #
    # @!attribute [rw] helpful_resource_url
    #   The helpful resource URL.
    #
    #   For Amazon Web Services official lenses, this is the helpful
    #   resource URL for a question or choice.
    #
    #   For custom lenses, this is the helpful resource URL for a question
    #   and is only provided if `HelpfulResourceDisplayText` was specified
    #   for the question.
    #   @return [String]
    #
    # @!attribute [rw] helpful_resource_display_text
    #   The helpful resource text to be displayed for a custom lens.
    #
    #   This field does not apply to Amazon Web Services official lenses.
    #   @return [String]
    #
    # @!attribute [rw] choices
    #   List of choices available for a question.
    #   @return [Array<Types::Choice>]
    #
    # @!attribute [rw] selected_choices
    #   List of selected choice IDs in a question answer.
    #
    #   The values entered replace the previously selected choices.
    #   @return [Array<String>]
    #
    # @!attribute [rw] choice_answers
    #   A list of selected choices to a question in your workload.
    #   @return [Array<Types::ChoiceAnswer>]
    #
    # @!attribute [rw] is_applicable
    #   Defines whether this question is applicable to a lens review.
    #   @return [Boolean]
    #
    # @!attribute [rw] risk
    #   The risk for a given workload, lens review, pillar, or question.
    #   @return [String]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason why the question is not applicable to your workload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/Answer AWS API Documentation
    #
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
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # An answer summary of a lens review in a workload.
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] question_title
    #   The title of the question.
    #   @return [String]
    #
    # @!attribute [rw] choices
    #   List of choices available for a question.
    #   @return [Array<Types::Choice>]
    #
    # @!attribute [rw] selected_choices
    #   List of selected choice IDs in a question answer.
    #
    #   The values entered replace the previously selected choices.
    #   @return [Array<String>]
    #
    # @!attribute [rw] choice_answer_summaries
    #   A list of selected choices to a question in your workload.
    #   @return [Array<Types::ChoiceAnswerSummary>]
    #
    # @!attribute [rw] is_applicable
    #   Defines whether this question is applicable to a lens review.
    #   @return [Boolean]
    #
    # @!attribute [rw] risk
    #   The risk for a given workload, lens review, pillar, or question.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason why a choice is non-applicable to a question in your
    #   workload.
    #   @return [String]
    #
    # @!attribute [rw] question_type
    #   The type of the question.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/AnswerSummary AWS API Documentation
    #
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
      :question_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to associate lens reviews.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_aliases
    #   List of lens aliases to associate or disassociate with a workload.
    #   Up to 10 lenses can be specified.
    #
    #   Identify a lens using its LensSummary$LensAlias.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/AssociateLensesInput AWS API Documentation
    #
    class AssociateLensesInput < Struct.new(
      :workload_id,
      :lens_aliases)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] profile_arns
    #   The list of profile ARNs to associate with the workload.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/AssociateProfilesInput AWS API Documentation
    #
    class AssociateProfilesInput < Struct.new(
      :workload_id,
      :profile_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # A best practice, or question choice, that has been identified as a
    # risk in this question.
    #
    # @!attribute [rw] choice_id
    #   The ID of a choice.
    #   @return [String]
    #
    # @!attribute [rw] choice_title
    #   The title of a choice.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/BestPractice AWS API Documentation
    #
    class BestPractice < Struct.new(
      :choice_id,
      :choice_title)
      SENSITIVE = []
      include Aws::Structure
    end

    # Account details for a Well-Architected best practice in relation to
    # Trusted Advisor checks.
    #
    # @!attribute [rw] id
    #   Trusted Advisor check ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Trusted Advisor check name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Trusted Advisor check description.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   Provider of the check related to the best practice.
    #   @return [String]
    #
    # @!attribute [rw] lens_arn
    #   Well-Architected Lens ARN associated to the check.
    #   @return [String]
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] choice_id
    #   The ID of a choice.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status associated to the check.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   An Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] flagged_resources
    #   Count of flagged resources associated to the check.
    #   @return [Integer]
    #
    # @!attribute [rw] reason
    #   Reason associated to the check.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CheckDetail AWS API Documentation
    #
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
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Trusted Advisor check summary.
    #
    # @!attribute [rw] id
    #   Trusted Advisor check ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Trusted Advisor check name.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   Provider of the check related to the best practice.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Trusted Advisor check description.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] lens_arn
    #   Well-Architected Lens ARN associated to the check.
    #   @return [String]
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] choice_id
    #   The ID of a choice.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status associated to the check.
    #   @return [String]
    #
    # @!attribute [rw] account_summary
    #   Account summary associated to the check.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CheckSummary AWS API Documentation
    #
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
      :account_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # A choice available to answer question.
    #
    # @!attribute [rw] choice_id
    #   The ID of a choice.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of a choice.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a choice.
    #   @return [String]
    #
    # @!attribute [rw] helpful_resource
    #   The helpful resource (both text and URL) for a particular choice.
    #
    #   This field only applies to custom lenses. Each choice can have only
    #   one helpful resource.
    #   @return [Types::ChoiceContent]
    #
    # @!attribute [rw] improvement_plan
    #   The improvement plan (both text and URL) for a particular choice.
    #
    #   This field only applies to custom lenses. Each choice can have only
    #   one improvement plan.
    #   @return [Types::ChoiceContent]
    #
    # @!attribute [rw] additional_resources
    #   The additional resources for a choice in a custom lens.
    #
    #   A choice can have up to two additional resources: one of type
    #   `HELPFUL_RESOURCE`, one of type `IMPROVEMENT_PLAN`, or both.
    #   @return [Array<Types::AdditionalResources>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/Choice AWS API Documentation
    #
    class Choice < Struct.new(
      :choice_id,
      :title,
      :description,
      :helpful_resource,
      :improvement_plan,
      :additional_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # A choice that has been answered on a question in your workload.
    #
    # @!attribute [rw] choice_id
    #   The ID of a choice.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a choice.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason why a choice is non-applicable to a question in your
    #   workload.
    #   @return [String]
    #
    # @!attribute [rw] notes
    #   The notes associated with a choice.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ChoiceAnswer AWS API Documentation
    #
    class ChoiceAnswer < Struct.new(
      :choice_id,
      :status,
      :reason,
      :notes)
      SENSITIVE = []
      include Aws::Structure
    end

    # A choice summary that has been answered on a question in your
    # workload.
    #
    # @!attribute [rw] choice_id
    #   The ID of a choice.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a choice.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason why a choice is non-applicable to a question in your
    #   workload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ChoiceAnswerSummary AWS API Documentation
    #
    class ChoiceAnswerSummary < Struct.new(
      :choice_id,
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The choice content.
    #
    # @!attribute [rw] display_text
    #   The display text for the choice content.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL for the choice content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ChoiceContent AWS API Documentation
    #
    class ChoiceContent < Struct.new(
      :display_text,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The choice level improvement plan.
    #
    # @!attribute [rw] choice_id
    #   The ID of a choice.
    #   @return [String]
    #
    # @!attribute [rw] display_text
    #   The display text for the improvement plan.
    #   @return [String]
    #
    # @!attribute [rw] improvement_plan_url
    #   The improvement plan URL for a question in an Amazon Web Services
    #   official lenses.
    #
    #   This value is only available if the question has been answered.
    #
    #   This value does not apply to custom lenses.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ChoiceImprovementPlan AWS API Documentation
    #
    class ChoiceImprovementPlan < Struct.new(
      :choice_id,
      :display_text,
      :improvement_plan_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of choices to be updated.
    #
    # @!attribute [rw] status
    #   The status of a choice.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason why a choice is non-applicable to a question in your
    #   workload.
    #   @return [String]
    #
    # @!attribute [rw] notes
    #   The notes associated with a choice.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ChoiceUpdate AWS API Documentation
    #
    class ChoiceUpdate < Struct.new(
      :status,
      :reason,
      :notes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource has already been processed, was deleted, or is too large.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource affected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A metric that contributes to the consolidated report.
    #
    # @!attribute [rw] metric_type
    #   The metric type of a metric in the consolidated report. Currently
    #   only WORKLOAD metric types are supported.
    #   @return [String]
    #
    # @!attribute [rw] risk_counts
    #   A map from risk names to the count of how many questions have that
    #   rating.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #
    #   The name must be unique within an account within an Amazon Web
    #   Services Region. Spaces and capitalization are ignored when checking
    #   for uniqueness.
    #   @return [String]
    #
    # @!attribute [rw] workload_arn
    #   The ARN for the workload.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] lenses
    #   The metrics for the lenses in the workload.
    #   @return [Array<Types::LensMetric>]
    #
    # @!attribute [rw] lenses_applied_count
    #   The total number of lenses applied to the workload.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ConsolidatedReportMetric AWS API Documentation
    #
    class ConsolidatedReportMetric < Struct.new(
      :metric_type,
      :risk_counts,
      :workload_id,
      :workload_name,
      :workload_arn,
      :updated_at,
      :lenses,
      :lenses_applied_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] shared_with
    #   The Amazon Web Services account ID, IAM role, organization ID, or
    #   organizational unit (OU) ID with which the workload, lens, or
    #   profile is shared.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after the original request has completed successfully, the result of
    #   the original request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateLensShareInput AWS API Documentation
    #
    class CreateLensShareInput < Struct.new(
      :lens_alias,
      :shared_with,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] share_id
    #   The ID associated with the share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateLensShareOutput AWS API Documentation
    #
    class CreateLensShareOutput < Struct.new(
      :share_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] lens_version
    #   The version of the lens being created.
    #   @return [String]
    #
    # @!attribute [rw] is_major_version
    #   Set to true if this new major lens version.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after the original request has completed successfully, the result of
    #   the original request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateLensVersionInput AWS API Documentation
    #
    class CreateLensVersionInput < Struct.new(
      :lens_alias,
      :lens_version,
      :is_major_version,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lens_arn
    #   The ARN for the lens.
    #   @return [String]
    #
    # @!attribute [rw] lens_version
    #   The version of the lens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateLensVersionOutput AWS API Documentation
    #
    class CreateLensVersionOutput < Struct.new(
      :lens_arn,
      :lens_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for milestone creation.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_name
    #   The name of the milestone in a workload.
    #
    #   Milestone names must be unique within a workload.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after the original request has completed successfully, the result of
    #   the original request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateMilestoneInput AWS API Documentation
    #
    class CreateMilestoneInput < Struct.new(
      :workload_id,
      :milestone_name,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a create milestone call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateMilestoneOutput AWS API Documentation
    #
    class CreateMilestoneOutput < Struct.new(
      :workload_id,
      :milestone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_name
    #   Name of the profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_description
    #   The profile description.
    #   @return [String]
    #
    # @!attribute [rw] profile_questions
    #   The profile questions.
    #   @return [Array<Types::ProfileQuestionUpdate>]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after the original request has completed successfully, the result of
    #   the original request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the profile.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateProfileInput AWS API Documentation
    #
    class CreateProfileInput < Struct.new(
      :profile_name,
      :profile_description,
      :profile_questions,
      :client_request_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_arn
    #   The profile ARN.
    #   @return [String]
    #
    # @!attribute [rw] profile_version
    #   Version of the profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateProfileOutput AWS API Documentation
    #
    class CreateProfileOutput < Struct.new(
      :profile_arn,
      :profile_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_arn
    #   The profile ARN.
    #   @return [String]
    #
    # @!attribute [rw] shared_with
    #   The Amazon Web Services account ID, IAM role, organization ID, or
    #   organizational unit (OU) ID with which the workload, lens, or
    #   profile is shared.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after the original request has completed successfully, the result of
    #   the original request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateProfileShareInput AWS API Documentation
    #
    class CreateProfileShareInput < Struct.new(
      :profile_arn,
      :shared_with,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] share_id
    #   The ID associated with the share.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The profile ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateProfileShareOutput AWS API Documentation
    #
    class CreateProfileShareOutput < Struct.new(
      :share_id,
      :profile_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for workload creation.
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #
    #   The name must be unique within an account within an Amazon Web
    #   Services Region. Spaces and capitalization are ignored when checking
    #   for uniqueness.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the workload.
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The environment for the workload.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   The list of Amazon Web Services account IDs associated with the
    #   workload.
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_regions
    #   The list of Amazon Web Services Regions associated with the
    #   workload, for example, `us-east-2`, or `ca-central-1`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] non_aws_regions
    #   The list of non-Amazon Web Services Regions associated with the
    #   workload.
    #   @return [Array<String>]
    #
    # @!attribute [rw] pillar_priorities
    #   The priorities of the pillars, which are used to order items in the
    #   improvement plan. Each pillar is represented by its
    #   PillarReviewSummary$PillarId.
    #   @return [Array<String>]
    #
    # @!attribute [rw] architectural_design
    #   The URL of the architectural design for the workload.
    #   @return [String]
    #
    # @!attribute [rw] review_owner
    #   The review owner of the workload. The name, email address, or
    #   identifier for the primary group or individual that owns the
    #   workload review process.
    #   @return [String]
    #
    # @!attribute [rw] industry_type
    #   The industry type for the workload.
    #
    #   If specified, must be one of the following:
    #
    #   * `Agriculture`
    #
    #   * `Automobile`
    #
    #   * `Defense`
    #
    #   * `Design and Engineering`
    #
    #   * `Digital Advertising`
    #
    #   * `Education`
    #
    #   * `Environmental Protection`
    #
    #   * `Financial Services`
    #
    #   * `Gaming`
    #
    #   * `General Public Services`
    #
    #   * `Healthcare`
    #
    #   * `Hospitality`
    #
    #   * `InfoTech`
    #
    #   * `Justice and Public Safety`
    #
    #   * `Life Sciences`
    #
    #   * `Manufacturing`
    #
    #   * `Media & Entertainment`
    #
    #   * `Mining & Resources`
    #
    #   * `Oil & Gas`
    #
    #   * `Power & Utilities`
    #
    #   * `Professional Services`
    #
    #   * `Real Estate & Construction`
    #
    #   * `Retail & Wholesale`
    #
    #   * `Social Protection`
    #
    #   * `Telecommunications`
    #
    #   * `Travel, Transportation & Logistics`
    #
    #   * `Other`
    #   @return [String]
    #
    # @!attribute [rw] industry
    #   The industry for the workload.
    #   @return [String]
    #
    # @!attribute [rw] lenses
    #   The list of lenses associated with the workload. Each lens is
    #   identified by its LensSummary$LensAlias.
    #   @return [Array<String>]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after the original request has completed successfully, the result of
    #   the original request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be associated with the workload.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] discovery_config
    #   Well-Architected discovery configuration settings associated to the
    #   workload.
    #   @return [Types::WorkloadDiscoveryConfig]
    #
    # @!attribute [rw] applications
    #   List of AppRegistry application ARNs associated to the workload.
    #   @return [Array<String>]
    #
    # @!attribute [rw] profile_arns
    #   The list of profile ARNs associated with the workload.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateWorkloadInput AWS API Documentation
    #
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
      :profile_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a create workload call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] workload_arn
    #   The ARN for the workload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateWorkloadOutput AWS API Documentation
    #
    class CreateWorkloadOutput < Struct.new(
      :workload_id,
      :workload_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for Create Workload Share
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] shared_with
    #   The Amazon Web Services account ID, IAM role, organization ID, or
    #   organizational unit (OU) ID with which the workload, lens, or
    #   profile is shared.
    #   @return [String]
    #
    # @!attribute [rw] permission_type
    #   Permission granted on a share request.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after the original request has completed successfully, the result of
    #   the original request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateWorkloadShareInput AWS API Documentation
    #
    class CreateWorkloadShareInput < Struct.new(
      :workload_id,
      :shared_with,
      :permission_type,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for Create Workload Share
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] share_id
    #   The ID associated with the share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateWorkloadShareOutput AWS API Documentation
    #
    class CreateWorkloadShareOutput < Struct.new(
      :workload_id,
      :share_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after the original request has completed successfully, the result of
    #   the original request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] lens_status
    #   The status of the lens to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteLensInput AWS API Documentation
    #
    class DeleteLensInput < Struct.new(
      :lens_alias,
      :client_request_token,
      :lens_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] share_id
    #   The ID associated with the share.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after the original request has completed successfully, the result of
    #   the original request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteLensShareInput AWS API Documentation
    #
    class DeleteLensShareInput < Struct.new(
      :share_id,
      :lens_alias,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_arn
    #   The profile ARN.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after the original request has completed successfully, the result of
    #   the original request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteProfileInput AWS API Documentation
    #
    class DeleteProfileInput < Struct.new(
      :profile_arn,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] share_id
    #   The ID associated with the share.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The profile ARN.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after the original request has completed successfully, the result of
    #   the original request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteProfileShareInput AWS API Documentation
    #
    class DeleteProfileShareInput < Struct.new(
      :share_id,
      :profile_arn,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for workload deletion.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after the original request has completed successfully, the result of
    #   the original request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteWorkloadInput AWS API Documentation
    #
    class DeleteWorkloadInput < Struct.new(
      :workload_id,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for Delete Workload Share
    #
    # @!attribute [rw] share_id
    #   The ID associated with the share.
    #   @return [String]
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after the original request has completed successfully, the result of
    #   the original request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteWorkloadShareInput AWS API Documentation
    #
    class DeleteWorkloadShareInput < Struct.new(
      :share_id,
      :workload_id,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to disassociate lens reviews.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_aliases
    #   List of lens aliases to associate or disassociate with a workload.
    #   Up to 10 lenses can be specified.
    #
    #   Identify a lens using its LensSummary$LensAlias.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DisassociateLensesInput AWS API Documentation
    #
    class DisassociateLensesInput < Struct.new(
      :workload_id,
      :lens_aliases)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] profile_arns
    #   The list of profile ARNs to disassociate from the workload.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DisassociateProfilesInput AWS API Documentation
    #
    class DisassociateProfilesInput < Struct.new(
      :workload_id,
      :profile_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] lens_version
    #   The lens version to be exported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ExportLensInput AWS API Documentation
    #
    class ExportLensInput < Struct.new(
      :lens_alias,
      :lens_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lens_json
    #   The JSON representation of a lens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ExportLensOutput AWS API Documentation
    #
    class ExportLensOutput < Struct.new(
      :lens_json)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to get answer.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetAnswerInput AWS API Documentation
    #
    class GetAnswerInput < Struct.new(
      :workload_id,
      :lens_alias,
      :question_id,
      :milestone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a get answer call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] lens_arn
    #   The ARN for the lens.
    #   @return [String]
    #
    # @!attribute [rw] answer
    #   An answer of the question.
    #   @return [Types::Answer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetAnswerOutput AWS API Documentation
    #
    class GetAnswerOutput < Struct.new(
      :workload_id,
      :milestone_number,
      :lens_alias,
      :lens_arn,
      :answer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] format
    #   The format of the consolidated report.
    #
    #   For `PDF`, `Base64String` is returned. For `JSON`, `Metrics` is
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] include_shared_resources
    #   Set to `true` to have shared resources included in the report.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetConsolidatedReportInput AWS API Documentation
    #
    class GetConsolidatedReportInput < Struct.new(
      :format,
      :include_shared_resources,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metrics
    #   The metrics that make up the consolidated report.
    #
    #   Only returned when `JSON` format is requested.
    #   @return [Array<Types::ConsolidatedReportMetric>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] base_64_string
    #   The Base64-encoded string representation of a lens review report.
    #
    #   This data can be used to create a PDF file.
    #
    #   Only returned by GetConsolidatedReport when `PDF` format is
    #   requested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetConsolidatedReportOutput AWS API Documentation
    #
    class GetConsolidatedReportOutput < Struct.new(
      :metrics,
      :next_token,
      :base_64_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] lens_version
    #   The lens version to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetLensInput AWS API Documentation
    #
    class GetLensInput < Struct.new(
      :lens_alias,
      :lens_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lens
    #   A lens return object.
    #   @return [Types::Lens]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetLensOutput AWS API Documentation
    #
    class GetLensOutput < Struct.new(
      :lens)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to get lens review.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetLensReviewInput AWS API Documentation
    #
    class GetLensReviewInput < Struct.new(
      :workload_id,
      :lens_alias,
      :milestone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a get lens review call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] lens_review
    #   A lens review of a question.
    #   @return [Types::LensReview]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetLensReviewOutput AWS API Documentation
    #
    class GetLensReviewOutput < Struct.new(
      :workload_id,
      :milestone_number,
      :lens_review)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to get lens review report.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetLensReviewReportInput AWS API Documentation
    #
    class GetLensReviewReportInput < Struct.new(
      :workload_id,
      :lens_alias,
      :milestone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a get lens review report call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] lens_review_report
    #   A report of a lens review.
    #   @return [Types::LensReviewReport]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetLensReviewReportOutput AWS API Documentation
    #
    class GetLensReviewReportOutput < Struct.new(
      :workload_id,
      :milestone_number,
      :lens_review_report)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] base_lens_version
    #   The base version of the lens.
    #   @return [String]
    #
    # @!attribute [rw] target_lens_version
    #   The lens version to target a difference for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetLensVersionDifferenceInput AWS API Documentation
    #
    class GetLensVersionDifferenceInput < Struct.new(
      :lens_alias,
      :base_lens_version,
      :target_lens_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] lens_arn
    #   The ARN for the lens.
    #   @return [String]
    #
    # @!attribute [rw] base_lens_version
    #   The base version of the lens.
    #   @return [String]
    #
    # @!attribute [rw] target_lens_version
    #   The target lens version for the lens.
    #   @return [String]
    #
    # @!attribute [rw] latest_lens_version
    #   The latest version of the lens.
    #   @return [String]
    #
    # @!attribute [rw] version_differences
    #   The differences between the base and latest versions of the lens.
    #   @return [Types::VersionDifferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetLensVersionDifferenceOutput AWS API Documentation
    #
    class GetLensVersionDifferenceOutput < Struct.new(
      :lens_alias,
      :lens_arn,
      :base_lens_version,
      :target_lens_version,
      :latest_lens_version,
      :version_differences)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to get a milestone.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetMilestoneInput AWS API Documentation
    #
    class GetMilestoneInput < Struct.new(
      :workload_id,
      :milestone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a get milestone call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone
    #   A milestone return object.
    #   @return [Types::Milestone]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetMilestoneOutput AWS API Documentation
    #
    class GetMilestoneOutput < Struct.new(
      :workload_id,
      :milestone)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_arn
    #   The profile ARN.
    #   @return [String]
    #
    # @!attribute [rw] profile_version
    #   The profile version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetProfileInput AWS API Documentation
    #
    class GetProfileInput < Struct.new(
      :profile_arn,
      :profile_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile
    #   The profile.
    #   @return [Types::Profile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetProfileOutput AWS API Documentation
    #
    class GetProfileOutput < Struct.new(
      :profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetProfileTemplateInput AWS API Documentation
    #
    class GetProfileTemplateInput < Aws::EmptyStructure; end

    # @!attribute [rw] profile_template
    #   The profile template.
    #   @return [Types::ProfileTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetProfileTemplateOutput AWS API Documentation
    #
    class GetProfileTemplateOutput < Struct.new(
      :profile_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to get a workload.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetWorkloadInput AWS API Documentation
    #
    class GetWorkloadInput < Struct.new(
      :workload_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a get workload call.
    #
    # @!attribute [rw] workload
    #   A workload return object.
    #   @return [Types::Workload]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetWorkloadOutput AWS API Documentation
    #
    class GetWorkloadOutput < Struct.new(
      :workload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] json_string
    #   The JSON representation of a lens.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after the original request has completed successfully, the result of
    #   the original request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate to a lens.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ImportLensInput AWS API Documentation
    #
    class ImportLensInput < Struct.new(
      :lens_alias,
      :json_string,
      :client_request_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lens_arn
    #   The ARN for the lens that was created or updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the imported lens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ImportLensOutput AWS API Documentation
    #
    class ImportLensOutput < Struct.new(
      :lens_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An improvement summary of a lens review in a workload.
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] question_title
    #   The title of the question.
    #   @return [String]
    #
    # @!attribute [rw] risk
    #   The risk for a given workload, lens review, pillar, or question.
    #   @return [String]
    #
    # @!attribute [rw] improvement_plan_url
    #   The improvement plan URL for a question in an Amazon Web Services
    #   official lenses.
    #
    #   This value is only available if the question has been answered.
    #
    #   This value does not apply to custom lenses.
    #   @return [String]
    #
    # @!attribute [rw] improvement_plans
    #   The improvement plan details.
    #   @return [Array<Types::ChoiceImprovementPlan>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ImprovementSummary AWS API Documentation
    #
    class ImprovementSummary < Struct.new(
      :question_id,
      :pillar_id,
      :question_title,
      :risk,
      :improvement_plan_url,
      :improvement_plans)
      SENSITIVE = []
      include Aws::Structure
    end

    # There is a problem with the Well-Architected Tool API service.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A lens return object.
    #
    # @!attribute [rw] lens_arn
    #   The ARN of a lens.
    #   @return [String]
    #
    # @!attribute [rw] lens_version
    #   The version of a lens.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The full name of the lens.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the lens.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The Amazon Web Services account ID that owns the lens.
    #   @return [String]
    #
    # @!attribute [rw] share_invitation_id
    #   The ID assigned to the share invitation.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the lens.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/Lens AWS API Documentation
    #
    class Lens < Struct.new(
      :lens_arn,
      :lens_version,
      :name,
      :description,
      :owner,
      :share_invitation_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A metric for a particular lens in a workload.
    #
    # @!attribute [rw] lens_arn
    #   The lens ARN.
    #   @return [String]
    #
    # @!attribute [rw] pillars
    #   The metrics for the pillars in a lens.
    #   @return [Array<Types::PillarMetric>]
    #
    # @!attribute [rw] risk_counts
    #   A map from risk names to the count of how many questions have that
    #   rating.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/LensMetric AWS API Documentation
    #
    class LensMetric < Struct.new(
      :lens_arn,
      :pillars,
      :risk_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # A lens review of a question.
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] lens_arn
    #   The ARN for the lens.
    #   @return [String]
    #
    # @!attribute [rw] lens_version
    #   The version of the lens.
    #   @return [String]
    #
    # @!attribute [rw] lens_name
    #   The full name of the lens.
    #   @return [String]
    #
    # @!attribute [rw] lens_status
    #   The status of the lens.
    #   @return [String]
    #
    # @!attribute [rw] pillar_review_summaries
    #   List of pillar review summaries of lens review in a workload.
    #   @return [Array<Types::PillarReviewSummary>]
    #
    # @!attribute [rw] updated_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #   @return [String]
    #
    # @!attribute [rw] risk_counts
    #   A map from risk names to the count of how many questions have that
    #   rating.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] profiles
    #   The profiles associated with the workload.
    #   @return [Array<Types::WorkloadProfile>]
    #
    # @!attribute [rw] prioritized_risk_counts
    #   A map from risk names to the count of how many questions have that
    #   rating.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/LensReview AWS API Documentation
    #
    class LensReview < Struct.new(
      :lens_alias,
      :lens_arn,
      :lens_version,
      :lens_name,
      :lens_status,
      :pillar_review_summaries,
      :updated_at,
      :notes,
      :risk_counts,
      :next_token,
      :profiles,
      :prioritized_risk_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # A report of a lens review.
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] lens_arn
    #   The ARN for the lens.
    #   @return [String]
    #
    # @!attribute [rw] base_64_string
    #   The Base64-encoded string representation of a lens review report.
    #
    #   This data can be used to create a PDF file.
    #
    #   Only returned by GetConsolidatedReport when `PDF` format is
    #   requested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/LensReviewReport AWS API Documentation
    #
    class LensReviewReport < Struct.new(
      :lens_alias,
      :lens_arn,
      :base_64_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # A lens review summary of a workload.
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] lens_arn
    #   The ARN for the lens.
    #   @return [String]
    #
    # @!attribute [rw] lens_version
    #   The version of the lens.
    #   @return [String]
    #
    # @!attribute [rw] lens_name
    #   The full name of the lens.
    #   @return [String]
    #
    # @!attribute [rw] lens_status
    #   The status of the lens.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] risk_counts
    #   A map from risk names to the count of how many questions have that
    #   rating.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] profiles
    #   The profiles associated with the workload.
    #   @return [Array<Types::WorkloadProfile>]
    #
    # @!attribute [rw] prioritized_risk_counts
    #   A map from risk names to the count of how many questions have that
    #   rating.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/LensReviewSummary AWS API Documentation
    #
    class LensReviewSummary < Struct.new(
      :lens_alias,
      :lens_arn,
      :lens_version,
      :lens_name,
      :lens_status,
      :updated_at,
      :risk_counts,
      :profiles,
      :prioritized_risk_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # A lens share summary return object.
    #
    # @!attribute [rw] share_id
    #   The ID associated with the share.
    #   @return [String]
    #
    # @!attribute [rw] shared_with
    #   The Amazon Web Services account ID, IAM role, organization ID, or
    #   organizational unit (OU) ID with which the workload, lens, or
    #   profile is shared.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the share request.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Optional message to compliment the Status field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/LensShareSummary AWS API Documentation
    #
    class LensShareSummary < Struct.new(
      :share_id,
      :shared_with,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A lens summary of a lens.
    #
    # @!attribute [rw] lens_arn
    #   The ARN of the lens.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] lens_name
    #   The full name of the lens.
    #   @return [String]
    #
    # @!attribute [rw] lens_type
    #   The type of the lens.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the lens.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] lens_version
    #   The version of the lens.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   An Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] lens_status
    #   The status of the lens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/LensSummary AWS API Documentation
    #
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
      :lens_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lens upgrade summary return object.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #
    #   The name must be unique within an account within an Amazon Web
    #   Services Region. Spaces and capitalization are ignored when checking
    #   for uniqueness.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] lens_arn
    #   The ARN for the lens.
    #   @return [String]
    #
    # @!attribute [rw] current_lens_version
    #   The current version of the lens.
    #   @return [String]
    #
    # @!attribute [rw] latest_lens_version
    #   The latest version of the lens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/LensUpgradeSummary AWS API Documentation
    #
    class LensUpgradeSummary < Struct.new(
      :workload_id,
      :workload_name,
      :lens_alias,
      :lens_arn,
      :current_lens_version,
      :latest_lens_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to list answers.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @!attribute [rw] question_priority
    #   The priority of the question.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListAnswersInput AWS API Documentation
    #
    class ListAnswersInput < Struct.new(
      :workload_id,
      :lens_alias,
      :pillar_id,
      :milestone_number,
      :next_token,
      :max_results,
      :question_priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a list answers call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] lens_arn
    #   The ARN for the lens.
    #   @return [String]
    #
    # @!attribute [rw] answer_summaries
    #   List of answer summaries of lens review in a workload.
    #   @return [Array<Types::AnswerSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListAnswersOutput AWS API Documentation
    #
    class ListAnswersOutput < Struct.new(
      :workload_id,
      :milestone_number,
      :lens_alias,
      :lens_arn,
      :answer_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @!attribute [rw] lens_arn
    #   Well-Architected Lens ARN.
    #   @return [String]
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] choice_id
    #   The ID of a choice.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListCheckDetailsInput AWS API Documentation
    #
    class ListCheckDetailsInput < Struct.new(
      :workload_id,
      :next_token,
      :max_results,
      :lens_arn,
      :pillar_id,
      :question_id,
      :choice_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] check_details
    #   The details about the Trusted Advisor checks related to the
    #   Well-Architected best practice.
    #   @return [Array<Types::CheckDetail>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListCheckDetailsOutput AWS API Documentation
    #
    class ListCheckDetailsOutput < Struct.new(
      :check_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @!attribute [rw] lens_arn
    #   Well-Architected Lens ARN.
    #   @return [String]
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] choice_id
    #   The ID of a choice.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListCheckSummariesInput AWS API Documentation
    #
    class ListCheckSummariesInput < Struct.new(
      :workload_id,
      :next_token,
      :max_results,
      :lens_arn,
      :pillar_id,
      :question_id,
      :choice_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] check_summaries
    #   List of Trusted Advisor summaries related to the Well-Architected
    #   best practice.
    #   @return [Array<Types::CheckSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListCheckSummariesOutput AWS API Documentation
    #
    class ListCheckSummariesOutput < Struct.new(
      :check_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to list lens review improvements.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @!attribute [rw] question_priority
    #   The priority of the question.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListLensReviewImprovementsInput AWS API Documentation
    #
    class ListLensReviewImprovementsInput < Struct.new(
      :workload_id,
      :lens_alias,
      :pillar_id,
      :milestone_number,
      :next_token,
      :max_results,
      :question_priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a list lens review improvements call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] lens_arn
    #   The ARN for the lens.
    #   @return [String]
    #
    # @!attribute [rw] improvement_summaries
    #   List of improvement summaries of lens review in a workload.
    #   @return [Array<Types::ImprovementSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListLensReviewImprovementsOutput AWS API Documentation
    #
    class ListLensReviewImprovementsOutput < Struct.new(
      :workload_id,
      :milestone_number,
      :lens_alias,
      :lens_arn,
      :improvement_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to list lens reviews.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListLensReviewsInput AWS API Documentation
    #
    class ListLensReviewsInput < Struct.new(
      :workload_id,
      :milestone_number,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a list lens reviews call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] lens_review_summaries
    #   List of lens summaries of lens reviews of a workload.
    #   @return [Array<Types::LensReviewSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListLensReviewsOutput AWS API Documentation
    #
    class ListLensReviewsOutput < Struct.new(
      :workload_id,
      :milestone_number,
      :lens_review_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] shared_with_prefix
    #   The Amazon Web Services account ID, IAM role, organization ID, or
    #   organizational unit (OU) ID with which the lens is shared.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the share request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListLensSharesInput AWS API Documentation
    #
    class ListLensSharesInput < Struct.new(
      :lens_alias,
      :shared_with_prefix,
      :next_token,
      :max_results,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lens_share_summaries
    #   A list of lens share summaries.
    #   @return [Array<Types::LensShareSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListLensSharesOutput AWS API Documentation
    #
    class ListLensSharesOutput < Struct.new(
      :lens_share_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to list lenses.
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @!attribute [rw] lens_type
    #   The type of lenses to be returned.
    #   @return [String]
    #
    # @!attribute [rw] lens_status
    #   The status of lenses to be returned.
    #   @return [String]
    #
    # @!attribute [rw] lens_name
    #   The full name of the lens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListLensesInput AWS API Documentation
    #
    class ListLensesInput < Struct.new(
      :next_token,
      :max_results,
      :lens_type,
      :lens_status,
      :lens_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a list lenses call.
    #
    # @!attribute [rw] lens_summaries
    #   List of lens summaries of available lenses.
    #   @return [Array<Types::LensSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListLensesOutput AWS API Documentation
    #
    class ListLensesOutput < Struct.new(
      :lens_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to list all milestones for a workload.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListMilestonesInput AWS API Documentation
    #
    class ListMilestonesInput < Struct.new(
      :workload_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a list milestones call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] milestone_summaries
    #   A list of milestone summaries.
    #   @return [Array<Types::MilestoneSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListMilestonesOutput AWS API Documentation
    #
    class ListMilestonesOutput < Struct.new(
      :workload_id,
      :milestone_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListNotificationsInput AWS API Documentation
    #
    class ListNotificationsInput < Struct.new(
      :workload_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notification_summaries
    #   List of lens notification summaries in a workload.
    #   @return [Array<Types::NotificationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListNotificationsOutput AWS API Documentation
    #
    class ListNotificationsOutput < Struct.new(
      :notification_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListProfileNotificationsInput AWS API Documentation
    #
    class ListProfileNotificationsInput < Struct.new(
      :workload_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notification_summaries
    #   Notification summaries.
    #   @return [Array<Types::ProfileNotificationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListProfileNotificationsOutput AWS API Documentation
    #
    class ListProfileNotificationsOutput < Struct.new(
      :notification_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_arn
    #   The profile ARN.
    #   @return [String]
    #
    # @!attribute [rw] shared_with_prefix
    #   The Amazon Web Services account ID, IAM role, organization ID, or
    #   organizational unit (OU) ID with which the profile is shared.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the share request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListProfileSharesInput AWS API Documentation
    #
    class ListProfileSharesInput < Struct.new(
      :profile_arn,
      :shared_with_prefix,
      :next_token,
      :max_results,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_share_summaries
    #   Profile share summaries.
    #   @return [Array<Types::ProfileShareSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListProfileSharesOutput AWS API Documentation
    #
    class ListProfileSharesOutput < Struct.new(
      :profile_share_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_name_prefix
    #   Prefix for profile name.
    #   @return [String]
    #
    # @!attribute [rw] profile_owner_type
    #   Profile owner type.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListProfilesInput AWS API Documentation
    #
    class ListProfilesInput < Struct.new(
      :profile_name_prefix,
      :profile_owner_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_summaries
    #   Profile summaries.
    #   @return [Array<Types::ProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListProfilesOutput AWS API Documentation
    #
    class ListProfilesOutput < Struct.new(
      :profile_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for List Share Invitations
    #
    # @!attribute [rw] workload_name_prefix
    #   An optional string added to the beginning of each workload name
    #   returned in the results.
    #   @return [String]
    #
    # @!attribute [rw] lens_name_prefix
    #   An optional string added to the beginning of each lens name returned
    #   in the results.
    #   @return [String]
    #
    # @!attribute [rw] share_resource_type
    #   The type of share invitations to be returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @!attribute [rw] profile_name_prefix
    #   Profile name prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListShareInvitationsInput AWS API Documentation
    #
    class ListShareInvitationsInput < Struct.new(
      :workload_name_prefix,
      :lens_name_prefix,
      :share_resource_type,
      :next_token,
      :max_results,
      :profile_name_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for List Share Invitations
    #
    # @!attribute [rw] share_invitation_summaries
    #   List of share invitation summaries in a workload.
    #   @return [Array<Types::ShareInvitationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListShareInvitationsOutput AWS API Documentation
    #
    class ListShareInvitationsOutput < Struct.new(
      :share_invitation_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_arn
    #   The ARN for the workload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :workload_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for List Workload Share
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] shared_with_prefix
    #   The Amazon Web Services account ID, IAM role, organization ID, or
    #   organizational unit (OU) ID with which the workload is shared.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the share request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListWorkloadSharesInput AWS API Documentation
    #
    class ListWorkloadSharesInput < Struct.new(
      :workload_id,
      :shared_with_prefix,
      :next_token,
      :max_results,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for List Workload Share
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] workload_share_summaries
    #   A list of workload share summaries.
    #   @return [Array<Types::WorkloadShareSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListWorkloadSharesOutput AWS API Documentation
    #
    class ListWorkloadSharesOutput < Struct.new(
      :workload_id,
      :workload_share_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to list all workloads.
    #
    # @!attribute [rw] workload_name_prefix
    #   An optional string added to the beginning of each workload name
    #   returned in the results.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListWorkloadsInput AWS API Documentation
    #
    class ListWorkloadsInput < Struct.new(
      :workload_name_prefix,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a list workloads call.
    #
    # @!attribute [rw] workload_summaries
    #   A list of workload summaries.
    #   @return [Array<Types::WorkloadSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListWorkloadsOutput AWS API Documentation
    #
    class ListWorkloadsOutput < Struct.new(
      :workload_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A milestone return object.
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] milestone_name
    #   The name of the milestone in a workload.
    #
    #   Milestone names must be unique within a workload.
    #   @return [String]
    #
    # @!attribute [rw] recorded_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] workload
    #   A workload return object.
    #   @return [Types::Workload]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/Milestone AWS API Documentation
    #
    class Milestone < Struct.new(
      :milestone_number,
      :milestone_name,
      :recorded_at,
      :workload)
      SENSITIVE = []
      include Aws::Structure
    end

    # A milestone summary return object.
    #
    # @!attribute [rw] milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #   @return [Integer]
    #
    # @!attribute [rw] milestone_name
    #   The name of the milestone in a workload.
    #
    #   Milestone names must be unique within a workload.
    #   @return [String]
    #
    # @!attribute [rw] recorded_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] workload_summary
    #   A workload summary return object.
    #   @return [Types::WorkloadSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/MilestoneSummary AWS API Documentation
    #
    class MilestoneSummary < Struct.new(
      :milestone_number,
      :milestone_name,
      :recorded_at,
      :workload_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # A notification summary return object.
    #
    # @!attribute [rw] type
    #   The type of notification.
    #   @return [String]
    #
    # @!attribute [rw] lens_upgrade_summary
    #   Summary of lens upgrade.
    #   @return [Types::LensUpgradeSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/NotificationSummary AWS API Documentation
    #
    class NotificationSummary < Struct.new(
      :type,
      :lens_upgrade_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # A pillar difference return object.
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] pillar_name
    #   The name of the pillar.
    #   @return [String]
    #
    # @!attribute [rw] difference_status
    #   Indicates the type of change to the pillar.
    #   @return [String]
    #
    # @!attribute [rw] question_differences
    #   List of question differences.
    #   @return [Array<Types::QuestionDifference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/PillarDifference AWS API Documentation
    #
    class PillarDifference < Struct.new(
      :pillar_id,
      :pillar_name,
      :difference_status,
      :question_differences)
      SENSITIVE = []
      include Aws::Structure
    end

    # A metric for a particular pillar in a lens.
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] risk_counts
    #   A map from risk names to the count of how many questions have that
    #   rating.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] questions
    #   The questions that have been identified as risks in the pillar.
    #   @return [Array<Types::QuestionMetric>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/PillarMetric AWS API Documentation
    #
    class PillarMetric < Struct.new(
      :pillar_id,
      :risk_counts,
      :questions)
      SENSITIVE = []
      include Aws::Structure
    end

    # A pillar review summary of a lens review.
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] pillar_name
    #   The name of the pillar.
    #   @return [String]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #   @return [String]
    #
    # @!attribute [rw] risk_counts
    #   A map from risk names to the count of how many questions have that
    #   rating.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] prioritized_risk_counts
    #   A map from risk names to the count of how many questions have that
    #   rating.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/PillarReviewSummary AWS API Documentation
    #
    class PillarReviewSummary < Struct.new(
      :pillar_id,
      :pillar_name,
      :notes,
      :risk_counts,
      :prioritized_risk_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # A profile.
    #
    # @!attribute [rw] profile_arn
    #   The profile ARN.
    #   @return [String]
    #
    # @!attribute [rw] profile_version
    #   The profile version.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   The profile name.
    #   @return [String]
    #
    # @!attribute [rw] profile_description
    #   The profile description.
    #   @return [String]
    #
    # @!attribute [rw] profile_questions
    #   Profile questions.
    #   @return [Array<Types::ProfileQuestion>]
    #
    # @!attribute [rw] owner
    #   An Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] share_invitation_id
    #   The ID assigned to the share invitation.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the profile.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/Profile AWS API Documentation
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The profile choice.
    #
    # @!attribute [rw] choice_id
    #   The ID of a choice.
    #   @return [String]
    #
    # @!attribute [rw] choice_title
    #   The title of a choice.
    #   @return [String]
    #
    # @!attribute [rw] choice_description
    #   The description of a choice.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ProfileChoice AWS API Documentation
    #
    class ProfileChoice < Struct.new(
      :choice_id,
      :choice_title,
      :choice_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The profile notification summary.
    #
    # @!attribute [rw] current_profile_version
    #   The current profile version.
    #   @return [String]
    #
    # @!attribute [rw] latest_profile_version
    #   The latest profile version.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of notification.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The profile ARN.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   The profile name.
    #   @return [String]
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #
    #   The name must be unique within an account within an Amazon Web
    #   Services Region. Spaces and capitalization are ignored when checking
    #   for uniqueness.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ProfileNotificationSummary AWS API Documentation
    #
    class ProfileNotificationSummary < Struct.new(
      :current_profile_version,
      :latest_profile_version,
      :type,
      :profile_arn,
      :profile_name,
      :workload_id,
      :workload_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A profile question.
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] question_title
    #   The title of the question.
    #   @return [String]
    #
    # @!attribute [rw] question_description
    #   The description of the question.
    #   @return [String]
    #
    # @!attribute [rw] question_choices
    #   The question choices.
    #   @return [Array<Types::ProfileChoice>]
    #
    # @!attribute [rw] selected_choice_ids
    #   The selected choices.
    #   @return [Array<String>]
    #
    # @!attribute [rw] min_selected_choices
    #   The minimum number of selected choices.
    #   @return [Integer]
    #
    # @!attribute [rw] max_selected_choices
    #   The maximum number of selected choices.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ProfileQuestion AWS API Documentation
    #
    class ProfileQuestion < Struct.new(
      :question_id,
      :question_title,
      :question_description,
      :question_choices,
      :selected_choice_ids,
      :min_selected_choices,
      :max_selected_choices)
      SENSITIVE = []
      include Aws::Structure
    end

    # An update to a profile question.
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] selected_choice_ids
    #   The selected choices.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ProfileQuestionUpdate AWS API Documentation
    #
    class ProfileQuestionUpdate < Struct.new(
      :question_id,
      :selected_choice_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a profile share.
    #
    # @!attribute [rw] share_id
    #   The ID associated with the share.
    #   @return [String]
    #
    # @!attribute [rw] shared_with
    #   The Amazon Web Services account ID, IAM role, organization ID, or
    #   organizational unit (OU) ID with which the workload, lens, or
    #   profile is shared.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the share request.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Profile share invitation status message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ProfileShareSummary AWS API Documentation
    #
    class ProfileShareSummary < Struct.new(
      :share_id,
      :shared_with,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a profile.
    #
    # @!attribute [rw] profile_arn
    #   The profile ARN.
    #   @return [String]
    #
    # @!attribute [rw] profile_version
    #   The profile version.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   The profile name.
    #   @return [String]
    #
    # @!attribute [rw] profile_description
    #   The profile description.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   An Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ProfileSummary AWS API Documentation
    #
    class ProfileSummary < Struct.new(
      :profile_arn,
      :profile_version,
      :profile_name,
      :profile_description,
      :owner,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The profile template.
    #
    # @!attribute [rw] template_name
    #   The name of the profile template.
    #   @return [String]
    #
    # @!attribute [rw] template_questions
    #   Profile template questions.
    #   @return [Array<Types::ProfileTemplateQuestion>]
    #
    # @!attribute [rw] created_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ProfileTemplate AWS API Documentation
    #
    class ProfileTemplate < Struct.new(
      :template_name,
      :template_questions,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A profile template choice.
    #
    # @!attribute [rw] choice_id
    #   The ID of a choice.
    #   @return [String]
    #
    # @!attribute [rw] choice_title
    #   The title of a choice.
    #   @return [String]
    #
    # @!attribute [rw] choice_description
    #   The description of a choice.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ProfileTemplateChoice AWS API Documentation
    #
    class ProfileTemplateChoice < Struct.new(
      :choice_id,
      :choice_title,
      :choice_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A profile template question.
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] question_title
    #   The title of the question.
    #   @return [String]
    #
    # @!attribute [rw] question_description
    #   The description of the question.
    #   @return [String]
    #
    # @!attribute [rw] question_choices
    #   The question choices.
    #   @return [Array<Types::ProfileTemplateChoice>]
    #
    # @!attribute [rw] min_selected_choices
    #   The minimum number of choices selected.
    #   @return [Integer]
    #
    # @!attribute [rw] max_selected_choices
    #   The maximum number of choices selected.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ProfileTemplateQuestion AWS API Documentation
    #
    class ProfileTemplateQuestion < Struct.new(
      :question_id,
      :question_title,
      :question_description,
      :question_choices,
      :min_selected_choices,
      :max_selected_choices)
      SENSITIVE = []
      include Aws::Structure
    end

    # A question difference return object.
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] question_title
    #   The title of the question.
    #   @return [String]
    #
    # @!attribute [rw] difference_status
    #   Indicates the type of change to the question.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/QuestionDifference AWS API Documentation
    #
    class QuestionDifference < Struct.new(
      :question_id,
      :question_title,
      :difference_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A metric for a particular question in the pillar.
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] risk
    #   The risk for a given workload, lens review, pillar, or question.
    #   @return [String]
    #
    # @!attribute [rw] best_practices
    #   The best practices, or choices, that have been identified as
    #   contributing to risk in a question.
    #   @return [Array<Types::BestPractice>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/QuestionMetric AWS API Documentation
    #
    class QuestionMetric < Struct.new(
      :question_id,
      :risk,
      :best_practices)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource was not found.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource affected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user has reached their resource quota.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Service Quotas requirement to identify originating quota.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Service Quotas requirement to identify originating service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The share invitation.
    #
    # @!attribute [rw] share_invitation_id
    #   The ID assigned to the share invitation.
    #   @return [String]
    #
    # @!attribute [rw] share_resource_type
    #   The resource type of the share invitation.
    #   @return [String]
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] lens_arn
    #   The ARN for the lens.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The profile ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ShareInvitation AWS API Documentation
    #
    class ShareInvitation < Struct.new(
      :share_invitation_id,
      :share_resource_type,
      :workload_id,
      :lens_alias,
      :lens_arn,
      :profile_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A share invitation summary return object.
    #
    # @!attribute [rw] share_invitation_id
    #   The ID assigned to the share invitation.
    #   @return [String]
    #
    # @!attribute [rw] shared_by
    #   An Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] shared_with
    #   The Amazon Web Services account ID, IAM role, organization ID, or
    #   organizational unit (OU) ID with which the workload, lens, or
    #   profile is shared.
    #   @return [String]
    #
    # @!attribute [rw] permission_type
    #   Permission granted on a share request.
    #   @return [String]
    #
    # @!attribute [rw] share_resource_type
    #   The resource type of the share invitation.
    #   @return [String]
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #
    #   The name must be unique within an account within an Amazon Web
    #   Services Region. Spaces and capitalization are ignored when checking
    #   for uniqueness.
    #   @return [String]
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_name
    #   The full name of the lens.
    #   @return [String]
    #
    # @!attribute [rw] lens_arn
    #   The ARN for the lens.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   The profile name.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The profile ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ShareInvitationSummary AWS API Documentation
    #
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
      :profile_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_arn
    #   The ARN for the workload.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :workload_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # Request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Service Quotas requirement to identify originating quota.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Service Quotas requirement to identify originating service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_arn
    #   The ARN for the workload.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys. Existing tags of the resource whose keys are
    #   members of this list are removed from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :workload_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # Input to update answer.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] question_id
    #   The ID of the question.
    #   @return [String]
    #
    # @!attribute [rw] selected_choices
    #   List of selected choice IDs in a question answer.
    #
    #   The values entered replace the previously selected choices.
    #   @return [Array<String>]
    #
    # @!attribute [rw] choice_updates
    #   A list of choices to update on a question in your workload. The
    #   String key corresponds to the choice ID to be updated.
    #   @return [Hash<String,Types::ChoiceUpdate>]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #   @return [String]
    #
    # @!attribute [rw] is_applicable
    #   Defines whether this question is applicable to a lens review.
    #   @return [Boolean]
    #
    # @!attribute [rw] reason
    #   The reason why a question is not applicable to your workload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateAnswerInput AWS API Documentation
    #
    class UpdateAnswerInput < Struct.new(
      :workload_id,
      :lens_alias,
      :question_id,
      :selected_choices,
      :choice_updates,
      :notes,
      :is_applicable,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a update answer call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] lens_arn
    #   The ARN for the lens.
    #   @return [String]
    #
    # @!attribute [rw] answer
    #   An answer of the question.
    #   @return [Types::Answer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateAnswerOutput AWS API Documentation
    #
    class UpdateAnswerOutput < Struct.new(
      :workload_id,
      :lens_alias,
      :lens_arn,
      :answer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_sharing_status
    #   The status of organization sharing settings.
    #   @return [String]
    #
    # @!attribute [rw] discovery_integration_status
    #   The status of discovery support settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateGlobalSettingsInput AWS API Documentation
    #
    class UpdateGlobalSettingsInput < Struct.new(
      :organization_sharing_status,
      :discovery_integration_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for update lens review.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] lens_notes
    #   The notes associated with the workload.
    #   @return [String]
    #
    # @!attribute [rw] pillar_notes
    #   List of pillar notes of a lens review in a workload.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateLensReviewInput AWS API Documentation
    #
    class UpdateLensReviewInput < Struct.new(
      :workload_id,
      :lens_alias,
      :lens_notes,
      :pillar_notes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of a update lens review call.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_review
    #   A lens review of a question.
    #   @return [Types::LensReview]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateLensReviewOutput AWS API Documentation
    #
    class UpdateLensReviewOutput < Struct.new(
      :workload_id,
      :lens_review)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_arn
    #   The profile ARN.
    #   @return [String]
    #
    # @!attribute [rw] profile_description
    #   The profile description.
    #   @return [String]
    #
    # @!attribute [rw] profile_questions
    #   Profile questions.
    #   @return [Array<Types::ProfileQuestionUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateProfileInput AWS API Documentation
    #
    class UpdateProfileInput < Struct.new(
      :profile_arn,
      :profile_description,
      :profile_questions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile
    #   The profile.
    #   @return [Types::Profile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateProfileOutput AWS API Documentation
    #
    class UpdateProfileOutput < Struct.new(
      :profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for Update Share Invitation
    #
    # @!attribute [rw] share_invitation_id
    #   The ID assigned to the share invitation.
    #   @return [String]
    #
    # @!attribute [rw] share_invitation_action
    #   Share invitation action taken by contributor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateShareInvitationInput AWS API Documentation
    #
    class UpdateShareInvitationInput < Struct.new(
      :share_invitation_id,
      :share_invitation_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] share_invitation
    #   The updated workload or custom lens share invitation.
    #   @return [Types::ShareInvitation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateShareInvitationOutput AWS API Documentation
    #
    class UpdateShareInvitationOutput < Struct.new(
      :share_invitation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to update a workload.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #
    #   The name must be unique within an account within an Amazon Web
    #   Services Region. Spaces and capitalization are ignored when checking
    #   for uniqueness.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the workload.
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The environment for the workload.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   The list of Amazon Web Services account IDs associated with the
    #   workload.
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_regions
    #   The list of Amazon Web Services Regions associated with the
    #   workload, for example, `us-east-2`, or `ca-central-1`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] non_aws_regions
    #   The list of non-Amazon Web Services Regions associated with the
    #   workload.
    #   @return [Array<String>]
    #
    # @!attribute [rw] pillar_priorities
    #   The priorities of the pillars, which are used to order items in the
    #   improvement plan. Each pillar is represented by its
    #   PillarReviewSummary$PillarId.
    #   @return [Array<String>]
    #
    # @!attribute [rw] architectural_design
    #   The URL of the architectural design for the workload.
    #   @return [String]
    #
    # @!attribute [rw] review_owner
    #   The review owner of the workload. The name, email address, or
    #   identifier for the primary group or individual that owns the
    #   workload review process.
    #   @return [String]
    #
    # @!attribute [rw] is_review_owner_update_acknowledged
    #   Flag indicating whether the workload owner has acknowledged that the
    #   *Review owner* field is required.
    #
    #   If a **Review owner** is not added to the workload within 60 days of
    #   acknowledgement, access to the workload is restricted until an owner
    #   is added.
    #   @return [Boolean]
    #
    # @!attribute [rw] industry_type
    #   The industry type for the workload.
    #
    #   If specified, must be one of the following:
    #
    #   * `Agriculture`
    #
    #   * `Automobile`
    #
    #   * `Defense`
    #
    #   * `Design and Engineering`
    #
    #   * `Digital Advertising`
    #
    #   * `Education`
    #
    #   * `Environmental Protection`
    #
    #   * `Financial Services`
    #
    #   * `Gaming`
    #
    #   * `General Public Services`
    #
    #   * `Healthcare`
    #
    #   * `Hospitality`
    #
    #   * `InfoTech`
    #
    #   * `Justice and Public Safety`
    #
    #   * `Life Sciences`
    #
    #   * `Manufacturing`
    #
    #   * `Media & Entertainment`
    #
    #   * `Mining & Resources`
    #
    #   * `Oil & Gas`
    #
    #   * `Power & Utilities`
    #
    #   * `Professional Services`
    #
    #   * `Real Estate & Construction`
    #
    #   * `Retail & Wholesale`
    #
    #   * `Social Protection`
    #
    #   * `Telecommunications`
    #
    #   * `Travel, Transportation & Logistics`
    #
    #   * `Other`
    #   @return [String]
    #
    # @!attribute [rw] industry
    #   The industry for the workload.
    #   @return [String]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #   @return [String]
    #
    # @!attribute [rw] improvement_status
    #   The improvement status for a workload.
    #   @return [String]
    #
    # @!attribute [rw] discovery_config
    #   Well-Architected discovery configuration settings to associate to
    #   the workload.
    #   @return [Types::WorkloadDiscoveryConfig]
    #
    # @!attribute [rw] applications
    #   List of AppRegistry application ARNs to associate to the workload.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateWorkloadInput AWS API Documentation
    #
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
      :applications)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of an update workload call.
    #
    # @!attribute [rw] workload
    #   A workload return object.
    #   @return [Types::Workload]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateWorkloadOutput AWS API Documentation
    #
    class UpdateWorkloadOutput < Struct.new(
      :workload)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for Update Workload Share
    #
    # @!attribute [rw] share_id
    #   The ID associated with the share.
    #   @return [String]
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] permission_type
    #   Permission granted on a share request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateWorkloadShareInput AWS API Documentation
    #
    class UpdateWorkloadShareInput < Struct.new(
      :share_id,
      :workload_id,
      :permission_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for Update Workload Share
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] workload_share
    #   A workload share return object.
    #   @return [Types::WorkloadShare]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateWorkloadShareOutput AWS API Documentation
    #
    class UpdateWorkloadShareOutput < Struct.new(
      :workload_id,
      :workload_share)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] lens_alias
    #   The alias of the lens.
    #
    #   For Amazon Web Services official lenses, this is either the lens
    #   alias, such as `serverless`, or the lens ARN, such as
    #   `arn:aws:wellarchitected:us-east-1::lens/serverless`. Note that some
    #   operations (such as ExportLens and CreateLensShare) are not
    #   permitted on Amazon Web Services official lenses.
    #
    #   For custom lenses, this is the lens ARN, such as
    #   `arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #   @return [String]
    #
    # @!attribute [rw] milestone_name
    #   The name of the milestone in a workload.
    #
    #   Milestone names must be unique within a workload.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after the original request has completed successfully, the result of
    #   the original request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpgradeLensReviewInput AWS API Documentation
    #
    class UpgradeLensReviewInput < Struct.new(
      :workload_id,
      :lens_alias,
      :milestone_name,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The profile ARN.
    #   @return [String]
    #
    # @!attribute [rw] milestone_name
    #   The name of the milestone in a workload.
    #
    #   Milestone names must be unique within a workload.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry
    #   a request with the same client request token and the same parameters
    #   after the original request has completed successfully, the result of
    #   the original request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpgradeProfileVersionInput AWS API Documentation
    #
    class UpgradeProfileVersionInput < Struct.new(
      :workload_id,
      :profile_arn,
      :milestone_name,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user input is not valid.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason why the request failed validation.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The fields that caused the error, if applicable.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stores information about a field passed inside a request that resulted
    # in an exception.
    #
    # @!attribute [rw] name
    #   The field name for which validation failed.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The differences between the base and latest versions of the lens.
    #
    # @!attribute [rw] pillar_differences
    #   The differences between the base and latest versions of the lens.
    #   @return [Array<Types::PillarDifference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/VersionDifferences AWS API Documentation
    #
    class VersionDifferences < Struct.new(
      :pillar_differences)
      SENSITIVE = []
      include Aws::Structure
    end

    # A workload return object.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] workload_arn
    #   The ARN for the workload.
    #   @return [String]
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #
    #   The name must be unique within an account within an Amazon Web
    #   Services Region. Spaces and capitalization are ignored when checking
    #   for uniqueness.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the workload.
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The environment for the workload.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] account_ids
    #   The list of Amazon Web Services account IDs associated with the
    #   workload.
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_regions
    #   The list of Amazon Web Services Regions associated with the
    #   workload, for example, `us-east-2`, or `ca-central-1`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] non_aws_regions
    #   The list of non-Amazon Web Services Regions associated with the
    #   workload.
    #   @return [Array<String>]
    #
    # @!attribute [rw] architectural_design
    #   The URL of the architectural design for the workload.
    #   @return [String]
    #
    # @!attribute [rw] review_owner
    #   The review owner of the workload. The name, email address, or
    #   identifier for the primary group or individual that owns the
    #   workload review process.
    #   @return [String]
    #
    # @!attribute [rw] review_restriction_date
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] is_review_owner_update_acknowledged
    #   Flag indicating whether the workload owner has acknowledged that the
    #   *Review owner* field is required.
    #
    #   If a **Review owner** is not added to the workload within 60 days of
    #   acknowledgement, access to the workload is restricted until an owner
    #   is added.
    #   @return [Boolean]
    #
    # @!attribute [rw] industry_type
    #   The industry type for the workload.
    #
    #   If specified, must be one of the following:
    #
    #   * `Agriculture`
    #
    #   * `Automobile`
    #
    #   * `Defense`
    #
    #   * `Design and Engineering`
    #
    #   * `Digital Advertising`
    #
    #   * `Education`
    #
    #   * `Environmental Protection`
    #
    #   * `Financial Services`
    #
    #   * `Gaming`
    #
    #   * `General Public Services`
    #
    #   * `Healthcare`
    #
    #   * `Hospitality`
    #
    #   * `InfoTech`
    #
    #   * `Justice and Public Safety`
    #
    #   * `Life Sciences`
    #
    #   * `Manufacturing`
    #
    #   * `Media & Entertainment`
    #
    #   * `Mining & Resources`
    #
    #   * `Oil & Gas`
    #
    #   * `Power & Utilities`
    #
    #   * `Professional Services`
    #
    #   * `Real Estate & Construction`
    #
    #   * `Retail & Wholesale`
    #
    #   * `Social Protection`
    #
    #   * `Telecommunications`
    #
    #   * `Travel, Transportation & Logistics`
    #
    #   * `Other`
    #   @return [String]
    #
    # @!attribute [rw] industry
    #   The industry for the workload.
    #   @return [String]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #   @return [String]
    #
    # @!attribute [rw] improvement_status
    #   The improvement status for a workload.
    #   @return [String]
    #
    # @!attribute [rw] risk_counts
    #   A map from risk names to the count of how many questions have that
    #   rating.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] pillar_priorities
    #   The priorities of the pillars, which are used to order items in the
    #   improvement plan. Each pillar is represented by its
    #   PillarReviewSummary$PillarId.
    #   @return [Array<String>]
    #
    # @!attribute [rw] lenses
    #   The list of lenses associated with the workload. Each lens is
    #   identified by its LensSummary$LensAlias.
    #   @return [Array<String>]
    #
    # @!attribute [rw] owner
    #   An Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] share_invitation_id
    #   The ID assigned to the share invitation.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the workload.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] discovery_config
    #   Discovery configuration associated to the workload.
    #   @return [Types::WorkloadDiscoveryConfig]
    #
    # @!attribute [rw] applications
    #   List of AppRegistry application ARNs associated to the workload.
    #   @return [Array<String>]
    #
    # @!attribute [rw] profiles
    #   Profile associated with a workload.
    #   @return [Array<Types::WorkloadProfile>]
    #
    # @!attribute [rw] prioritized_risk_counts
    #   A map from risk names to the count of how many questions have that
    #   rating.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/Workload AWS API Documentation
    #
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
      :prioritized_risk_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Discovery configuration associated to the workload.
    #
    # @!attribute [rw] trusted_advisor_integration_status
    #   Discovery integration status in respect to Trusted Advisor for the
    #   workload.
    #   @return [String]
    #
    # @!attribute [rw] workload_resource_definition
    #   The mode to use for identifying resources associated with the
    #   workload.
    #
    #   You can specify `WORKLOAD_METADATA`, `APP_REGISTRY`, or both.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/WorkloadDiscoveryConfig AWS API Documentation
    #
    class WorkloadDiscoveryConfig < Struct.new(
      :trusted_advisor_integration_status,
      :workload_resource_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # The profile associated with a workload.
    #
    # @!attribute [rw] profile_arn
    #   The profile ARN.
    #   @return [String]
    #
    # @!attribute [rw] profile_version
    #   The profile version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/WorkloadProfile AWS API Documentation
    #
    class WorkloadProfile < Struct.new(
      :profile_arn,
      :profile_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A workload share return object.
    #
    # @!attribute [rw] share_id
    #   The ID associated with the share.
    #   @return [String]
    #
    # @!attribute [rw] shared_by
    #   An Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] shared_with
    #   The Amazon Web Services account ID, IAM role, organization ID, or
    #   organizational unit (OU) ID with which the workload, lens, or
    #   profile is shared.
    #   @return [String]
    #
    # @!attribute [rw] permission_type
    #   Permission granted on a share request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the share request.
    #   @return [String]
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #
    #   The name must be unique within an account within an Amazon Web
    #   Services Region. Spaces and capitalization are ignored when checking
    #   for uniqueness.
    #   @return [String]
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/WorkloadShare AWS API Documentation
    #
    class WorkloadShare < Struct.new(
      :share_id,
      :shared_by,
      :shared_with,
      :permission_type,
      :status,
      :workload_name,
      :workload_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A workload share summary return object.
    #
    # @!attribute [rw] share_id
    #   The ID associated with the share.
    #   @return [String]
    #
    # @!attribute [rw] shared_with
    #   The Amazon Web Services account ID, IAM role, organization ID, or
    #   organizational unit (OU) ID with which the workload, lens, or
    #   profile is shared.
    #   @return [String]
    #
    # @!attribute [rw] permission_type
    #   Permission granted on a share request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the share request.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Optional message to compliment the Status field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/WorkloadShareSummary AWS API Documentation
    #
    class WorkloadShareSummary < Struct.new(
      :share_id,
      :shared_with,
      :permission_type,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A workload summary return object.
    #
    # @!attribute [rw] workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] workload_arn
    #   The ARN for the workload.
    #   @return [String]
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #
    #   The name must be unique within an account within an Amazon Web
    #   Services Region. Spaces and capitalization are ignored when checking
    #   for uniqueness.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   An Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time recorded.
    #   @return [Time]
    #
    # @!attribute [rw] lenses
    #   The list of lenses associated with the workload. Each lens is
    #   identified by its LensSummary$LensAlias.
    #   @return [Array<String>]
    #
    # @!attribute [rw] risk_counts
    #   A map from risk names to the count of how many questions have that
    #   rating.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] improvement_status
    #   The improvement status for a workload.
    #   @return [String]
    #
    # @!attribute [rw] profiles
    #   Profile associated with a workload.
    #   @return [Array<Types::WorkloadProfile>]
    #
    # @!attribute [rw] prioritized_risk_counts
    #   A map from risk names to the count of how many questions have that
    #   rating.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/WorkloadSummary AWS API Documentation
    #
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
      :prioritized_risk_counts)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
