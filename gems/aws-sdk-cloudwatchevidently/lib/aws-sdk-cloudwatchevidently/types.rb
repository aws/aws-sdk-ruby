# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatchEvidently
  module Types

    # You do not have sufficient permissions to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchEvaluateFeatureRequest
    #   data as a hash:
    #
    #       {
    #         project: "ProjectRef", # required
    #         requests: [ # required
    #           {
    #             entity_id: "EntityId", # required
    #             evaluation_context: "JsonValue",
    #             feature: "FeatureName", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains the feature being
    #   evaluated.
    #   @return [String]
    #
    # @!attribute [rw] requests
    #   An array of structures, where each structure assigns a feature
    #   variation to one user session.
    #   @return [Array<Types::EvaluationRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/BatchEvaluateFeatureRequest AWS API Documentation
    #
    class BatchEvaluateFeatureRequest < Struct.new(
      :project,
      :requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   An array of structures, where each structure displays the results of
    #   one feature evaluation assignment to one user session.
    #   @return [Array<Types::EvaluationResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/BatchEvaluateFeatureResponse AWS API Documentation
    #
    class BatchEvaluateFeatureResponse < Struct.new(
      :results)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing the CloudWatch Logs log group where the project
    # stores evaluation events.
    #
    # @!attribute [rw] log_group
    #   The name of the log group where the project stores evaluation
    #   events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/CloudWatchLogsDestination AWS API Documentation
    #
    class CloudWatchLogsDestination < Struct.new(
      :log_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing the CloudWatch Logs log group where the project
    # stores evaluation events.
    #
    # @note When making an API call, you may pass CloudWatchLogsDestinationConfig
    #   data as a hash:
    #
    #       {
    #         log_group: "CwLogGroupSafeName",
    #       }
    #
    # @!attribute [rw] log_group
    #   The name of the log group where the project stores evaluation
    #   events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/CloudWatchLogsDestinationConfig AWS API Documentation
    #
    class CloudWatchLogsDestinationConfig < Struct.new(
      :log_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource was in an inconsistent state during an update or a
    # deletion.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that caused the exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that is associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateExperimentRequest
    #   data as a hash:
    #
    #       {
    #         description: "Description",
    #         metric_goals: [ # required
    #           {
    #             desired_change: "INCREASE", # accepts INCREASE, DECREASE
    #             metric_definition: { # required
    #               entity_id_key: "JsonPath", # required
    #               event_pattern: "MetricDefinitionConfigEventPatternString",
    #               name: "CwDimensionSafeName", # required
    #               unit_label: "MetricUnitLabel",
    #               value_key: "JsonPath", # required
    #             },
    #           },
    #         ],
    #         name: "ExperimentName", # required
    #         online_ab_config: {
    #           control_treatment_name: "TreatmentName",
    #           treatment_weights: {
    #             "TreatmentName" => 1,
    #           },
    #         },
    #         project: "ProjectRef", # required
    #         randomization_salt: "RandomizationSalt",
    #         sampling_rate: 1,
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         treatments: [ # required
    #           {
    #             description: "Description",
    #             feature: "FeatureName", # required
    #             name: "TreatmentName", # required
    #             variation: "VariationName", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] description
    #   An optional description of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] metric_goals
    #   An array of structures that defines the metrics used for the
    #   experiment, and whether a higher or lower value for each metric is
    #   the goal.
    #   @return [Array<Types::MetricGoalConfig>]
    #
    # @!attribute [rw] name
    #   A name for the new experiment.
    #   @return [String]
    #
    # @!attribute [rw] online_ab_config
    #   A structure that contains the configuration of which variation to
    #   use as the "control" version. tThe "control" version is used for
    #   comparison with other variations. This structure also specifies how
    #   much experiment traffic is allocated to each variation.
    #   @return [Types::OnlineAbConfig]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that you want to create the new
    #   experiment in.
    #   @return [String]
    #
    # @!attribute [rw] randomization_salt
    #   When Evidently assigns a particular user session to an experiment,
    #   it must use a randomization ID to determine which variation the user
    #   session is served. This randomization ID is a combination of the
    #   entity ID and `randomizationSalt`. If you omit `randomizationSalt`,
    #   Evidently uses the experiment name as the `randomizationSalt`.
    #   @return [String]
    #
    # @!attribute [rw] sampling_rate
    #   The portion of the available audience that you want to allocate to
    #   this experiment, in thousandths of a percent. The available audience
    #   is the total audience minus the audience that you have allocated to
    #   overrides or current launches of this feature.
    #
    #   This is represented in thousandths of a percent. For example,
    #   specify 10,000 to allocate 10% of the available audience.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Assigns one or more tags (key-value pairs) to the experiment.
    #
    #   Tags can help you organize and categorize your resources. You can
    #   also use them to scope user permissions by granting a user
    #   permission to access or change only resources with certain tag
    #   values.
    #
    #   Tags don't have any semantic meaning to Amazon Web Services and are
    #   interpreted strictly as strings of characters.
    #
    #        <p>You can associate as many as 50 tags with an experiment.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] treatments
    #   An array of structures that describe the configuration of each
    #   feature variation used in the experiment.
    #   @return [Array<Types::TreatmentConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/CreateExperimentRequest AWS API Documentation
    #
    class CreateExperimentRequest < Struct.new(
      :description,
      :metric_goals,
      :name,
      :online_ab_config,
      :project,
      :randomization_salt,
      :sampling_rate,
      :tags,
      :treatments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment
    #   A structure containing the configuration details of the experiment
    #   that you created.
    #   @return [Types::Experiment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/CreateExperimentResponse AWS API Documentation
    #
    class CreateExperimentResponse < Struct.new(
      :experiment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFeatureRequest
    #   data as a hash:
    #
    #       {
    #         default_variation: "VariationName",
    #         description: "Description",
    #         entity_overrides: {
    #           "EntityId" => "VariationName",
    #         },
    #         evaluation_strategy: "ALL_RULES", # accepts ALL_RULES, DEFAULT_VARIATION
    #         name: "FeatureName", # required
    #         project: "ProjectRef", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         variations: [ # required
    #           {
    #             name: "VariationName", # required
    #             value: { # required
    #               bool_value: false,
    #               double_value: 1.0,
    #               long_value: 1,
    #               string_value: "VariableValueStringValueString",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] default_variation
    #   The name of the variation to use as the default variation. The
    #   default variation is served to users who are not allocated to any
    #   ongoing launches or experiments of this feature.
    #
    #   This variation must also be listed in the `variations` structure.
    #
    #   If you omit `defaultVariation`, the first variation listed in the
    #   `variations` structure is used as the default variation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the feature.
    #   @return [String]
    #
    # @!attribute [rw] entity_overrides
    #   Specify users that should always be served a specific variation of a
    #   feature. Each user is specified by a key-value pair . For each key,
    #   specify a user by entering their user ID, account ID, or some other
    #   identifier. For the value, specify the name of the variation that
    #   they are to be served.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] evaluation_strategy
    #   Specify `ALL_RULES` to activate the traffic allocation specified by
    #   any ongoing launches or experiments. Specify `DEFAULT_VARIATION` to
    #   serve the default variation to all users instead.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the new feature.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that is to contain the new feature.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Assigns one or more tags (key-value pairs) to the feature.
    #
    #   Tags can help you organize and categorize your resources. You can
    #   also use them to scope user permissions by granting a user
    #   permission to access or change only resources with certain tag
    #   values.
    #
    #   Tags don't have any semantic meaning to Amazon Web Services and are
    #   interpreted strictly as strings of characters.
    #
    #        <p>You can associate as many as 50 tags with a feature.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] variations
    #   An array of structures that contain the configuration of the
    #   feature's different variations.
    #   @return [Array<Types::VariationConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/CreateFeatureRequest AWS API Documentation
    #
    class CreateFeatureRequest < Struct.new(
      :default_variation,
      :description,
      :entity_overrides,
      :evaluation_strategy,
      :name,
      :project,
      :tags,
      :variations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] feature
    #   A structure that contains information about the new feature.
    #   @return [Types::Feature]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/CreateFeatureResponse AWS API Documentation
    #
    class CreateFeatureResponse < Struct.new(
      :feature)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateLaunchRequest
    #   data as a hash:
    #
    #       {
    #         description: "Description",
    #         groups: [ # required
    #           {
    #             description: "Description",
    #             feature: "FeatureName", # required
    #             name: "GroupName", # required
    #             variation: "VariationName", # required
    #           },
    #         ],
    #         metric_monitors: [
    #           {
    #             metric_definition: { # required
    #               entity_id_key: "JsonPath", # required
    #               event_pattern: "MetricDefinitionConfigEventPatternString",
    #               name: "CwDimensionSafeName", # required
    #               unit_label: "MetricUnitLabel",
    #               value_key: "JsonPath", # required
    #             },
    #           },
    #         ],
    #         name: "LaunchName", # required
    #         project: "ProjectRef", # required
    #         randomization_salt: "RandomizationSalt",
    #         scheduled_splits_config: {
    #           steps: [ # required
    #             {
    #               group_weights: { # required
    #                 "GroupName" => 1,
    #               },
    #               start_time: Time.now, # required
    #             },
    #           ],
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] description
    #   An optional description for the launch.
    #   @return [String]
    #
    # @!attribute [rw] groups
    #   An array of structures that contains the feature and variations that
    #   are to be used for the launch.
    #   @return [Array<Types::LaunchGroupConfig>]
    #
    # @!attribute [rw] metric_monitors
    #   An array of structures that define the metrics that will be used to
    #   monitor the launch performance.
    #   @return [Array<Types::MetricMonitorConfig>]
    #
    # @!attribute [rw] name
    #   The name for the new launch.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that you want to create the launch
    #   in.
    #   @return [String]
    #
    # @!attribute [rw] randomization_salt
    #   When Evidently assigns a particular user session to a launch, it
    #   must use a randomization ID to determine which variation the user
    #   session is served. This randomization ID is a combination of the
    #   entity ID and `randomizationSalt`. If you omit `randomizationSalt`,
    #   Evidently uses the launch name as the `randomizationsSalt`.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_splits_config
    #   An array of structures that define the traffic allocation
    #   percentages among the feature variations during each step of the
    #   launch.
    #   @return [Types::ScheduledSplitsLaunchConfig]
    #
    # @!attribute [rw] tags
    #   Assigns one or more tags (key-value pairs) to the launch.
    #
    #   Tags can help you organize and categorize your resources. You can
    #   also use them to scope user permissions by granting a user
    #   permission to access or change only resources with certain tag
    #   values.
    #
    #   Tags don't have any semantic meaning to Amazon Web Services and are
    #   interpreted strictly as strings of characters.
    #
    #        <p>You can associate as many as 50 tags with a launch.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/CreateLaunchRequest AWS API Documentation
    #
    class CreateLaunchRequest < Struct.new(
      :description,
      :groups,
      :metric_monitors,
      :name,
      :project,
      :randomization_salt,
      :scheduled_splits_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch
    #   A structure that contains the configuration of the launch that was
    #   created.
    #   @return [Types::Launch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/CreateLaunchResponse AWS API Documentation
    #
    class CreateLaunchResponse < Struct.new(
      :launch)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateProjectRequest
    #   data as a hash:
    #
    #       {
    #         data_delivery: {
    #           cloud_watch_logs: {
    #             log_group: "CwLogGroupSafeName",
    #           },
    #           s3_destination: {
    #             bucket: "S3BucketSafeName",
    #             prefix: "S3PrefixSafeName",
    #           },
    #         },
    #         description: "Description",
    #         name: "ProjectName", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] data_delivery
    #   A structure that contains information about where Evidently is to
    #   store evaluation events for longer term storage, if you choose to do
    #   so. If you choose not to store these events, Evidently deletes them
    #   after using them to produce metrics and other experiment results
    #   that you can view.
    #   @return [Types::ProjectDataDeliveryConfig]
    #
    # @!attribute [rw] description
    #   An optional description of the project.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the project.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Assigns one or more tags (key-value pairs) to the project.
    #
    #   Tags can help you organize and categorize your resources. You can
    #   also use them to scope user permissions by granting a user
    #   permission to access or change only resources with certain tag
    #   values.
    #
    #   Tags don't have any semantic meaning to Amazon Web Services and are
    #   interpreted strictly as strings of characters.
    #
    #        <p>You can associate as many as 50 tags with a project.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/CreateProjectRequest AWS API Documentation
    #
    class CreateProjectRequest < Struct.new(
      :data_delivery,
      :description,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project
    #   A structure that contains information about the created project.
    #   @return [Types::Project]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/CreateProjectResponse AWS API Documentation
    #
    class CreateProjectResponse < Struct.new(
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteExperimentRequest
    #   data as a hash:
    #
    #       {
    #         experiment: "ExperimentName", # required
    #         project: "ProjectRef", # required
    #       }
    #
    # @!attribute [rw] experiment
    #   The name of the experiment to delete.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains the experiment to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/DeleteExperimentRequest AWS API Documentation
    #
    class DeleteExperimentRequest < Struct.new(
      :experiment,
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/DeleteExperimentResponse AWS API Documentation
    #
    class DeleteExperimentResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteFeatureRequest
    #   data as a hash:
    #
    #       {
    #         feature: "FeatureName", # required
    #         project: "ProjectRef", # required
    #       }
    #
    # @!attribute [rw] feature
    #   The name of the feature to delete.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains the feature to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/DeleteFeatureRequest AWS API Documentation
    #
    class DeleteFeatureRequest < Struct.new(
      :feature,
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/DeleteFeatureResponse AWS API Documentation
    #
    class DeleteFeatureResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteLaunchRequest
    #   data as a hash:
    #
    #       {
    #         launch: "LaunchName", # required
    #         project: "ProjectRef", # required
    #       }
    #
    # @!attribute [rw] launch
    #   The name of the launch to delete.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains the launch to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/DeleteLaunchRequest AWS API Documentation
    #
    class DeleteLaunchRequest < Struct.new(
      :launch,
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/DeleteLaunchResponse AWS API Documentation
    #
    class DeleteLaunchResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteProjectRequest
    #   data as a hash:
    #
    #       {
    #         project: "ProjectRef", # required
    #       }
    #
    # @!attribute [rw] project
    #   The name or ARN of the project to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/DeleteProjectRequest AWS API Documentation
    #
    class DeleteProjectRequest < Struct.new(
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/DeleteProjectResponse AWS API Documentation
    #
    class DeleteProjectResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass EvaluateFeatureRequest
    #   data as a hash:
    #
    #       {
    #         entity_id: "EntityId", # required
    #         evaluation_context: "JsonValue",
    #         feature: "FeatureName", # required
    #         project: "ProjectRef", # required
    #       }
    #
    # @!attribute [rw] entity_id
    #   An internal ID that represents a unique user of the application.
    #   This `entityID` is checked against any override rules assigned for
    #   this feature.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_context
    #   A JSON block of attributes that you can optionally pass in. This
    #   JSON block is included in the evaluation events sent to Evidently
    #   from the user session.
    #   @return [String]
    #
    # @!attribute [rw] feature
    #   The name of the feature being evaluated.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains this feature.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/EvaluateFeatureRequest AWS API Documentation
    #
    class EvaluateFeatureRequest < Struct.new(
      :entity_id,
      :evaluation_context,
      :feature,
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] details
    #   If this user was assigned to a launch or experiment, this field
    #   lists the launch or experiment name.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Specifies the reason that the user session was assigned this
    #   variation. Possible values include `DEFAULT`, meaning the user was
    #   served the default variation; `LAUNCH_RULE_MATCH`, if the user
    #   session was enrolled in a launch; `EXPERIMENT_RULE_MATCH`, if the
    #   user session was enrolled in an experiment; or
    #   `ENTITY_OVERRIDES_MATCH`, if the user's `entityId` matches an
    #   override rule.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value assigned to this variation to differentiate it from the
    #   other variations of this feature.
    #   @return [Types::VariableValue]
    #
    # @!attribute [rw] variation
    #   The name of the variation that was served to the user session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/EvaluateFeatureResponse AWS API Documentation
    #
    class EvaluateFeatureResponse < Struct.new(
      :details,
      :reason,
      :value,
      :variation)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure assigns a feature variation to one user session.
    #
    # @note When making an API call, you may pass EvaluationRequest
    #   data as a hash:
    #
    #       {
    #         entity_id: "EntityId", # required
    #         evaluation_context: "JsonValue",
    #         feature: "FeatureName", # required
    #       }
    #
    # @!attribute [rw] entity_id
    #   An internal ID that represents a unique user session of the
    #   application. This `entityID` is checked against any override rules
    #   assigned for this feature.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_context
    #   A JSON block of attributes that you can optionally pass in. This
    #   JSON block is included in the evaluation events sent to Evidently
    #   from the user session.
    #   @return [String]
    #
    # @!attribute [rw] feature
    #   The name of the feature being evaluated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/EvaluationRequest AWS API Documentation
    #
    class EvaluationRequest < Struct.new(
      :entity_id,
      :evaluation_context,
      :feature)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure displays the results of one feature evaluation
    # assignment to one user session.
    #
    # @!attribute [rw] details
    #   If this user was assigned to a launch or experiment, this field
    #   lists the launch or experiment name.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   An internal ID that represents a unique user session of the
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] feature
    #   The name of the feature being evaluated.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains the feature being
    #   evaluated.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Specifies the reason that the user session was assigned this
    #   variation. Possible values include `DEFAULT`, meaning the user was
    #   served the default variation; `LAUNCH_RULE_MATCH`, if the user
    #   session was enrolled in a launch; or `EXPERIMENT_RULE_MATCH`, if the
    #   user session was enrolled in an experiment.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value assigned to this variation to differentiate it from the
    #   other variations of this feature.
    #   @return [Types::VariableValue]
    #
    # @!attribute [rw] variation
    #   The name of the variation that was served to the user session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/EvaluationResult AWS API Documentation
    #
    class EvaluationResult < Struct.new(
      :details,
      :entity_id,
      :feature,
      :project,
      :reason,
      :value,
      :variation)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the information about an evaluation rule for
    # this feature, if it is used in a launch or experiment.
    #
    # @!attribute [rw] name
    #   The name of the experiment or launch.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   This value is `aws.evidently.splits` if this is an evaluation rule
    #   for a launch, and it is `aws.evidently.onlineab` if this is an
    #   evaluation rule for an experiment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/EvaluationRule AWS API Documentation
    #
    class EvaluationRule < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the information about one evaluation event
    # or custom event sent to Evidently. This is a JSON payload. If this
    # event specifies a pre-defined event type, the payload must follow the
    # defined event schema.
    #
    # @note When making an API call, you may pass Event
    #   data as a hash:
    #
    #       {
    #         data: "JsonValue", # required
    #         timestamp: Time.now, # required
    #         type: "aws.evidently.evaluation", # required, accepts aws.evidently.evaluation, aws.evidently.custom
    #       }
    #
    # @!attribute [rw] data
    #   The event data.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp of the event.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   `aws.evidently.evaluation` specifies an evaluation event, which
    #   determines which feature variation that a user sees.
    #   `aws.evidently.custom` specifies a custom event, which generates
    #   metrics from user actions such as clicks and checkouts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/Event AWS API Documentation
    #
    class Event < Struct.new(
      :data,
      :timestamp,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing the configuration details of an experiment.
    #
    # @!attribute [rw] arn
    #   The ARN of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time that the experiment is first created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] execution
    #   A structure that contains the date and time that the experiment
    #   started and ended.
    #   @return [Types::ExperimentExecution]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time that the experiment was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] metric_goals
    #   An array of structures that defines the metrics used for the
    #   experiment, and whether a higher or lower value for each metric is
    #   the goal.
    #   @return [Array<Types::MetricGoal>]
    #
    # @!attribute [rw] name
    #   The name of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] online_ab_definition
    #   A structure that contains the configuration of which variation to
    #   use as the "control" version. The "control" version is used for
    #   comparison with other variations. This structure also specifies how
    #   much experiment traffic is allocated to each variation.
    #   @return [Types::OnlineAbDefinition]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains this experiment.
    #   @return [String]
    #
    # @!attribute [rw] randomization_salt
    #   This value is used when Evidently assigns a particular user session
    #   to the experiment. It helps create a randomization ID to determine
    #   which variation the user session is served. This randomization ID is
    #   a combination of the entity ID and `randomizationSalt`.
    #   @return [String]
    #
    # @!attribute [rw] sampling_rate
    #   In thousandths of a percent, the amount of the available audience
    #   that is allocated to this experiment. The available audience is the
    #   total audience minus the audience that you have allocated to
    #   overrides or current launches of this feature.
    #
    #   This is represented in thousandths of a percent, so a value of
    #   10,000 is 10% of the available audience.
    #   @return [Integer]
    #
    # @!attribute [rw] schedule
    #   A structure that contains the time and date that Evidently completed
    #   the analysis of the experiment.
    #   @return [Types::ExperimentSchedule]
    #
    # @!attribute [rw] status
    #   The current state of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   If the experiment was stopped, this is the string that was entered
    #   by the person who stopped the experiment, to explain why it was
    #   stopped.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values associated with this experiment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] treatments
    #   An array of structures that describe the configuration of each
    #   feature variation used in the experiment.
    #   @return [Array<Types::Treatment>]
    #
    # @!attribute [rw] type
    #   The type of this experiment. Currently, this value must be
    #   `aws.experiment.onlineab`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/Experiment AWS API Documentation
    #
    class Experiment < Struct.new(
      :arn,
      :created_time,
      :description,
      :execution,
      :last_updated_time,
      :metric_goals,
      :name,
      :online_ab_definition,
      :project,
      :randomization_salt,
      :sampling_rate,
      :schedule,
      :status,
      :status_reason,
      :tags,
      :treatments,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains the date and time that the experiment started
    # and ended.
    #
    # @!attribute [rw] ended_time
    #   The date and time that the experiment ended.
    #   @return [Time]
    #
    # @!attribute [rw] started_time
    #   The date and time that the experiment started.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ExperimentExecution AWS API Documentation
    #
    class ExperimentExecution < Struct.new(
      :ended_time,
      :started_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains results of an experiment.
    #
    # @!attribute [rw] content
    #   The content of the report.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric that is analyzed in this experiment report.
    #   @return [String]
    #
    # @!attribute [rw] report_name
    #   The type of analysis used for this report.
    #   @return [String]
    #
    # @!attribute [rw] treatment_name
    #   The name of the variation that this report pertains to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ExperimentReport AWS API Documentation
    #
    class ExperimentReport < Struct.new(
      :content,
      :metric_name,
      :report_name,
      :treatment_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains experiment results for one metric that is
    # monitored in the experiment.
    #
    # @!attribute [rw] metric_name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] result_stat
    #   The experiment statistic that these results pertain to.
    #   @return [String]
    #
    # @!attribute [rw] treatment_name
    #   The treatment, or variation, that returned the `values` in this
    #   structure.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values for the `metricName` that were recorded in the
    #   experiment.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ExperimentResultsData AWS API Documentation
    #
    class ExperimentResultsData < Struct.new(
      :metric_name,
      :result_stat,
      :treatment_name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains the time and date that Evidently completed the
    # analysis of the experiment.
    #
    # @!attribute [rw] analysis_complete_time
    #   The time and date that Evidently completed the analysis of the
    #   experiment.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ExperimentSchedule AWS API Documentation
    #
    class ExperimentSchedule < Struct.new(
      :analysis_complete_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about one Evidently feature in
    # your account.
    #
    # @!attribute [rw] arn
    #   The ARN of the feature.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time that the feature is created.
    #   @return [Time]
    #
    # @!attribute [rw] default_variation
    #   The name of the variation that is used as the default variation. The
    #   default variation is served to users who are not allocated to any
    #   ongoing launches or experiments of this feature.
    #
    #   This variation must also be listed in the `variations` structure.
    #
    #   If you omit `defaultVariation`, the first variation listed in the
    #   `variations` structure is used as the default variation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the feature.
    #   @return [String]
    #
    # @!attribute [rw] entity_overrides
    #   A set of key-value pairs that specify users who should always be
    #   served a specific variation of a feature. Each key specifies a user
    #   using their user ID, account ID, or some other identifier. The value
    #   specifies the name of the variation that the user is to be served.
    #
    #   For the override to be successful, the value of the key must match
    #   the `entityId` used in the [EvaluateFeature][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_EvaluateFeature.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] evaluation_rules
    #   An array of structures that define the evaluation rules for the
    #   feature.
    #   @return [Array<Types::EvaluationRule>]
    #
    # @!attribute [rw] evaluation_strategy
    #   If this value is `ALL_RULES`, the traffic allocation specified by
    #   any ongoing launches or experiments is being used. If this is
    #   `DEFAULT_VARIATION`, the default variation is being served to all
    #   users.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time that the feature was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the feature.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains the feature.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current state of the feature.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values associated with this feature.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] value_type
    #   Defines the type of value used to define the different feature
    #   variations. For more information, see [Variation types][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-variationtypes.html
    #   @return [String]
    #
    # @!attribute [rw] variations
    #   An array of structures that contain the configuration of the
    #   feature's different variations.
    #   @return [Array<Types::Variation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/Feature AWS API Documentation
    #
    class Feature < Struct.new(
      :arn,
      :created_time,
      :default_variation,
      :description,
      :entity_overrides,
      :evaluation_rules,
      :evaluation_strategy,
      :last_updated_time,
      :name,
      :project,
      :status,
      :tags,
      :value_type,
      :variations)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about one Evidently feature in
    # your account.
    #
    # @!attribute [rw] arn
    #   The ARN of the feature.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time that the feature is created.
    #   @return [Time]
    #
    # @!attribute [rw] default_variation
    #   The name of the variation that is used as the default variation. The
    #   default variation is served to users who are not allocated to any
    #   ongoing launches or experiments of this feature.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_rules
    #   An array of structures that define
    #   @return [Array<Types::EvaluationRule>]
    #
    # @!attribute [rw] evaluation_strategy
    #   If this value is `ALL_RULES`, the traffic allocation specified by
    #   any ongoing launches or experiments is being used. If this is
    #   `DEFAULT_VARIATION`, the default variation is being served to all
    #   users.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time that the feature was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the feature.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains the feature.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current state of the feature.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values associated with this feature.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/FeatureSummary AWS API Documentation
    #
    class FeatureSummary < Struct.new(
      :arn,
      :created_time,
      :default_variation,
      :evaluation_rules,
      :evaluation_strategy,
      :last_updated_time,
      :name,
      :project,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetExperimentRequest
    #   data as a hash:
    #
    #       {
    #         experiment: "ExperimentName", # required
    #         project: "ProjectRef", # required
    #       }
    #
    # @!attribute [rw] experiment
    #   The name of the experiment that you want to see the details of.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains the experiment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/GetExperimentRequest AWS API Documentation
    #
    class GetExperimentRequest < Struct.new(
      :experiment,
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment
    #   A structure containing the configuration details of the experiment.
    #   @return [Types::Experiment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/GetExperimentResponse AWS API Documentation
    #
    class GetExperimentResponse < Struct.new(
      :experiment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetExperimentResultsRequest
    #   data as a hash:
    #
    #       {
    #         base_stat: "Mean", # accepts Mean
    #         end_time: Time.now,
    #         experiment: "ExperimentName", # required
    #         metric_names: ["CwDimensionSafeName"], # required
    #         period: 1,
    #         project: "ProjectRef", # required
    #         report_names: ["BayesianInference"], # accepts BayesianInference
    #         result_stats: ["BaseStat"], # accepts BaseStat, TreatmentEffect, ConfidenceInterval, PValue
    #         start_time: Time.now,
    #         treatment_names: ["TreatmentName"], # required
    #       }
    #
    # @!attribute [rw] base_stat
    #   The statistic used to calculate experiment results. Currently the
    #   only valid value is `mean`, which uses the mean of the collected
    #   values as the statistic.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The date and time that the experiment ended, if it is completed.
    #   @return [Time]
    #
    # @!attribute [rw] experiment
    #   The name of the experiment to retrieve the results of.
    #   @return [String]
    #
    # @!attribute [rw] metric_names
    #   The names of the experiment metrics that you want to see the results
    #   of.
    #   @return [Array<String>]
    #
    # @!attribute [rw] period
    #   In seconds, the amount of time to aggregate results together.
    #   @return [Integer]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains the experiment that you
    #   want to see the results of.
    #   @return [String]
    #
    # @!attribute [rw] report_names
    #   The names of the report types that you want to see. Currently,
    #   `BayesianInference` is the only valid value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] result_stats
    #   The statistics that you want to see in the returned results.
    #
    #   * `PValue` specifies to use p-values for the results. A p-value is
    #     used in hypothesis testing to measure how often you are willing to
    #     make a mistake in rejecting the null hypothesis. A general
    #     practice is to reject the null hypothesis and declare that the
    #     results are statistically significant when the p-value is less
    #     than 0.05.
    #
    #   * `ConfidenceInterval` specifies a confidence interval for the
    #     results. The confidence interval represents the range of values
    #     for the chosen metric that is likely to contain the true
    #     difference between the `baseStat` of a variation and the baseline.
    #     Evidently returns the 95% confidence interval.
    #
    #   * `TreatmentEffect` is the difference in the statistic specified by
    #     the `baseStat` parameter between each variation and the default
    #     variation.
    #
    #   * `BaseStat` returns the statistical values collected for the metric
    #     for each variation. The statistic uses the same statistic
    #     specified in the `baseStat` parameter. Therefore, if `baseStat` is
    #     `mean`, this returns the mean of the values collected for each
    #     variation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The date and time that the experiment started.
    #   @return [Time]
    #
    # @!attribute [rw] treatment_names
    #   The names of the experiment treatments that you want to see the
    #   results for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/GetExperimentResultsRequest AWS API Documentation
    #
    class GetExperimentResultsRequest < Struct.new(
      :base_stat,
      :end_time,
      :experiment,
      :metric_names,
      :period,
      :project,
      :report_names,
      :result_stats,
      :start_time,
      :treatment_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reports
    #   An array of structures that include the reports that you requested.
    #   @return [Array<Types::ExperimentReport>]
    #
    # @!attribute [rw] results_data
    #   An array of structures that include experiment results including
    #   metric names and values.
    #   @return [Array<Types::ExperimentResultsData>]
    #
    # @!attribute [rw] timestamps
    #   The timestamps of each result returned.
    #   @return [Array<Time>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/GetExperimentResultsResponse AWS API Documentation
    #
    class GetExperimentResultsResponse < Struct.new(
      :reports,
      :results_data,
      :timestamps)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFeatureRequest
    #   data as a hash:
    #
    #       {
    #         feature: "FeatureName", # required
    #         project: "ProjectRef", # required
    #       }
    #
    # @!attribute [rw] feature
    #   The name of the feature that you want to retrieve information for.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains the feature.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/GetFeatureRequest AWS API Documentation
    #
    class GetFeatureRequest < Struct.new(
      :feature,
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] feature
    #   A structure containing the configuration details of the feature.
    #   @return [Types::Feature]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/GetFeatureResponse AWS API Documentation
    #
    class GetFeatureResponse < Struct.new(
      :feature)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLaunchRequest
    #   data as a hash:
    #
    #       {
    #         launch: "LaunchName", # required
    #         project: "ProjectRef", # required
    #       }
    #
    # @!attribute [rw] launch
    #   The name of the launch that you want to see the details of.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains the launch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/GetLaunchRequest AWS API Documentation
    #
    class GetLaunchRequest < Struct.new(
      :launch,
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch
    #   A structure containing the configuration details of the launch.
    #   @return [Types::Launch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/GetLaunchResponse AWS API Documentation
    #
    class GetLaunchResponse < Struct.new(
      :launch)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetProjectRequest
    #   data as a hash:
    #
    #       {
    #         project: "ProjectRef", # required
    #       }
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that you want to see the details of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/GetProjectRequest AWS API Documentation
    #
    class GetProjectRequest < Struct.new(
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project
    #   A structure containing the configuration details of the project.
    #   @return [Types::Project]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/GetProjectResponse AWS API Documentation
    #
    class GetProjectResponse < Struct.new(
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unexpected error while processing the request. Retry the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains the configuration details of one Evidently
    # launch.
    #
    # @!attribute [rw] arn
    #   The ARN of the launch.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time that the launch is created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the launch.
    #   @return [String]
    #
    # @!attribute [rw] execution
    #   A structure that contains information about the start and end times
    #   of the launch.
    #   @return [Types::LaunchExecution]
    #
    # @!attribute [rw] groups
    #   An array of structures that define the feature variations that are
    #   being used in the launch.
    #   @return [Array<Types::LaunchGroup>]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time that the launch was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] metric_monitors
    #   An array of structures that define the metrics that are being used
    #   to monitor the launch performance.
    #   @return [Array<Types::MetricMonitor>]
    #
    # @!attribute [rw] name
    #   The name of the launch.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains the launch.
    #   @return [String]
    #
    # @!attribute [rw] randomization_salt
    #   This value is used when Evidently assigns a particular user session
    #   to the launch, to help create a randomization ID to determine which
    #   variation the user session is served. This randomization ID is a
    #   combination of the entity ID and `randomizationSalt`.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_splits_definition
    #   An array of structures that define the traffic allocation
    #   percentages among the feature variations during each step of the
    #   launch.
    #   @return [Types::ScheduledSplitsLaunchDefinition]
    #
    # @!attribute [rw] status
    #   The current state of the launch.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   If the launch was stopped, this is the string that was entered by
    #   the person who stopped the launch, to explain why it was stopped.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values associated with this launch.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of launch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/Launch AWS API Documentation
    #
    class Launch < Struct.new(
      :arn,
      :created_time,
      :description,
      :execution,
      :groups,
      :last_updated_time,
      :metric_monitors,
      :name,
      :project,
      :randomization_salt,
      :scheduled_splits_definition,
      :status,
      :status_reason,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about the start and end times of
    # the launch.
    #
    # @!attribute [rw] ended_time
    #   The date and time that the launch ended.
    #   @return [Time]
    #
    # @!attribute [rw] started_time
    #   The date and time that the launch started.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/LaunchExecution AWS API Documentation
    #
    class LaunchExecution < Struct.new(
      :ended_time,
      :started_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines one launch group in a launch. A launch group
    # is a variation of the feature that you are including in the launch.
    #
    # @!attribute [rw] description
    #   A description of the launch group.
    #   @return [String]
    #
    # @!attribute [rw] feature_variations
    #   The feature variation for this launch group. This is a key-value
    #   pair.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] name
    #   The name of the launch group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/LaunchGroup AWS API Documentation
    #
    class LaunchGroup < Struct.new(
      :description,
      :feature_variations,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines one launch group in a launch. A launch group
    # is a variation of the feature that you are including in the launch.
    #
    # @note When making an API call, you may pass LaunchGroupConfig
    #   data as a hash:
    #
    #       {
    #         description: "Description",
    #         feature: "FeatureName", # required
    #         name: "GroupName", # required
    #         variation: "VariationName", # required
    #       }
    #
    # @!attribute [rw] description
    #   A description of the launch group.
    #   @return [String]
    #
    # @!attribute [rw] feature
    #   The feature that this launch is using.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for this launch group.
    #   @return [String]
    #
    # @!attribute [rw] variation
    #   The feature variation to use for this launch group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/LaunchGroupConfig AWS API Documentation
    #
    class LaunchGroupConfig < Struct.new(
      :description,
      :feature,
      :name,
      :variation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListExperimentsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         project: "ProjectRef", # required
    #         status: "CREATED", # accepts CREATED, UPDATING, RUNNING, COMPLETED, CANCELLED
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of results. You
    #   received this token from a previous `ListExperiments` operation.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project to return the experiment list from.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Use this optional parameter to limit the returned results to only
    #   the experiments with the status that you specify here.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ListExperimentsRequest AWS API Documentation
    #
    class ListExperimentsRequest < Struct.new(
      :max_results,
      :next_token,
      :project,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiments
    #   An array of structures that contain the configuration details of the
    #   experiments in the specified project.
    #   @return [Array<Types::Experiment>]
    #
    # @!attribute [rw] next_token
    #   The token to use in a subsequent `ListExperiments` operation to
    #   return the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ListExperimentsResponse AWS API Documentation
    #
    class ListExperimentsResponse < Struct.new(
      :experiments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFeaturesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         project: "ProjectRef", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of results. You
    #   received this token from a previous `ListFeatures` operation.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project to return the feature list from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ListFeaturesRequest AWS API Documentation
    #
    class ListFeaturesRequest < Struct.new(
      :max_results,
      :next_token,
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] features
    #   An array of structures that contain the configuration details of the
    #   features in the specified project.
    #   @return [Array<Types::FeatureSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use in a subsequent `ListFeatures` operation to return
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ListFeaturesResponse AWS API Documentation
    #
    class ListFeaturesResponse < Struct.new(
      :features,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListLaunchesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         project: "ProjectRef", # required
    #         status: "CREATED", # accepts CREATED, UPDATING, RUNNING, COMPLETED, CANCELLED
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of results. You
    #   received this token from a previous `ListLaunches` operation.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project to return the launch list from.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Use this optional parameter to limit the returned results to only
    #   the launches with the status that you specify here.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ListLaunchesRequest AWS API Documentation
    #
    class ListLaunchesRequest < Struct.new(
      :max_results,
      :next_token,
      :project,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launches
    #   An array of structures that contain the configuration details of the
    #   launches in the specified project.
    #   @return [Array<Types::Launch>]
    #
    # @!attribute [rw] next_token
    #   The token to use in a subsequent `ListLaunches` operation to return
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ListLaunchesResponse AWS API Documentation
    #
    class ListLaunchesResponse < Struct.new(
      :launches,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProjectsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of results. You
    #   received this token from a previous `ListProjects` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ListProjectsRequest AWS API Documentation
    #
    class ListProjectsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use in a subsequent `ListProjects` operation to return
    #   the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] projects
    #   An array of structures that contain the configuration details of the
    #   projects in the Region.
    #   @return [Array<Types::ProjectSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ListProjectsResponse AWS API Documentation
    #
    class ListProjectsResponse < Struct.new(
      :next_token,
      :projects)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource that you want to see the tags of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tag keys and values associated with the resource you
    #   specified.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure defines a metric that is being used to evaluate the
    # variations during a launch or experiment.
    #
    # @!attribute [rw] entity_id_key
    #   The entity, such as a user or session, that does an action that
    #   causes a metric value to be recorded.
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   The EventBridge event pattern that defines how the metric is
    #   recorded.
    #
    #   For more information about EventBridge event patterns, see [Amazon
    #   EventBridge event patterns][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] unit_label
    #   The label for the units that the metric is measuring.
    #   @return [String]
    #
    # @!attribute [rw] value_key
    #   The value that is tracked to produce the metric.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/MetricDefinition AWS API Documentation
    #
    class MetricDefinition < Struct.new(
      :entity_id_key,
      :event_pattern,
      :name,
      :unit_label,
      :value_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure defines a metric that you want to use to evaluate the
    # variations during a launch or experiment.
    #
    # @note When making an API call, you may pass MetricDefinitionConfig
    #   data as a hash:
    #
    #       {
    #         entity_id_key: "JsonPath", # required
    #         event_pattern: "MetricDefinitionConfigEventPatternString",
    #         name: "CwDimensionSafeName", # required
    #         unit_label: "MetricUnitLabel",
    #         value_key: "JsonPath", # required
    #       }
    #
    # @!attribute [rw] entity_id_key
    #   The entity, such as a user or session, that does an action that
    #   causes a metric value to be recorded. An example is
    #   `userDetails.userID`.
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   The EventBridge event pattern that defines how the metric is
    #   recorded.
    #
    #   For more information about EventBridge event patterns, see [Amazon
    #   EventBridge event patterns][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the metric.
    #   @return [String]
    #
    # @!attribute [rw] unit_label
    #   A label for the units that the metric is measuring.
    #   @return [String]
    #
    # @!attribute [rw] value_key
    #   The value that is tracked to produce the metric.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/MetricDefinitionConfig AWS API Documentation
    #
    class MetricDefinitionConfig < Struct.new(
      :entity_id_key,
      :event_pattern,
      :name,
      :unit_label,
      :value_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that tells Evidently whether higher or lower values are
    # desired for a metric that is used in an experiment.
    #
    # @!attribute [rw] desired_change
    #   `INCREASE` means that a variation with a higher number for this
    #   metric is performing better.
    #
    #   `DECREASE` means that a variation with a lower number for this
    #   metric is performing better.
    #   @return [String]
    #
    # @!attribute [rw] metric_definition
    #   A structure that contains details about the metric.
    #   @return [Types::MetricDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/MetricGoal AWS API Documentation
    #
    class MetricGoal < Struct.new(
      :desired_change,
      :metric_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this structure to tell Evidently whether higher or lower values
    # are desired for a metric that is used in an experiment.
    #
    # @note When making an API call, you may pass MetricGoalConfig
    #   data as a hash:
    #
    #       {
    #         desired_change: "INCREASE", # accepts INCREASE, DECREASE
    #         metric_definition: { # required
    #           entity_id_key: "JsonPath", # required
    #           event_pattern: "MetricDefinitionConfigEventPatternString",
    #           name: "CwDimensionSafeName", # required
    #           unit_label: "MetricUnitLabel",
    #           value_key: "JsonPath", # required
    #         },
    #       }
    #
    # @!attribute [rw] desired_change
    #   `INCREASE` means that a variation with a higher number for this
    #   metric is performing better.
    #
    #   `DECREASE` means that a variation with a lower number for this
    #   metric is performing better.
    #   @return [String]
    #
    # @!attribute [rw] metric_definition
    #   A structure that contains details about the metric.
    #   @return [Types::MetricDefinitionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/MetricGoalConfig AWS API Documentation
    #
    class MetricGoalConfig < Struct.new(
      :desired_change,
      :metric_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines a metric to be used to monitor performance of
    # the variations during a launch.
    #
    # @!attribute [rw] metric_definition
    #   A structure that defines the metric.
    #   @return [Types::MetricDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/MetricMonitor AWS API Documentation
    #
    class MetricMonitor < Struct.new(
      :metric_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines a metric to be used to monitor performance of
    # the variations during a launch.
    #
    # @note When making an API call, you may pass MetricMonitorConfig
    #   data as a hash:
    #
    #       {
    #         metric_definition: { # required
    #           entity_id_key: "JsonPath", # required
    #           event_pattern: "MetricDefinitionConfigEventPatternString",
    #           name: "CwDimensionSafeName", # required
    #           unit_label: "MetricUnitLabel",
    #           value_key: "JsonPath", # required
    #         },
    #       }
    #
    # @!attribute [rw] metric_definition
    #   A structure that defines the metric.
    #   @return [Types::MetricDefinitionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/MetricMonitorConfig AWS API Documentation
    #
    class MetricMonitorConfig < Struct.new(
      :metric_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the configuration of which variation to use
    # as the "control" version. The "control" version is used for
    # comparison with other variations. This structure also specifies how
    # much experiment traffic is allocated to each variation.
    #
    # @note When making an API call, you may pass OnlineAbConfig
    #   data as a hash:
    #
    #       {
    #         control_treatment_name: "TreatmentName",
    #         treatment_weights: {
    #           "TreatmentName" => 1,
    #         },
    #       }
    #
    # @!attribute [rw] control_treatment_name
    #   The name of the variation that is to be the default variation that
    #   the other variations are compared to.
    #   @return [String]
    #
    # @!attribute [rw] treatment_weights
    #   A set of key-value pairs. The keys are variation names, and the
    #   values are the portion of experiment traffic to be assigned to that
    #   variation. Specify the traffic portion in thousandths of a percent,
    #   so 20,000 for a variation would allocate 20% of the experiment
    #   traffic to that variation.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/OnlineAbConfig AWS API Documentation
    #
    class OnlineAbConfig < Struct.new(
      :control_treatment_name,
      :treatment_weights)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the configuration of which variation to use
    # as the "control" version. The "control" version is used for
    # comparison with other variations. This structure also specifies how
    # much experiment traffic is allocated to each variation.
    #
    # @!attribute [rw] control_treatment_name
    #   The name of the variation that is the default variation that the
    #   other variations are compared to.
    #   @return [String]
    #
    # @!attribute [rw] treatment_weights
    #   A set of key-value pairs. The keys are variation names, and the
    #   values are the portion of experiment traffic to be assigned to that
    #   variation. The traffic portion is specified in thousandths of a
    #   percent, so 20,000 for a variation would allocate 20% of the
    #   experiment traffic to that variation.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/OnlineAbDefinition AWS API Documentation
    #
    class OnlineAbDefinition < Struct.new(
      :control_treatment_name,
      :treatment_weights)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure defines a project, which is the logical object in
    # Evidently that can contain features, launches, and experiments. Use
    # projects to group similar features together.
    #
    # @!attribute [rw] active_experiment_count
    #   The number of ongoing experiments currently in the project.
    #   @return [Integer]
    #
    # @!attribute [rw] active_launch_count
    #   The number of ongoing launches currently in the project.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The name or ARN of the project.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time that the project is created.
    #   @return [Time]
    #
    # @!attribute [rw] data_delivery
    #   A structure that contains information about where Evidently is to
    #   store evaluation events for longer term storage.
    #   @return [Types::ProjectDataDelivery]
    #
    # @!attribute [rw] description
    #   The user-entered description of the project.
    #   @return [String]
    #
    # @!attribute [rw] experiment_count
    #   The number of experiments currently in the project. This includes
    #   all experiments that have been created and not deleted, whether they
    #   are ongoing or not.
    #   @return [Integer]
    #
    # @!attribute [rw] feature_count
    #   The number of features currently in the project.
    #   @return [Integer]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time that the project was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] launch_count
    #   The number of launches currently in the project. This includes all
    #   launches that have been created and not deleted, whether they are
    #   ongoing or not.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the project.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current state of the project.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values associated with this project.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/Project AWS API Documentation
    #
    class Project < Struct.new(
      :active_experiment_count,
      :active_launch_count,
      :arn,
      :created_time,
      :data_delivery,
      :description,
      :experiment_count,
      :feature_count,
      :last_updated_time,
      :launch_count,
      :name,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about where Evidently is to
    # store evaluation events for longer term storage.
    #
    # @!attribute [rw] cloud_watch_logs
    #   If the project stores evaluation events in CloudWatch Logs, this
    #   structure stores the log group name.
    #   @return [Types::CloudWatchLogsDestination]
    #
    # @!attribute [rw] s3_destination
    #   If the project stores evaluation events in an Amazon S3 bucket, this
    #   structure stores the bucket name and bucket prefix.
    #   @return [Types::S3Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ProjectDataDelivery AWS API Documentation
    #
    class ProjectDataDelivery < Struct.new(
      :cloud_watch_logs,
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about where Evidently is to
    # store evaluation events for longer term storage.
    #
    # @note When making an API call, you may pass ProjectDataDeliveryConfig
    #   data as a hash:
    #
    #       {
    #         cloud_watch_logs: {
    #           log_group: "CwLogGroupSafeName",
    #         },
    #         s3_destination: {
    #           bucket: "S3BucketSafeName",
    #           prefix: "S3PrefixSafeName",
    #         },
    #       }
    #
    # @!attribute [rw] cloud_watch_logs
    #   If the project stores evaluation events in CloudWatch Logs, this
    #   structure stores the log group name.
    #   @return [Types::CloudWatchLogsDestinationConfig]
    #
    # @!attribute [rw] s3_destination
    #   If the project stores evaluation events in an Amazon S3 bucket, this
    #   structure stores the bucket name and bucket prefix.
    #   @return [Types::S3DestinationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ProjectDataDeliveryConfig AWS API Documentation
    #
    class ProjectDataDeliveryConfig < Struct.new(
      :cloud_watch_logs,
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains configuration information about an Evidently
    # project.
    #
    # @!attribute [rw] active_experiment_count
    #   The number of experiments currently in the project.
    #   @return [Integer]
    #
    # @!attribute [rw] active_launch_count
    #   The number of ongoing launches currently in the project.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The name or ARN of the project.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time that the project is created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the project.
    #   @return [String]
    #
    # @!attribute [rw] experiment_count
    #   The number of experiments currently in the project.
    #   @return [Integer]
    #
    # @!attribute [rw] feature_count
    #   The number of features currently in the project.
    #   @return [Integer]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time that the project was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] launch_count
    #   The number of launches currently in the project, including launches
    #   that are ongoing, completed, and not started yet.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the project.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current state of the project.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values associated with this project.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ProjectSummary AWS API Documentation
    #
    class ProjectSummary < Struct.new(
      :active_experiment_count,
      :active_launch_count,
      :arn,
      :created_time,
      :description,
      :experiment_count,
      :feature_count,
      :last_updated_time,
      :launch_count,
      :name,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutProjectEventsRequest
    #   data as a hash:
    #
    #       {
    #         events: [ # required
    #           {
    #             data: "JsonValue", # required
    #             timestamp: Time.now, # required
    #             type: "aws.evidently.evaluation", # required, accepts aws.evidently.evaluation, aws.evidently.custom
    #           },
    #         ],
    #         project: "ProjectRef", # required
    #       }
    #
    # @!attribute [rw] events
    #   An array of event structures that contain the performance data that
    #   is being sent to Evidently.
    #   @return [Array<Types::Event>]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project to write the events to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/PutProjectEventsRequest AWS API Documentation
    #
    class PutProjectEventsRequest < Struct.new(
      :events,
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_results
    #   A structure that contains Evidently's response to the sent events,
    #   including an event ID and error codes, if any.
    #   @return [Array<Types::PutProjectEventsResultEntry>]
    #
    # @!attribute [rw] failed_event_count
    #   The number of events in the operation that could not be used by
    #   Evidently.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/PutProjectEventsResponse AWS API Documentation
    #
    class PutProjectEventsResponse < Struct.new(
      :event_results,
      :failed_event_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains Evidently's response to the sent events,
    # including an event ID and error codes, if any.
    #
    # @!attribute [rw] error_code
    #   If the `PutProjectEvents` operation has an error, the error code is
    #   returned here.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   If the `PutProjectEvents` operation has an error, the error message
    #   is returned here.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   A unique ID assigned to this `PutProjectEvents` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/PutProjectEventsResultEntry AWS API Documentation
    #
    class PutProjectEventsResultEntry < Struct.new(
      :error_code,
      :error_message,
      :event_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request references a resource that does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that caused the exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that is associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the project stores evaluation events in an Amazon S3 bucket, this
    # structure stores the bucket name and bucket prefix.
    #
    # @!attribute [rw] bucket
    #   The name of the bucket in which Evidently stores evaluation events.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The bucket prefix in which Evidently stores evaluation events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/S3Destination AWS API Documentation
    #
    class S3Destination < Struct.new(
      :bucket,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the project stores evaluation events in an Amazon S3 bucket, this
    # structure stores the bucket name and bucket prefix.
    #
    # @note When making an API call, you may pass S3DestinationConfig
    #   data as a hash:
    #
    #       {
    #         bucket: "S3BucketSafeName",
    #         prefix: "S3PrefixSafeName",
    #       }
    #
    # @!attribute [rw] bucket
    #   The name of the bucket in which Evidently stores evaluation events.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The bucket prefix in which Evidently stores evaluation events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/S3DestinationConfig AWS API Documentation
    #
    class S3DestinationConfig < Struct.new(
      :bucket,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure defines the traffic allocation percentages among the
    # feature variations during one step of a launch, and the start time of
    # that step.
    #
    # @!attribute [rw] group_weights
    #   The traffic allocation percentages among the feature variations
    #   during one step of a launch. This is a set of key-value pairs. The
    #   keys are variation names. The values represent the percentage of
    #   traffic to allocate to that variation during this step.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] start_time
    #   The date and time that this step of the launch starts.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ScheduledSplit AWS API Documentation
    #
    class ScheduledSplit < Struct.new(
      :group_weights,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure defines the traffic allocation percentages among the
    # feature variations during one step of a launch, and the start time of
    # that step.
    #
    # @note When making an API call, you may pass ScheduledSplitConfig
    #   data as a hash:
    #
    #       {
    #         group_weights: { # required
    #           "GroupName" => 1,
    #         },
    #         start_time: Time.now, # required
    #       }
    #
    # @!attribute [rw] group_weights
    #   The traffic allocation percentages among the feature variations
    #   during one step of a launch. This is a set of key-value pairs. The
    #   keys are variation names. The values represent the percentage of
    #   traffic to allocate to that variation during this step.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] start_time
    #   The date and time that this step of the launch starts.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ScheduledSplitConfig AWS API Documentation
    #
    class ScheduledSplitConfig < Struct.new(
      :group_weights,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array of structures that define the traffic allocation percentages
    # among the feature variations during each step of a launch. This also
    # defines the start time of each step.
    #
    # @note When making an API call, you may pass ScheduledSplitsLaunchConfig
    #   data as a hash:
    #
    #       {
    #         steps: [ # required
    #           {
    #             group_weights: { # required
    #               "GroupName" => 1,
    #             },
    #             start_time: Time.now, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] steps
    #   An array of structures that define the traffic allocation
    #   percentages among the feature variations during each step of the
    #   launch. This also defines the start time of each step.
    #   @return [Array<Types::ScheduledSplitConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ScheduledSplitsLaunchConfig AWS API Documentation
    #
    class ScheduledSplitsLaunchConfig < Struct.new(
      :steps)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array of structures that define the traffic allocation percentages
    # among the feature variations during each step of a launch. This also
    # defines the start time of each step.
    #
    # @!attribute [rw] steps
    #   An array of structures that define the traffic allocation
    #   percentages among the feature variations during each step of the
    #   launch. This also defines the start time of each step.
    #   @return [Array<Types::ScheduledSplit>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ScheduledSplitsLaunchDefinition AWS API Documentation
    #
    class ScheduledSplitsLaunchDefinition < Struct.new(
      :steps)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The ID of the service quota that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that caused the exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that is associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The ID of the service that is associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_code,
      :resource_id,
      :resource_type,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service was unavailable. Retry the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartExperimentRequest
    #   data as a hash:
    #
    #       {
    #         analysis_complete_time: Time.now, # required
    #         experiment: "ExperimentName", # required
    #         project: "ProjectRef", # required
    #       }
    #
    # @!attribute [rw] analysis_complete_time
    #   The date and time to end the experiment.
    #   @return [Time]
    #
    # @!attribute [rw] experiment
    #   The name of the experiment to start.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains the experiment to
    #   start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/StartExperimentRequest AWS API Documentation
    #
    class StartExperimentRequest < Struct.new(
      :analysis_complete_time,
      :experiment,
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] started_time
    #   A timestamp that indicates when the experiment started.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/StartExperimentResponse AWS API Documentation
    #
    class StartExperimentResponse < Struct.new(
      :started_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartLaunchRequest
    #   data as a hash:
    #
    #       {
    #         launch: "LaunchName", # required
    #         project: "ProjectRef", # required
    #       }
    #
    # @!attribute [rw] launch
    #   The name of the launch to start.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains the launch to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/StartLaunchRequest AWS API Documentation
    #
    class StartLaunchRequest < Struct.new(
      :launch,
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch
    #   A structure that contains information about the launch that was
    #   started.
    #   @return [Types::Launch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/StartLaunchResponse AWS API Documentation
    #
    class StartLaunchResponse < Struct.new(
      :launch)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopExperimentRequest
    #   data as a hash:
    #
    #       {
    #         desired_state: "COMPLETED", # accepts COMPLETED, CANCELLED
    #         experiment: "ExperimentName", # required
    #         project: "ProjectRef", # required
    #         reason: "Description",
    #       }
    #
    # @!attribute [rw] desired_state
    #   Specify whether the experiment is to be considered `COMPLETED` or
    #   `CANCELLED` after it stops.
    #   @return [String]
    #
    # @!attribute [rw] experiment
    #   The name of the experiment to stop.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains the experiment to stop.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A string that describes why you are stopping the experiment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/StopExperimentRequest AWS API Documentation
    #
    class StopExperimentRequest < Struct.new(
      :desired_state,
      :experiment,
      :project,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ended_time
    #   The date and time that the experiment stopped.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/StopExperimentResponse AWS API Documentation
    #
    class StopExperimentResponse < Struct.new(
      :ended_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopLaunchRequest
    #   data as a hash:
    #
    #       {
    #         desired_state: "COMPLETED", # accepts COMPLETED, CANCELLED
    #         launch: "LaunchName", # required
    #         project: "ProjectRef", # required
    #         reason: "Description",
    #       }
    #
    # @!attribute [rw] desired_state
    #   Specify whether to consider the launch as `COMPLETED` or `CANCELLED`
    #   after it stops.
    #   @return [String]
    #
    # @!attribute [rw] launch
    #   The name of the launch to stop.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains the launch that you
    #   want to stop.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A string that describes why you are stopping the launch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/StopLaunchRequest AWS API Documentation
    #
    class StopLaunchRequest < Struct.new(
      :desired_state,
      :launch,
      :project,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ended_time
    #   The date and time that the launch stopped.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/StopLaunchResponse AWS API Documentation
    #
    class StopLaunchResponse < Struct.new(
      :ended_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the CloudWatch Evidently resource that you're adding
    #   tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs to associate with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied because of request throttling. Retry the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The ID of the service quota that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The ID of the service that is associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines one treatment in an experiment. A treatment
    # is a variation of the feature that you are including in the
    # experiment.
    #
    # @!attribute [rw] description
    #   The description of the treatment.
    #   @return [String]
    #
    # @!attribute [rw] feature_variations
    #   The feature variation used for this treatment. This is a key-value
    #   pair. The key is the feature name, and the value is the variation
    #   name.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] name
    #   The name of this treatment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/Treatment AWS API Documentation
    #
    class Treatment < Struct.new(
      :description,
      :feature_variations,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines one treatment in an experiment. A treatment
    # is a variation of the feature that you are including in the
    # experiment.
    #
    # @note When making an API call, you may pass TreatmentConfig
    #   data as a hash:
    #
    #       {
    #         description: "Description",
    #         feature: "FeatureName", # required
    #         name: "TreatmentName", # required
    #         variation: "VariationName", # required
    #       }
    #
    # @!attribute [rw] description
    #   A description for this treatment.
    #   @return [String]
    #
    # @!attribute [rw] feature
    #   The feature that this experiment is testing.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for this treatment.
    #   @return [String]
    #
    # @!attribute [rw] variation
    #   The name of the variation to use as this treatment in the
    #   experiment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/TreatmentConfig AWS API Documentation
    #
    class TreatmentConfig < Struct.new(
      :description,
      :feature,
      :name,
      :variation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the CloudWatch Evidently resource that you're removing
    #   tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateExperimentRequest
    #   data as a hash:
    #
    #       {
    #         description: "Description",
    #         experiment: "ExperimentName", # required
    #         metric_goals: [
    #           {
    #             desired_change: "INCREASE", # accepts INCREASE, DECREASE
    #             metric_definition: { # required
    #               entity_id_key: "JsonPath", # required
    #               event_pattern: "MetricDefinitionConfigEventPatternString",
    #               name: "CwDimensionSafeName", # required
    #               unit_label: "MetricUnitLabel",
    #               value_key: "JsonPath", # required
    #             },
    #           },
    #         ],
    #         online_ab_config: {
    #           control_treatment_name: "TreatmentName",
    #           treatment_weights: {
    #             "TreatmentName" => 1,
    #           },
    #         },
    #         project: "ProjectRef", # required
    #         randomization_salt: "RandomizationSalt",
    #         sampling_rate: 1,
    #         treatments: [
    #           {
    #             description: "Description",
    #             feature: "FeatureName", # required
    #             name: "TreatmentName", # required
    #             variation: "VariationName", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] description
    #   An optional description of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] experiment
    #   The name of the experiment to update.
    #   @return [String]
    #
    # @!attribute [rw] metric_goals
    #   An array of structures that defines the metrics used for the
    #   experiment, and whether a higher or lower value for each metric is
    #   the goal.
    #   @return [Array<Types::MetricGoalConfig>]
    #
    # @!attribute [rw] online_ab_config
    #   A structure that contains the configuration of which variation o use
    #   as the "control" version. The "control" version is used for
    #   comparison with other variations. This structure also specifies how
    #   much experiment traffic is allocated to each variation.
    #   @return [Types::OnlineAbConfig]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains the experiment that you
    #   want to update.
    #   @return [String]
    #
    # @!attribute [rw] randomization_salt
    #   When Evidently assigns a particular user session to an experiment,
    #   it must use a randomization ID to determine which variation the user
    #   session is served. This randomization ID is a combination of the
    #   entity ID and `randomizationSalt`. If you omit `randomizationSalt`,
    #   Evidently uses the experiment name as the `randomizationSalt`.
    #   @return [String]
    #
    # @!attribute [rw] sampling_rate
    #   The portion of the available audience that you want to allocate to
    #   this experiment, in thousandths of a percent. The available audience
    #   is the total audience minus the audience that you have allocated to
    #   overrides or current launches of this feature.
    #
    #   This is represented in thousandths of a percent. For example,
    #   specify 20,000 to allocate 20% of the available audience.
    #   @return [Integer]
    #
    # @!attribute [rw] treatments
    #   An array of structures that define the variations being tested in
    #   the experiment.
    #   @return [Array<Types::TreatmentConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/UpdateExperimentRequest AWS API Documentation
    #
    class UpdateExperimentRequest < Struct.new(
      :description,
      :experiment,
      :metric_goals,
      :online_ab_config,
      :project,
      :randomization_salt,
      :sampling_rate,
      :treatments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment
    #   A structure containing the configuration details of the experiment
    #   that was updated.
    #   @return [Types::Experiment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/UpdateExperimentResponse AWS API Documentation
    #
    class UpdateExperimentResponse < Struct.new(
      :experiment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateFeatureRequest
    #   data as a hash:
    #
    #       {
    #         add_or_update_variations: [
    #           {
    #             name: "VariationName", # required
    #             value: { # required
    #               bool_value: false,
    #               double_value: 1.0,
    #               long_value: 1,
    #               string_value: "VariableValueStringValueString",
    #             },
    #           },
    #         ],
    #         default_variation: "VariationName",
    #         description: "Description",
    #         entity_overrides: {
    #           "EntityId" => "VariationName",
    #         },
    #         evaluation_strategy: "ALL_RULES", # accepts ALL_RULES, DEFAULT_VARIATION
    #         feature: "FeatureName", # required
    #         project: "ProjectRef", # required
    #         remove_variations: ["VariationName"],
    #       }
    #
    # @!attribute [rw] add_or_update_variations
    #   To update variation configurations for this feature, or add new
    #   ones, specify this structure. In this array, include any variations
    #   that you want to add or update. If the array includes a variation
    #   name that already exists for this feature, it is updated. If it
    #   includes a new variation name, it is added as a new variation.
    #   @return [Array<Types::VariationConfig>]
    #
    # @!attribute [rw] default_variation
    #   The name of the variation to use as the default variation. The
    #   default variation is served to users who are not allocated to any
    #   ongoing launches or experiments of this feature.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the feature.
    #   @return [String]
    #
    # @!attribute [rw] entity_overrides
    #   Specified users that should always be served a specific variation of
    #   a feature. Each user is specified by a key-value pair . For each
    #   key, specify a user by entering their user ID, account ID, or some
    #   other identifier. For the value, specify the name of the variation
    #   that they are to be served.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] evaluation_strategy
    #   Specify `ALL_RULES` to activate the traffic allocation specified by
    #   any ongoing launches or experiments. Specify `DEFAULT_VARIATION` to
    #   serve the default variation to all users instead.
    #   @return [String]
    #
    # @!attribute [rw] feature
    #   The name of the feature to be updated.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains the feature to be
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] remove_variations
    #   Removes a variation from the feature. If the variation you specify
    #   doesn't exist, then this makes no change and does not report an
    #   error.
    #
    #   This operation fails if you try to remove a variation that is part
    #   of an ongoing launch or experiment.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/UpdateFeatureRequest AWS API Documentation
    #
    class UpdateFeatureRequest < Struct.new(
      :add_or_update_variations,
      :default_variation,
      :description,
      :entity_overrides,
      :evaluation_strategy,
      :feature,
      :project,
      :remove_variations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] feature
    #   A structure that contains information about the updated feature.
    #   @return [Types::Feature]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/UpdateFeatureResponse AWS API Documentation
    #
    class UpdateFeatureResponse < Struct.new(
      :feature)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateLaunchRequest
    #   data as a hash:
    #
    #       {
    #         description: "Description",
    #         groups: [
    #           {
    #             description: "Description",
    #             feature: "FeatureName", # required
    #             name: "GroupName", # required
    #             variation: "VariationName", # required
    #           },
    #         ],
    #         launch: "LaunchName", # required
    #         metric_monitors: [
    #           {
    #             metric_definition: { # required
    #               entity_id_key: "JsonPath", # required
    #               event_pattern: "MetricDefinitionConfigEventPatternString",
    #               name: "CwDimensionSafeName", # required
    #               unit_label: "MetricUnitLabel",
    #               value_key: "JsonPath", # required
    #             },
    #           },
    #         ],
    #         project: "ProjectRef", # required
    #         randomization_salt: "RandomizationSalt",
    #         scheduled_splits_config: {
    #           steps: [ # required
    #             {
    #               group_weights: { # required
    #                 "GroupName" => 1,
    #               },
    #               start_time: Time.now, # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] description
    #   An optional description for the launch.
    #   @return [String]
    #
    # @!attribute [rw] groups
    #   An array of structures that contains the feature and variations that
    #   are to be used for the launch.
    #   @return [Array<Types::LaunchGroupConfig>]
    #
    # @!attribute [rw] launch
    #   The name of the launch that is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] metric_monitors
    #   An array of structures that define the metrics that will be used to
    #   monitor the launch performance.
    #   @return [Array<Types::MetricMonitorConfig>]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that contains the launch that you
    #   want to update.
    #   @return [String]
    #
    # @!attribute [rw] randomization_salt
    #   When Evidently assigns a particular user session to a launch, it
    #   must use a randomization ID to determine which variation the user
    #   session is served. This randomization ID is a combination of the
    #   entity ID and `randomizationSalt`. If you omit `randomizationSalt`,
    #   Evidently uses the launch name as the `randomizationSalt`.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_splits_config
    #   An array of structures that define the traffic allocation
    #   percentages among the feature variations during each step of the
    #   launch.
    #   @return [Types::ScheduledSplitsLaunchConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/UpdateLaunchRequest AWS API Documentation
    #
    class UpdateLaunchRequest < Struct.new(
      :description,
      :groups,
      :launch,
      :metric_monitors,
      :project,
      :randomization_salt,
      :scheduled_splits_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch
    #   A structure that contains the new configuration of the launch that
    #   was updated.
    #   @return [Types::Launch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/UpdateLaunchResponse AWS API Documentation
    #
    class UpdateLaunchResponse < Struct.new(
      :launch)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateProjectDataDeliveryRequest
    #   data as a hash:
    #
    #       {
    #         cloud_watch_logs: {
    #           log_group: "CwLogGroupSafeName",
    #         },
    #         project: "ProjectRef", # required
    #         s3_destination: {
    #           bucket: "S3BucketSafeName",
    #           prefix: "S3PrefixSafeName",
    #         },
    #       }
    #
    # @!attribute [rw] cloud_watch_logs
    #   A structure containing the CloudWatch Logs log group where you want
    #   to store evaluation events.
    #   @return [Types::CloudWatchLogsDestinationConfig]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project that you want to modify the data
    #   storage options for.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination
    #   A structure containing the S3 bucket name and bucket prefix where
    #   you want to store evaluation events.
    #   @return [Types::S3DestinationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/UpdateProjectDataDeliveryRequest AWS API Documentation
    #
    class UpdateProjectDataDeliveryRequest < Struct.new(
      :cloud_watch_logs,
      :project,
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project
    #   A structure containing details about the project that you updated.
    #   @return [Types::Project]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/UpdateProjectDataDeliveryResponse AWS API Documentation
    #
    class UpdateProjectDataDeliveryResponse < Struct.new(
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateProjectRequest
    #   data as a hash:
    #
    #       {
    #         description: "Description",
    #         project: "ProjectRef", # required
    #       }
    #
    # @!attribute [rw] description
    #   An optional description of the project.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   The name or ARN of the project to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/UpdateProjectRequest AWS API Documentation
    #
    class UpdateProjectRequest < Struct.new(
      :description,
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project
    #   A structure containing information about the updated project.
    #   @return [Types::Project]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/UpdateProjectResponse AWS API Documentation
    #
    class UpdateProjectResponse < Struct.new(
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value of a parameter in the request caused an error.
    #
    # @!attribute [rw] field_list
    #   The parameter that caused the exception.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A reason for the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :field_list,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing an error name and message.
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The error name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value assigned to a feature variation. This structure must contain
    # exactly one field. It can be `boolValue`, `doubleValue`, `longValue`,
    # or `stringValue`.
    #
    # @note VariableValue is a union - when making an API calls you must set exactly one of the members.
    #
    # @note VariableValue is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of VariableValue corresponding to the set member.
    #
    # @!attribute [rw] bool_value
    #   If this feature uses the Boolean variation type, this field contains
    #   the Boolean value of this variation.
    #   @return [Boolean]
    #
    # @!attribute [rw] double_value
    #   If this feature uses the double integer variation type, this field
    #   contains the double integer value of this variation.
    #   @return [Float]
    #
    # @!attribute [rw] long_value
    #   If this feature uses the long variation type, this field contains
    #   the long value of this variation.
    #   @return [Integer]
    #
    # @!attribute [rw] string_value
    #   If this feature uses the string variation type, this field contains
    #   the string value of this variation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/VariableValue AWS API Documentation
    #
    class VariableValue < Struct.new(
      :bool_value,
      :double_value,
      :long_value,
      :string_value,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class BoolValue < VariableValue; end
      class DoubleValue < VariableValue; end
      class LongValue < VariableValue; end
      class StringValue < VariableValue; end
      class Unknown < VariableValue; end
    end

    # This structure contains the name and variation value of one variation
    # of a feature.
    #
    # @!attribute [rw] name
    #   The name of the variation.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value assigned to this variation.
    #   @return [Types::VariableValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/Variation AWS API Documentation
    #
    class Variation < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains the name and variation value of one variation
    # of a feature.
    #
    # @note When making an API call, you may pass VariationConfig
    #   data as a hash:
    #
    #       {
    #         name: "VariationName", # required
    #         value: { # required
    #           bool_value: false,
    #           double_value: 1.0,
    #           long_value: 1,
    #           string_value: "VariableValueStringValueString",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the variation.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value assigned to this variation.
    #   @return [Types::VariableValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/VariationConfig AWS API Documentation
    #
    class VariationConfig < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
