# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FIS
  module Types

    # Describes an action. For more information, see [AWS FIS actions][1] in
    # the *AWS Fault Injection Simulator User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fis/latest/userguide/fis-actions-reference.html
    #
    # @!attribute [rw] id
    #   The ID of the action.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the action.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The action parameters, if applicable.
    #   @return [Hash<String,Types::ActionParameter>]
    #
    # @!attribute [rw] targets
    #   The supported targets for the action.
    #   @return [Hash<String,Types::ActionTarget>]
    #
    # @!attribute [rw] tags
    #   The tags for the action.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/Action AWS API Documentation
    #
    class Action < Struct.new(
      :id,
      :description,
      :parameters,
      :targets,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a parameter for an action.
    #
    # @!attribute [rw] description
    #   The parameter description.
    #   @return [String]
    #
    # @!attribute [rw] required
    #   Indicates whether the parameter is required.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ActionParameter AWS API Documentation
    #
    class ActionParameter < Struct.new(
      :description,
      :required)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of an action.
    #
    # @!attribute [rw] id
    #   The ID of the action.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the action.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets for the action.
    #   @return [Hash<String,Types::ActionTarget>]
    #
    # @!attribute [rw] tags
    #   The tags for the action.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ActionSummary AWS API Documentation
    #
    class ActionSummary < Struct.new(
      :id,
      :description,
      :targets,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a target for an action.
    #
    # @!attribute [rw] resource_type
    #   The resource type of the target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ActionTarget AWS API Documentation
    #
    class ActionTarget < Struct.new(
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be processed because of a conflict.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an action for an experiment template.
    #
    # @note When making an API call, you may pass CreateExperimentTemplateActionInput
    #   data as a hash:
    #
    #       {
    #         action_id: "ActionId", # required
    #         description: "ExperimentTemplateActionDescription",
    #         parameters: {
    #           "ExperimentTemplateActionParameterName" => "ExperimentTemplateActionParameter",
    #         },
    #         targets: {
    #           "ExperimentTemplateActionTargetName" => "ExperimentTemplateTargetName",
    #         },
    #         start_after: ["ExperimentTemplateActionStartAfter"],
    #       }
    #
    # @!attribute [rw] action_id
    #   The ID of the action.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the action.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the action, if applicable.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] targets
    #   The targets for the action.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] start_after
    #   The name of the action that must be completed before the current
    #   action starts. Omit this parameter to run the action at the start of
    #   the experiment.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/CreateExperimentTemplateActionInput AWS API Documentation
    #
    class CreateExperimentTemplateActionInput < Struct.new(
      :action_id,
      :description,
      :parameters,
      :targets,
      :start_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateExperimentTemplateRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken", # required
    #         description: "ExperimentTemplateDescription", # required
    #         stop_conditions: [ # required
    #           {
    #             source: "StopConditionSource", # required
    #             value: "StopConditionValue",
    #           },
    #         ],
    #         targets: {
    #           "ExperimentTemplateTargetName" => {
    #             resource_type: "ResourceType", # required
    #             resource_arns: ["ResourceArn"],
    #             resource_tags: {
    #               "TagKey" => "TagValue",
    #             },
    #             filters: [
    #               {
    #                 path: "ExperimentTemplateTargetFilterPath", # required
    #                 values: ["ExperimentTemplateTargetFilterValue"], # required
    #               },
    #             ],
    #             selection_mode: "ExperimentTemplateTargetSelectionMode", # required
    #           },
    #         },
    #         actions: { # required
    #           "ExperimentTemplateActionName" => {
    #             action_id: "ActionId", # required
    #             description: "ExperimentTemplateActionDescription",
    #             parameters: {
    #               "ExperimentTemplateActionParameterName" => "ExperimentTemplateActionParameter",
    #             },
    #             targets: {
    #               "ExperimentTemplateActionTargetName" => "ExperimentTemplateTargetName",
    #             },
    #             start_after: ["ExperimentTemplateActionStartAfter"],
    #           },
    #         },
    #         role_arn: "RoleArn", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the experiment template. Can contain up to 64
    #   letters (A-Z and a-z).
    #   @return [String]
    #
    # @!attribute [rw] stop_conditions
    #   The stop conditions.
    #   @return [Array<Types::CreateExperimentTemplateStopConditionInput>]
    #
    # @!attribute [rw] targets
    #   The targets for the experiment.
    #   @return [Hash<String,Types::CreateExperimentTemplateTargetInput>]
    #
    # @!attribute [rw] actions
    #   The actions for the experiment.
    #   @return [Hash<String,Types::CreateExperimentTemplateActionInput>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that grants the AWS
    #   FIS service permission to perform service actions on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the experiment template.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/CreateExperimentTemplateRequest AWS API Documentation
    #
    class CreateExperimentTemplateRequest < Struct.new(
      :client_token,
      :description,
      :stop_conditions,
      :targets,
      :actions,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_template
    #   Information about the experiment template.
    #   @return [Types::ExperimentTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/CreateExperimentTemplateResponse AWS API Documentation
    #
    class CreateExperimentTemplateResponse < Struct.new(
      :experiment_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a stop condition for an experiment template.
    #
    # @note When making an API call, you may pass CreateExperimentTemplateStopConditionInput
    #   data as a hash:
    #
    #       {
    #         source: "StopConditionSource", # required
    #         value: "StopConditionValue",
    #       }
    #
    # @!attribute [rw] source
    #   The source for the stop condition. Specify `aws:cloudwatch:alarm` if
    #   the stop condition is defined by a CloudWatch alarm. Specify `none`
    #   if there is no stop condition.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The Amazon Resource Name (ARN) of the CloudWatch alarm. This is
    #   required if the source is a CloudWatch alarm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/CreateExperimentTemplateStopConditionInput AWS API Documentation
    #
    class CreateExperimentTemplateStopConditionInput < Struct.new(
      :source,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a target for an experiment. You must specify at least one
    # Amazon Resource Name (ARN) or at least one resource tag. You cannot
    # specify both ARNs and tags.
    #
    # @note When making an API call, you may pass CreateExperimentTemplateTargetInput
    #   data as a hash:
    #
    #       {
    #         resource_type: "ResourceType", # required
    #         resource_arns: ["ResourceArn"],
    #         resource_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         filters: [
    #           {
    #             path: "ExperimentTemplateTargetFilterPath", # required
    #             values: ["ExperimentTemplateTargetFilterValue"], # required
    #           },
    #         ],
    #         selection_mode: "ExperimentTemplateTargetSelectionMode", # required
    #       }
    #
    # @!attribute [rw] resource_type
    #   The AWS resource type. The resource type must be supported for the
    #   specified action.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The Amazon Resource Names (ARNs) of the resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_tags
    #   The tags for the target resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] filters
    #   The filters to apply to identify target resources using specific
    #   attributes.
    #   @return [Array<Types::ExperimentTemplateTargetInputFilter>]
    #
    # @!attribute [rw] selection_mode
    #   Scopes the identified resources to a specific count of the resources
    #   at random, or a percentage of the resources. All identified
    #   resources are included in the target.
    #
    #   * ALL - Run the action on all identified targets. This is the
    #     default.
    #
    #   * COUNT(n) - Run the action on the specified number of targets,
    #     chosen from the identified targets at random. For example,
    #     COUNT(1) selects one of the targets.
    #
    #   * PERCENT(n) - Run the action on the specified percentage of
    #     targets, chosen from the identified targets at random. For
    #     example, PERCENT(25) selects 25% of the targets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/CreateExperimentTemplateTargetInput AWS API Documentation
    #
    class CreateExperimentTemplateTargetInput < Struct.new(
      :resource_type,
      :resource_arns,
      :resource_tags,
      :filters,
      :selection_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteExperimentTemplateRequest
    #   data as a hash:
    #
    #       {
    #         id: "ExperimentTemplateId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/DeleteExperimentTemplateRequest AWS API Documentation
    #
    class DeleteExperimentTemplateRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_template
    #   Information about the experiment template.
    #   @return [Types::ExperimentTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/DeleteExperimentTemplateResponse AWS API Documentation
    #
    class DeleteExperimentTemplateResponse < Struct.new(
      :experiment_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an experiment.
    #
    # @!attribute [rw] id
    #   The ID of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] experiment_template_id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that grants the AWS
    #   FIS service permission to perform service actions on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the experiment.
    #   @return [Types::ExperimentState]
    #
    # @!attribute [rw] targets
    #   The targets for the experiment.
    #   @return [Hash<String,Types::ExperimentTarget>]
    #
    # @!attribute [rw] actions
    #   The actions for the experiment.
    #   @return [Hash<String,Types::ExperimentAction>]
    #
    # @!attribute [rw] stop_conditions
    #   The stop conditions for the experiment.
    #   @return [Array<Types::ExperimentStopCondition>]
    #
    # @!attribute [rw] creation_time
    #   The time the experiment was created.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The time that the experiment was started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the experiment ended.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags for the experiment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/Experiment AWS API Documentation
    #
    class Experiment < Struct.new(
      :id,
      :experiment_template_id,
      :role_arn,
      :state,
      :targets,
      :actions,
      :stop_conditions,
      :creation_time,
      :start_time,
      :end_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the action for an experiment.
    #
    # @!attribute [rw] action_id
    #   The ID of the action.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the action.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the action.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] targets
    #   The targets for the action.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] start_after
    #   The name of the action that must be completed before this action
    #   starts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] state
    #   The state of the action.
    #   @return [Types::ExperimentActionState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentAction AWS API Documentation
    #
    class ExperimentAction < Struct.new(
      :action_id,
      :description,
      :parameters,
      :targets,
      :start_after,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the state of an action.
    #
    # @!attribute [rw] status
    #   The state of the action.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentActionState AWS API Documentation
    #
    class ExperimentActionState < Struct.new(
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the state of an experiment.
    #
    # @!attribute [rw] status
    #   The state of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentState AWS API Documentation
    #
    class ExperimentState < Struct.new(
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the stop condition for an experiment.
    #
    # @!attribute [rw] source
    #   The source for the stop condition.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The Amazon Resource Name (ARN) of the CloudWatch alarm, if
    #   applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentStopCondition AWS API Documentation
    #
    class ExperimentStopCondition < Struct.new(
      :source,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of an experiment.
    #
    # @!attribute [rw] id
    #   The ID of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] experiment_template_id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the experiment.
    #   @return [Types::ExperimentState]
    #
    # @!attribute [rw] creation_time
    #   The time that the experiment was created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags for the experiment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentSummary AWS API Documentation
    #
    class ExperimentSummary < Struct.new(
      :id,
      :experiment_template_id,
      :state,
      :creation_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a target for an experiment.
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The Amazon Resource Names (ARNs) of the resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_tags
    #   The tags for the target resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] filters
    #   The filters to apply to identify target resources using specific
    #   attributes.
    #   @return [Array<Types::ExperimentTargetFilter>]
    #
    # @!attribute [rw] selection_mode
    #   Scopes the identified resources to a specific count or percentage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTarget AWS API Documentation
    #
    class ExperimentTarget < Struct.new(
      :resource_type,
      :resource_arns,
      :resource_tags,
      :filters,
      :selection_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter used for the target resources in an experiment.
    #
    # @!attribute [rw] path
    #   The attribute path for the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The attribute values for the filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTargetFilter AWS API Documentation
    #
    class ExperimentTargetFilter < Struct.new(
      :path,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an experiment template.
    #
    # @!attribute [rw] id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets for the experiment.
    #   @return [Hash<String,Types::ExperimentTemplateTarget>]
    #
    # @!attribute [rw] actions
    #   The actions for the experiment.
    #   @return [Hash<String,Types::ExperimentTemplateAction>]
    #
    # @!attribute [rw] stop_conditions
    #   The stop conditions for the experiment.
    #   @return [Array<Types::ExperimentTemplateStopCondition>]
    #
    # @!attribute [rw] creation_time
    #   The time the experiment template was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The time the experiment template was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the experiment template.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplate AWS API Documentation
    #
    class ExperimentTemplate < Struct.new(
      :id,
      :description,
      :targets,
      :actions,
      :stop_conditions,
      :creation_time,
      :last_update_time,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an action for an experiment template.
    #
    # @!attribute [rw] action_id
    #   The ID of the action.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the action.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the action.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] targets
    #   The targets for the action.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] start_after
    #   The name of the action that must be completed before the current
    #   action starts.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateAction AWS API Documentation
    #
    class ExperimentTemplateAction < Struct.new(
      :action_id,
      :description,
      :parameters,
      :targets,
      :start_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a stop condition for an experiment template.
    #
    # @!attribute [rw] source
    #   The source for the stop condition.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The Amazon Resource Name (ARN) of the CloudWatch alarm, if
    #   applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateStopCondition AWS API Documentation
    #
    class ExperimentTemplateStopCondition < Struct.new(
      :source,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of an experiment template.
    #
    # @!attribute [rw] id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that the experiment template was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The time that the experiment template was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags for the experiment template.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateSummary AWS API Documentation
    #
    class ExperimentTemplateSummary < Struct.new(
      :id,
      :description,
      :creation_time,
      :last_update_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a target for an experiment template.
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The Amazon Resource Names (ARNs) of the targets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_tags
    #   The tags for the target resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] filters
    #   The filters to apply to identify target resources using specific
    #   attributes.
    #   @return [Array<Types::ExperimentTemplateTargetFilter>]
    #
    # @!attribute [rw] selection_mode
    #   Scopes the identified resources to a specific count or percentage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateTarget AWS API Documentation
    #
    class ExperimentTemplateTarget < Struct.new(
      :resource_type,
      :resource_arns,
      :resource_tags,
      :filters,
      :selection_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter used for the target resources in an experiment
    # template.
    #
    # @!attribute [rw] path
    #   The attribute path for the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The attribute values for the filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateTargetFilter AWS API Documentation
    #
    class ExperimentTemplateTargetFilter < Struct.new(
      :path,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter used for the target resource input in an experiment
    # template.
    #
    # @note When making an API call, you may pass ExperimentTemplateTargetInputFilter
    #   data as a hash:
    #
    #       {
    #         path: "ExperimentTemplateTargetFilterPath", # required
    #         values: ["ExperimentTemplateTargetFilterValue"], # required
    #       }
    #
    # @!attribute [rw] path
    #   The attribute path for the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The attribute values for the filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ExperimentTemplateTargetInputFilter AWS API Documentation
    #
    class ExperimentTemplateTargetInputFilter < Struct.new(
      :path,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetActionRequest
    #   data as a hash:
    #
    #       {
    #         id: "ActionId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetActionRequest AWS API Documentation
    #
    class GetActionRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   Information about the action.
    #   @return [Types::Action]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetActionResponse AWS API Documentation
    #
    class GetActionResponse < Struct.new(
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetExperimentRequest
    #   data as a hash:
    #
    #       {
    #         id: "ExperimentId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the experiment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetExperimentRequest AWS API Documentation
    #
    class GetExperimentRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment
    #   Information about the experiment.
    #   @return [Types::Experiment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetExperimentResponse AWS API Documentation
    #
    class GetExperimentResponse < Struct.new(
      :experiment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetExperimentTemplateRequest
    #   data as a hash:
    #
    #       {
    #         id: "ExperimentTemplateId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetExperimentTemplateRequest AWS API Documentation
    #
    class GetExperimentTemplateRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_template
    #   Information about the experiment template.
    #   @return [Types::ExperimentTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetExperimentTemplateResponse AWS API Documentation
    #
    class GetExperimentTemplateResponse < Struct.new(
      :experiment_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListActionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListActionsRequest AWS API Documentation
    #
    class ListActionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] actions
    #   The actions.
    #   @return [Array<Types::ActionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListActionsResponse AWS API Documentation
    #
    class ListActionsResponse < Struct.new(
      :actions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListExperimentTemplatesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListExperimentTemplatesRequest AWS API Documentation
    #
    class ListExperimentTemplatesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_templates
    #   The experiment templates.
    #   @return [Array<Types::ExperimentTemplateSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListExperimentTemplatesResponse AWS API Documentation
    #
    class ListExperimentTemplatesResponse < Struct.new(
      :experiment_templates,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListExperimentsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListExperimentsRequest AWS API Documentation
    #
    class ListExperimentsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiments
    #   The experiments.
    #   @return [Array<Types::ExperimentSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListExperimentsResponse AWS API Documentation
    #
    class ListExperimentsResponse < Struct.new(
      :experiments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource cannot be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded your service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartExperimentRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken", # required
    #         experiment_template_id: "ExperimentTemplateId", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] experiment_template_id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the experiment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/StartExperimentRequest AWS API Documentation
    #
    class StartExperimentRequest < Struct.new(
      :client_token,
      :experiment_template_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment
    #   Information about the experiment.
    #   @return [Types::Experiment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/StartExperimentResponse AWS API Documentation
    #
    class StartExperimentResponse < Struct.new(
      :experiment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopExperimentRequest
    #   data as a hash:
    #
    #       {
    #         id: "ExperimentId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the experiment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/StopExperimentRequest AWS API Documentation
    #
    class StopExperimentRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment
    #   Information about the experiment.
    #   @return [Types::Experiment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/StopExperimentResponse AWS API Documentation
    #
    class StopExperimentResponse < Struct.new(
      :experiment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tag_keys: ["TagKey"],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Specifies an action for an experiment template.
    #
    # @note When making an API call, you may pass UpdateExperimentTemplateActionInputItem
    #   data as a hash:
    #
    #       {
    #         action_id: "ActionId",
    #         description: "ExperimentTemplateActionDescription",
    #         parameters: {
    #           "ExperimentTemplateActionParameterName" => "ExperimentTemplateActionParameter",
    #         },
    #         targets: {
    #           "ExperimentTemplateActionTargetName" => "ExperimentTemplateTargetName",
    #         },
    #         start_after: ["ExperimentTemplateActionStartAfter"],
    #       }
    #
    # @!attribute [rw] action_id
    #   The ID of the action.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the action.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the action, if applicable.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] targets
    #   The targets for the action.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] start_after
    #   The name of the action that must be completed before the current
    #   action starts. Omit this parameter to run the action at the start of
    #   the experiment.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateExperimentTemplateActionInputItem AWS API Documentation
    #
    class UpdateExperimentTemplateActionInputItem < Struct.new(
      :action_id,
      :description,
      :parameters,
      :targets,
      :start_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateExperimentTemplateRequest
    #   data as a hash:
    #
    #       {
    #         id: "ExperimentTemplateId", # required
    #         description: "ExperimentTemplateDescription",
    #         stop_conditions: [
    #           {
    #             source: "StopConditionSource", # required
    #             value: "StopConditionValue",
    #           },
    #         ],
    #         targets: {
    #           "ExperimentTemplateTargetName" => {
    #             resource_type: "ResourceType", # required
    #             resource_arns: ["ResourceArn"],
    #             resource_tags: {
    #               "TagKey" => "TagValue",
    #             },
    #             filters: [
    #               {
    #                 path: "ExperimentTemplateTargetFilterPath", # required
    #                 values: ["ExperimentTemplateTargetFilterValue"], # required
    #               },
    #             ],
    #             selection_mode: "ExperimentTemplateTargetSelectionMode", # required
    #           },
    #         },
    #         actions: {
    #           "ExperimentTemplateActionName" => {
    #             action_id: "ActionId",
    #             description: "ExperimentTemplateActionDescription",
    #             parameters: {
    #               "ExperimentTemplateActionParameterName" => "ExperimentTemplateActionParameter",
    #             },
    #             targets: {
    #               "ExperimentTemplateActionTargetName" => "ExperimentTemplateTargetName",
    #             },
    #             start_after: ["ExperimentTemplateActionStartAfter"],
    #           },
    #         },
    #         role_arn: "RoleArn",
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the experiment template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the template.
    #   @return [String]
    #
    # @!attribute [rw] stop_conditions
    #   The stop conditions for the experiment.
    #   @return [Array<Types::UpdateExperimentTemplateStopConditionInput>]
    #
    # @!attribute [rw] targets
    #   The targets for the experiment.
    #   @return [Hash<String,Types::UpdateExperimentTemplateTargetInput>]
    #
    # @!attribute [rw] actions
    #   The actions for the experiment.
    #   @return [Hash<String,Types::UpdateExperimentTemplateActionInputItem>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that grants the AWS
    #   FIS service permission to perform service actions on your behalf.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateExperimentTemplateRequest AWS API Documentation
    #
    class UpdateExperimentTemplateRequest < Struct.new(
      :id,
      :description,
      :stop_conditions,
      :targets,
      :actions,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_template
    #   Information about the experiment template.
    #   @return [Types::ExperimentTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateExperimentTemplateResponse AWS API Documentation
    #
    class UpdateExperimentTemplateResponse < Struct.new(
      :experiment_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a stop condition for an experiment. You can define a stop
    # condition as a CloudWatch alarm.
    #
    # @note When making an API call, you may pass UpdateExperimentTemplateStopConditionInput
    #   data as a hash:
    #
    #       {
    #         source: "StopConditionSource", # required
    #         value: "StopConditionValue",
    #       }
    #
    # @!attribute [rw] source
    #   The source for the stop condition. Specify `aws:cloudwatch:alarm` if
    #   the stop condition is defined by a CloudWatch alarm. Specify `none`
    #   if there is no stop condition.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The Amazon Resource Name (ARN) of the CloudWatch alarm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateExperimentTemplateStopConditionInput AWS API Documentation
    #
    class UpdateExperimentTemplateStopConditionInput < Struct.new(
      :source,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a target for an experiment. You must specify at least one
    # Amazon Resource Name (ARN) or at least one resource tag. You cannot
    # specify both.
    #
    # @note When making an API call, you may pass UpdateExperimentTemplateTargetInput
    #   data as a hash:
    #
    #       {
    #         resource_type: "ResourceType", # required
    #         resource_arns: ["ResourceArn"],
    #         resource_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         filters: [
    #           {
    #             path: "ExperimentTemplateTargetFilterPath", # required
    #             values: ["ExperimentTemplateTargetFilterValue"], # required
    #           },
    #         ],
    #         selection_mode: "ExperimentTemplateTargetSelectionMode", # required
    #       }
    #
    # @!attribute [rw] resource_type
    #   The AWS resource type. The resource type must be supported for the
    #   specified action.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The Amazon Resource Names (ARNs) of the targets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_tags
    #   The tags for the target resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] filters
    #   The filters to apply to identify target resources using specific
    #   attributes.
    #   @return [Array<Types::ExperimentTemplateTargetInputFilter>]
    #
    # @!attribute [rw] selection_mode
    #   Scopes the identified resources to a specific count or percentage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateExperimentTemplateTargetInput AWS API Documentation
    #
    class UpdateExperimentTemplateTargetInput < Struct.new(
      :resource_type,
      :resource_arns,
      :resource_tags,
      :filters,
      :selection_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified input is not valid, or fails to satisfy the constraints
    # for the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
