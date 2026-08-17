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

    # Account-level: Input for the Jira configuration.
    #
    # @!attribute [rw] issue_management_status
    #   Account-level: Jira issue management status.
    #   @return [String]
    #
    # @!attribute [rw] issue_management_type
    #   Account-level: Jira issue management type.
    #   @return [String]
    #
    # @!attribute [rw] jira_project_key
    #   Account-level: Jira project key to sync workloads to.
    #   @return [String]
    #
    # @!attribute [rw] integration_status
    #   Account-level: Configuration status of the Jira integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/AccountJiraConfigurationInput AWS API Documentation
    #
    class AccountJiraConfigurationInput < Struct.new(
      :issue_management_status,
      :issue_management_type,
      :jira_project_key,
      :integration_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Account-level: Output configuration of the Jira integration.
    #
    # @!attribute [rw] integration_status
    #   Account-level: Configuration status of the Jira integration.
    #   @return [String]
    #
    # @!attribute [rw] issue_management_status
    #   Account-level: Jira issue management status.
    #   @return [String]
    #
    # @!attribute [rw] issue_management_type
    #   Account-level: Jira issue management type.
    #   @return [String]
    #
    # @!attribute [rw] subdomain
    #   Account-level: Jira subdomain URL.
    #   @return [String]
    #
    # @!attribute [rw] jira_project_key
    #   Account-level: Jira project key to sync workloads to.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Account-level: Status message on configuration of the Jira
    #   integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/AccountJiraConfigurationOutput AWS API Documentation
    #
    class AccountJiraConfigurationOutput < Struct.new(
      :integration_status,
      :issue_management_status,
      :issue_management_type,
      :subdomain,
      :jira_project_key,
      :status_message)
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

    # Summary of an optimization profile, including its configuration,
    # metadata, and audit information.
    #
    # @!attribute [rw] name
    #   The system name of the profile.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the profile shown to users.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the profile.
    #   @return [String]
    #
    # @!attribute [rw] business_overview
    #   The business overview for this profile.
    #   @return [String]
    #
    # @!attribute [rw] pillars
    #   The Well-Architected Tool Framework pillars associated with this
    #   profile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] deletion_protection
    #   Indicates whether deletion protection is enabled for the profile.
    #   @return [Boolean]
    #
    # @!attribute [rw] execution_role_arn
    #   The ARN of the IAM execution role used for recommendation actions.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_configuration
    #   The aggregation configuration that defines which Amazon Web Services
    #   accounts and Regions to analyze.
    #   @return [Array<Types::AggregationConfiguration>]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the optimization profile.
    #   @return [String]
    #
    # @!attribute [rw] eligible_for_scheduled_generation
    #   Indicates whether the profile is valid for scheduled recommendation
    #   generation.
    #   @return [Boolean]
    #
    # @!attribute [rw] eligible_for_architecture_generation
    #   Indicates whether the profile is valid for manual architecture
    #   generation.
    #   @return [Boolean]
    #
    # @!attribute [rw] field_errors
    #   A map of field paths to error messages for invalid or missing input
    #   fields.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   The tags associated with the profile.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_by
    #   The identifier of the user or system that created this profile.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The identifier of the user or system that last modified this
    #   profile.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The timestamp when the profile was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/AgentProfileSummary AWS API Documentation
    #
    class AgentProfileSummary < Struct.new(
      :name,
      :display_name,
      :description,
      :business_overview,
      :pillars,
      :deletion_protection,
      :execution_role_arn,
      :aggregation_configuration,
      :arn,
      :eligible_for_scheduled_generation,
      :eligible_for_architecture_generation,
      :field_errors,
      :tags,
      :created_by,
      :created_at,
      :last_modified_by,
      :last_modified_at)
      SENSITIVE = [:display_name, :description, :business_overview]
      include Aws::Structure
    end

    # Summary of a recommendation generation process initiated through the
    # agent API.
    #
    # @!attribute [rw] id
    #   The unique identifier of the recommendation generation.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the profile used for this
    #   generation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the recommendation generation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the recommendation generation.
    #   @return [String]
    #
    # @!attribute [rw] estimated_completion_time
    #   The estimated time for the generation to complete.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The identifier of the user or system that started this generation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the generation was started.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The identifier of the user or system that last modified this
    #   generation.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The timestamp when the generation was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/AgentRecommendationGenerationSummary AWS API Documentation
    #
    class AgentRecommendationGenerationSummary < Struct.new(
      :id,
      :profile_arn,
      :name,
      :status,
      :estimated_completion_time,
      :created_by,
      :created_at,
      :last_modified_by,
      :last_modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of an agent recommendation item, representing an Amazon Web
    # Services resource or recommendation affected by the optimization
    # recommendation.
    #
    # @!attribute [rw] id
    #   The unique identifier of the recommendation item.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_arn
    #   The Amazon Resource Name (ARN) of the associated recommendation.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the recommendation item.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Metadata containing a snapshot of the resource or recommendation at
    #   the time of generation.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] created_by
    #   The identifier of the user or system that created this
    #   recommendation item.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the recommendation item was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The identifier of the user or system that last modified this
    #   recommendation item.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The timestamp when the recommendation item was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/AgentRecommendationItemSummary AWS API Documentation
    #
    class AgentRecommendationItemSummary < Struct.new(
      :id,
      :recommendation_arn,
      :type,
      :metadata,
      :created_by,
      :created_at,
      :last_modified_by,
      :last_modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The core fields for a remediation.
    #
    # @!attribute [rw] recommendation_arn
    #   The ARN of the recommendation that this remediation belongs to.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The remediation method.
    #   @return [String]
    #
    # @!attribute [rw] steps
    #   The procedural steps to perform the remediation.
    #   @return [Array<Types::RemediationStep>]
    #
    # @!attribute [rw] resource_links
    #   External references associated with the steps.
    #   @return [Array<Types::ResourceLink>]
    #
    # @!attribute [rw] created_by
    #   The identifier of the user or system that created this remediation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the remediation was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The identifier of the user or system that last modified this
    #   remediation.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The timestamp when the remediation was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/AgentRecommendationRemediation AWS API Documentation
    #
    class AgentRecommendationRemediation < Struct.new(
      :recommendation_arn,
      :type,
      :steps,
      :resource_links,
      :created_by,
      :created_at,
      :last_modified_by,
      :last_modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of an agent optimization recommendation returned by list
    # operations.
    #
    # @!attribute [rw] recommendation_arn
    #   The Amazon Resource Name (ARN) of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the associated profile.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] pillar
    #   The Well-Architected Tool Framework pillar that the recommendation
    #   addresses.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] effort
    #   The effort required to implement the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] update_reason
    #   The free-text reason associated with the recommendation's most
    #   recent status update.
    #   @return [String]
    #
    # @!attribute [rw] impact
    #   The severity of the recommendation's impact.
    #   @return [String]
    #
    # @!attribute [rw] roi
    #   The return on investment estimate for the recommendation.
    #   @return [Types::Roi]
    #
    # @!attribute [rw] number_of_resources
    #   The number of Amazon Web Services resources this recommendation
    #   affects.
    #   @return [Integer]
    #
    # @!attribute [rw] aws_services
    #   The Amazon Web Services services that the recommendation applies to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] business_units
    #   The business units that own the affected resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] applications
    #   The applications that the recommendation targets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_by
    #   The identifier of the user or system that created this
    #   recommendation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the recommendation was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The identifier of the user or system that last modified this
    #   recommendation.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The timestamp when the recommendation was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/AgentRecommendationSummary AWS API Documentation
    #
    class AgentRecommendationSummary < Struct.new(
      :recommendation_arn,
      :profile_arn,
      :title,
      :description,
      :type,
      :pillar,
      :priority,
      :effort,
      :status,
      :state,
      :update_reason,
      :impact,
      :roi,
      :number_of_resources,
      :aws_services,
      :business_units,
      :applications,
      :created_by,
      :created_at,
      :last_modified_by,
      :last_modified_at)
      SENSITIVE = [:title, :description, :update_reason]
      include Aws::Structure
    end

    # Configuration settings that define the scope of Amazon Web Services
    # resources to analyze for optimization recommendations.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID to analyze.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   A list of Amazon Web Services Regions to include in the analysis.
    #   @return [Array<String>]
    #
    # @!attribute [rw] access_role_arn
    #   The ARN of an IAM role to assume for resource analysis in this
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/AggregationConfiguration AWS API Documentation
    #
    class AggregationConfiguration < Struct.new(
      :account_id,
      :regions,
      :access_role_arn)
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
    #
    #   For a review template, these are the notes that will be associated
    #   with the workload when the template is applied.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason why the question is not applicable to your workload.
    #   @return [String]
    #
    # @!attribute [rw] jira_configuration
    #   Configuration of the Jira integration.
    #   @return [Types::JiraConfiguration]
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
      :reason,
      :jira_configuration)
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
    # @!attribute [rw] jira_configuration
    #   Configuration of the Jira integration.
    #   @return [Types::JiraConfiguration]
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
      :question_type,
      :jira_configuration)
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
    #   The date and time when the check was last updated.
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
    #   The date and time when the check summary was last updated.
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
    # This value is only applicable to custom lenses.
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
    #   The date and time when the consolidated report metric was last
    #   updated.
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

    # Typed content structure for a context. Contains application-specific
    # fields that describe the environment used during recommendation
    # generation.
    #
    # @!attribute [rw] account_ids
    #   The Amazon Web Services account IDs associated with this application
    #   context.
    #   @return [Array<String>]
    #
    # @!attribute [rw] regions
    #   The Amazon Web Services Regions where this application operates.
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_services
    #   The Amazon Web Services services used by this application.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_types
    #   The Amazon Web Services resource types relevant to this application.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_tags
    #   Resource tags used to scope this application context.
    #   @return [Array<Types::ContextResourceTag>]
    #
    # @!attribute [rw] application_overview
    #   A free-form overview of the application.
    #   @return [String]
    #
    # @!attribute [rw] industry
    #   The industry vertical for this application.
    #   @return [String]
    #
    # @!attribute [rw] application_type
    #   The type of the application.
    #   @return [String]
    #
    # @!attribute [rw] criticality
    #   The business criticality of the application.
    #   @return [String]
    #
    # @!attribute [rw] architecture_overview
    #   A free-form description of the application architecture.
    #   @return [String]
    #
    # @!attribute [rw] additional_context
    #   Additional context not captured by other fields.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ContextContent AWS API Documentation
    #
    class ContextContent < Struct.new(
      :account_ids,
      :regions,
      :aws_services,
      :resource_types,
      :resource_tags,
      :application_overview,
      :industry,
      :application_type,
      :criticality,
      :architecture_overview,
      :additional_context)
      SENSITIVE = [:application_overview, :industry, :architecture_overview, :additional_context]
      include Aws::Structure
    end

    # A key-value pair representing a resource tag used to scope context
    # content.
    #
    # @!attribute [rw] key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ContextResourceTag AWS API Documentation
    #
    class ContextResourceTag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a context associated with a profile, representing
    # application or environment information used during recommendation
    # generation.
    #
    # @!attribute [rw] id
    #   The unique identifier of the context.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the associated profile.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the context.
    #   @return [String]
    #
    # @!attribute [rw] context_type
    #   The type of the context.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The typed content of the context, containing application-specific
    #   fields such as account IDs, Regions, services, and resource types.
    #   @return [Types::ContextContent]
    #
    # @!attribute [rw] application_type
    #   The type of application described by this context.
    #   @return [String]
    #
    # @!attribute [rw] criticality
    #   The business criticality of the application described by this
    #   context.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The identifier of the user or system that created this context.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the context was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The identifier of the user or system that last modified this
    #   context.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The timestamp when the context was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ContextSummary AWS API Documentation
    #
    class ContextSummary < Struct.new(
      :id,
      :profile_arn,
      :title,
      :context_type,
      :content,
      :application_type,
      :criticality,
      :created_by,
      :created_at,
      :last_modified_by,
      :last_modified_at)
      SENSITIVE = [:title]
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the profile to associate the
    #   context with.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the context.
    #   @return [String]
    #
    # @!attribute [rw] context_type
    #   The type of the context.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The typed content of the context. The structure contains
    #   application-specific fields such as account IDs, Regions, services,
    #   and resource types.
    #   @return [Types::ContextContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateAgentContextRequest AWS API Documentation
    #
    class CreateAgentContextRequest < Struct.new(
      :client_token,
      :profile_arn,
      :title,
      :context_type,
      :content)
      SENSITIVE = [:title]
      include Aws::Structure
    end

    # @!attribute [rw] context
    #   The created context summary.
    #   @return [Types::ContextSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateAgentContextResponse AWS API Documentation
    #
    class CreateAgentContextResponse < Struct.new(
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the profile to associate the goal
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] pillars
    #   The Well-Architected Tool Framework pillars to associate with this
    #   goal.
    #   @return [Array<String>]
    #
    # @!attribute [rw] title
    #   The title of the goal.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the goal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateAgentGoalRequest AWS API Documentation
    #
    class CreateAgentGoalRequest < Struct.new(
      :client_token,
      :profile_arn,
      :pillars,
      :title,
      :description)
      SENSITIVE = [:title, :description]
      include Aws::Structure
    end

    # @!attribute [rw] goal
    #   The created goal summary.
    #   @return [Types::GoalSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateAgentGoalResponse AWS API Documentation
    #
    class CreateAgentGoalResponse < Struct.new(
      :goal)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The system name of the profile.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the profile shown to users.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the profile.
    #   @return [String]
    #
    # @!attribute [rw] business_overview
    #   The business overview for this profile.
    #   @return [String]
    #
    # @!attribute [rw] pillars
    #   The Well-Architected Tool Framework pillars to associate with this
    #   profile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] deletion_protection
    #   Indicates whether deletion protection is enabled for the profile.
    #   @return [Boolean]
    #
    # @!attribute [rw] execution_role_arn
    #   The ARN of the IAM execution role used for recommendation actions.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_configuration
    #   The aggregation configuration that defines which Amazon Web Services
    #   accounts and Regions to analyze.
    #   @return [Array<Types::AggregationConfiguration>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the profile.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateAgentProfileRequest AWS API Documentation
    #
    class CreateAgentProfileRequest < Struct.new(
      :name,
      :display_name,
      :description,
      :business_overview,
      :pillars,
      :deletion_protection,
      :execution_role_arn,
      :aggregation_configuration,
      :client_token,
      :tags)
      SENSITIVE = [:display_name, :description, :business_overview]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The system name of the created profile.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the created profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the created profile.
    #   @return [String]
    #
    # @!attribute [rw] business_overview
    #   The business overview of the created profile.
    #   @return [String]
    #
    # @!attribute [rw] pillars
    #   The Well-Architected Tool Framework pillars associated with the
    #   created profile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] deletion_protection
    #   Indicates whether deletion protection is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] execution_role_arn
    #   The ARN of the IAM execution role.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_configuration
    #   The aggregation configuration.
    #   @return [Array<Types::AggregationConfiguration>]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the created profile.
    #   @return [String]
    #
    # @!attribute [rw] eligible_for_scheduled_generation
    #   Indicates whether the profile is valid for scheduled recommendation
    #   generation.
    #   @return [Boolean]
    #
    # @!attribute [rw] eligible_for_architecture_generation
    #   Indicates whether the profile is valid for manual architecture
    #   generation.
    #   @return [Boolean]
    #
    # @!attribute [rw] field_errors
    #   A map of field paths to error messages for invalid or missing input
    #   fields.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   The tags associated with the created profile.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_by
    #   The identifier of the user or system that created this profile.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The identifier of the user or system that last modified this
    #   profile.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The timestamp when the profile was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateAgentProfileResponse AWS API Documentation
    #
    class CreateAgentProfileResponse < Struct.new(
      :name,
      :display_name,
      :description,
      :business_overview,
      :pillars,
      :deletion_protection,
      :execution_role_arn,
      :aggregation_configuration,
      :arn,
      :eligible_for_scheduled_generation,
      :eligible_for_architecture_generation,
      :field_errors,
      :tags,
      :created_by,
      :created_at,
      :last_modified_by,
      :last_modified_at)
      SENSITIVE = [:display_name, :description, :business_overview]
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
    #   The Amazon Web Services account ID, organization ID, or
    #   organizational unit (OU) ID with which the workload, lens, profile,
    #   or review template is shared.
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
    #   The Amazon Web Services account ID, organization ID, or
    #   organizational unit (OU) ID with which the workload, lens, profile,
    #   or review template is shared.
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

    # @!attribute [rw] template_name
    #   Name of the review template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The review template description.
    #   @return [String]
    #
    # @!attribute [rw] lenses
    #   Lenses applied to the review template.
    #   @return [Array<String>]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #
    #   For a review template, these are the notes that will be associated
    #   with the workload when the template is applied.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the review template.
    #   @return [Hash<String,String>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateReviewTemplateInput AWS API Documentation
    #
    class CreateReviewTemplateInput < Struct.new(
      :template_name,
      :description,
      :lenses,
      :notes,
      :tags,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_arn
    #   The review template ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateReviewTemplateOutput AWS API Documentation
    #
    class CreateReviewTemplateOutput < Struct.new(
      :template_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_arn
    #   The review template ARN.
    #   @return [String]
    #
    # @!attribute [rw] shared_with
    #   The Amazon Web Services account ID, organization ID, or
    #   organizational unit (OU) ID with which the workload, lens, profile,
    #   or review template is shared.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateTemplateShareInput AWS API Documentation
    #
    class CreateTemplateShareInput < Struct.new(
      :template_arn,
      :shared_with,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_arn
    #   The review template ARN.
    #   @return [String]
    #
    # @!attribute [rw] share_id
    #   The ID associated with the share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateTemplateShareOutput AWS API Documentation
    #
    class CreateTemplateShareOutput < Struct.new(
      :template_arn,
      :share_id)
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
    #
    #   If a review template that specifies lenses is applied to the
    #   workload, those lenses are applied to the workload in addition to
    #   these lenses.
    #   @return [Array<String>]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #
    #   For a review template, these are the notes that will be associated
    #   with the workload when the template is applied.
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
    # @!attribute [rw] review_template_arns
    #   The list of review template ARNs to associate with the workload.
    #   @return [Array<String>]
    #
    # @!attribute [rw] jira_configuration
    #   Jira configuration settings when creating a workload.
    #   @return [Types::WorkloadJiraConfigurationInput]
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
      :profile_arns,
      :review_template_arns,
      :jira_configuration)
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
    #   The Amazon Web Services account ID, organization ID, or
    #   organizational unit (OU) ID with which the workload, lens, profile,
    #   or review template is shared.
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

    # A benefit on a different pillar from acting on the recommendation.
    #
    # @!attribute [rw] pillar
    #   The pillar that would be positively impacted.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A short phrase describing the outcome.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of what changes and why it matters.
    #   @return [String]
    #
    # @!attribute [rw] impact
    #   The severity of the benefit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CrossPillarBenefit AWS API Documentation
    #
    class CrossPillarBenefit < Struct.new(
      :pillar,
      :title,
      :description,
      :impact)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the profile containing the
    #   context.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the context to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteAgentContextRequest AWS API Documentation
    #
    class DeleteAgentContextRequest < Struct.new(
      :profile_arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteAgentContextResponse AWS API Documentation
    #
    class DeleteAgentContextResponse < Aws::EmptyStructure; end

    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the profile containing the goal.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the goal to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteAgentGoalRequest AWS API Documentation
    #
    class DeleteAgentGoalRequest < Struct.new(
      :profile_arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteAgentGoalResponse AWS API Documentation
    #
    class DeleteAgentGoalResponse < Aws::EmptyStructure; end

    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the profile to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteAgentProfileRequest AWS API Documentation
    #
    class DeleteAgentProfileRequest < Struct.new(
      :profile_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteAgentProfileResponse AWS API Documentation
    #
    class DeleteAgentProfileResponse < Aws::EmptyStructure; end

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

    # @!attribute [rw] template_arn
    #   The review template ARN.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteReviewTemplateInput AWS API Documentation
    #
    class DeleteReviewTemplateInput < Struct.new(
      :template_arn,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] share_id
    #   The ID associated with the share.
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The review template ARN.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteTemplateShareInput AWS API Documentation
    #
    class DeleteTemplateShareInput < Struct.new(
      :share_id,
      :template_arn,
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

    # Details about an error that occurred during recommendation generation.
    #
    # @!attribute [rw] code
    #   The status code identifying the type of error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A human-readable description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ErrorDetails AWS API Documentation
    #
    class ErrorDetails < Struct.new(
      :code,
      :message)
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

    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the profile containing the
    #   context.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the context to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetAgentContextRequest AWS API Documentation
    #
    class GetAgentContextRequest < Struct.new(
      :profile_arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] context
    #   The retrieved context summary.
    #   @return [Types::ContextSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetAgentContextResponse AWS API Documentation
    #
    class GetAgentContextResponse < Struct.new(
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the profile containing the goal.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the goal to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetAgentGoalRequest AWS API Documentation
    #
    class GetAgentGoalRequest < Struct.new(
      :profile_arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] goal
    #   The retrieved goal summary.
    #   @return [Types::GoalSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetAgentGoalResponse AWS API Documentation
    #
    class GetAgentGoalResponse < Struct.new(
      :goal)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the optimization profile to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetAgentProfileRequest AWS API Documentation
    #
    class GetAgentProfileRequest < Struct.new(
      :profile_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The system name of the profile.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the profile.
    #   @return [String]
    #
    # @!attribute [rw] business_overview
    #   The business overview of the profile.
    #   @return [String]
    #
    # @!attribute [rw] pillars
    #   The Well-Architected Tool Framework pillars associated with the
    #   profile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] deletion_protection
    #   Indicates whether deletion protection is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] execution_role_arn
    #   The ARN of the IAM execution role.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_configuration
    #   The aggregation configuration.
    #   @return [Array<Types::AggregationConfiguration>]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the profile.
    #   @return [String]
    #
    # @!attribute [rw] eligible_for_scheduled_generation
    #   Indicates whether the profile is valid for scheduled recommendation
    #   generation.
    #   @return [Boolean]
    #
    # @!attribute [rw] eligible_for_architecture_generation
    #   Indicates whether the profile is valid for manual architecture
    #   generation.
    #   @return [Boolean]
    #
    # @!attribute [rw] field_errors
    #   A map of field paths to error messages for invalid or missing input
    #   fields.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   The tags associated with the profile.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_by
    #   The identifier of the user or system that created this profile.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The identifier of the user or system that last modified this
    #   profile.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The timestamp when the profile was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetAgentProfileResponse AWS API Documentation
    #
    class GetAgentProfileResponse < Struct.new(
      :name,
      :display_name,
      :description,
      :business_overview,
      :pillars,
      :deletion_protection,
      :execution_role_arn,
      :aggregation_configuration,
      :arn,
      :eligible_for_scheduled_generation,
      :eligible_for_architecture_generation,
      :field_errors,
      :tags,
      :created_by,
      :created_at,
      :last_modified_by,
      :last_modified_at)
      SENSITIVE = [:display_name, :description, :business_overview]
      include Aws::Structure
    end

    # @!attribute [rw] profile_arn
    #   The ARN of the optimization profile associated with this generation.
    #   @return [String]
    #
    # @!attribute [rw] generation_id
    #   The unique identifier of the recommendation generation to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetAgentRecommendationGenerationRequest AWS API Documentation
    #
    class GetAgentRecommendationGenerationRequest < Struct.new(
      :profile_arn,
      :generation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the recommendation generation.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the profile used for this
    #   generation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the recommendation generation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the recommendation generation.
    #   @return [String]
    #
    # @!attribute [rw] estimated_completion_time
    #   The estimated time for the generation to complete.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The identifier of the user or system that started this generation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the generation was started.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The identifier of the user or system that last modified this
    #   generation.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The timestamp when the generation was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] additional_context
    #   Additional context information provided to guide the recommendation
    #   generation process.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] scope
    #   The scope configuration that defines which pillars and goals to
    #   focus on during generation.
    #   @return [Types::Scope]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the recommendation generation process started.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The timestamp when the recommendation generation process completed.
    #   @return [Time]
    #
    # @!attribute [rw] progress
    #   Current progress information including steps completed and
    #   completion percentage.
    #   @return [Types::Progress]
    #
    # @!attribute [rw] error_details
    #   Details about the error if the generation status is ERROR.
    #   @return [Types::ErrorDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetAgentRecommendationGenerationResponse AWS API Documentation
    #
    class GetAgentRecommendationGenerationResponse < Struct.new(
      :id,
      :profile_arn,
      :name,
      :status,
      :estimated_completion_time,
      :created_by,
      :created_at,
      :last_modified_by,
      :last_modified_at,
      :additional_context,
      :scope,
      :started_at,
      :ended_at,
      :progress,
      :error_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_arn
    #   The Amazon Resource Name (ARN) of the recommendation to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] remediation_type
    #   Optional filter on remediation type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetAgentRecommendationRequest AWS API Documentation
    #
    class GetAgentRecommendationRequest < Struct.new(
      :recommendation_arn,
      :remediation_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_arn
    #   The Amazon Resource Name (ARN) of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the associated profile.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] pillar
    #   The Well-Architected Tool Framework pillar that the recommendation
    #   addresses.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] effort
    #   The effort required to implement the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] update_reason
    #   The free-text reason associated with the recommendation's most
    #   recent status update.
    #   @return [String]
    #
    # @!attribute [rw] impact
    #   The severity of the recommendation's impact.
    #   @return [String]
    #
    # @!attribute [rw] roi
    #   The return on investment estimate for the recommendation.
    #   @return [Types::Roi]
    #
    # @!attribute [rw] number_of_resources
    #   The number of Amazon Web Services resources this recommendation
    #   affects.
    #   @return [Integer]
    #
    # @!attribute [rw] aws_services
    #   The Amazon Web Services services that the recommendation applies to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] business_units
    #   The business units that own the affected resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] applications
    #   The applications that the recommendation targets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] impact_details
    #   Detailed impact information for the recommendation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] insights
    #   A list of insights about the recommendation.
    #   @return [Array<Types::Insight>]
    #
    # @!attribute [rw] highlights
    #   Highlights describing what was detected.
    #   @return [Array<String>]
    #
    # @!attribute [rw] remediation_summary
    #   A high-level summary of the recommended remediation.
    #   @return [Types::RemediationSummary]
    #
    # @!attribute [rw] cross_pillar_benefits
    #   Cross-pillar benefits of acting on the recommendation.
    #   @return [Array<Types::CrossPillarBenefit>]
    #
    # @!attribute [rw] trade_offs
    #   Trade-offs of acting on the recommendation.
    #   @return [Array<Types::TradeOff>]
    #
    # @!attribute [rw] sources
    #   Sources that generated this recommendation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] goals
    #   Goals that this recommendation targets.
    #   @return [Array<Types::RecommendationGoal>]
    #
    # @!attribute [rw] tags
    #   A set of key-value pairs associated with the recommendation, used
    #   for cost allocation and access control.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_by
    #   The identifier of the user or system that created this
    #   recommendation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the recommendation was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The identifier of the user or system that last modified this
    #   recommendation.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The timestamp when the recommendation was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] remediations
    #   A list of remediations for the recommendation.
    #   @return [Array<Types::AgentRecommendationRemediation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetAgentRecommendationResponse AWS API Documentation
    #
    class GetAgentRecommendationResponse < Struct.new(
      :recommendation_arn,
      :profile_arn,
      :title,
      :description,
      :type,
      :pillar,
      :priority,
      :effort,
      :status,
      :state,
      :update_reason,
      :impact,
      :roi,
      :number_of_resources,
      :aws_services,
      :business_units,
      :applications,
      :impact_details,
      :insights,
      :highlights,
      :remediation_summary,
      :cross_pillar_benefits,
      :trade_offs,
      :sources,
      :goals,
      :tags,
      :created_by,
      :created_at,
      :last_modified_by,
      :last_modified_at,
      :remediations)
      SENSITIVE = [:title, :description, :update_reason]
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

    # @!attribute [rw] organization_sharing_status
    #   Amazon Web Services Organizations sharing status.
    #   @return [String]
    #
    # @!attribute [rw] discovery_integration_status
    #   Discovery integration status.
    #   @return [String]
    #
    # @!attribute [rw] jira_configuration
    #   Jira configuration status.
    #   @return [Types::AccountJiraConfigurationOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetGlobalSettingsOutput AWS API Documentation
    #
    class GetGlobalSettingsOutput < Struct.new(
      :organization_sharing_status,
      :discovery_integration_status,
      :jira_configuration)
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

    # @!attribute [rw] template_arn
    #   The review template ARN.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetReviewTemplateAnswerInput AWS API Documentation
    #
    class GetReviewTemplateAnswerInput < Struct.new(
      :template_arn,
      :lens_alias,
      :question_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_arn
    #   The review template ARN.
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
    # @!attribute [rw] answer
    #   An answer of the question.
    #   @return [Types::ReviewTemplateAnswer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetReviewTemplateAnswerOutput AWS API Documentation
    #
    class GetReviewTemplateAnswerOutput < Struct.new(
      :template_arn,
      :lens_alias,
      :answer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_arn
    #   The review template ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetReviewTemplateInput AWS API Documentation
    #
    class GetReviewTemplateInput < Struct.new(
      :template_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_arn
    #   The review template ARN.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetReviewTemplateLensReviewInput AWS API Documentation
    #
    class GetReviewTemplateLensReviewInput < Struct.new(
      :template_arn,
      :lens_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_arn
    #   The review template ARN.
    #   @return [String]
    #
    # @!attribute [rw] lens_review
    #   A lens review of a question.
    #   @return [Types::ReviewTemplateLensReview]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetReviewTemplateLensReviewOutput AWS API Documentation
    #
    class GetReviewTemplateLensReviewOutput < Struct.new(
      :template_arn,
      :lens_review)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] review_template
    #   The review template.
    #   @return [Types::ReviewTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetReviewTemplateOutput AWS API Documentation
    #
    class GetReviewTemplateOutput < Struct.new(
      :review_template)
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

    # Summary of an optimization goal associated with a profile.
    #
    # @!attribute [rw] id
    #   The unique identifier of the goal.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the associated profile.
    #   @return [String]
    #
    # @!attribute [rw] pillars
    #   The Well-Architected Tool Framework pillars associated with this
    #   goal.
    #   @return [Array<String>]
    #
    # @!attribute [rw] title
    #   The title of the goal.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the goal.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The identifier of the user or system that created this goal.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the goal was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The identifier of the user or system that last modified this goal.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The timestamp when the goal was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GoalSummary AWS API Documentation
    #
    class GoalSummary < Struct.new(
      :id,
      :profile_arn,
      :pillars,
      :title,
      :description,
      :created_by,
      :created_at,
      :last_modified_by,
      :last_modified_at)
      SENSITIVE = [:title, :description]
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
    #   @return [String]
    #
    # @!attribute [rw] improvement_plans
    #   The improvement plan details.
    #
    #   This value is only applicable to custom lenses.
    #   @return [Array<Types::ChoiceImprovementPlan>]
    #
    # @!attribute [rw] jira_configuration
    #   Configuration of the Jira integration.
    #   @return [Types::JiraConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ImprovementSummary AWS API Documentation
    #
    class ImprovementSummary < Struct.new(
      :question_id,
      :pillar_id,
      :question_title,
      :risk,
      :improvement_plan_url,
      :improvement_plans,
      :jira_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # An insight describing a usage pattern and the signals detected.
    #
    # @!attribute [rw] usage_pattern
    #   A description of the usage pattern.
    #   @return [String]
    #
    # @!attribute [rw] signals_detected
    #   A description of the signals detected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/Insight AWS API Documentation
    #
    class Insight < Struct.new(
      :usage_pattern,
      :signals_detected)
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

    # Configuration of the Jira integration.
    #
    # @!attribute [rw] jira_issue_url
    #   The URL of the associated Jira issue.
    #   @return [String]
    #
    # @!attribute [rw] last_synced_time
    #   The date and time when the Jira configuration was last synced.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/JiraConfiguration AWS API Documentation
    #
    class JiraConfiguration < Struct.new(
      :jira_issue_url,
      :last_synced_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Selected questions in the workload.
    #
    # @!attribute [rw] selected_pillars
    #   Selected pillars in the workload.
    #   @return [Array<Types::SelectedPillar>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/JiraSelectedQuestionConfiguration AWS API Documentation
    #
    class JiraSelectedQuestionConfiguration < Struct.new(
      :selected_pillars)
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
    # @!attribute [rw] jira_configuration
    #   Jira configuration status of the Lens review.
    #   @return [Types::JiraSelectedQuestionConfiguration]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the lens review was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #
    #   For a review template, these are the notes that will be associated
    #   with the workload when the template is applied.
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
      :jira_configuration,
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
    #   The date and time when the lens review was last updated.
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
    #   The Amazon Web Services account ID, organization ID, or
    #   organizational unit (OU) ID with which the workload, lens, profile,
    #   or review template is shared.
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
    #   The date and time when the lens was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the lens was last updated.
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
    # @!attribute [rw] resource_arn
    #   `ResourceArn` of the lens being upgraded
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the workload.
    #
    #   The name must be unique within an account within an Amazon Web
    #   Services Region. Spaces and capitalization are ignored when checking
    #   for uniqueness.
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
      :latest_lens_version,
      :resource_arn,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the profile to list contexts for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListAgentContextsRequest AWS API Documentation
    #
    class ListAgentContextsRequest < Struct.new(
      :profile_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of context summaries associated with the profile.
    #   @return [Array<Types::ContextSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListAgentContextsResponse AWS API Documentation
    #
    class ListAgentContextsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the optimization profile to list
    #   goals for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of goals to return in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned from a previous call to continue
    #   retrieving results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListAgentGoalsRequest AWS API Documentation
    #
    class ListAgentGoalsRequest < Struct.new(
      :profile_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of goal summaries associated with the profile.
    #   @return [Array<Types::GoalSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to retrieve the next set of results, if
    #   available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListAgentGoalsResponse AWS API Documentation
    #
    class ListAgentGoalsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of profiles to return in a single call. Default
    #   is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned from a previous call to continue
    #   retrieving results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListAgentProfilesRequest AWS API Documentation
    #
    class ListAgentProfilesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of profile summaries.
    #   @return [Array<Types::AgentProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to retrieve the next set of results, if
    #   available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListAgentProfilesResponse AWS API Documentation
    #
    class ListAgentProfilesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the optimization profile to list
    #   generation processes for.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_type
    #   Optional filter by recommendation type.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of generation processes to return in a single
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned from a previous call to continue
    #   retrieving results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListAgentRecommendationGenerationsRequest AWS API Documentation
    #
    class ListAgentRecommendationGenerationsRequest < Struct.new(
      :profile_arn,
      :recommendation_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of recommendation generation summaries.
    #   @return [Array<Types::AgentRecommendationGenerationSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to retrieve the next set of results, if
    #   available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListAgentRecommendationGenerationsResponse AWS API Documentation
    #
    class ListAgentRecommendationGenerationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_arn
    #   The Amazon Resource Name (ARN) of the recommendation to list items
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Optional filter to return only recommendation items of the specified
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of recommendation items to return in a single
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned from a previous call to continue
    #   retrieving results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListAgentRecommendationItemsRequest AWS API Documentation
    #
    class ListAgentRecommendationItemsRequest < Struct.new(
      :recommendation_arn,
      :type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of recommendation items with their detailed metadata and
    #   configuration information.
    #   @return [Array<Types::AgentRecommendationItemSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to retrieve the next set of results, if
    #   available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListAgentRecommendationItemsResponse AWS API Documentation
    #
    class ListAgentRecommendationItemsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the optimization profile to list
    #   recommendations for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of recommendations to return in a single
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned from a previous call to continue
    #   retrieving results.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Optional filter to return only recommendations with the specified
    #   state (OPEN or CLOSED).
    #   @return [String]
    #
    # @!attribute [rw] pillar
    #   Optional filter to return only recommendations for the specified
    #   pillar.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListAgentRecommendationsRequest AWS API Documentation
    #
    class ListAgentRecommendationsRequest < Struct.new(
      :profile_arn,
      :max_results,
      :next_token,
      :state,
      :pillar)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of recommendation summaries.
    #   @return [Array<Types::AgentRecommendationSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to retrieve the next set of results, if
    #   available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListAgentRecommendationsResponse AWS API Documentation
    #
    class ListAgentRecommendationsResponse < Struct.new(
      :items,
      :next_token)
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
    #   The Amazon Web Services account ID, organization ID, or
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
    # @!attribute [rw] resource_arn
    #   The ARN for the related resource for the notification.
    #
    #   <note markdown="1"> Only one of `WorkloadID` or `ResourceARN` should be specified.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListNotificationsInput AWS API Documentation
    #
    class ListNotificationsInput < Struct.new(
      :workload_id,
      :next_token,
      :max_results,
      :resource_arn)
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
    #   The Amazon Web Services account ID, organization ID, or
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
    #   An optional string added to the beginning of each profile name
    #   returned in the results.
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

    # @!attribute [rw] template_arn
    #   The ARN of the review template.
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
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListReviewTemplateAnswersInput AWS API Documentation
    #
    class ListReviewTemplateAnswersInput < Struct.new(
      :template_arn,
      :lens_alias,
      :pillar_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_arn
    #   The ARN of the review template.
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
    # @!attribute [rw] answer_summaries
    #   List of answer summaries of a lens review in a review template.
    #   @return [Array<Types::ReviewTemplateAnswerSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListReviewTemplateAnswersOutput AWS API Documentation
    #
    class ListReviewTemplateAnswersOutput < Struct.new(
      :template_arn,
      :lens_alias,
      :answer_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListReviewTemplatesInput AWS API Documentation
    #
    class ListReviewTemplatesInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] review_templates
    #   List of review templates.
    #   @return [Array<Types::ReviewTemplateSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListReviewTemplatesOutput AWS API Documentation
    #
    class ListReviewTemplatesOutput < Struct.new(
      :review_templates,
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
    #   An optional string added to the beginning of each profile name
    #   returned in the results.
    #   @return [String]
    #
    # @!attribute [rw] template_name_prefix
    #   An optional string added to the beginning of each review template
    #   name returned in the results.
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
      :profile_name_prefix,
      :template_name_prefix)
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

    # @!attribute [rw] template_arn
    #   The review template ARN.
    #   @return [String]
    #
    # @!attribute [rw] shared_with_prefix
    #   The Amazon Web Services account ID, organization ID, or
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListTemplateSharesInput AWS API Documentation
    #
    class ListTemplateSharesInput < Struct.new(
      :template_arn,
      :shared_with_prefix,
      :next_token,
      :max_results,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_arn
    #   The review template ARN.
    #   @return [String]
    #
    # @!attribute [rw] template_share_summaries
    #   A review template share summary return object.
    #   @return [Array<Types::TemplateShareSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListTemplateSharesOutput AWS API Documentation
    #
    class ListTemplateSharesOutput < Struct.new(
      :template_arn,
      :template_share_summaries,
      :next_token)
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
    #   The Amazon Web Services account ID, organization ID, or
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
    #   The date and time when the milestone was recorded.
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
    #   The date and time when the milestone was recorded.
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

    # Item configuration for a specific Well-Architected Tool Framework
    # pillar.
    #
    # @!attribute [rw] pillar
    #   The pillar this item configuration applies to.
    #   @return [String]
    #
    # @!attribute [rw] ids
    #   A list of item IDs to process for this pillar, such as best practice
    #   IDs, Amazon Web Services service names, or resource ARNs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/PillarItem AWS API Documentation
    #
    class PillarItem < Struct.new(
      :pillar,
      :ids)
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
    #
    #   For a review template, these are the notes that will be associated
    #   with the workload when the template is applied.
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
    #   The date and time when the profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the profile was last updated.
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
    #   The Amazon Web Services account ID, organization ID, or
    #   organizational unit (OU) ID with which the workload, lens, profile,
    #   or review template is shared.
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
    #   The date and time when the profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the profile was last updated.
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
    #   The date and time when the profile template was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the profile template was last updated.
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

    # Progress information for a recommendation generation process.
    #
    # @!attribute [rw] steps_completed
    #   The number of generation steps that have been completed.
    #   @return [Integer]
    #
    # @!attribute [rw] total_steps
    #   The total number of steps in the generation process.
    #   @return [Integer]
    #
    # @!attribute [rw] completion_percentage
    #   The completion percentage of the generation process (0-100).
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/Progress AWS API Documentation
    #
    class Progress < Struct.new(
      :steps_completed,
      :total_steps,
      :completion_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_arn
    #   The Amazon Resource Name (ARN) of the recommendation to provide
    #   feedback for.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of feedback being provided.
    #   @return [String]
    #
    # @!attribute [rw] feedback_category
    #   Optional category classifying the nature of the feedback.
    #   @return [String]
    #
    # @!attribute [rw] comments
    #   Optional comments providing additional context about the feedback.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/PutAgentRecommendationFeedbackRequest AWS API Documentation
    #
    class PutAgentRecommendationFeedbackRequest < Struct.new(
      :recommendation_arn,
      :type,
      :feedback_category,
      :comments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/PutAgentRecommendationFeedbackResponse AWS API Documentation
    #
    class PutAgentRecommendationFeedbackResponse < Aws::EmptyStructure; end

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

    # Contains information about a goal associated with a recommendation.
    #
    # @!attribute [rw] title
    #   The title of the goal associated with the recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/RecommendationGoal AWS API Documentation
    #
    class RecommendationGoal < Struct.new(
      :title)
      SENSITIVE = []
      include Aws::Structure
    end

    # One step within a remediation procedure.
    #
    # @!attribute [rw] title
    #   An optional short label for the step.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content describing the step, which can include code examples and
    #   verification checklists.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/RemediationStep AWS API Documentation
    #
    class RemediationStep < Struct.new(
      :title,
      :content)
      SENSITIVE = [:title, :content]
      include Aws::Structure
    end

    # A high-level remediation summary returned in the detail response.
    #
    # @!attribute [rw] recommendation
    #   A short imperative statement of the recommended action.
    #   @return [String]
    #
    # @!attribute [rw] steps
    #   High-level steps to implement the fix.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/RemediationSummary AWS API Documentation
    #
    class RemediationSummary < Struct.new(
      :recommendation,
      :steps)
      SENSITIVE = []
      include Aws::Structure
    end

    # An external reference associated with remediation steps.
    #
    # @!attribute [rw] url
    #   The URL of the external reference.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   An optional human-readable title for the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ResourceLink AWS API Documentation
    #
    class ResourceLink < Struct.new(
      :url,
      :title)
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

    # A review template.
    #
    # @!attribute [rw] description
    #   The review template description.
    #   @return [String]
    #
    # @!attribute [rw] lenses
    #   The lenses applied to the review template.
    #   @return [Array<String>]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #
    #   For a review template, these are the notes that will be associated
    #   with the workload when the template is applied.
    #   @return [String]
    #
    # @!attribute [rw] question_counts
    #   A count of how many total questions are answered and unanswered in
    #   the review template.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] owner
    #   An Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the review template was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] template_arn
    #   The review template ARN.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the review template.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the review template.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] update_status
    #   The latest status of a review template.
    #   @return [String]
    #
    # @!attribute [rw] share_invitation_id
    #   The ID assigned to the template share invitation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ReviewTemplate AWS API Documentation
    #
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
      :share_invitation_id)
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
    #   <note markdown="1"> This field does not apply to Amazon Web Services official lenses.
    #
    #    </note>
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
    #   A list of selected choices to a question in your review template.
    #   @return [Array<Types::ChoiceAnswer>]
    #
    # @!attribute [rw] is_applicable
    #   Defines whether this question is applicable to a lens review.
    #   @return [Boolean]
    #
    # @!attribute [rw] answer_status
    #   The status of whether or not this question has been answered.
    #   @return [String]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #
    #   For a review template, these are the notes that will be associated
    #   with the workload when the template is applied.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason why the question is not applicable to your review
    #   template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ReviewTemplateAnswer AWS API Documentation
    #
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
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of review template answers.
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
    #   A list of selected choices to a question in the review template.
    #   @return [Array<Types::ChoiceAnswerSummary>]
    #
    # @!attribute [rw] is_applicable
    #   Defines whether this question is applicable to a lens review.
    #   @return [Boolean]
    #
    # @!attribute [rw] answer_status
    #   The status of whether or not this question has been answered.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason why a choice is not-applicable to a question in the
    #   review template.
    #   @return [String]
    #
    # @!attribute [rw] question_type
    #   The type of question.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ReviewTemplateAnswerSummary AWS API Documentation
    #
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
      :question_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The lens review of a review template.
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
    #   The lens ARN.
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
    #   Pillar review summaries of a lens review.
    #   @return [Array<Types::ReviewTemplatePillarReviewSummary>]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the review template lens review was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #
    #   For a review template, these are the notes that will be associated
    #   with the workload when the template is applied.
    #   @return [String]
    #
    # @!attribute [rw] question_counts
    #   A count of how many questions are answered and unanswered in the
    #   lens review.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ReviewTemplateLensReview AWS API Documentation
    #
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
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a review template.
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
    #
    #   For a review template, these are the notes that will be associated
    #   with the workload when the template is applied.
    #   @return [String]
    #
    # @!attribute [rw] question_counts
    #   A count of how many questions are answered and unanswered in the
    #   requested pillar of the lens review.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ReviewTemplatePillarReviewSummary AWS API Documentation
    #
    class ReviewTemplatePillarReviewSummary < Struct.new(
      :pillar_id,
      :pillar_name,
      :notes,
      :question_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a review template.
    #
    # @!attribute [rw] description
    #   Description of the review template.
    #   @return [String]
    #
    # @!attribute [rw] lenses
    #   Lenses associated with the review template.
    #   @return [Array<String>]
    #
    # @!attribute [rw] owner
    #   An Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the review template was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] template_arn
    #   The review template ARN.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the review template.
    #   @return [String]
    #
    # @!attribute [rw] update_status
    #   The latest status of a review template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ReviewTemplateSummary AWS API Documentation
    #
    class ReviewTemplateSummary < Struct.new(
      :description,
      :lenses,
      :owner,
      :updated_at,
      :template_arn,
      :template_name,
      :update_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A return-on-investment estimate with context.
    #
    # @!attribute [rw] estimate
    #   A short statistic or key metric. Optional when there is no
    #   quantifiable figure.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   A sentence providing context for the estimate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/Roi AWS API Documentation
    #
    class Roi < Struct.new(
      :estimate,
      :detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the scope for recommendation generation, specifying which
    # pillars and goals to focus on.
    #
    # @!attribute [rw] pillars
    #   The Well-Architected Tool Framework pillars to include in the
    #   generation scope.
    #   @return [Array<String>]
    #
    # @!attribute [rw] goal_ids
    #   Specific goal IDs to focus on during recommendation generation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] items
    #   Optional per-pillar item filtering configuration.
    #   @return [Array<Types::PillarItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/Scope AWS API Documentation
    #
    class Scope < Struct.new(
      :pillars,
      :goal_ids,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The selected pillar.
    #
    # @!attribute [rw] pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #   @return [String]
    #
    # @!attribute [rw] selected_question_ids
    #   Selected question IDs in the selected pillar.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/SelectedPillar AWS API Documentation
    #
    class SelectedPillar < Struct.new(
      :pillar_id,
      :selected_question_ids)
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
    # @!attribute [rw] template_arn
    #   The review template ARN.
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
      :profile_arn,
      :template_arn)
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
    #   The Amazon Web Services account ID, organization ID, or
    #   organizational unit (OU) ID with which the workload, lens, profile,
    #   or review template is shared.
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
    # @!attribute [rw] template_name
    #   The name of the review template.
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The review template ARN.
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
      :profile_arn,
      :template_name,
      :template_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the optimization profile to use
    #   for generating recommendations.
    #   @return [String]
    #
    # @!attribute [rw] types
    #   The types of recommendations to generate.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   An optional name for this generation process to help identify it in
    #   lists and logs.
    #   @return [String]
    #
    # @!attribute [rw] additional_context
    #   Optional additional context to guide the recommendation generation,
    #   such as specific business requirements or constraints.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] scope
    #   Scope configuration to focus the generation on specific pillars or
    #   goals.
    #   @return [Types::Scope]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/StartAgentRecommendationGenerationRequest AWS API Documentation
    #
    class StartAgentRecommendationGenerationRequest < Struct.new(
      :profile_arn,
      :types,
      :name,
      :additional_context,
      :scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the recommendation generation.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the profile used for this
    #   generation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the recommendation generation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the recommendation generation.
    #   @return [String]
    #
    # @!attribute [rw] estimated_completion_time
    #   The estimated time for the generation to complete.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The identifier of the user or system that started this generation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the generation was started.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The identifier of the user or system that last modified this
    #   generation.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The timestamp when the generation was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/StartAgentRecommendationGenerationResponse AWS API Documentation
    #
    class StartAgentRecommendationGenerationResponse < Struct.new(
      :id,
      :profile_arn,
      :name,
      :status,
      :estimated_completion_time,
      :created_by,
      :created_at,
      :last_modified_by,
      :last_modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair associated with a resource for cost allocation and
    # access control.
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
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

    # Summary of a review template share.
    #
    # @!attribute [rw] share_id
    #   The ID associated with the share.
    #   @return [String]
    #
    # @!attribute [rw] shared_with
    #   The Amazon Web Services account ID, organization ID, or
    #   organizational unit (OU) ID with which the workload, lens, profile,
    #   or review template is shared.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the share request.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Review template share invitation status message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/TemplateShareSummary AWS API Documentation
    #
    class TemplateShareSummary < Struct.new(
      :share_id,
      :shared_with,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # A negative trade-off from acting on the recommendation.
    #
    # @!attribute [rw] pillar
    #   The pillar that could be negatively impacted.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A short phrase describing what is lost or degraded.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the specific risk and the condition that triggers
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] risk
    #   The risk rating for the trade-off.
    #   @return [String]
    #
    # @!attribute [rw] mitigation
    #   A specific action to mitigate the trade-off and when to take it.
    #   @return [String]
    #
    # @!attribute [rw] risk_explanation
    #   An optional explanation providing additional context for the risk
    #   rating.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/TradeOff AWS API Documentation
    #
    class TradeOff < Struct.new(
      :pillar,
      :title,
      :description,
      :risk,
      :mitigation,
      :risk_explanation)
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

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the profile containing the
    #   context.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the context to update.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The updated title of the context.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The updated typed content of the context. The structure contains
    #   application-specific fields such as account IDs, Regions, services,
    #   and resource types.
    #   @return [Types::ContextContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateAgentContextRequest AWS API Documentation
    #
    class UpdateAgentContextRequest < Struct.new(
      :client_token,
      :profile_arn,
      :id,
      :title,
      :content)
      SENSITIVE = [:title]
      include Aws::Structure
    end

    # @!attribute [rw] context
    #   The updated context summary.
    #   @return [Types::ContextSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateAgentContextResponse AWS API Documentation
    #
    class UpdateAgentContextResponse < Struct.new(
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the profile containing the goal to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the goal to update.
    #   @return [String]
    #
    # @!attribute [rw] pillars
    #   The updated pillars for the goal. Pillars define the optimization
    #   focus areas such as cost, performance, resilience, and operational
    #   excellence.
    #   @return [Array<String>]
    #
    # @!attribute [rw] title
    #   The updated title for the goal. Maximum length of 1000 characters.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the goal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateAgentGoalRequest AWS API Documentation
    #
    class UpdateAgentGoalRequest < Struct.new(
      :client_token,
      :profile_arn,
      :id,
      :pillars,
      :title,
      :description)
      SENSITIVE = [:title, :description]
      include Aws::Structure
    end

    # @!attribute [rw] goal
    #   The updated goal summary.
    #   @return [Types::GoalSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateAgentGoalResponse AWS API Documentation
    #
    class UpdateAgentGoalResponse < Struct.new(
      :goal)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the profile to update.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The updated display name of the profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the profile.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The updated ARN of the IAM execution role.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_configuration
    #   The updated aggregation configuration.
    #   @return [Array<Types::AggregationConfiguration>]
    #
    # @!attribute [rw] business_overview
    #   The updated business overview for the profile.
    #   @return [String]
    #
    # @!attribute [rw] pillars
    #   The updated Well-Architected Tool Framework pillars for the profile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] deletion_protection
    #   Indicates whether deletion protection is enabled for the profile.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateAgentProfileRequest AWS API Documentation
    #
    class UpdateAgentProfileRequest < Struct.new(
      :client_token,
      :profile_arn,
      :display_name,
      :description,
      :execution_role_arn,
      :aggregation_configuration,
      :business_overview,
      :pillars,
      :deletion_protection)
      SENSITIVE = [:display_name, :description, :business_overview]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The system name of the updated profile.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the updated profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the updated profile.
    #   @return [String]
    #
    # @!attribute [rw] business_overview
    #   The business overview of the updated profile.
    #   @return [String]
    #
    # @!attribute [rw] pillars
    #   The Well-Architected Tool Framework pillars associated with the
    #   updated profile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] deletion_protection
    #   Indicates whether deletion protection is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] execution_role_arn
    #   The ARN of the IAM execution role.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_configuration
    #   The aggregation configuration.
    #   @return [Array<Types::AggregationConfiguration>]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the updated profile.
    #   @return [String]
    #
    # @!attribute [rw] eligible_for_scheduled_generation
    #   Indicates whether the profile is valid for scheduled recommendation
    #   generation.
    #   @return [Boolean]
    #
    # @!attribute [rw] eligible_for_architecture_generation
    #   Indicates whether the profile is valid for manual architecture
    #   generation.
    #   @return [Boolean]
    #
    # @!attribute [rw] field_errors
    #   A map of field paths to error messages for invalid or missing input
    #   fields.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   The tags associated with the updated profile.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_by
    #   The identifier of the user or system that created this profile.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The identifier of the user or system that last modified this
    #   profile.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The timestamp when the profile was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateAgentProfileResponse AWS API Documentation
    #
    class UpdateAgentProfileResponse < Struct.new(
      :name,
      :display_name,
      :description,
      :business_overview,
      :pillars,
      :deletion_protection,
      :execution_role_arn,
      :aggregation_configuration,
      :arn,
      :eligible_for_scheduled_generation,
      :eligible_for_architecture_generation,
      :field_errors,
      :tags,
      :created_by,
      :created_at,
      :last_modified_by,
      :last_modified_at)
      SENSITIVE = [:display_name, :description, :business_overview]
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_arn
    #   The Amazon Resource Name (ARN) of the recommendation to update.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The new status to assign to the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] update_reason
    #   A free-text reason explaining this status update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateAgentRecommendationStatusRequest AWS API Documentation
    #
    class UpdateAgentRecommendationStatusRequest < Struct.new(
      :recommendation_arn,
      :status,
      :update_reason)
      SENSITIVE = [:update_reason]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateAgentRecommendationStatusResponse AWS API Documentation
    #
    class UpdateAgentRecommendationStatusResponse < Aws::EmptyStructure; end

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
    #
    #   For a review template, these are the notes that will be associated
    #   with the workload when the template is applied.
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
    # @!attribute [rw] jira_configuration
    #   The status of Jira integration settings.
    #   @return [Types::AccountJiraConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateGlobalSettingsInput AWS API Documentation
    #
    class UpdateGlobalSettingsInput < Struct.new(
      :organization_sharing_status,
      :discovery_integration_status,
      :jira_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] integrating_service
    #   Which integrated service to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateIntegrationInput AWS API Documentation
    #
    class UpdateIntegrationInput < Struct.new(
      :workload_id,
      :client_request_token,
      :integrating_service)
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
    #
    #   For a review template, these are the notes that will be associated
    #   with the workload when the template is applied.
    #   @return [String]
    #
    # @!attribute [rw] pillar_notes
    #   List of pillar notes of a lens review in a workload.
    #
    #   For a review template, these are the notes that will be associated
    #   with the workload when the template is applied.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] jira_configuration
    #   Configuration of the Jira integration.
    #   @return [Types::JiraSelectedQuestionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateLensReviewInput AWS API Documentation
    #
    class UpdateLensReviewInput < Struct.new(
      :workload_id,
      :lens_alias,
      :lens_notes,
      :pillar_notes,
      :jira_configuration)
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

    # @!attribute [rw] template_arn
    #   The review template ARN.
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
    #   A list of choices to be updated.
    #   @return [Hash<String,Types::ChoiceUpdate>]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #
    #   For a review template, these are the notes that will be associated
    #   with the workload when the template is applied.
    #   @return [String]
    #
    # @!attribute [rw] is_applicable
    #   Defines whether this question is applicable to a lens review.
    #   @return [Boolean]
    #
    # @!attribute [rw] reason
    #   The update reason.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateReviewTemplateAnswerInput AWS API Documentation
    #
    class UpdateReviewTemplateAnswerInput < Struct.new(
      :template_arn,
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

    # @!attribute [rw] template_arn
    #   The review template ARN.
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
    # @!attribute [rw] answer
    #   An answer of the question.
    #   @return [Types::ReviewTemplateAnswer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateReviewTemplateAnswerOutput AWS API Documentation
    #
    class UpdateReviewTemplateAnswerOutput < Struct.new(
      :template_arn,
      :lens_alias,
      :answer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_arn
    #   The review template ARN.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The review template name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The review template description.
    #   @return [String]
    #
    # @!attribute [rw] notes
    #   The notes associated with the workload.
    #
    #   For a review template, these are the notes that will be associated
    #   with the workload when the template is applied.
    #   @return [String]
    #
    # @!attribute [rw] lenses_to_associate
    #   A list of lens aliases or ARNs to apply to the review template.
    #   @return [Array<String>]
    #
    # @!attribute [rw] lenses_to_disassociate
    #   A list of lens aliases or ARNs to unapply to the review template.
    #   The `wellarchitected` lens cannot be unapplied.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateReviewTemplateInput AWS API Documentation
    #
    class UpdateReviewTemplateInput < Struct.new(
      :template_arn,
      :template_name,
      :description,
      :notes,
      :lenses_to_associate,
      :lenses_to_disassociate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_arn
    #   The review template ARN.
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
    #
    #   For a review template, these are the notes that will be associated
    #   with the workload when the template is applied.
    #   @return [String]
    #
    # @!attribute [rw] pillar_notes
    #   List of pillar notes of a lens review in a workload.
    #
    #   For a review template, these are the notes that will be associated
    #   with the workload when the template is applied.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateReviewTemplateLensReviewInput AWS API Documentation
    #
    class UpdateReviewTemplateLensReviewInput < Struct.new(
      :template_arn,
      :lens_alias,
      :lens_notes,
      :pillar_notes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_arn
    #   The review template ARN.
    #   @return [String]
    #
    # @!attribute [rw] lens_review
    #   A lens review of a question.
    #   @return [Types::ReviewTemplateLensReview]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateReviewTemplateLensReviewOutput AWS API Documentation
    #
    class UpdateReviewTemplateLensReviewOutput < Struct.new(
      :template_arn,
      :lens_review)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] review_template
    #   A review template.
    #   @return [Types::ReviewTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateReviewTemplateOutput AWS API Documentation
    #
    class UpdateReviewTemplateOutput < Struct.new(
      :review_template)
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
    #
    #   For a review template, these are the notes that will be associated
    #   with the workload when the template is applied.
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
    # @!attribute [rw] jira_configuration
    #   Configuration of the Jira integration.
    #   @return [Types::WorkloadJiraConfigurationInput]
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
      :applications,
      :jira_configuration)
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

    # @!attribute [rw] template_arn
    #   The ARN of the review template.
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
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpgradeReviewTemplateLensReviewInput AWS API Documentation
    #
    class UpgradeReviewTemplateLensReviewInput < Struct.new(
      :template_arn,
      :lens_alias,
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
    #   The date and time when the workload was last updated.
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
    #   The review restriction date for the workload.
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
    #
    #   For a review template, these are the notes that will be associated
    #   with the workload when the template is applied.
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
    #
    #   If a review template that specifies lenses is applied to the
    #   workload, those lenses are applied to the workload in addition to
    #   these lenses.
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
    # @!attribute [rw] jira_configuration
    #   Jira configuration for a specific workload.
    #   @return [Types::WorkloadJiraConfigurationOutput]
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
      :prioritized_risk_counts,
      :jira_configuration)
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

    # Workload-level: Input for the Jira configuration.
    #
    # @!attribute [rw] issue_management_status
    #   Workload-level: Jira issue management status.
    #   @return [String]
    #
    # @!attribute [rw] issue_management_type
    #   Workload-level: Jira issue management type.
    #   @return [String]
    #
    # @!attribute [rw] jira_project_key
    #   Workload-level: Jira project key to sync workloads to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/WorkloadJiraConfigurationInput AWS API Documentation
    #
    class WorkloadJiraConfigurationInput < Struct.new(
      :issue_management_status,
      :issue_management_type,
      :jira_project_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Workload-level: Output configuration of the Jira integration.
    #
    # @!attribute [rw] issue_management_status
    #   Workload-level: Jira issue management status.
    #   @return [String]
    #
    # @!attribute [rw] issue_management_type
    #   Workload-level: Jira issue management type.
    #   @return [String]
    #
    # @!attribute [rw] jira_project_key
    #   Workload-level: Jira project key to sync workloads to.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Workload-level: Status message on configuration of the Jira
    #   integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/WorkloadJiraConfigurationOutput AWS API Documentation
    #
    class WorkloadJiraConfigurationOutput < Struct.new(
      :issue_management_status,
      :issue_management_type,
      :jira_project_key,
      :status_message)
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
    #   The Amazon Web Services account ID, organization ID, or
    #   organizational unit (OU) ID with which the workload, lens, profile,
    #   or review template is shared.
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
    #   The Amazon Web Services account ID, organization ID, or
    #   organizational unit (OU) ID with which the workload, lens, profile,
    #   or review template is shared.
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
    #   The date and time when the workload was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] lenses
    #   The list of lenses associated with the workload. Each lens is
    #   identified by its LensSummary$LensAlias.
    #
    #   If a review template that specifies lenses is applied to the
    #   workload, those lenses are applied to the workload in addition to
    #   these lenses.
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

