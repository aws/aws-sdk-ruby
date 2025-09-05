# frozen_string_literal: true

# This is generated code!

module Aws::Evidently
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient permissions to perform this action. </p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the feature being evaluated.</p>
    #   @return [String]
    # @!attribute requests
    #   <p>An array of structures, where each structure assigns a feature variation to one user session.</p>
    #   @return [Array<Types::EvaluationRequest>]
    class BatchEvaluateFeatureInput < Struct.new(
      :project,
      :requests,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>An array of structures, where each structure displays the results of one feature evaluation
    #          assignment to one user session.</p>
    #   @return [Array<Types::EvaluationResult>]
    class BatchEvaluateFeatureOutput < Struct.new(
      :results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing the CloudWatch Logs log group where the project stores evaluation
    #        events.</p>
    # @!attribute log_group
    #   <p>The name of the log group where the project stores evaluation
    #          events.</p>
    #   @return [String]
    class CloudWatchLogsDestination < Struct.new(
      :log_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing the CloudWatch Logs log group where the project stores evaluation
    #        events.</p>
    # @!attribute log_group
    #   <p>The name of the log group where the project stores evaluation
    #          events.</p>
    #   @return [String]
    class CloudWatchLogsDestinationConfig < Struct.new(
      :log_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A resource was in an inconsistent state during an update or a deletion.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that caused the exception.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that is associated with the error.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that you want to create the new experiment in.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the new experiment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the experiment.</p>
    #   @return [String]
    # @!attribute treatments
    #   <p>An array of structures that describe the configuration of each feature variation used in the experiment.</p>
    #   @return [Array<Types::TreatmentConfig>]
    # @!attribute metric_goals
    #   <p>An array of structures that defines the metrics used for the experiment, and whether a higher
    #         or lower value for each metric is the goal.</p>
    #   @return [Array<Types::MetricGoalConfig>]
    # @!attribute randomization_salt
    #   <p>When Evidently assigns a particular user session to an experiment, it must use a randomization ID
    #          to determine which variation the user session is served. This randomization ID is a combination of the entity ID
    #          and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses
    #          the experiment name as the <code>randomizationSalt</code>.</p>
    #   @return [String]
    # @!attribute sampling_rate
    #   <p>The portion of the available audience that you want to allocate to this experiment, in thousandths of a percent. The available audience
    #         is the total audience minus the audience that you have allocated to overrides or current launches of
    #         this feature.</p>
    #            <p>This is represented in thousandths of a percent. For example, specify 10,000 to allocate 10% of the available audience.</p>
    #   @return [Integer]
    # @!attribute online_ab_config
    #   <p>A structure that contains the configuration of which variation to use as the "control"
    #         version. tThe "control" version is used for comparison with other variations. This structure
    #         also specifies how much experiment traffic is allocated to each variation.</p>
    #   @return [Types::OnlineAbConfig]
    # @!attribute segment
    #   <p>Specifies an audience <i>segment</i> to use in the experiment. When a segment is used in an experiment, only
    #         user sessions that match the segment pattern are used in the experiment.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Assigns one or more tags (key-value pairs) to the experiment.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #          permissions by granting a user
    #          permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #            <p>You can associate as many as 50 tags with an experiment.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #   @return [Hash<String, String>]
    class CreateExperimentInput < Struct.new(
      :project,
      :name,
      :description,
      :treatments,
      :metric_goals,
      :randomization_salt,
      :sampling_rate,
      :online_ab_config,
      :segment,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute experiment
    #   <p>A structure containing the configuration details of the experiment
    #          that you created.</p>
    #   @return [Types::Experiment]
    class CreateExperimentOutput < Struct.new(
      :experiment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that is to contain the new feature.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the new feature.</p>
    #   @return [String]
    # @!attribute evaluation_strategy
    #   <p>Specify <code>ALL_RULES</code> to activate the traffic allocation specified by any
    #         ongoing launches or experiments. Specify <code>DEFAULT_VARIATION</code> to serve the default
    #         variation to all users instead.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the feature.</p>
    #   @return [String]
    # @!attribute variations
    #   <p>An array of structures that contain the configuration of the feature's different variations.</p>
    #   @return [Array<Types::VariationConfig>]
    # @!attribute default_variation
    #   <p>The name of the variation to use as the default variation. The default
    #         variation is served to users who are not allocated to any ongoing launches
    #         or experiments of this feature.</p>
    #            <p>This variation must also be listed in the <code>variations</code> structure.</p>
    #            <p>If you omit <code>defaultVariation</code>, the first variation listed in
    #          the <code>variations</code> structure is used as the default variation.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Assigns one or more tags (key-value pairs) to the feature.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #          permissions by granting a user
    #          permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #            <p>You can associate as many as 50 tags with a feature.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute entity_overrides
    #   <p>Specify users that should always be served a specific variation of a feature. Each user
    #         is specified by a key-value pair . For each key, specify a user by entering their user ID,
    #         account ID, or some other identifier. For the value, specify the name of the variation that
    #         they are to be served.</p>
    #            <p>This parameter is limited to 2500 overrides or a total of 40KB. The 40KB limit includes an overhead of 6 bytes
    #        per override.</p>
    #   @return [Hash<String, String>]
    class CreateFeatureInput < Struct.new(
      :project,
      :name,
      :evaluation_strategy,
      :description,
      :variations,
      :default_variation,
      :tags,
      :entity_overrides,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute feature
    #   <p>A structure that contains information about the new feature.</p>
    #   @return [Types::Feature]
    class CreateFeatureOutput < Struct.new(
      :feature,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that you want to create the launch in.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the new launch.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for the launch.</p>
    #   @return [String]
    # @!attribute scheduled_splits_config
    #   <p>An array of structures that define the traffic allocation percentages among the feature
    #         variations during each step of the launch.</p>
    #   @return [Types::ScheduledSplitsLaunchConfig]
    # @!attribute metric_monitors
    #   <p>An array of structures that define the metrics that will be used to monitor 
    #          the launch performance.</p>
    #   @return [Array<Types::MetricMonitorConfig>]
    # @!attribute groups
    #   <p>An array of structures that contains the feature and variations that are to be used for the launch.</p>
    #   @return [Array<Types::LaunchGroupConfig>]
    # @!attribute randomization_salt
    #   <p>When Evidently assigns a particular user session to a launch, it must use a randomization ID
    #           to determine which variation the user session is served. This randomization ID is a combination of the entity ID
    #           and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses
    #         the launch name as the <code>randomizationSalt</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Assigns one or more tags (key-value pairs) to the launch.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #          permissions by granting a user
    #          permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #            <p>You can associate as many as 50 tags with a launch.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #   @return [Hash<String, String>]
    class CreateLaunchInput < Struct.new(
      :project,
      :name,
      :description,
      :scheduled_splits_config,
      :metric_monitors,
      :groups,
      :randomization_salt,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute launch
    #   <p>A structure that contains the configuration of the launch that was created.</p>
    #   @return [Types::Launch]
    class CreateLaunchOutput < Struct.new(
      :launch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for the project.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the project.</p>
    #   @return [String]
    # @!attribute data_delivery
    #   <p>A structure that contains information about where Evidently is to store
    #         evaluation events for longer term storage, if you choose to do so. If you choose
    #         not to store these events, Evidently deletes them after using them to produce metrics and other experiment
    #         results that you can view.</p>
    #   @return [Types::ProjectDataDeliveryConfig]
    # @!attribute app_config_resource
    #   <p>Use this parameter if the project will use <i>client-side evaluation powered by AppConfig</i>. Client-side
    #         evaluation allows your application to assign variations to user
    #         sessions locally instead of by calling the <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_EvaluateFeature.html">EvaluateFeature</a> operation. This 
    #         mitigates the latency and availability risks that come with an API call. For more information, 
    #         see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-client-side-evaluation.html">
    #           Client-side evaluation - powered by AppConfig.</a>
    #            </p>
    #            <p>This parameter is a structure that
    #         contains information about the AppConfig application and environment that will be used as for client-side evaluation.</p>
    #            <p>To create a project that uses client-side evaluation, you must have the
    #         <code>evidently:ExportProjectAsConfiguration</code> permission.</p>
    #   @return [Types::ProjectAppConfigResourceConfig]
    # @!attribute tags
    #   <p>Assigns one or more tags (key-value pairs) to the project.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #          permissions by granting a user
    #          permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #            <p>You can associate as many as 50 tags with a project.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #   @return [Hash<String, String>]
    class CreateProjectInput < Struct.new(
      :name,
      :description,
      :data_delivery,
      :app_config_resource,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>A structure that contains information about the created project.</p>
    #   @return [Types::Project]
    class CreateProjectOutput < Struct.new(
      :project,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the segment.</p>
    #   @return [String]
    # @!attribute pattern
    #   <p>The pattern to use for the segment. For more information about pattern syntax, 
    #         see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html#CloudWatch-Evidently-segments-syntax.html">
    #           Segment rule pattern syntax</a>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for this segment.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Assigns one or more tags (key-value pairs) to the segment.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #         permissions by granting a user
    #         permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #            <p>You can associate as many as 50 tags with a segment.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #   @return [Hash<String, String>]
    class CreateSegmentInput < Struct.new(
      :name,
      :pattern,
      :description,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute segment
    #   <p>A structure that contains the complete information about the segment that was just created.</p>
    #   @return [Types::Segment]
    class CreateSegmentOutput < Struct.new(
      :segment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the experiment to delete.</p>
    #   @return [String]
    # @!attribute experiment
    #   <p>The name of the experiment to delete.</p>
    #   @return [String]
    class DeleteExperimentInput < Struct.new(
      :project,
      :experiment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteExperimentOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the feature to delete.</p>
    #   @return [String]
    # @!attribute feature
    #   <p>The name of the feature to delete.</p>
    #   @return [String]
    class DeleteFeatureInput < Struct.new(
      :project,
      :feature,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteFeatureOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the launch to delete.</p>
    #   @return [String]
    # @!attribute launch
    #   <p>The name of the launch to delete.</p>
    #   @return [String]
    class DeleteLaunchInput < Struct.new(
      :project,
      :launch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteLaunchOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project to delete.</p>
    #   @return [String]
    class DeleteProjectInput < Struct.new(
      :project,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteProjectOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute segment
    #   <p>Specifies the segment to delete.</p>
    #   @return [String]
    class DeleteSegmentInput < Struct.new(
      :segment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteSegmentOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains this feature.</p>
    #   @return [String]
    # @!attribute feature
    #   <p>The name of the feature being evaluated.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>An internal ID that represents a unique user of the application. This
    #           <code>entityID</code> is checked against any override rules assigned for this
    #         feature.</p>
    #   @return [String]
    # @!attribute evaluation_context
    #   <p>A JSON object of attributes that you can optionally pass in as part of the evaluation event
    #         sent to Evidently from the user session. Evidently can use 
    #         this value to match user sessions with defined audience segments. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html">Use segments to focus your 
    #           audience</a>.</p>
    #            <p>If you include this parameter, the value must be a JSON object. A JSON array is not supported.</p>
    #   @return [String]
    class EvaluateFeatureInput < Struct.new(
      :project,
      :feature,
      :entity_id,
      :evaluation_context,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute variation
    #   <p>The name of the variation that was served to the user session.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value assigned to this variation to differentiate it from the other variations of this feature.</p>
    #   @return [Types::VariableValue]
    # @!attribute reason
    #   <p>Specifies the reason that the user session was assigned this variation. Possible values
    #         include <code>DEFAULT</code>, meaning the user was served the default variation;
    #           <code>LAUNCH_RULE_MATCH</code>, if the user session was enrolled in a launch;
    #           <code>EXPERIMENT_RULE_MATCH</code>, if the user session was enrolled in an experiment; or
    #           <code>ENTITY_OVERRIDES_MATCH</code>, if the user's <code>entityId</code> matches an override
    #         rule.</p>
    #   @return [String]
    # @!attribute details
    #   <p>If this user was assigned to a launch or experiment, this field lists the launch or experiment name.</p>
    #   @return [String]
    class EvaluateFeatureOutput < Struct.new(
      :variation,
      :value,
      :reason,
      :details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This structure assigns a feature variation to one user session.</p>
    # @!attribute feature
    #   <p>The name of the feature being evaluated.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>An internal ID that represents a unique user session of the application. This
    #           <code>entityID</code> is checked against any override rules assigned for this
    #         feature.</p>
    #   @return [String]
    # @!attribute evaluation_context
    #   <p>A JSON block of attributes that you can optionally pass in. This JSON block is included
    #          in the evaluation events sent to Evidently from the user session. </p>
    #   @return [String]
    class EvaluationRequest < Struct.new(
      :feature,
      :entity_id,
      :evaluation_context,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This structure displays the results of one feature evaluation assignment to one user
    #       session.</p>
    # @!attribute project
    #   <p>The name or ARN of the project that contains the feature being evaluated.</p>
    #   @return [String]
    # @!attribute feature
    #   <p>The name of the feature being evaluated.</p>
    #   @return [String]
    # @!attribute variation
    #   <p>The name of the variation that was served to the user session.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value assigned to this variation to differentiate it from the other variations of this feature.</p>
    #   @return [Types::VariableValue]
    # @!attribute entity_id
    #   <p>An internal ID that represents a unique user session of the application.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>Specifies the reason that the user session was assigned this variation. Possible values
    #         include <code>DEFAULT</code>, meaning the user was served the default variation;
    #           <code>LAUNCH_RULE_MATCH</code>, if the user session was enrolled in a launch; or
    #           <code>EXPERIMENT_RULE_MATCH</code>, if the user session was enrolled in an
    #         experiment.</p>
    #   @return [String]
    # @!attribute details
    #   <p>If this user was assigned to a launch or experiment, this field lists the launch or experiment name.</p>
    #   @return [String]
    class EvaluationResult < Struct.new(
      :project,
      :feature,
      :variation,
      :value,
      :entity_id,
      :reason,
      :details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the information about an evaluation rule for this feature, 
    #       if it is used in a launch or experiment.</p>
    # @!attribute name
    #   <p>The name of the experiment or launch.</p>
    #   @return [String]
    # @!attribute type
    #   <p>This value is <code>aws.evidently.splits</code> if this is an evaluation rule for a launch, and it is
    #          <code>aws.evidently.onlineab</code> if this is an evaluation rule for an experiment.</p>
    #   @return [String]
    class EvaluationRule < Struct.new(
      :name,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the information about one evaluation event or custom event sent to Evidently.
    #         This is a JSON payload. If this event specifies a pre-defined event type, the payload must follow the 
    #         defined event schema.</p>
    # @!attribute timestamp
    #   <p>The timestamp of the event.</p>
    #   @return [Time]
    # @!attribute type
    #   <p>
    #               <code>aws.evidently.evaluation</code> specifies an evaluation event, which determines
    #         which feature variation that a user sees. <code>aws.evidently.custom</code> specifies a custom
    #         event, which generates metrics from user actions such as clicks and checkouts.</p>
    #   @return [String]
    # @!attribute data
    #   <p>The event data.</p>
    #   @return [String]
    class Event < Struct.new(
      :timestamp,
      :type,
      :data,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing the configuration details of an experiment.</p>
    # @!attribute arn
    #   <p>The ARN of the experiment.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the experiment.</p>
    #   @return [String]
    # @!attribute project
    #   <p>The name or ARN of the project that contains this experiment.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current state of the experiment.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>If the experiment was stopped, this is the string that was entered by the person who 
    #         stopped the experiment, to explain why it was stopped.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the experiment.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time that the experiment is first created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The date and time that the experiment was most recently updated.</p>
    #   @return [Time]
    # @!attribute schedule
    #   <p>A structure that contains the time and date that Evidently completed the analysis of the experiment.</p>
    #   @return [Types::ExperimentSchedule]
    # @!attribute execution
    #   <p>A structure that contains the date and time that the experiment started and ended.</p>
    #   @return [Types::ExperimentExecution]
    # @!attribute treatments
    #   <p>An array of structures that describe the configuration of each feature variation used in the experiment.</p>
    #   @return [Array<Types::Treatment>]
    # @!attribute metric_goals
    #   <p>An array of structures that defines the metrics used for the experiment, and whether a higher
    #         or lower value for each metric is the goal.</p>
    #   @return [Array<Types::MetricGoal>]
    # @!attribute randomization_salt
    #   <p>This value is used when Evidently assigns a particular user session to the experiment. It
    #         helps create a randomization ID to determine which variation the user session is served. This
    #         randomization ID is a combination of the entity ID and <code>randomizationSalt</code>.</p>
    #   @return [String]
    # @!attribute sampling_rate
    #   <p>In thousandths of a percent, the amount of the available audience that is allocated to this experiment. 
    #         The available audience
    #         is the total audience minus the audience that you have allocated to overrides or current launches of
    #         this feature.</p>
    #            <p>This is represented in thousandths of a percent, so a value of 10,000 is 10% of the available audience.</p>
    #   @return [Integer]
    # @!attribute segment
    #   <p>The audience segment being used for the experiment, if a segment is being used.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of this experiment. Currently, this value must be <code>aws.experiment.onlineab</code>.</p>
    #   @return [String]
    # @!attribute online_ab_definition
    #   <p>A structure that contains the configuration of which variation to use as the "control"
    #         version. The "control" version is used for comparison with other variations. This structure
    #         also specifies how much experiment traffic is allocated to each variation.</p>
    #   @return [Types::OnlineAbDefinition]
    # @!attribute tags
    #   <p>The list of tag keys and values associated with this experiment.</p>
    #   @return [Hash<String, String>]
    class Experiment < Struct.new(
      :arn,
      :name,
      :project,
      :status,
      :status_reason,
      :description,
      :created_time,
      :last_updated_time,
      :schedule,
      :execution,
      :treatments,
      :metric_goals,
      :randomization_salt,
      :sampling_rate,
      :segment,
      :type,
      :online_ab_definition,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:sampling_rate] = 0 unless options.key?(:sampling_rate)
        super
      end
    end

    # <p>This structure contains the date and time that the experiment started and ended.</p>
    # @!attribute started_time
    #   <p>The date and time that the experiment started.</p>
    #   @return [Time]
    # @!attribute ended_time
    #   <p>The date and time that the experiment ended.</p>
    #   @return [Time]
    class ExperimentExecution < Struct.new(
      :started_time,
      :ended_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains results of an experiment.</p>
    # @!attribute metric_name
    #   <p>The name of the metric that is analyzed in this experiment report.</p>
    #   @return [String]
    # @!attribute treatment_name
    #   <p>The name of the variation that this report pertains to.</p>
    #   @return [String]
    # @!attribute report_name
    #   <p>The type of analysis used for this report.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the report.</p>
    #   @return [String]
    class ExperimentReport < Struct.new(
      :metric_name,
      :treatment_name,
      :report_name,
      :content,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains experiment results for one metric that is monitored in
    #       the experiment.</p>
    # @!attribute metric_name
    #   <p>The name of the metric.</p>
    #   @return [String]
    # @!attribute treatment_name
    #   <p>The treatment, or variation, that returned the <code>values</code> in this structure.</p>
    #   @return [String]
    # @!attribute result_stat
    #   <p>The experiment statistic that these results pertain to.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values for the <code>metricName</code> that were recorded in the experiment.</p>
    #   @return [Array<Float>]
    class ExperimentResultsData < Struct.new(
      :metric_name,
      :treatment_name,
      :result_stat,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains the time and date that Evidently completed the analysis of the experiment.</p>
    # @!attribute analysis_complete_time
    #   <p>The time and date that Evidently completed the analysis of the experiment.</p>
    #   @return [Time]
    class ExperimentSchedule < Struct.new(
      :analysis_complete_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about one Evidently feature in your account.</p>
    # @!attribute arn
    #   <p>The ARN of the feature.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the feature.</p>
    #   @return [String]
    # @!attribute project
    #   <p>The name or ARN of the project that contains the feature.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current state of the feature.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time that the feature is created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The date and time that the feature was most recently updated.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the feature.</p>
    #   @return [String]
    # @!attribute evaluation_strategy
    #   <p>If this value is <code>ALL_RULES</code>, the traffic allocation specified by
    #         any ongoing launches or experiments is being used. If this is <code>DEFAULT_VARIATION</code>,
    #         the default variation is being served to all users.</p>
    #   @return [String]
    # @!attribute value_type
    #   <p>Defines the type of value used to define the different feature variations. 
    #         For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-variationtypes.html">Variation types</a>
    #            </p>
    #   @return [String]
    # @!attribute variations
    #   <p>An array of structures that contain the configuration of the feature's different variations.</p>
    #   @return [Array<Types::Variation>]
    # @!attribute default_variation
    #   <p>The name of the variation that is used as the default variation. The default
    #         variation is served to users who are not allocated to any ongoing launches
    #         or experiments of this feature.</p>
    #            <p>This variation must also be listed in the <code>variations</code> structure.</p>
    #            <p>If you omit <code>defaultVariation</code>, the first variation listed in
    #       the <code>variations</code> structure is used as the default variation.</p>
    #   @return [String]
    # @!attribute evaluation_rules
    #   <p>An array of structures that define the evaluation rules for the feature.</p>
    #   @return [Array<Types::EvaluationRule>]
    # @!attribute tags
    #   <p>The list of tag keys and values associated with this feature.</p>
    #   @return [Hash<String, String>]
    # @!attribute entity_overrides
    #   <p>A set of key-value pairs  that specify users who should always be served a specific
    #         variation of a feature. Each key specifies a user using their user ID, account ID, or some
    #         other identifier. The value specifies the name of the variation that the user is to be
    #         served.</p>
    #            <p>For the override to be successful, the value of the key must match the <code>entityId</code> used 
    #         in the <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_EvaluateFeature.html">EvaluateFeature</a> operation.</p>
    #   @return [Hash<String, String>]
    class Feature < Struct.new(
      :arn,
      :name,
      :project,
      :status,
      :created_time,
      :last_updated_time,
      :description,
      :evaluation_strategy,
      :value_type,
      :variations,
      :default_variation,
      :evaluation_rules,
      :tags,
      :entity_overrides,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about one Evidently feature in your account.</p>
    # @!attribute arn
    #   <p>The ARN of the feature.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the feature.</p>
    #   @return [String]
    # @!attribute project
    #   <p>The name or ARN of the project that contains the feature.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current state of the feature.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time that the feature is created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The date and time that the feature was most recently updated.</p>
    #   @return [Time]
    # @!attribute evaluation_strategy
    #   <p>If this value is <code>ALL_RULES</code>, the traffic allocation specified by
    #         any ongoing launches or experiments is being used. If this is <code>DEFAULT_VARIATION</code>,
    #         the default variation is being served to all users.</p>
    #   @return [String]
    # @!attribute evaluation_rules
    #   <p>An array of structures that define</p>
    #   @return [Array<Types::EvaluationRule>]
    # @!attribute default_variation
    #   <p>The name of the variation that is used as the default variation. The default
    #         variation is served to users who are not allocated to any ongoing launches
    #         or experiments of this feature.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tag keys and values associated with this feature.</p>
    #   @return [Hash<String, String>]
    class FeatureSummary < Struct.new(
      :arn,
      :name,
      :project,
      :status,
      :created_time,
      :last_updated_time,
      :evaluation_strategy,
      :evaluation_rules,
      :default_variation,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the experiment.</p>
    #   @return [String]
    # @!attribute experiment
    #   <p>The name of the experiment that you want to see the details of.</p>
    #   @return [String]
    class GetExperimentInput < Struct.new(
      :project,
      :experiment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute experiment
    #   <p>A structure containing the configuration details of the experiment.</p>
    #   @return [Types::Experiment]
    class GetExperimentOutput < Struct.new(
      :experiment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the experiment that you want to see the results of.</p>
    #   @return [String]
    # @!attribute experiment
    #   <p>The name of the experiment to retrieve the results of.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time that the experiment started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time that the experiment ended, if it is completed. This must be no longer than 30 days 
    #         after the experiment start time.</p>
    #   @return [Time]
    # @!attribute metric_names
    #   <p>The names of the experiment metrics that you want to see the results of.</p>
    #   @return [Array<String>]
    # @!attribute treatment_names
    #   <p>The names of the experiment treatments that you want to see the results for.</p>
    #   @return [Array<String>]
    # @!attribute base_stat
    #   <p>The statistic used to calculate experiment results. Currently the only valid value is <code>mean</code>, 
    #         which uses the mean of the collected values as the statistic.</p>
    #   @return [String]
    # @!attribute result_stats
    #   <p>The statistics that you want to see in the returned results.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PValue</code> specifies to use p-values for the results. A p-value is used in hypothesis
    #             testing to measure how often you are willing to make a mistake in rejecting the null
    #             hypothesis. A general practice is to reject the null hypothesis and declare that the
    #             results are statistically significant when the p-value is less than 0.05.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfidenceInterval</code> specifies a confidence interval for the results. The
    #             confidence interval represents the range of values for the chosen metric that is likely to
    #             contain the true difference between the <code>baseStat</code> of a variation and the
    #             baseline. Evidently returns the 95% confidence interval. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TreatmentEffect</code> is the difference in the statistic specified by the
    #               <code>baseStat</code> parameter between each variation and the default variation. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BaseStat</code> returns the statistical values collected for the metric for each
    #             variation. The statistic uses the same statistic specified in the <code>baseStat</code>
    #             parameter. Therefore, if <code>baseStat</code> is <code>mean</code>, this returns the mean
    #             of the values collected for each variation.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute report_names
    #   <p>The names of the report types that you want to see. Currently, <code>BayesianInference</code>
    #          is the only valid value.</p>
    #   @return [Array<String>]
    # @!attribute period
    #   <p>In seconds, the amount of time to aggregate results together. </p>
    #   @return [Integer]
    class GetExperimentResultsInput < Struct.new(
      :project,
      :experiment,
      :start_time,
      :end_time,
      :metric_names,
      :treatment_names,
      :base_stat,
      :result_stats,
      :report_names,
      :period,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute results_data
    #   <p>An array of structures that include experiment results including metric names and values. </p>
    #   @return [Array<Types::ExperimentResultsData>]
    # @!attribute reports
    #   <p>An array of structures that include the reports that you requested.</p>
    #   @return [Array<Types::ExperimentReport>]
    # @!attribute timestamps
    #   <p>The timestamps of each result returned.</p>
    #   @return [Array<Time>]
    # @!attribute details
    #   <p>If the experiment doesn't yet have enough events to provide valid results, this 
    #         field is returned with the message <code>Not enough events to generate results</code>. If there are 
    #         enough events to provide valid results, this field is not returned.</p>
    #   @return [String]
    class GetExperimentResultsOutput < Struct.new(
      :results_data,
      :reports,
      :timestamps,
      :details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the feature.</p>
    #   @return [String]
    # @!attribute feature
    #   <p>The name of the feature that you want to retrieve information for.</p>
    #   @return [String]
    class GetFeatureInput < Struct.new(
      :project,
      :feature,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute feature
    #   <p>A structure containing the configuration details of the feature.</p>
    #   @return [Types::Feature]
    class GetFeatureOutput < Struct.new(
      :feature,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the launch.</p>
    #   @return [String]
    # @!attribute launch
    #   <p>The name of the launch that you want to see the details of.</p>
    #   @return [String]
    class GetLaunchInput < Struct.new(
      :project,
      :launch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute launch
    #   <p>A structure containing the configuration details of the launch.</p>
    #   @return [Types::Launch]
    class GetLaunchOutput < Struct.new(
      :launch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that you want to see the details of.</p>
    #   @return [String]
    class GetProjectInput < Struct.new(
      :project,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>A structure containing the configuration details of the project.</p>
    #   @return [Types::Project]
    class GetProjectOutput < Struct.new(
      :project,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute segment
    #   <p>The ARN of the segment to return information for.</p>
    #   @return [String]
    class GetSegmentInput < Struct.new(
      :segment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute segment
    #   <p>A structure that contains the complete information about the segment.</p>
    #   @return [Types::Segment]
    class GetSegmentOutput < Struct.new(
      :segment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Unexpected error while processing the request. Retry the request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains the configuration details of one Evidently launch.</p>
    # @!attribute arn
    #   <p>The ARN of the launch.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the launch.</p>
    #   @return [String]
    # @!attribute project
    #   <p>The name or ARN of the project that contains the launch.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current state of the launch.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>If the launch was stopped, this is the string that was entered by the person who 
    #         stopped the launch, to explain why it was stopped.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the launch.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time that the launch is created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The date and time that the launch was most recently updated.</p>
    #   @return [Time]
    # @!attribute execution
    #   <p>A structure that contains information about the start and end times of the launch.</p>
    #   @return [Types::LaunchExecution]
    # @!attribute groups
    #   <p>An array of structures that define the feature variations that are being used in the launch.</p>
    #   @return [Array<Types::LaunchGroup>]
    # @!attribute metric_monitors
    #   <p>An array of structures that define the metrics that are being used to monitor the launch performance.</p>
    #   @return [Array<Types::MetricMonitor>]
    # @!attribute randomization_salt
    #   <p>This value is used when Evidently assigns a particular user session to the launch, to help create a randomization ID
    #         to determine which variation the user session is served. This randomization ID is a combination of the entity ID
    #         and <code>randomizationSalt</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of launch.</p>
    #   @return [String]
    # @!attribute scheduled_splits_definition
    #   <p>An array of structures that define the traffic allocation percentages among the feature
    #         variations during each step of the launch.</p>
    #   @return [Types::ScheduledSplitsLaunchDefinition]
    # @!attribute tags
    #   <p>The list of tag keys and values associated with this launch.</p>
    #   @return [Hash<String, String>]
    class Launch < Struct.new(
      :arn,
      :name,
      :project,
      :status,
      :status_reason,
      :description,
      :created_time,
      :last_updated_time,
      :execution,
      :groups,
      :metric_monitors,
      :randomization_salt,
      :type,
      :scheduled_splits_definition,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about the start and end times of the launch.</p>
    # @!attribute started_time
    #   <p>The date and time that the launch started.</p>
    #   @return [Time]
    # @!attribute ended_time
    #   <p>The date and time that the launch ended.</p>
    #   @return [Time]
    class LaunchExecution < Struct.new(
      :started_time,
      :ended_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines one launch group in a launch. A launch group is a variation of the feature
    #       that you are including in the launch.</p>
    # @!attribute name
    #   <p>The name of the launch group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the launch group.</p>
    #   @return [String]
    # @!attribute feature_variations
    #   <p>The feature variation for this launch group. This is a key-value pair.</p>
    #   @return [Hash<String, String>]
    class LaunchGroup < Struct.new(
      :name,
      :description,
      :feature_variations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines one launch group in a launch. A launch group is a variation of
    #       the feature that you are including in the launch.</p>
    # @!attribute name
    #   <p>A name for this launch group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the launch group.</p>
    #   @return [String]
    # @!attribute feature
    #   <p>The feature that this launch is using.</p>
    #   @return [String]
    # @!attribute variation
    #   <p>The feature variation to use for this launch group.</p>
    #   @return [String]
    class LaunchGroupConfig < Struct.new(
      :name,
      :description,
      :feature,
      :variation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project to return the experiment list from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous 
    #          <code>ListExperiments</code> operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Use this optional parameter to limit the returned results to only the experiments with the status that you specify here.</p>
    #   @return [String]
    class ListExperimentsInput < Struct.new(
      :project,
      :max_results,
      :next_token,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute experiments
    #   <p>An array of structures that contain the configuration details of the experiments in the
    #         specified project.</p>
    #   @return [Array<Types::Experiment>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent <code>ListExperiments</code> operation to return
    #          the next set of results.</p>
    #   @return [String]
    class ListExperimentsOutput < Struct.new(
      :experiments,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project to return the feature list from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous 
    #          <code>ListFeatures</code> operation.</p>
    #   @return [String]
    class ListFeaturesInput < Struct.new(
      :project,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute features
    #   <p>An array of structures that contain the configuration details of the features in the
    #          specified project.</p>
    #   @return [Array<Types::FeatureSummary>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent <code>ListFeatures</code> operation to return
    #          the next set of results.</p>
    #   @return [String]
    class ListFeaturesOutput < Struct.new(
      :features,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project to return the launch list from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous 
    #          <code>ListLaunches</code> operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Use this optional parameter to limit the returned results to only the launches with the status that you specify here.</p>
    #   @return [String]
    class ListLaunchesInput < Struct.new(
      :project,
      :max_results,
      :next_token,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute launches
    #   <p>An array of structures that contain the configuration details of the launches in the
    #          specified project.</p>
    #   @return [Array<Types::Launch>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent <code>ListLaunches</code> operation to return
    #          the next set of results.</p>
    #   @return [String]
    class ListLaunchesOutput < Struct.new(
      :launches,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to include in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous 
    #          <code>ListProjects</code> operation.</p>
    #   @return [String]
    class ListProjectsInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute projects
    #   <p>An array of structures that contain the configuration details of the projects in the Region.</p>
    #   @return [Array<Types::ProjectSummary>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent <code>ListProjects</code> operation to return
    #          the next set of results.</p>
    #   @return [String]
    class ListProjectsOutput < Struct.new(
      :projects,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute segment
    #   <p>The ARN of the segment that you want to view information for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If you omit this, the default of 50 is used.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous 
    #         <code>ListSegmentReferences</code> operation.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies whether to return information about launches or experiments that use this segment.</p>
    #   @return [String]
    class ListSegmentReferencesInput < Struct.new(
      :segment,
      :max_results,
      :next_token,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute referenced_by
    #   <p>An array of structures, where each structure contains information about one experiment or launch that
    #         uses this segment.  </p>
    #   @return [Array<Types::RefResource>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent <code>ListSegmentReferences</code> operation to return
    #         the next set of results.</p>
    #   @return [String]
    class ListSegmentReferencesOutput < Struct.new(
      :referenced_by,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If you omit this, the default of 50 is used.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous 
    #         <code>ListSegments</code> operation.</p>
    #   @return [String]
    class ListSegmentsInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute segments
    #   <p>An array of structures that contain information about the segments in this Region.</p>
    #   @return [Array<Types::Segment>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent <code>ListSegments</code> operation to return
    #         the next set of results.</p>
    #   @return [String]
    class ListSegmentsOutput < Struct.new(
      :segments,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource that you want to see the tags of.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tag keys and values associated with the resource you specified.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This structure defines a metric that is being used to evaluate the variations
    #       during a launch or experiment.</p>
    # @!attribute name
    #   <p>The name of the metric.</p>
    #   @return [String]
    # @!attribute entity_id_key
    #   <p>The entity, such as a user or session, that does an action that causes a metric
    #         value to be recorded.</p>
    #   @return [String]
    # @!attribute value_key
    #   <p>The value that is tracked to produce the metric.</p>
    #   @return [String]
    # @!attribute event_pattern
    #   <p>The EventBridge event pattern that defines how the metric is recorded.</p>
    #            <p>For more information about EventBridge event patterns, see 
    #          <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html">Amazon EventBridge event patterns</a>.</p>
    #   @return [String]
    # @!attribute unit_label
    #   <p>The label for the units that the metric is measuring.</p>
    #   @return [String]
    class MetricDefinition < Struct.new(
      :name,
      :entity_id_key,
      :value_key,
      :event_pattern,
      :unit_label,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This structure defines a metric that you want to use to evaluate the variations
    #        during a launch or experiment.</p>
    # @!attribute name
    #   <p>A name for the metric.</p>
    #   @return [String]
    # @!attribute entity_id_key
    #   <p>The entity, such as a user or session, that does an action that causes a metric
    #          value to be recorded. An example is <code>userDetails.userID</code>.</p>
    #   @return [String]
    # @!attribute value_key
    #   <p>The value that is tracked to produce the metric.</p>
    #   @return [String]
    # @!attribute event_pattern
    #   <p>The EventBridge event pattern that defines how the metric is recorded.</p>
    #            <p>For more information about EventBridge event patterns, see 
    #          <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html">Amazon EventBridge event patterns</a>.</p>
    #   @return [String]
    # @!attribute unit_label
    #   <p>A label for the units that the metric is measuring.</p>
    #   @return [String]
    class MetricDefinitionConfig < Struct.new(
      :name,
      :entity_id_key,
      :value_key,
      :event_pattern,
      :unit_label,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that tells Evidently whether higher or lower values are desired for a metric that is 
    #        used in an experiment.</p>
    # @!attribute metric_definition
    #   <p>A structure that contains details about the metric.</p>
    #   @return [Types::MetricDefinition]
    # @!attribute desired_change
    #   <p>
    #               <code>INCREASE</code> means that a variation with a higher number for this metric is performing 
    #         better.</p>
    #            <p>
    #               <code>DECREASE</code> means that a variation with a lower number for this metric is performing 
    #        better.</p>
    #   @return [String]
    class MetricGoal < Struct.new(
      :metric_definition,
      :desired_change,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Use this structure to tell Evidently whether higher or lower values are desired for a metric that is 
    #        used in an experiment.</p>
    # @!attribute metric_definition
    #   <p>A structure that contains details about the metric.</p>
    #   @return [Types::MetricDefinitionConfig]
    # @!attribute desired_change
    #   <p>
    #               <code>INCREASE</code> means that a variation with a higher number for this metric is performing 
    #          better.</p>
    #            <p>
    #               <code>DECREASE</code> means that a variation with a lower number for this metric is performing 
    #          better.</p>
    #   @return [String]
    class MetricGoalConfig < Struct.new(
      :metric_definition,
      :desired_change,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines a metric to be used to monitor performance of the variations during a launch.</p>
    # @!attribute metric_definition
    #   <p>A structure that defines the metric.</p>
    #   @return [Types::MetricDefinition]
    class MetricMonitor < Struct.new(
      :metric_definition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines a metric to be used to monitor performance of the variations during a launch.</p>
    # @!attribute metric_definition
    #   <p>A structure that defines the metric.</p>
    #   @return [Types::MetricDefinitionConfig]
    class MetricMonitorConfig < Struct.new(
      :metric_definition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the configuration of which variation to use as the "control"
    #       version. The "control" version  is used for comparison with other variations. This structure
    #       also specifies how much experiment traffic is allocated to each variation.</p>
    # @!attribute control_treatment_name
    #   <p>The name of the variation that is to be the default variation that the other variations are compared to.</p>
    #   @return [String]
    # @!attribute treatment_weights
    #   <p>A set of key-value pairs. The keys are variation names, and the values are the portion
    #         of experiment traffic to be assigned to that variation. Specify the traffic portion in
    #         thousandths of a percent, so 20,000 for a variation would allocate 20% of the experiment
    #         traffic to that variation.</p>
    #   @return [Hash<String, Integer>]
    class OnlineAbConfig < Struct.new(
      :control_treatment_name,
      :treatment_weights,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the configuration of which variation to use as the "control"
    #       version. The "control" version is used for comparison with other variations. This structure
    #       also specifies how much experiment traffic is allocated to each variation.</p>
    # @!attribute control_treatment_name
    #   <p>The name of the variation that is the default variation that the other variations are compared to.</p>
    #   @return [String]
    # @!attribute treatment_weights
    #   <p>A set of key-value pairs.  The keys are variation names, and the values are the portion
    #         of experiment traffic to be assigned to that variation. The traffic portion is specified in
    #         thousandths of a percent, so 20,000 for a variation would allocate 20% of the experiment
    #         traffic to that variation.</p>
    #   @return [Hash<String, Integer>]
    class OnlineAbDefinition < Struct.new(
      :control_treatment_name,
      :treatment_weights,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This structure defines a project, which is the logical object in Evidently that can contain features, launches, and 
    #       experiments. Use projects to group similar features together.</p>
    # @!attribute arn
    #   <p>The name or ARN of the project.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current state of the project.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The user-entered description of the project.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time that the project is created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The date and time that the project was most recently updated.</p>
    #   @return [Time]
    # @!attribute feature_count
    #   <p>The number of features currently in the project.</p>
    #   @return [Integer]
    # @!attribute launch_count
    #   <p>The number of launches currently in the project. This includes all launches that have been created
    #          and not deleted, whether they are ongoing or not.</p>
    #   @return [Integer]
    # @!attribute active_launch_count
    #   <p>The number of ongoing launches currently in the project.</p>
    #   @return [Integer]
    # @!attribute experiment_count
    #   <p>The number of experiments currently in the project. This includes all experiments that have been created
    #         and not deleted, whether they are ongoing or not.</p>
    #   @return [Integer]
    # @!attribute active_experiment_count
    #   <p>The number of ongoing experiments currently in the project.</p>
    #   @return [Integer]
    # @!attribute data_delivery
    #   <p>A structure that contains information about where Evidently is to store
    #          evaluation events for longer term storage.</p>
    #   @return [Types::ProjectDataDelivery]
    # @!attribute app_config_resource
    #   <p>This structure defines the configuration of how your application 
    #         integrates with AppConfig to run client-side evaluation.</p>
    #   @return [Types::ProjectAppConfigResource]
    # @!attribute tags
    #   <p>The list of tag keys and values associated with this project.</p>
    #   @return [Hash<String, String>]
    class Project < Struct.new(
      :arn,
      :name,
      :status,
      :description,
      :created_time,
      :last_updated_time,
      :feature_count,
      :launch_count,
      :active_launch_count,
      :experiment_count,
      :active_experiment_count,
      :data_delivery,
      :app_config_resource,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This is a structure that defines the configuration of how your application 
    #       integrates with AppConfig to run client-side evaluation.</p>
    # @!attribute application_id
    #   <p>The ID of the AppConfig application to use for client-side evaluation. </p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the AppConfig environment to use for client-side evaluation. This must be an 
    #       environment that is within the application that you specify for <code>applicationId</code>.</p>
    #   @return [String]
    # @!attribute configuration_profile_id
    #   <p>The ID of the AppConfig profile to use for client-side evaluation. </p>
    #   @return [String]
    class ProjectAppConfigResource < Struct.new(
      :application_id,
      :environment_id,
      :configuration_profile_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Use this parameter to configure client-side evaluation for your project. Client-side evaluation allows your application to assign 
    #       variations to user
    #       sessions locally instead of by calling the <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_EvaluateFeature.html">EvaluateFeature</a> operation to assign the 
    #       variations. This mitigates the latency and availability risks that come with an API call.</p>
    #          <p>
    #             <code>ProjectAppConfigResource</code> is a structure that defines the configuration of how your application 
    #       integrates with AppConfig to run client-side evaluation.</p>
    # @!attribute application_id
    #   <p>The ID of the AppConfig application to use for client-side evaluation. </p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the AppConfig environment to use for client-side evaluation. This must be an 
    #         environment that is within the application that you specify for <code>applicationId</code>.</p>
    #   @return [String]
    class ProjectAppConfigResourceConfig < Struct.new(
      :application_id,
      :environment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information about where Evidently is to store
    #        evaluation events for longer term storage.</p>
    # @!attribute s3_destination
    #   <p>If the project stores evaluation events in an Amazon S3 bucket, this structure
    #          stores the bucket name and bucket prefix.</p>
    #   @return [Types::S3Destination]
    # @!attribute cloud_watch_logs
    #   <p>If the project stores evaluation events in CloudWatch Logs, this structure
    #         stores the log group name.</p>
    #   @return [Types::CloudWatchLogsDestination]
    class ProjectDataDelivery < Struct.new(
      :s3_destination,
      :cloud_watch_logs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information about where Evidently is to store
    #        evaluation events for longer term storage.</p>
    # @!attribute s3_destination
    #   <p>If the project stores evaluation events in an Amazon S3 bucket, this structure
    #          stores the bucket name and bucket prefix.</p>
    #   @return [Types::S3DestinationConfig]
    # @!attribute cloud_watch_logs
    #   <p>If the project stores evaluation events in CloudWatch Logs, this structure
    #          stores the log group name.</p>
    #   @return [Types::CloudWatchLogsDestinationConfig]
    class ProjectDataDeliveryConfig < Struct.new(
      :s3_destination,
      :cloud_watch_logs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains configuration information about an Evidently project.</p>
    # @!attribute arn
    #   <p>The name or ARN of the project.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current state of the project.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the project.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time that the project is created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The date and time that the project was most recently updated.</p>
    #   @return [Time]
    # @!attribute feature_count
    #   <p>The number of features currently in the project.</p>
    #   @return [Integer]
    # @!attribute launch_count
    #   <p>The number of launches currently in the project, including launches that are ongoing, completed, and not started yet.</p>
    #   @return [Integer]
    # @!attribute active_launch_count
    #   <p>The number of ongoing launches currently in the project.</p>
    #   @return [Integer]
    # @!attribute experiment_count
    #   <p>The number of experiments currently in the project.</p>
    #   @return [Integer]
    # @!attribute active_experiment_count
    #   <p>The number of experiments currently in the project.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The list of tag keys and values associated with this project.</p>
    #   @return [Hash<String, String>]
    class ProjectSummary < Struct.new(
      :arn,
      :name,
      :status,
      :description,
      :created_time,
      :last_updated_time,
      :feature_count,
      :launch_count,
      :active_launch_count,
      :experiment_count,
      :active_experiment_count,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project to write the events to.</p>
    #   @return [String]
    # @!attribute events
    #   <p>An array of event structures that contain the performance data that is being sent to
    #         Evidently.</p>
    #   @return [Array<Types::Event>]
    class PutProjectEventsInput < Struct.new(
      :project,
      :events,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_event_count
    #   <p>The number of events in the operation that could not be used by Evidently.</p>
    #   @return [Integer]
    # @!attribute event_results
    #   <p>A structure that contains Evidently's response to the sent events, including an event ID and 
    #         error codes, if any.</p>
    #   @return [Array<Types::PutProjectEventsResultEntry>]
    class PutProjectEventsOutput < Struct.new(
      :failed_event_count,
      :event_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains Evidently's response to the sent events, including an event ID and error codes, if any. </p>
    # @!attribute event_id
    #   <p>A unique ID assigned to this <code>PutProjectEvents</code> operation. </p>
    #   @return [String]
    # @!attribute error_code
    #   <p>If the <code>PutProjectEvents</code> operation has an error, the error code is returned
    #         here.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>If the <code>PutProjectEvents</code> operation has an error, the error message is
    #         returned here.</p>
    #   @return [String]
    class PutProjectEventsResultEntry < Struct.new(
      :event_id,
      :error_code,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information about one experiment or launch that
    #       uses the specified segment.  </p>
    # @!attribute name
    #   <p>The name of the experiment or launch.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies whether the resource that this structure contains information about is an experiment or a launch.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the experiment or launch.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the experiment or launch.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The day and time that this experiment or launch started.</p>
    #   @return [String]
    # @!attribute end_time
    #   <p>The day and time that this experiment or launch ended.</p>
    #   @return [String]
    # @!attribute last_updated_on
    #   <p>The day and time that this experiment or launch was most recently updated.</p>
    #   @return [String]
    class RefResource < Struct.new(
      :name,
      :type,
      :arn,
      :status,
      :start_time,
      :end_time,
      :last_updated_on,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request references a resource that does not exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that caused the exception.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that is associated with the error.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>If the project stores evaluation events in an Amazon S3 bucket, this structure
    #        stores the bucket name and bucket prefix.</p>
    # @!attribute bucket
    #   <p>The name of the bucket in which Evidently stores evaluation events.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The bucket prefix in which Evidently stores evaluation events.</p>
    #   @return [String]
    class S3Destination < Struct.new(
      :bucket,
      :prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>If the project stores evaluation events in an Amazon S3 bucket, this structure
    #        stores the bucket name and bucket prefix.</p>
    # @!attribute bucket
    #   <p>The name of the bucket in which Evidently stores evaluation events.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The bucket prefix in which Evidently stores evaluation events.</p>
    #   @return [String]
    class S3DestinationConfig < Struct.new(
      :bucket,
      :prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This structure defines the traffic allocation percentages among the feature
    #        variations during one step of a launch, and the start time of that step.</p>
    # @!attribute start_time
    #   <p>The date and time that this step of the launch starts.</p>
    #   @return [Time]
    # @!attribute group_weights
    #   <p>The traffic allocation percentages among the feature variations during one step of a
    #         launch. This is a set of key-value pairs.   The keys are variation names. The values represent
    #         the percentage of traffic to allocate to that variation during this step.</p>
    #            <p>The values is expressed in thousandths of a percent,
    #          so assigning a weight of 50000 assigns 50% of traffic to that variation.</p>
    #            <p>If the sum of the weights for all the variations in a segment override does not add up to 100,000, 
    #        then the remaining traffic that matches this segment is not assigned by this segment override, and instead moves
    #        on to the next segment override or the default traffic split.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute segment_overrides
    #   <p>Use this parameter to specify different traffic splits for one or more audience <i>segments</i>. 
    #         A segment
    #         is a portion of your audience that share one or more characteristics. Examples could be Chrome browser users, 
    #         users in Europe, or Firefox browser users in Europe who also fit other criteria that your application collects,
    #         such as age.</p>
    #            <p>This parameter is an array of up to six segment override objects. Each of these objects specifies a segment
    #       that you have already created, and defines the traffic split for that segment.</p>
    #   @return [Array<Types::SegmentOverride>]
    class ScheduledSplit < Struct.new(
      :start_time,
      :group_weights,
      :segment_overrides,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This structure defines the traffic allocation percentages among the feature
    #        variations during one step of a launch, and the start time of that step.</p>
    # @!attribute start_time
    #   <p>The date and time that this step of the launch starts.</p>
    #   @return [Time]
    # @!attribute group_weights
    #   <p>The traffic allocation percentages among the feature variations during one step of a
    #         launch. This is a set of key-value pairs. The keys are variation names. The values represent
    #         the percentage of traffic to allocate to that variation during this step.</p>
    #            <p>The values is expressed in thousandths of a percent,
    #          so assigning a weight of 50000 assigns 50% of traffic to that variation.</p>
    #            <p>If the sum of the weights for all the variations in a segment override does not add up to 100,000, 
    #          then the remaining traffic that matches this segment is not assigned by this segment override, and instead moves
    #          on to the next segment override or the default traffic split.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute segment_overrides
    #   <p>Use this parameter to specify different traffic splits for one or more audience <i>segments</i>. 
    #         A segment
    #         is a portion of your audience that share one or more characteristics. Examples could be Chrome browser users, 
    #         users in Europe, or Firefox browser users in Europe who also fit other criteria that your application collects,
    #         such as age.</p>
    #            <p>This parameter is an array of up to six segment override objects. Each of these objects specifies a segment
    #         that you have already created, and defines the traffic split for that segment.</p>
    #   @return [Array<Types::SegmentOverride>]
    class ScheduledSplitConfig < Struct.new(
      :start_time,
      :group_weights,
      :segment_overrides,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An array of structures that define the traffic allocation percentages among the feature
    #       variations during each step of a launch. This also defines the start time of each step.</p>
    # @!attribute steps
    #   <p>An array of structures that define the traffic allocation percentages among the feature
    #         variations during each step of the launch. This also defines the start time of each
    #         step.</p>
    #   @return [Array<Types::ScheduledSplitConfig>]
    class ScheduledSplitsLaunchConfig < Struct.new(
      :steps,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An array of structures that define the traffic allocation percentages among the feature
    #       variations during each step of a launch. This also defines the start time of each step.</p>
    # @!attribute steps
    #   <p>An array of structures that define the traffic allocation percentages among the feature
    #         variations during each step of the launch. This also defines the start time of each
    #         step.</p>
    #   @return [Array<Types::ScheduledSplit>]
    class ScheduledSplitsLaunchDefinition < Struct.new(
      :steps,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about one audience <i>segment</i>. You can use segments
    #     in your experiments and launches to narrow the user sessions used for experiment or launch to only the user
    #     sessions that match one or more criteria.</p>
    # @!attribute arn
    #   <p>The ARN of the segment.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the segment.</p>
    #   @return [String]
    # @!attribute pattern
    #   <p>The pattern that defines the attributes to use to evalute whether a user session will be in the segment. 
    #       For more information about the pattern syntax, see 
    #         <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html">Segment rule pattern syntax</a>.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time that this segment was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The date and time that this segment was most recently updated.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The customer-created description for this segment.</p>
    #   @return [String]
    # @!attribute experiment_count
    #   <p>The number of experiments that this segment is used in. This count includes all current experiments, not just
    #       those that are currently running.</p>
    #   @return [Integer]
    # @!attribute launch_count
    #   <p>The number of launches that this segment is used in. This count includes all current launches, not just
    #         those that are currently running.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The list of tag keys and values associated with this launch.</p>
    #   @return [Hash<String, String>]
    class Segment < Struct.new(
      :arn,
      :name,
      :pattern,
      :created_time,
      :last_updated_time,
      :description,
      :experiment_count,
      :launch_count,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This structure specifies a segment
    #       that you have already created, and defines the traffic split for that segment to be used in a launch.</p>
    # @!attribute segment
    #   <p>The ARN of the segment to use.</p>
    #   @return [String]
    # @!attribute evaluation_order
    #   <p>A number indicating the order to use to evaluate segment overrides, if there are more
    #       than one. Segment overrides with lower numbers are evaluated first.</p>
    #   @return [Integer]
    # @!attribute weights
    #   <p>The traffic allocation percentages among the feature variations to assign to this 
    #         segment. This is a set of key-value pairs.   The keys are variation names. The values represent
    #         the amount of traffic to allocate to that variation for this segment. This is expressed in thousandths of a percent,
    #       so a weight of 50000 represents 50% of traffic.</p>
    #   @return [Hash<String, Integer>]
    class SegmentOverride < Struct.new(
      :segment,
      :evaluation_order,
      :weights,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that caused the exception.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that is associated with the error.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The ID of the service that is associated with the error.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The ID of the service quota that was exceeded.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The service was unavailable. Retry the request.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the experiment to start.</p>
    #   @return [String]
    # @!attribute experiment
    #   <p>The name of the experiment to start.</p>
    #   @return [String]
    # @!attribute analysis_complete_time
    #   <p>The date and time to end the experiment. This must be no more than 30 days after
    #         the experiment starts.</p>
    #   @return [Time]
    class StartExperimentInput < Struct.new(
      :project,
      :experiment,
      :analysis_complete_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute started_time
    #   <p>A timestamp that indicates when the experiment started.</p>
    #   @return [Time]
    class StartExperimentOutput < Struct.new(
      :started_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the launch to start.</p>
    #   @return [String]
    # @!attribute launch
    #   <p>The name of the launch to start.</p>
    #   @return [String]
    class StartLaunchInput < Struct.new(
      :project,
      :launch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute launch
    #   <p>A structure that contains information about the launch that was started.</p>
    #   @return [Types::Launch]
    class StartLaunchOutput < Struct.new(
      :launch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the experiment to stop.</p>
    #   @return [String]
    # @!attribute experiment
    #   <p>The name of the experiment to stop.</p>
    #   @return [String]
    # @!attribute desired_state
    #   <p>Specify whether the experiment is to be considered <code>COMPLETED</code> or 
    #         <code>CANCELLED</code> after it stops.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A string that describes why you are stopping the experiment.</p>
    #   @return [String]
    class StopExperimentInput < Struct.new(
      :project,
      :experiment,
      :desired_state,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ended_time
    #   <p>The date and time that the experiment stopped.</p>
    #   @return [Time]
    class StopExperimentOutput < Struct.new(
      :ended_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the launch that you want to stop.</p>
    #   @return [String]
    # @!attribute launch
    #   <p>The name of the launch to stop.</p>
    #   @return [String]
    # @!attribute desired_state
    #   <p>Specify whether to consider the launch as <code>COMPLETED</code> or
    #           <code>CANCELLED</code> after it stops.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A string that describes why you are stopping the launch.</p>
    #   @return [String]
    class StopLaunchInput < Struct.new(
      :project,
      :launch,
      :desired_state,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ended_time
    #   <p>The date and time that the launch stopped.</p>
    #   @return [Time]
    class StopLaunchOutput < Struct.new(
      :ended_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the CloudWatch Evidently resource that you're adding tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key-value pairs to associate with the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pattern
    #   <p>The pattern to test.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>A sample <code>evaluationContext</code> JSON block to test against the specified pattern.</p>
    #   @return [String]
    class TestSegmentPatternInput < Struct.new(
      :pattern,
      :payload,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute match
    #   <p>Returns <code>true</code> if the pattern matches the payload.</p>
    #   @return [Boolean]
    class TestSegmentPatternOutput < Struct.new(
      :match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because of request throttling. Retry the request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>The ID of the service that is associated with the error.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The ID of the service quota that was exceeded.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines one treatment in an experiment. A treatment is a variation of the feature
    #        that you are including in the experiment.</p>
    # @!attribute name
    #   <p>The name of this treatment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the treatment.</p>
    #   @return [String]
    # @!attribute feature_variations
    #   <p>The feature variation used for this treatment. This is a key-value pair. The key is the
    #         feature name, and the value is the variation name.</p>
    #   @return [Hash<String, String>]
    class Treatment < Struct.new(
      :name,
      :description,
      :feature_variations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines one treatment in an experiment. A treatment is a variation of the feature
    #       that you are including in the experiment.</p>
    # @!attribute name
    #   <p>A name for this treatment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for this treatment.</p>
    #   @return [String]
    # @!attribute feature
    #   <p>The feature that this experiment is testing.</p>
    #   @return [String]
    # @!attribute variation
    #   <p>The name of the variation to use as this treatment in the experiment.</p>
    #   @return [String]
    class TreatmentConfig < Struct.new(
      :name,
      :description,
      :feature,
      :variation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the CloudWatch Evidently resource that you're removing tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the experiment that you want to update.</p>
    #   @return [String]
    # @!attribute experiment
    #   <p>The name of the experiment to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the experiment.</p>
    #   @return [String]
    # @!attribute treatments
    #   <p>An array of structures that define the variations being tested in the experiment.</p>
    #   @return [Array<Types::TreatmentConfig>]
    # @!attribute metric_goals
    #   <p>An array of structures that defines the metrics used for the experiment, and whether a higher
    #         or lower value for each metric is the goal.</p>
    #   @return [Array<Types::MetricGoalConfig>]
    # @!attribute randomization_salt
    #   <p>When Evidently assigns a particular user session to an experiment, it must use a randomization ID
    #         to determine which variation the user session is served. This randomization ID is a combination of the entity ID
    #         and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses
    #         the experiment name as the <code>randomizationSalt</code>.</p>
    #   @return [String]
    # @!attribute sampling_rate
    #   <p>The portion of the available audience that you want to allocate to this experiment, in thousandths of a percent. The available audience
    #         is the total audience minus the audience that you have allocated to overrides or current launches of
    #         this feature.</p>
    #            <p>This is represented in thousandths of a percent. For example, specify 20,000 to allocate 20% of the available audience.</p>
    #   @return [Integer]
    # @!attribute segment
    #   <p>Adds an audience <i>segment</i> to an experiment. When a segment is used in an experiment, only
    #         user sessions that match the segment pattern are used in the experiment. You can't use this parameter if the 
    #         experiment is currently
    #         running.</p>
    #   @return [String]
    # @!attribute remove_segment
    #   <p>Removes a segment from being used in an experiment. You can't use this parameter if the experiment is currently
    #         running.</p>
    #   @return [Boolean]
    # @!attribute online_ab_config
    #   <p>A structure that contains the configuration of which variation o use as the "control"
    #         version. The "control" version is used for comparison with other variations. This structure
    #         also specifies how much experiment traffic is allocated to each variation.</p>
    #   @return [Types::OnlineAbConfig]
    class UpdateExperimentInput < Struct.new(
      :project,
      :experiment,
      :description,
      :treatments,
      :metric_goals,
      :randomization_salt,
      :sampling_rate,
      :segment,
      :remove_segment,
      :online_ab_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute experiment
    #   <p>A structure containing the configuration details of the experiment
    #       that was updated.</p>
    #   @return [Types::Experiment]
    class UpdateExperimentOutput < Struct.new(
      :experiment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the feature to be updated.</p>
    #   @return [String]
    # @!attribute feature
    #   <p>The name of the feature to be updated.</p>
    #   @return [String]
    # @!attribute evaluation_strategy
    #   <p>Specify <code>ALL_RULES</code> to activate the traffic allocation specified by any ongoing
    #         launches or experiments. Specify <code>DEFAULT_VARIATION</code> to serve the default variation
    #         to all users instead.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the feature.</p>
    #   @return [String]
    # @!attribute add_or_update_variations
    #   <p>To update variation configurations for this feature, or add new ones, specify this structure.
    #         In this array, include any variations that you want to add or update. If the array includes a variation name that
    #         already exists for this feature, it is updated. If it includes a new variation name, it is added
    #         as a new variation.</p>
    #   @return [Array<Types::VariationConfig>]
    # @!attribute remove_variations
    #   <p>Removes a variation from the feature. If the variation you specify doesn't exist, then this 
    #       makes no change and does not report an error.</p>
    #            <p>This operation fails if you try to remove a variation that is part of an 
    #       ongoing launch or experiment.</p>
    #   @return [Array<String>]
    # @!attribute default_variation
    #   <p>The name of the variation to use as the default variation. The default
    #         variation is served to users who are not allocated to any ongoing launches
    #         or experiments of this feature.</p>
    #   @return [String]
    # @!attribute entity_overrides
    #   <p>Specified users that should always be served a specific variation of a feature. Each user
    #         is specified by a key-value pair . For each key, specify a user by entering their user ID,
    #         account ID, or some other identifier. For the value, specify the name of the variation that
    #         they are to be served.</p>
    #            <p>This parameter is limited to 2500 overrides or a total of 40KB. The 40KB limit includes an overhead of 6 bytes
    #         per override.</p>
    #   @return [Hash<String, String>]
    class UpdateFeatureInput < Struct.new(
      :project,
      :feature,
      :evaluation_strategy,
      :description,
      :add_or_update_variations,
      :remove_variations,
      :default_variation,
      :entity_overrides,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute feature
    #   <p>A structure that contains information about the updated feature.</p>
    #   @return [Types::Feature]
    class UpdateFeatureOutput < Struct.new(
      :feature,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the launch that you want to update.</p>
    #   @return [String]
    # @!attribute launch
    #   <p>The name of the launch that is to be updated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for the launch.</p>
    #   @return [String]
    # @!attribute groups
    #   <p>An array of structures that contains the feature and variations that are to be used for
    #         the launch.</p>
    #   @return [Array<Types::LaunchGroupConfig>]
    # @!attribute metric_monitors
    #   <p>An array of structures that define the metrics that will be used to monitor 
    #       the launch performance.</p>
    #   @return [Array<Types::MetricMonitorConfig>]
    # @!attribute randomization_salt
    #   <p>When Evidently assigns a particular user session to a launch, it must use a randomization ID
    #         to determine which variation the user session is served. This randomization ID is a combination of the entity ID
    #         and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses
    #         the launch name as the <code>randomizationSalt</code>.</p>
    #   @return [String]
    # @!attribute scheduled_splits_config
    #   <p>An array of structures that define the traffic allocation percentages among the feature
    #         variations during each step of the launch.</p>
    #   @return [Types::ScheduledSplitsLaunchConfig]
    class UpdateLaunchInput < Struct.new(
      :project,
      :launch,
      :description,
      :groups,
      :metric_monitors,
      :randomization_salt,
      :scheduled_splits_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute launch
    #   <p>A structure that contains the new configuration of the launch that was updated.</p>
    #   @return [Types::Launch]
    class UpdateLaunchOutput < Struct.new(
      :launch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that you want to modify the data storage options for.</p>
    #   @return [String]
    # @!attribute s3_destination
    #   <p>A structure containing the S3 bucket name and bucket prefix where you want to store evaluation events.</p>
    #   @return [Types::S3DestinationConfig]
    # @!attribute cloud_watch_logs
    #   <p>A structure containing the CloudWatch Logs log group where you want to store evaluation
    #         events.</p>
    #   @return [Types::CloudWatchLogsDestinationConfig]
    class UpdateProjectDataDeliveryInput < Struct.new(
      :project,
      :s3_destination,
      :cloud_watch_logs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>A structure containing details about the project that you updated.</p>
    #   @return [Types::Project]
    class UpdateProjectDataDeliveryOutput < Struct.new(
      :project,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project to update.</p>
    #   @return [String]
    # @!attribute app_config_resource
    #   <p>Use this parameter if the project will use client-side evaluation powered by AppConfig. Client-side
    #        evaluation allows your application to assign variations to user
    #        sessions locally instead of by calling the <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_EvaluateFeature.html">EvaluateFeature</a> operation. This 
    #        mitigates the latency and availability risks that come with an API call. allows
    #         you to</p>
    #            <p>This parameter is a structure that
    #         contains information about the AppConfig application that will be used for client-side evaluation.</p>
    #   @return [Types::ProjectAppConfigResourceConfig]
    # @!attribute description
    #   <p>An optional description of the project.</p>
    #   @return [String]
    class UpdateProjectInput < Struct.new(
      :project,
      :app_config_resource,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>A structure containing information about the updated project.</p>
    #   @return [Types::Project]
    class UpdateProjectOutput < Struct.new(
      :project,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The value of a parameter in the request caused an error.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>A reason for the error.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The parameter that caused the exception.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing an error name and message.</p>
    # @!attribute name
    #   <p>The error name.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The value assigned to a feature variation. This structure must contain exactly one
    #       field. It can be <code>boolValue</code>, <code>doubleValue</code>, <code>longValue</code>, or
    #         <code>stringValue</code>.</p>
    # @!attribute bool_value
    #   <p>If this feature uses the Boolean variation type, this field contains the Boolean value of
    #         this variation.</p>
    #   @return [Boolean]
    # @!attribute string_value
    #   <p>If this feature uses the string variation type, this field contains the string value of
    #          this variation.</p>
    #   @return [String]
    # @!attribute long_value
    #   <p>If this feature uses the long variation type, this field contains the long value of
    #          this variation.</p>
    #   @return [Integer]
    # @!attribute double_value
    #   <p>If this feature uses the double integer variation type, this field contains the double integer value of
    #          this variation.</p>
    #   @return [Float]
    class VariableValue < Struct.new(
      :bool_value,
      :string_value,
      :long_value,
      :double_value,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class BoolValue < VariableValue; end
      class StringValue < VariableValue; end
      class LongValue < VariableValue; end
      class DoubleValue < VariableValue; end
      class Unknown < VariableValue; end
    end

    # <p>This structure contains the name and variation value of one variation of a feature.</p>
    # @!attribute name
    #   <p>The name of the variation.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value assigned to this variation.</p>
    #   @return [Types::VariableValue]
    class Variation < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains the name and variation value of one variation of a feature.</p>
    # @!attribute name
    #   <p>The name of the variation.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value assigned to this variation.</p>
    #   @return [Types::VariableValue]
    class VariationConfig < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
