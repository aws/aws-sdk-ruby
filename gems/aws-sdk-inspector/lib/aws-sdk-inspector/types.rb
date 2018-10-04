# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Inspector
  module Types

    # @note When making an API call, you may pass AddAttributesToFindingsRequest
    #   data as a hash:
    #
    #       {
    #         finding_arns: ["Arn"], # required
    #         attributes: [ # required
    #           {
    #             key: "AttributeKey", # required
    #             value: "AttributeValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] finding_arns
    #   The ARNs that specify the findings that you want to assign
    #   attributes to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] attributes
    #   The array of attributes that you want to assign to specified
    #   findings.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/AddAttributesToFindingsRequest AWS API Documentation
    #
    class AddAttributesToFindingsRequest < Struct.new(
      :finding_arns,
      :attributes)
      include Aws::Structure
    end

    # @!attribute [rw] failed_items
    #   Attribute details that cannot be described. An error code is
    #   provided for each failed item.
    #   @return [Hash<String,Types::FailedItemDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/AddAttributesToFindingsResponse AWS API Documentation
    #
    class AddAttributesToFindingsResponse < Struct.new(
      :failed_items)
      include Aws::Structure
    end

    # Used in the exception error that is thrown if you start an assessment
    # run for an assessment target that includes an EC2 instance that is
    # already participating in another started assessment run.
    #
    # @!attribute [rw] agent_id
    #   ID of the agent that is running on an EC2 instance that is already
    #   participating in another started assessment run.
    #   @return [String]
    #
    # @!attribute [rw] assessment_run_arn
    #   The ARN of the assessment run that has already been started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/AgentAlreadyRunningAssessment AWS API Documentation
    #
    class AgentAlreadyRunningAssessment < Struct.new(
      :agent_id,
      :assessment_run_arn)
      include Aws::Structure
    end

    # Contains information about an Amazon Inspector agent. This data type
    # is used as a request parameter in the ListAssessmentRunAgents action.
    #
    # @note When making an API call, you may pass AgentFilter
    #   data as a hash:
    #
    #       {
    #         agent_healths: ["HEALTHY"], # required, accepts HEALTHY, UNHEALTHY, UNKNOWN
    #         agent_health_codes: ["IDLE"], # required, accepts IDLE, RUNNING, SHUTDOWN, UNHEALTHY, THROTTLED, UNKNOWN
    #       }
    #
    # @!attribute [rw] agent_healths
    #   The current health state of the agent. Values can be set to
    #   **HEALTHY** or **UNHEALTHY**.
    #   @return [Array<String>]
    #
    # @!attribute [rw] agent_health_codes
    #   The detailed health state of the agent. Values can be set to
    #   **IDLE**, **RUNNING**, **SHUTDOWN**, **UNHEALTHY**, **THROTTLED**,
    #   and **UNKNOWN**.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/AgentFilter AWS API Documentation
    #
    class AgentFilter < Struct.new(
      :agent_healths,
      :agent_health_codes)
      include Aws::Structure
    end

    # Used as a response element in the PreviewAgents action.
    #
    # @!attribute [rw] hostname
    #   The hostname of the EC2 instance on which the Amazon Inspector Agent
    #   is installed.
    #   @return [String]
    #
    # @!attribute [rw] agent_id
    #   The ID of the EC2 instance where the agent is installed.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group
    #   The Auto Scaling group for the EC2 instance where the agent is
    #   installed.
    #   @return [String]
    #
    # @!attribute [rw] agent_health
    #   The health status of the Amazon Inspector Agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the Amazon Inspector Agent.
    #   @return [String]
    #
    # @!attribute [rw] operating_system
    #   The operating system running on the EC2 instance on which the Amazon
    #   Inspector Agent is installed.
    #   @return [String]
    #
    # @!attribute [rw] kernel_version
    #   The kernel version of the operating system running on the EC2
    #   instance on which the Amazon Inspector Agent is installed.
    #   @return [String]
    #
    # @!attribute [rw] ipv4_address
    #   The IP address of the EC2 instance on which the Amazon Inspector
    #   Agent is installed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/AgentPreview AWS API Documentation
    #
    class AgentPreview < Struct.new(
      :hostname,
      :agent_id,
      :auto_scaling_group,
      :agent_health,
      :agent_version,
      :operating_system,
      :kernel_version,
      :ipv4_address)
      include Aws::Structure
    end

    # A snapshot of an Amazon Inspector assessment run that contains the
    # findings of the assessment run .
    #
    # Used as the response element in the DescribeAssessmentRuns action.
    #
    # @!attribute [rw] arn
    #   The ARN of the assessment run.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The auto-generated name for the assessment run.
    #   @return [String]
    #
    # @!attribute [rw] assessment_template_arn
    #   The ARN of the assessment template that is associated with the
    #   assessment run.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the assessment run.
    #   @return [String]
    #
    # @!attribute [rw] duration_in_seconds
    #   The duration of the assessment run.
    #   @return [Integer]
    #
    # @!attribute [rw] rules_package_arns
    #   The rules packages selected for the assessment run.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_attributes_for_findings
    #   The user-defined attributes that are assigned to every generated
    #   finding.
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] created_at
    #   The time when StartAssessmentRun was called.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The time when StartAssessmentRun was called.
    #   @return [Time]
    #
    # @!attribute [rw] completed_at
    #   The assessment run completion time that corresponds to the rules
    #   packages evaluation completion time or failure.
    #   @return [Time]
    #
    # @!attribute [rw] state_changed_at
    #   The last time when the assessment run's state changed.
    #   @return [Time]
    #
    # @!attribute [rw] data_collected
    #   A Boolean value (true or false) that specifies whether the process
    #   of collecting data from the agents is completed.
    #   @return [Boolean]
    #
    # @!attribute [rw] state_changes
    #   A list of the assessment run state changes.
    #   @return [Array<Types::AssessmentRunStateChange>]
    #
    # @!attribute [rw] notifications
    #   A list of notifications for the event subscriptions. A notification
    #   about a particular generated finding is added to this list only
    #   once.
    #   @return [Array<Types::AssessmentRunNotification>]
    #
    # @!attribute [rw] finding_counts
    #   Provides a total count of generated findings per severity.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/AssessmentRun AWS API Documentation
    #
    class AssessmentRun < Struct.new(
      :arn,
      :name,
      :assessment_template_arn,
      :state,
      :duration_in_seconds,
      :rules_package_arns,
      :user_attributes_for_findings,
      :created_at,
      :started_at,
      :completed_at,
      :state_changed_at,
      :data_collected,
      :state_changes,
      :notifications,
      :finding_counts)
      include Aws::Structure
    end

    # Contains information about an Amazon Inspector agent. This data type
    # is used as a response element in the ListAssessmentRunAgents action.
    #
    # @!attribute [rw] agent_id
    #   The AWS account of the EC2 instance where the agent is installed.
    #   @return [String]
    #
    # @!attribute [rw] assessment_run_arn
    #   The ARN of the assessment run that is associated with the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_health
    #   The current health state of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_health_code
    #   The detailed health state of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_health_details
    #   The description for the agent health code.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group
    #   The Auto Scaling group of the EC2 instance that is specified by the
    #   agent ID.
    #   @return [String]
    #
    # @!attribute [rw] telemetry_metadata
    #   The Amazon Inspector application data metrics that are collected by
    #   the agent.
    #   @return [Array<Types::TelemetryMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/AssessmentRunAgent AWS API Documentation
    #
    class AssessmentRunAgent < Struct.new(
      :agent_id,
      :assessment_run_arn,
      :agent_health,
      :agent_health_code,
      :agent_health_details,
      :auto_scaling_group,
      :telemetry_metadata)
      include Aws::Structure
    end

    # Used as the request parameter in the ListAssessmentRuns action.
    #
    # @note When making an API call, you may pass AssessmentRunFilter
    #   data as a hash:
    #
    #       {
    #         name_pattern: "NamePattern",
    #         states: ["CREATED"], # accepts CREATED, START_DATA_COLLECTION_PENDING, START_DATA_COLLECTION_IN_PROGRESS, COLLECTING_DATA, STOP_DATA_COLLECTION_PENDING, DATA_COLLECTED, START_EVALUATING_RULES_PENDING, EVALUATING_RULES, FAILED, ERROR, COMPLETED, COMPLETED_WITH_ERRORS, CANCELED
    #         duration_range: {
    #           min_seconds: 1,
    #           max_seconds: 1,
    #         },
    #         rules_package_arns: ["Arn"],
    #         start_time_range: {
    #           begin_date: Time.now,
    #           end_date: Time.now,
    #         },
    #         completion_time_range: {
    #           begin_date: Time.now,
    #           end_date: Time.now,
    #         },
    #         state_change_time_range: {
    #           begin_date: Time.now,
    #           end_date: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] name_pattern
    #   For a record to match a filter, an explicit value or a string
    #   containing a wildcard that is specified for this data type property
    #   must match the value of the **assessmentRunName** property of the
    #   AssessmentRun data type.
    #   @return [String]
    #
    # @!attribute [rw] states
    #   For a record to match a filter, one of the values specified for this
    #   data type property must be the exact match of the value of the
    #   **assessmentRunState** property of the AssessmentRun data type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] duration_range
    #   For a record to match a filter, the value that is specified for this
    #   data type property must inclusively match any value between the
    #   specified minimum and maximum values of the **durationInSeconds**
    #   property of the AssessmentRun data type.
    #   @return [Types::DurationRange]
    #
    # @!attribute [rw] rules_package_arns
    #   For a record to match a filter, the value that is specified for this
    #   data type property must be contained in the list of values of the
    #   **rulesPackages** property of the AssessmentRun data type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time_range
    #   For a record to match a filter, the value that is specified for this
    #   data type property must inclusively match any value between the
    #   specified minimum and maximum values of the **startTime** property
    #   of the AssessmentRun data type.
    #   @return [Types::TimestampRange]
    #
    # @!attribute [rw] completion_time_range
    #   For a record to match a filter, the value that is specified for this
    #   data type property must inclusively match any value between the
    #   specified minimum and maximum values of the **completedAt** property
    #   of the AssessmentRun data type.
    #   @return [Types::TimestampRange]
    #
    # @!attribute [rw] state_change_time_range
    #   For a record to match a filter, the value that is specified for this
    #   data type property must match the **stateChangedAt** property of the
    #   AssessmentRun data type.
    #   @return [Types::TimestampRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/AssessmentRunFilter AWS API Documentation
    #
    class AssessmentRunFilter < Struct.new(
      :name_pattern,
      :states,
      :duration_range,
      :rules_package_arns,
      :start_time_range,
      :completion_time_range,
      :state_change_time_range)
      include Aws::Structure
    end

    # Used as one of the elements of the AssessmentRun data type.
    #
    # @!attribute [rw] date
    #   The date of the notification.
    #   @return [Time]
    #
    # @!attribute [rw] event
    #   The event for which a notification is sent.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message included in the notification.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The Boolean value that specifies whether the notification represents
    #   an error.
    #   @return [Boolean]
    #
    # @!attribute [rw] sns_topic_arn
    #   The SNS topic to which the SNS notification is sent.
    #   @return [String]
    #
    # @!attribute [rw] sns_publish_status_code
    #   The status code of the SNS notification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/AssessmentRunNotification AWS API Documentation
    #
    class AssessmentRunNotification < Struct.new(
      :date,
      :event,
      :message,
      :error,
      :sns_topic_arn,
      :sns_publish_status_code)
      include Aws::Structure
    end

    # Used as one of the elements of the AssessmentRun data type.
    #
    # @!attribute [rw] state_changed_at
    #   The last time the assessment run state changed.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The assessment run state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/AssessmentRunStateChange AWS API Documentation
    #
    class AssessmentRunStateChange < Struct.new(
      :state_changed_at,
      :state)
      include Aws::Structure
    end

    # Contains information about an Amazon Inspector application. This data
    # type is used as the response element in the DescribeAssessmentTargets
    # action.
    #
    # @!attribute [rw] arn
    #   The ARN that specifies the Amazon Inspector assessment target.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Amazon Inspector assessment target.
    #   @return [String]
    #
    # @!attribute [rw] resource_group_arn
    #   The ARN that specifies the resource group that is associated with
    #   the assessment target.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the assessment target is created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which UpdateAssessmentTarget is called.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/AssessmentTarget AWS API Documentation
    #
    class AssessmentTarget < Struct.new(
      :arn,
      :name,
      :resource_group_arn,
      :created_at,
      :updated_at)
      include Aws::Structure
    end

    # Used as the request parameter in the ListAssessmentTargets action.
    #
    # @note When making an API call, you may pass AssessmentTargetFilter
    #   data as a hash:
    #
    #       {
    #         assessment_target_name_pattern: "NamePattern",
    #       }
    #
    # @!attribute [rw] assessment_target_name_pattern
    #   For a record to match a filter, an explicit value or a string that
    #   contains a wildcard that is specified for this data type property
    #   must match the value of the **assessmentTargetName** property of the
    #   AssessmentTarget data type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/AssessmentTargetFilter AWS API Documentation
    #
    class AssessmentTargetFilter < Struct.new(
      :assessment_target_name_pattern)
      include Aws::Structure
    end

    # Contains information about an Amazon Inspector assessment template.
    # This data type is used as the response element in the
    # DescribeAssessmentTemplates action.
    #
    # @!attribute [rw] arn
    #   The ARN of the assessment template.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the assessment template.
    #   @return [String]
    #
    # @!attribute [rw] assessment_target_arn
    #   The ARN of the assessment target that corresponds to this assessment
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] duration_in_seconds
    #   The duration in seconds specified for this assessment template. The
    #   default value is 3600 seconds (one hour). The maximum value is 86400
    #   seconds (one day).
    #   @return [Integer]
    #
    # @!attribute [rw] rules_package_arns
    #   The rules packages that are specified for this assessment template.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_attributes_for_findings
    #   The user-defined attributes that are assigned to every generated
    #   finding from the assessment run that uses this assessment template.
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] last_assessment_run_arn
    #   The Amazon Resource Name (ARN) of the most recent assessment run
    #   associated with this assessment template. This value exists only
    #   when the value of assessmentRunCount is greaterpa than zero.
    #   @return [String]
    #
    # @!attribute [rw] assessment_run_count
    #   The number of existing assessment runs associated with this
    #   assessment template. This value can be zero or a positive integer.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The time at which the assessment template is created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/AssessmentTemplate AWS API Documentation
    #
    class AssessmentTemplate < Struct.new(
      :arn,
      :name,
      :assessment_target_arn,
      :duration_in_seconds,
      :rules_package_arns,
      :user_attributes_for_findings,
      :last_assessment_run_arn,
      :assessment_run_count,
      :created_at)
      include Aws::Structure
    end

    # Used as the request parameter in the ListAssessmentTemplates action.
    #
    # @note When making an API call, you may pass AssessmentTemplateFilter
    #   data as a hash:
    #
    #       {
    #         name_pattern: "NamePattern",
    #         duration_range: {
    #           min_seconds: 1,
    #           max_seconds: 1,
    #         },
    #         rules_package_arns: ["Arn"],
    #       }
    #
    # @!attribute [rw] name_pattern
    #   For a record to match a filter, an explicit value or a string that
    #   contains a wildcard that is specified for this data type property
    #   must match the value of the **assessmentTemplateName** property of
    #   the AssessmentTemplate data type.
    #   @return [String]
    #
    # @!attribute [rw] duration_range
    #   For a record to match a filter, the value specified for this data
    #   type property must inclusively match any value between the specified
    #   minimum and maximum values of the **durationInSeconds** property of
    #   the AssessmentTemplate data type.
    #   @return [Types::DurationRange]
    #
    # @!attribute [rw] rules_package_arns
    #   For a record to match a filter, the values that are specified for
    #   this data type property must be contained in the list of values of
    #   the **rulesPackageArns** property of the AssessmentTemplate data
    #   type.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/AssessmentTemplateFilter AWS API Documentation
    #
    class AssessmentTemplateFilter < Struct.new(
      :name_pattern,
      :duration_range,
      :rules_package_arns)
      include Aws::Structure
    end

    # A collection of attributes of the host from which the finding is
    # generated.
    #
    # @!attribute [rw] schema_version
    #   The schema version of this data type.
    #   @return [Integer]
    #
    # @!attribute [rw] agent_id
    #   The ID of the agent that is installed on the EC2 instance where the
    #   finding is generated.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group
    #   The Auto Scaling group of the EC2 instance where the finding is
    #   generated.
    #   @return [String]
    #
    # @!attribute [rw] ami_id
    #   The ID of the Amazon Machine Image (AMI) that is installed on the
    #   EC2 instance where the finding is generated.
    #   @return [String]
    #
    # @!attribute [rw] hostname
    #   The hostname of the EC2 instance where the finding is generated.
    #   @return [String]
    #
    # @!attribute [rw] ipv4_addresses
    #   The list of IP v4 addresses of the EC2 instance where the finding is
    #   generated.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/AssetAttributes AWS API Documentation
    #
    class AssetAttributes < Struct.new(
      :schema_version,
      :agent_id,
      :auto_scaling_group,
      :ami_id,
      :hostname,
      :ipv4_addresses)
      include Aws::Structure
    end

    # This data type is used as a request parameter in the
    # AddAttributesToFindings and CreateAssessmentTemplate actions.
    #
    # @note When making an API call, you may pass Attribute
    #   data as a hash:
    #
    #       {
    #         key: "AttributeKey", # required
    #         value: "AttributeValue",
    #       }
    #
    # @!attribute [rw] key
    #   The attribute key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value assigned to the attribute key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/Attribute AWS API Documentation
    #
    class Attribute < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAssessmentTargetRequest
    #   data as a hash:
    #
    #       {
    #         assessment_target_name: "AssessmentTargetName", # required
    #         resource_group_arn: "Arn",
    #       }
    #
    # @!attribute [rw] assessment_target_name
    #   The user-defined name that identifies the assessment target that you
    #   want to create. The name must be unique within the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] resource_group_arn
    #   The ARN that specifies the resource group that is used to create the
    #   assessment target. If resourceGroupArn is not specified, all EC2
    #   instances in the current AWS account and region are included in the
    #   assessment target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/CreateAssessmentTargetRequest AWS API Documentation
    #
    class CreateAssessmentTargetRequest < Struct.new(
      :assessment_target_name,
      :resource_group_arn)
      include Aws::Structure
    end

    # @!attribute [rw] assessment_target_arn
    #   The ARN that specifies the assessment target that is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/CreateAssessmentTargetResponse AWS API Documentation
    #
    class CreateAssessmentTargetResponse < Struct.new(
      :assessment_target_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAssessmentTemplateRequest
    #   data as a hash:
    #
    #       {
    #         assessment_target_arn: "Arn", # required
    #         assessment_template_name: "AssessmentTemplateName", # required
    #         duration_in_seconds: 1, # required
    #         rules_package_arns: ["Arn"], # required
    #         user_attributes_for_findings: [
    #           {
    #             key: "AttributeKey", # required
    #             value: "AttributeValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] assessment_target_arn
    #   The ARN that specifies the assessment target for which you want to
    #   create the assessment template.
    #   @return [String]
    #
    # @!attribute [rw] assessment_template_name
    #   The user-defined name that identifies the assessment template that
    #   you want to create. You can create several assessment templates for
    #   an assessment target. The names of the assessment templates that
    #   correspond to a particular assessment target must be unique.
    #   @return [String]
    #
    # @!attribute [rw] duration_in_seconds
    #   The duration of the assessment run in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] rules_package_arns
    #   The ARNs that specify the rules packages that you want to attach to
    #   the assessment template.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_attributes_for_findings
    #   The user-defined attributes that are assigned to every finding that
    #   is generated by the assessment run that uses this assessment
    #   template. An attribute is a key and value pair (an Attribute
    #   object). Within an assessment template, each key must be unique.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/CreateAssessmentTemplateRequest AWS API Documentation
    #
    class CreateAssessmentTemplateRequest < Struct.new(
      :assessment_target_arn,
      :assessment_template_name,
      :duration_in_seconds,
      :rules_package_arns,
      :user_attributes_for_findings)
      include Aws::Structure
    end

    # @!attribute [rw] assessment_template_arn
    #   The ARN that specifies the assessment template that is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/CreateAssessmentTemplateResponse AWS API Documentation
    #
    class CreateAssessmentTemplateResponse < Struct.new(
      :assessment_template_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateExclusionsPreviewRequest
    #   data as a hash:
    #
    #       {
    #         assessment_template_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] assessment_template_arn
    #   The ARN that specifies the assessment template for which you want to
    #   create an exclusions preview.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/CreateExclusionsPreviewRequest AWS API Documentation
    #
    class CreateExclusionsPreviewRequest < Struct.new(
      :assessment_template_arn)
      include Aws::Structure
    end

    # @!attribute [rw] preview_token
    #   Specifies the unique identifier of the requested exclusions preview.
    #   You can use the unique identifier to retrieve the exclusions preview
    #   when running the GetExclusionsPreview API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/CreateExclusionsPreviewResponse AWS API Documentation
    #
    class CreateExclusionsPreviewResponse < Struct.new(
      :preview_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateResourceGroupRequest
    #   data as a hash:
    #
    #       {
    #         resource_group_tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_group_tags
    #   A collection of keys and an array of possible values,
    #   '\[\\\{"key":"key1","values":\["Value1","Value2"\]\\},\\\{"key":"Key2","values":\["Value3"\]\\}\]'.
    #
    #   For
    #   example,'\[\\\{"key":"Name","values":\["TestEC2Instance"\]\\}\]'.
    #   @return [Array<Types::ResourceGroupTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/CreateResourceGroupRequest AWS API Documentation
    #
    class CreateResourceGroupRequest < Struct.new(
      :resource_group_tags)
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_arn
    #   The ARN that specifies the resource group that is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/CreateResourceGroupResponse AWS API Documentation
    #
    class CreateResourceGroupResponse < Struct.new(
      :resource_group_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAssessmentRunRequest
    #   data as a hash:
    #
    #       {
    #         assessment_run_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] assessment_run_arn
    #   The ARN that specifies the assessment run that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/DeleteAssessmentRunRequest AWS API Documentation
    #
    class DeleteAssessmentRunRequest < Struct.new(
      :assessment_run_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAssessmentTargetRequest
    #   data as a hash:
    #
    #       {
    #         assessment_target_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] assessment_target_arn
    #   The ARN that specifies the assessment target that you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/DeleteAssessmentTargetRequest AWS API Documentation
    #
    class DeleteAssessmentTargetRequest < Struct.new(
      :assessment_target_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAssessmentTemplateRequest
    #   data as a hash:
    #
    #       {
    #         assessment_template_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] assessment_template_arn
    #   The ARN that specifies the assessment template that you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/DeleteAssessmentTemplateRequest AWS API Documentation
    #
    class DeleteAssessmentTemplateRequest < Struct.new(
      :assessment_template_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAssessmentRunsRequest
    #   data as a hash:
    #
    #       {
    #         assessment_run_arns: ["Arn"], # required
    #       }
    #
    # @!attribute [rw] assessment_run_arns
    #   The ARN that specifies the assessment run that you want to describe.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/DescribeAssessmentRunsRequest AWS API Documentation
    #
    class DescribeAssessmentRunsRequest < Struct.new(
      :assessment_run_arns)
      include Aws::Structure
    end

    # @!attribute [rw] assessment_runs
    #   Information about the assessment run.
    #   @return [Array<Types::AssessmentRun>]
    #
    # @!attribute [rw] failed_items
    #   Assessment run details that cannot be described. An error code is
    #   provided for each failed item.
    #   @return [Hash<String,Types::FailedItemDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/DescribeAssessmentRunsResponse AWS API Documentation
    #
    class DescribeAssessmentRunsResponse < Struct.new(
      :assessment_runs,
      :failed_items)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAssessmentTargetsRequest
    #   data as a hash:
    #
    #       {
    #         assessment_target_arns: ["Arn"], # required
    #       }
    #
    # @!attribute [rw] assessment_target_arns
    #   The ARNs that specifies the assessment targets that you want to
    #   describe.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/DescribeAssessmentTargetsRequest AWS API Documentation
    #
    class DescribeAssessmentTargetsRequest < Struct.new(
      :assessment_target_arns)
      include Aws::Structure
    end

    # @!attribute [rw] assessment_targets
    #   Information about the assessment targets.
    #   @return [Array<Types::AssessmentTarget>]
    #
    # @!attribute [rw] failed_items
    #   Assessment target details that cannot be described. An error code is
    #   provided for each failed item.
    #   @return [Hash<String,Types::FailedItemDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/DescribeAssessmentTargetsResponse AWS API Documentation
    #
    class DescribeAssessmentTargetsResponse < Struct.new(
      :assessment_targets,
      :failed_items)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAssessmentTemplatesRequest
    #   data as a hash:
    #
    #       {
    #         assessment_template_arns: ["Arn"], # required
    #       }
    #
    # @!attribute [rw] assessment_template_arns
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/DescribeAssessmentTemplatesRequest AWS API Documentation
    #
    class DescribeAssessmentTemplatesRequest < Struct.new(
      :assessment_template_arns)
      include Aws::Structure
    end

    # @!attribute [rw] assessment_templates
    #   Information about the assessment templates.
    #   @return [Array<Types::AssessmentTemplate>]
    #
    # @!attribute [rw] failed_items
    #   Assessment template details that cannot be described. An error code
    #   is provided for each failed item.
    #   @return [Hash<String,Types::FailedItemDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/DescribeAssessmentTemplatesResponse AWS API Documentation
    #
    class DescribeAssessmentTemplatesResponse < Struct.new(
      :assessment_templates,
      :failed_items)
      include Aws::Structure
    end

    # @!attribute [rw] role_arn
    #   The ARN that specifies the IAM role that Amazon Inspector uses to
    #   access your AWS account.
    #   @return [String]
    #
    # @!attribute [rw] valid
    #   A Boolean value that specifies whether the IAM role has the
    #   necessary policies attached to enable Amazon Inspector to access
    #   your AWS account.
    #   @return [Boolean]
    #
    # @!attribute [rw] registered_at
    #   The date when the cross-account access role was registered.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/DescribeCrossAccountAccessRoleResponse AWS API Documentation
    #
    class DescribeCrossAccountAccessRoleResponse < Struct.new(
      :role_arn,
      :valid,
      :registered_at)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeExclusionsRequest
    #   data as a hash:
    #
    #       {
    #         exclusion_arns: ["Arn"], # required
    #         locale: "EN_US", # accepts EN_US
    #       }
    #
    # @!attribute [rw] exclusion_arns
    #   The list of ARNs that specify the exclusions that you want to
    #   describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] locale
    #   The locale into which you want to translate the exclusion's title,
    #   description, and recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/DescribeExclusionsRequest AWS API Documentation
    #
    class DescribeExclusionsRequest < Struct.new(
      :exclusion_arns,
      :locale)
      include Aws::Structure
    end

    # @!attribute [rw] exclusions
    #   Information about the exclusions.
    #   @return [Hash<String,Types::Exclusion>]
    #
    # @!attribute [rw] failed_items
    #   Exclusion details that cannot be described. An error code is
    #   provided for each failed item.
    #   @return [Hash<String,Types::FailedItemDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/DescribeExclusionsResponse AWS API Documentation
    #
    class DescribeExclusionsResponse < Struct.new(
      :exclusions,
      :failed_items)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeFindingsRequest
    #   data as a hash:
    #
    #       {
    #         finding_arns: ["Arn"], # required
    #         locale: "EN_US", # accepts EN_US
    #       }
    #
    # @!attribute [rw] finding_arns
    #   The ARN that specifies the finding that you want to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] locale
    #   The locale into which you want to translate a finding description,
    #   recommendation, and the short description that identifies the
    #   finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/DescribeFindingsRequest AWS API Documentation
    #
    class DescribeFindingsRequest < Struct.new(
      :finding_arns,
      :locale)
      include Aws::Structure
    end

    # @!attribute [rw] findings
    #   Information about the finding.
    #   @return [Array<Types::Finding>]
    #
    # @!attribute [rw] failed_items
    #   Finding details that cannot be described. An error code is provided
    #   for each failed item.
    #   @return [Hash<String,Types::FailedItemDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/DescribeFindingsResponse AWS API Documentation
    #
    class DescribeFindingsResponse < Struct.new(
      :findings,
      :failed_items)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeResourceGroupsRequest
    #   data as a hash:
    #
    #       {
    #         resource_group_arns: ["Arn"], # required
    #       }
    #
    # @!attribute [rw] resource_group_arns
    #   The ARN that specifies the resource group that you want to describe.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/DescribeResourceGroupsRequest AWS API Documentation
    #
    class DescribeResourceGroupsRequest < Struct.new(
      :resource_group_arns)
      include Aws::Structure
    end

    # @!attribute [rw] resource_groups
    #   Information about a resource group.
    #   @return [Array<Types::ResourceGroup>]
    #
    # @!attribute [rw] failed_items
    #   Resource group details that cannot be described. An error code is
    #   provided for each failed item.
    #   @return [Hash<String,Types::FailedItemDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/DescribeResourceGroupsResponse AWS API Documentation
    #
    class DescribeResourceGroupsResponse < Struct.new(
      :resource_groups,
      :failed_items)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRulesPackagesRequest
    #   data as a hash:
    #
    #       {
    #         rules_package_arns: ["Arn"], # required
    #         locale: "EN_US", # accepts EN_US
    #       }
    #
    # @!attribute [rw] rules_package_arns
    #   The ARN that specifies the rules package that you want to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] locale
    #   The locale that you want to translate a rules package description
    #   into.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/DescribeRulesPackagesRequest AWS API Documentation
    #
    class DescribeRulesPackagesRequest < Struct.new(
      :rules_package_arns,
      :locale)
      include Aws::Structure
    end

    # @!attribute [rw] rules_packages
    #   Information about the rules package.
    #   @return [Array<Types::RulesPackage>]
    #
    # @!attribute [rw] failed_items
    #   Rules package details that cannot be described. An error code is
    #   provided for each failed item.
    #   @return [Hash<String,Types::FailedItemDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/DescribeRulesPackagesResponse AWS API Documentation
    #
    class DescribeRulesPackagesResponse < Struct.new(
      :rules_packages,
      :failed_items)
      include Aws::Structure
    end

    # This data type is used in the AssessmentTemplateFilter data type.
    #
    # @note When making an API call, you may pass DurationRange
    #   data as a hash:
    #
    #       {
    #         min_seconds: 1,
    #         max_seconds: 1,
    #       }
    #
    # @!attribute [rw] min_seconds
    #   The minimum value of the duration range. Must be greater than zero.
    #   @return [Integer]
    #
    # @!attribute [rw] max_seconds
    #   The maximum value of the duration range. Must be less than or equal
    #   to 604800 seconds (1 week).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/DurationRange AWS API Documentation
    #
    class DurationRange < Struct.new(
      :min_seconds,
      :max_seconds)
      include Aws::Structure
    end

    # This data type is used in the Subscription data type.
    #
    # @!attribute [rw] event
    #   The event for which Amazon Simple Notification Service (SNS)
    #   notifications are sent.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_at
    #   The time at which SubscribeToEvent is called.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/EventSubscription AWS API Documentation
    #
    class EventSubscription < Struct.new(
      :event,
      :subscribed_at)
      include Aws::Structure
    end

    # Contains information about what was excluded from an assessment run.
    #
    # @!attribute [rw] arn
    #   The ARN that specifies the exclusion.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The name of the exclusion.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the exclusion.
    #   @return [String]
    #
    # @!attribute [rw] recommendation
    #   The recommendation for the exclusion.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   The AWS resources for which the exclusion pertains.
    #   @return [Array<Types::Scope>]
    #
    # @!attribute [rw] attributes
    #   The system-defined attributes for the exclusion.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/Exclusion AWS API Documentation
    #
    class Exclusion < Struct.new(
      :arn,
      :title,
      :description,
      :recommendation,
      :scopes,
      :attributes)
      include Aws::Structure
    end

    # Contains information about what is excluded from an assessment run
    # given the current state of the assessment template.
    #
    # @!attribute [rw] title
    #   The name of the exclusion preview.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the exclusion preview.
    #   @return [String]
    #
    # @!attribute [rw] recommendation
    #   The recommendation for the exclusion preview.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   The AWS resources for which the exclusion preview pertains.
    #   @return [Array<Types::Scope>]
    #
    # @!attribute [rw] attributes
    #   The system-defined attributes for the exclusion preview.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ExclusionPreview AWS API Documentation
    #
    class ExclusionPreview < Struct.new(
      :title,
      :description,
      :recommendation,
      :scopes,
      :attributes)
      include Aws::Structure
    end

    # Includes details about the failed items.
    #
    # @!attribute [rw] failure_code
    #   The status code of a failed item.
    #   @return [String]
    #
    # @!attribute [rw] retryable
    #   Indicates whether you can immediately retry a request for this item
    #   for a specified resource.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/FailedItemDetails AWS API Documentation
    #
    class FailedItemDetails < Struct.new(
      :failure_code,
      :retryable)
      include Aws::Structure
    end

    # Contains information about an Amazon Inspector finding. This data type
    # is used as the response element in the DescribeFindings action.
    #
    # @!attribute [rw] arn
    #   The ARN that specifies the finding.
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   The schema version of this data type.
    #   @return [Integer]
    #
    # @!attribute [rw] service
    #   The data element is set to "Inspector".
    #   @return [String]
    #
    # @!attribute [rw] service_attributes
    #   This data type is used in the Finding data type.
    #   @return [Types::InspectorServiceAttributes]
    #
    # @!attribute [rw] asset_type
    #   The type of the host from which the finding is generated.
    #   @return [String]
    #
    # @!attribute [rw] asset_attributes
    #   A collection of attributes of the host from which the finding is
    #   generated.
    #   @return [Types::AssetAttributes]
    #
    # @!attribute [rw] id
    #   The ID of the finding.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The name of the finding.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the finding.
    #   @return [String]
    #
    # @!attribute [rw] recommendation
    #   The recommendation for the finding.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The finding severity. Values can be set to High, Medium, Low, and
    #   Informational.
    #   @return [String]
    #
    # @!attribute [rw] numeric_severity
    #   The numeric value of the finding severity.
    #   @return [Float]
    #
    # @!attribute [rw] confidence
    #   This data element is currently not used.
    #   @return [Integer]
    #
    # @!attribute [rw] indicator_of_compromise
    #   This data element is currently not used.
    #   @return [Boolean]
    #
    # @!attribute [rw] attributes
    #   The system-defined attributes for the finding.
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] user_attributes
    #   The user-defined attributes that are assigned to the finding.
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] created_at
    #   The time when the finding was generated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time when AddAttributesToFindings is called.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/Finding AWS API Documentation
    #
    class Finding < Struct.new(
      :arn,
      :schema_version,
      :service,
      :service_attributes,
      :asset_type,
      :asset_attributes,
      :id,
      :title,
      :description,
      :recommendation,
      :severity,
      :numeric_severity,
      :confidence,
      :indicator_of_compromise,
      :attributes,
      :user_attributes,
      :created_at,
      :updated_at)
      include Aws::Structure
    end

    # This data type is used as a request parameter in the ListFindings
    # action.
    #
    # @note When making an API call, you may pass FindingFilter
    #   data as a hash:
    #
    #       {
    #         agent_ids: ["AgentId"],
    #         auto_scaling_groups: ["AutoScalingGroup"],
    #         rule_names: ["RuleName"],
    #         severities: ["Low"], # accepts Low, Medium, High, Informational, Undefined
    #         rules_package_arns: ["Arn"],
    #         attributes: [
    #           {
    #             key: "AttributeKey", # required
    #             value: "AttributeValue",
    #           },
    #         ],
    #         user_attributes: [
    #           {
    #             key: "AttributeKey", # required
    #             value: "AttributeValue",
    #           },
    #         ],
    #         creation_time_range: {
    #           begin_date: Time.now,
    #           end_date: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] agent_ids
    #   For a record to match a filter, one of the values that is specified
    #   for this data type property must be the exact match of the value of
    #   the **agentId** property of the Finding data type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_scaling_groups
    #   For a record to match a filter, one of the values that is specified
    #   for this data type property must be the exact match of the value of
    #   the **autoScalingGroup** property of the Finding data type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rule_names
    #   For a record to match a filter, one of the values that is specified
    #   for this data type property must be the exact match of the value of
    #   the **ruleName** property of the Finding data type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] severities
    #   For a record to match a filter, one of the values that is specified
    #   for this data type property must be the exact match of the value of
    #   the **severity** property of the Finding data type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rules_package_arns
    #   For a record to match a filter, one of the values that is specified
    #   for this data type property must be the exact match of the value of
    #   the **rulesPackageArn** property of the Finding data type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] attributes
    #   For a record to match a filter, the list of values that are
    #   specified for this data type property must be contained in the list
    #   of values of the **attributes** property of the Finding data type.
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] user_attributes
    #   For a record to match a filter, the value that is specified for this
    #   data type property must be contained in the list of values of the
    #   **userAttributes** property of the Finding data type.
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] creation_time_range
    #   The time range during which the finding is generated.
    #   @return [Types::TimestampRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/FindingFilter AWS API Documentation
    #
    class FindingFilter < Struct.new(
      :agent_ids,
      :auto_scaling_groups,
      :rule_names,
      :severities,
      :rules_package_arns,
      :attributes,
      :user_attributes,
      :creation_time_range)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAssessmentReportRequest
    #   data as a hash:
    #
    #       {
    #         assessment_run_arn: "Arn", # required
    #         report_file_format: "HTML", # required, accepts HTML, PDF
    #         report_type: "FINDING", # required, accepts FINDING, FULL
    #       }
    #
    # @!attribute [rw] assessment_run_arn
    #   The ARN that specifies the assessment run for which you want to
    #   generate a report.
    #   @return [String]
    #
    # @!attribute [rw] report_file_format
    #   Specifies the file format (html or pdf) of the assessment report
    #   that you want to generate.
    #   @return [String]
    #
    # @!attribute [rw] report_type
    #   Specifies the type of the assessment report that you want to
    #   generate. There are two types of assessment reports: a finding
    #   report and a full report. For more information, see [Assessment
    #   Reports][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/inspector/latest/userguide/inspector_reports.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/GetAssessmentReportRequest AWS API Documentation
    #
    class GetAssessmentReportRequest < Struct.new(
      :assessment_run_arn,
      :report_file_format,
      :report_type)
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   Specifies the status of the request to generate an assessment
    #   report.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   Specifies the URL where you can find the generated assessment
    #   report. This parameter is only returned if the report is
    #   successfully generated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/GetAssessmentReportResponse AWS API Documentation
    #
    class GetAssessmentReportResponse < Struct.new(
      :status,
      :url)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetExclusionsPreviewRequest
    #   data as a hash:
    #
    #       {
    #         assessment_template_arn: "Arn", # required
    #         preview_token: "UUID", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #         locale: "EN_US", # accepts EN_US
    #       }
    #
    # @!attribute [rw] assessment_template_arn
    #   The ARN that specifies the assessment template for which the
    #   exclusions preview was requested.
    #   @return [String]
    #
    # @!attribute [rw] preview_token
    #   The unique identifier associated of the exclusions preview.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the
    #   GetExclusionsPreviewRequest action. Subsequent calls to the action
    #   fill nextToken in the request with the value of nextToken from the
    #   previous response to continue listing data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   you want in the response. The default value is 100. The maximum
    #   value is 500.
    #   @return [Integer]
    #
    # @!attribute [rw] locale
    #   The locale into which you want to translate the exclusion's title,
    #   description, and recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/GetExclusionsPreviewRequest AWS API Documentation
    #
    class GetExclusionsPreviewRequest < Struct.new(
      :assessment_template_arn,
      :preview_token,
      :next_token,
      :max_results,
      :locale)
      include Aws::Structure
    end

    # @!attribute [rw] preview_status
    #   Specifies the status of the request to generate an exclusions
    #   preview.
    #   @return [String]
    #
    # @!attribute [rw] exclusion_previews
    #   Information about the exclusions included in the preview.
    #   @return [Array<Types::ExclusionPreview>]
    #
    # @!attribute [rw] next_token
    #   When a response is generated, if there is more data to be listed,
    #   this parameters is present in the response and contains the value to
    #   use for the nextToken parameter in a subsequent pagination request.
    #   If there is no more data to be listed, this parameter is set to
    #   null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/GetExclusionsPreviewResponse AWS API Documentation
    #
    class GetExclusionsPreviewResponse < Struct.new(
      :preview_status,
      :exclusion_previews,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTelemetryMetadataRequest
    #   data as a hash:
    #
    #       {
    #         assessment_run_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] assessment_run_arn
    #   The ARN that specifies the assessment run that has the telemetry
    #   data that you want to obtain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/GetTelemetryMetadataRequest AWS API Documentation
    #
    class GetTelemetryMetadataRequest < Struct.new(
      :assessment_run_arn)
      include Aws::Structure
    end

    # @!attribute [rw] telemetry_metadata
    #   Telemetry details.
    #   @return [Array<Types::TelemetryMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/GetTelemetryMetadataResponse AWS API Documentation
    #
    class GetTelemetryMetadataResponse < Struct.new(
      :telemetry_metadata)
      include Aws::Structure
    end

    # This data type is used in the Finding data type.
    #
    # @!attribute [rw] schema_version
    #   The schema version of this data type.
    #   @return [Integer]
    #
    # @!attribute [rw] assessment_run_arn
    #   The ARN of the assessment run during which the finding is generated.
    #   @return [String]
    #
    # @!attribute [rw] rules_package_arn
    #   The ARN of the rules package that is used to generate the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/InspectorServiceAttributes AWS API Documentation
    #
    class InspectorServiceAttributes < Struct.new(
      :schema_version,
      :assessment_run_arn,
      :rules_package_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssessmentRunAgentsRequest
    #   data as a hash:
    #
    #       {
    #         assessment_run_arn: "Arn", # required
    #         filter: {
    #           agent_healths: ["HEALTHY"], # required, accepts HEALTHY, UNHEALTHY, UNKNOWN
    #           agent_health_codes: ["IDLE"], # required, accepts IDLE, RUNNING, SHUTDOWN, UNHEALTHY, THROTTLED, UNKNOWN
    #         },
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] assessment_run_arn
    #   The ARN that specifies the assessment run whose agents you want to
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   You can use this parameter to specify a subset of data to be
    #   included in the action's response.
    #
    #   For a record to match a filter, all specified filter attributes must
    #   match. When multiple values are specified for a filter attribute,
    #   any of the values can match.
    #   @return [Types::AgentFilter]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the
    #   **ListAssessmentRunAgents** action. Subsequent calls to the action
    #   fill **nextToken** in the request with the value of **NextToken**
    #   from the previous response to continue listing data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response. The default value is 10. The maximum
    #   value is 500.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ListAssessmentRunAgentsRequest AWS API Documentation
    #
    class ListAssessmentRunAgentsRequest < Struct.new(
      :assessment_run_arn,
      :filter,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] assessment_run_agents
    #   A list of ARNs that specifies the agents returned by the action.
    #   @return [Array<Types::AssessmentRunAgent>]
    #
    # @!attribute [rw] next_token
    #   When a response is generated, if there is more data to be listed,
    #   this parameter is present in the response and contains the value to
    #   use for the **nextToken** parameter in a subsequent pagination
    #   request. If there is no more data to be listed, this parameter is
    #   set to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ListAssessmentRunAgentsResponse AWS API Documentation
    #
    class ListAssessmentRunAgentsResponse < Struct.new(
      :assessment_run_agents,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssessmentRunsRequest
    #   data as a hash:
    #
    #       {
    #         assessment_template_arns: ["Arn"],
    #         filter: {
    #           name_pattern: "NamePattern",
    #           states: ["CREATED"], # accepts CREATED, START_DATA_COLLECTION_PENDING, START_DATA_COLLECTION_IN_PROGRESS, COLLECTING_DATA, STOP_DATA_COLLECTION_PENDING, DATA_COLLECTED, START_EVALUATING_RULES_PENDING, EVALUATING_RULES, FAILED, ERROR, COMPLETED, COMPLETED_WITH_ERRORS, CANCELED
    #           duration_range: {
    #             min_seconds: 1,
    #             max_seconds: 1,
    #           },
    #           rules_package_arns: ["Arn"],
    #           start_time_range: {
    #             begin_date: Time.now,
    #             end_date: Time.now,
    #           },
    #           completion_time_range: {
    #             begin_date: Time.now,
    #             end_date: Time.now,
    #           },
    #           state_change_time_range: {
    #             begin_date: Time.now,
    #             end_date: Time.now,
    #           },
    #         },
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] assessment_template_arns
    #   The ARNs that specify the assessment templates whose assessment runs
    #   you want to list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filter
    #   You can use this parameter to specify a subset of data to be
    #   included in the action's response.
    #
    #   For a record to match a filter, all specified filter attributes must
    #   match. When multiple values are specified for a filter attribute,
    #   any of the values can match.
    #   @return [Types::AssessmentRunFilter]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the
    #   **ListAssessmentRuns** action. Subsequent calls to the action fill
    #   **nextToken** in the request with the value of **NextToken** from
    #   the previous response to continue listing data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response. The default value is 10. The maximum
    #   value is 500.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ListAssessmentRunsRequest AWS API Documentation
    #
    class ListAssessmentRunsRequest < Struct.new(
      :assessment_template_arns,
      :filter,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] assessment_run_arns
    #   A list of ARNs that specifies the assessment runs that are returned
    #   by the action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   When a response is generated, if there is more data to be listed,
    #   this parameter is present in the response and contains the value to
    #   use for the **nextToken** parameter in a subsequent pagination
    #   request. If there is no more data to be listed, this parameter is
    #   set to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ListAssessmentRunsResponse AWS API Documentation
    #
    class ListAssessmentRunsResponse < Struct.new(
      :assessment_run_arns,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssessmentTargetsRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           assessment_target_name_pattern: "NamePattern",
    #         },
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   You can use this parameter to specify a subset of data to be
    #   included in the action's response.
    #
    #   For a record to match a filter, all specified filter attributes must
    #   match. When multiple values are specified for a filter attribute,
    #   any of the values can match.
    #   @return [Types::AssessmentTargetFilter]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the
    #   **ListAssessmentTargets** action. Subsequent calls to the action
    #   fill **nextToken** in the request with the value of **NextToken**
    #   from the previous response to continue listing data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   you want in the response. The default value is 10. The maximum value
    #   is 500.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ListAssessmentTargetsRequest AWS API Documentation
    #
    class ListAssessmentTargetsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] assessment_target_arns
    #   A list of ARNs that specifies the assessment targets that are
    #   returned by the action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   When a response is generated, if there is more data to be listed,
    #   this parameter is present in the response and contains the value to
    #   use for the **nextToken** parameter in a subsequent pagination
    #   request. If there is no more data to be listed, this parameter is
    #   set to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ListAssessmentTargetsResponse AWS API Documentation
    #
    class ListAssessmentTargetsResponse < Struct.new(
      :assessment_target_arns,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssessmentTemplatesRequest
    #   data as a hash:
    #
    #       {
    #         assessment_target_arns: ["Arn"],
    #         filter: {
    #           name_pattern: "NamePattern",
    #           duration_range: {
    #             min_seconds: 1,
    #             max_seconds: 1,
    #           },
    #           rules_package_arns: ["Arn"],
    #         },
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] assessment_target_arns
    #   A list of ARNs that specifies the assessment targets whose
    #   assessment templates you want to list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filter
    #   You can use this parameter to specify a subset of data to be
    #   included in the action's response.
    #
    #   For a record to match a filter, all specified filter attributes must
    #   match. When multiple values are specified for a filter attribute,
    #   any of the values can match.
    #   @return [Types::AssessmentTemplateFilter]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the
    #   **ListAssessmentTemplates** action. Subsequent calls to the action
    #   fill **nextToken** in the request with the value of **NextToken**
    #   from the previous response to continue listing data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   you want in the response. The default value is 10. The maximum value
    #   is 500.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ListAssessmentTemplatesRequest AWS API Documentation
    #
    class ListAssessmentTemplatesRequest < Struct.new(
      :assessment_target_arns,
      :filter,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] assessment_template_arns
    #   A list of ARNs that specifies the assessment templates returned by
    #   the action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   When a response is generated, if there is more data to be listed,
    #   this parameter is present in the response and contains the value to
    #   use for the **nextToken** parameter in a subsequent pagination
    #   request. If there is no more data to be listed, this parameter is
    #   set to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ListAssessmentTemplatesResponse AWS API Documentation
    #
    class ListAssessmentTemplatesResponse < Struct.new(
      :assessment_template_arns,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEventSubscriptionsRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn",
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the assessment template for which you want to list the
    #   existing event subscriptions.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the
    #   **ListEventSubscriptions** action. Subsequent calls to the action
    #   fill **nextToken** in the request with the value of **NextToken**
    #   from the previous response to continue listing data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   you want in the response. The default value is 10. The maximum value
    #   is 500.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ListEventSubscriptionsRequest AWS API Documentation
    #
    class ListEventSubscriptionsRequest < Struct.new(
      :resource_arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] subscriptions
    #   Details of the returned event subscriptions.
    #   @return [Array<Types::Subscription>]
    #
    # @!attribute [rw] next_token
    #   When a response is generated, if there is more data to be listed,
    #   this parameter is present in the response and contains the value to
    #   use for the **nextToken** parameter in a subsequent pagination
    #   request. If there is no more data to be listed, this parameter is
    #   set to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ListEventSubscriptionsResponse AWS API Documentation
    #
    class ListEventSubscriptionsResponse < Struct.new(
      :subscriptions,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListExclusionsRequest
    #   data as a hash:
    #
    #       {
    #         assessment_run_arn: "Arn", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] assessment_run_arn
    #   The ARN of the assessment run that generated the exclusions that you
    #   want to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the
    #   ListExclusionsRequest action. Subsequent calls to the action fill
    #   nextToken in the request with the value of nextToken from the
    #   previous response to continue listing data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   you want in the response. The default value is 100. The maximum
    #   value is 500.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ListExclusionsRequest AWS API Documentation
    #
    class ListExclusionsRequest < Struct.new(
      :assessment_run_arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] exclusion_arns
    #   A list of exclusions' ARNs returned by the action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   When a response is generated, if there is more data to be listed,
    #   this parameters is present in the response and contains the value to
    #   use for the nextToken parameter in a subsequent pagination request.
    #   If there is no more data to be listed, this parameter is set to
    #   null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ListExclusionsResponse AWS API Documentation
    #
    class ListExclusionsResponse < Struct.new(
      :exclusion_arns,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFindingsRequest
    #   data as a hash:
    #
    #       {
    #         assessment_run_arns: ["Arn"],
    #         filter: {
    #           agent_ids: ["AgentId"],
    #           auto_scaling_groups: ["AutoScalingGroup"],
    #           rule_names: ["RuleName"],
    #           severities: ["Low"], # accepts Low, Medium, High, Informational, Undefined
    #           rules_package_arns: ["Arn"],
    #           attributes: [
    #             {
    #               key: "AttributeKey", # required
    #               value: "AttributeValue",
    #             },
    #           ],
    #           user_attributes: [
    #             {
    #               key: "AttributeKey", # required
    #               value: "AttributeValue",
    #             },
    #           ],
    #           creation_time_range: {
    #             begin_date: Time.now,
    #             end_date: Time.now,
    #           },
    #         },
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] assessment_run_arns
    #   The ARNs of the assessment runs that generate the findings that you
    #   want to list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filter
    #   You can use this parameter to specify a subset of data to be
    #   included in the action's response.
    #
    #   For a record to match a filter, all specified filter attributes must
    #   match. When multiple values are specified for a filter attribute,
    #   any of the values can match.
    #   @return [Types::FindingFilter]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the **ListFindings**
    #   action. Subsequent calls to the action fill **nextToken** in the
    #   request with the value of **NextToken** from the previous response
    #   to continue listing data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   you want in the response. The default value is 10. The maximum value
    #   is 500.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ListFindingsRequest AWS API Documentation
    #
    class ListFindingsRequest < Struct.new(
      :assessment_run_arns,
      :filter,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] finding_arns
    #   A list of ARNs that specifies the findings returned by the action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   When a response is generated, if there is more data to be listed,
    #   this parameter is present in the response and contains the value to
    #   use for the **nextToken** parameter in a subsequent pagination
    #   request. If there is no more data to be listed, this parameter is
    #   set to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ListFindingsResponse AWS API Documentation
    #
    class ListFindingsResponse < Struct.new(
      :finding_arns,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRulesPackagesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the
    #   **ListRulesPackages** action. Subsequent calls to the action fill
    #   **nextToken** in the request with the value of **NextToken** from
    #   the previous response to continue listing data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   you want in the response. The default value is 10. The maximum value
    #   is 500.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ListRulesPackagesRequest AWS API Documentation
    #
    class ListRulesPackagesRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] rules_package_arns
    #   The list of ARNs that specifies the rules packages returned by the
    #   action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   When a response is generated, if there is more data to be listed,
    #   this parameter is present in the response and contains the value to
    #   use for the **nextToken** parameter in a subsequent pagination
    #   request. If there is no more data to be listed, this parameter is
    #   set to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ListRulesPackagesResponse AWS API Documentation
    #
    class ListRulesPackagesResponse < Struct.new(
      :rules_package_arns,
      :next_token)
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
    #   The ARN that specifies the assessment template whose tags you want
    #   to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PreviewAgentsRequest
    #   data as a hash:
    #
    #       {
    #         preview_agents_arn: "Arn", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] preview_agents_arn
    #   The ARN of the assessment target whose agents you want to preview.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the **PreviewAgents**
    #   action. Subsequent calls to the action fill **nextToken** in the
    #   request with the value of **NextToken** from the previous response
    #   to continue listing data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   You can use this parameter to indicate the maximum number of items
    #   you want in the response. The default value is 10. The maximum value
    #   is 500.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/PreviewAgentsRequest AWS API Documentation
    #
    class PreviewAgentsRequest < Struct.new(
      :preview_agents_arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] agent_previews
    #   The resulting list of agents.
    #   @return [Array<Types::AgentPreview>]
    #
    # @!attribute [rw] next_token
    #   When a response is generated, if there is more data to be listed,
    #   this parameter is present in the response and contains the value to
    #   use for the **nextToken** parameter in a subsequent pagination
    #   request. If there is no more data to be listed, this parameter is
    #   set to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/PreviewAgentsResponse AWS API Documentation
    #
    class PreviewAgentsResponse < Struct.new(
      :agent_previews,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterCrossAccountAccessRoleRequest
    #   data as a hash:
    #
    #       {
    #         role_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that grants Amazon Inspector access to AWS
    #   Services needed to perform security assessments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/RegisterCrossAccountAccessRoleRequest AWS API Documentation
    #
    class RegisterCrossAccountAccessRoleRequest < Struct.new(
      :role_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveAttributesFromFindingsRequest
    #   data as a hash:
    #
    #       {
    #         finding_arns: ["Arn"], # required
    #         attribute_keys: ["AttributeKey"], # required
    #       }
    #
    # @!attribute [rw] finding_arns
    #   The ARNs that specify the findings that you want to remove
    #   attributes from.
    #   @return [Array<String>]
    #
    # @!attribute [rw] attribute_keys
    #   The array of attribute keys that you want to remove from specified
    #   findings.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/RemoveAttributesFromFindingsRequest AWS API Documentation
    #
    class RemoveAttributesFromFindingsRequest < Struct.new(
      :finding_arns,
      :attribute_keys)
      include Aws::Structure
    end

    # @!attribute [rw] failed_items
    #   Attributes details that cannot be described. An error code is
    #   provided for each failed item.
    #   @return [Hash<String,Types::FailedItemDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/RemoveAttributesFromFindingsResponse AWS API Documentation
    #
    class RemoveAttributesFromFindingsResponse < Struct.new(
      :failed_items)
      include Aws::Structure
    end

    # Contains information about a resource group. The resource group
    # defines a set of tags that, when queried, identify the AWS resources
    # that make up the assessment target. This data type is used as the
    # response element in the DescribeResourceGroups action.
    #
    # @!attribute [rw] arn
    #   The ARN of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags (key and value pairs) of the resource group. This data type
    #   property is used in the CreateResourceGroup action.
    #   @return [Array<Types::ResourceGroupTag>]
    #
    # @!attribute [rw] created_at
    #   The time at which resource group is created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ResourceGroup AWS API Documentation
    #
    class ResourceGroup < Struct.new(
      :arn,
      :tags,
      :created_at)
      include Aws::Structure
    end

    # This data type is used as one of the elements of the ResourceGroup
    # data type.
    #
    # @note When making an API call, you may pass ResourceGroupTag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   A tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value assigned to a tag key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/ResourceGroupTag AWS API Documentation
    #
    class ResourceGroupTag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Contains information about an Amazon Inspector rules package. This
    # data type is used as the response element in the DescribeRulesPackages
    # action.
    #
    # @!attribute [rw] arn
    #   The ARN of the rules package.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rules package.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version ID of the rules package.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of the rules package.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the rules package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/RulesPackage AWS API Documentation
    #
    class RulesPackage < Struct.new(
      :arn,
      :name,
      :version,
      :provider,
      :description)
      include Aws::Structure
    end

    # This data type contains key-value pairs that identify various Amazon
    # resources.
    #
    # @!attribute [rw] key
    #   The type of the scope.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The resource identifier for the specified scope type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/Scope AWS API Documentation
    #
    class Scope < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SetTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the assessment template that you want to set tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs that you want to set to the
    #   assessment template.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/SetTagsForResourceRequest AWS API Documentation
    #
    class SetTagsForResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartAssessmentRunRequest
    #   data as a hash:
    #
    #       {
    #         assessment_template_arn: "Arn", # required
    #         assessment_run_name: "AssessmentRunName",
    #       }
    #
    # @!attribute [rw] assessment_template_arn
    #   The ARN of the assessment template of the assessment run that you
    #   want to start.
    #   @return [String]
    #
    # @!attribute [rw] assessment_run_name
    #   You can specify the name for the assessment run. The name must be
    #   unique for the assessment template whose ARN is used to start the
    #   assessment run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/StartAssessmentRunRequest AWS API Documentation
    #
    class StartAssessmentRunRequest < Struct.new(
      :assessment_template_arn,
      :assessment_run_name)
      include Aws::Structure
    end

    # @!attribute [rw] assessment_run_arn
    #   The ARN of the assessment run that has been started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/StartAssessmentRunResponse AWS API Documentation
    #
    class StartAssessmentRunResponse < Struct.new(
      :assessment_run_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopAssessmentRunRequest
    #   data as a hash:
    #
    #       {
    #         assessment_run_arn: "Arn", # required
    #         stop_action: "START_EVALUATION", # accepts START_EVALUATION, SKIP_EVALUATION
    #       }
    #
    # @!attribute [rw] assessment_run_arn
    #   The ARN of the assessment run that you want to stop.
    #   @return [String]
    #
    # @!attribute [rw] stop_action
    #   An input option that can be set to either START\_EVALUATION or
    #   SKIP\_EVALUATION. START\_EVALUATION (the default value), stops the
    #   AWS agent from collecting data and begins the results evaluation and
    #   the findings generation process. SKIP\_EVALUATION cancels the
    #   assessment run immediately, after which no findings are generated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/StopAssessmentRunRequest AWS API Documentation
    #
    class StopAssessmentRunRequest < Struct.new(
      :assessment_run_arn,
      :stop_action)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SubscribeToEventRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         event: "ASSESSMENT_RUN_STARTED", # required, accepts ASSESSMENT_RUN_STARTED, ASSESSMENT_RUN_COMPLETED, ASSESSMENT_RUN_STATE_CHANGED, FINDING_REPORTED, OTHER
    #         topic_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the assessment template that is used during the event for
    #   which you want to receive SNS notifications.
    #   @return [String]
    #
    # @!attribute [rw] event
    #   The event for which you want to receive SNS notifications.
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The ARN of the SNS topic to which the SNS notifications are sent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/SubscribeToEventRequest AWS API Documentation
    #
    class SubscribeToEventRequest < Struct.new(
      :resource_arn,
      :event,
      :topic_arn)
      include Aws::Structure
    end

    # This data type is used as a response element in the
    # ListEventSubscriptions action.
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the assessment template that is used during the event for
    #   which the SNS notification is sent.
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The ARN of the Amazon Simple Notification Service (SNS) topic to
    #   which the SNS notifications are sent.
    #   @return [String]
    #
    # @!attribute [rw] event_subscriptions
    #   The list of existing event subscriptions.
    #   @return [Array<Types::EventSubscription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/Subscription AWS API Documentation
    #
    class Subscription < Struct.new(
      :resource_arn,
      :topic_arn,
      :event_subscriptions)
      include Aws::Structure
    end

    # A key and value pair. This data type is used as a request parameter in
    # the SetTagsForResource action and a response element in the
    # ListTagsForResource action.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   A tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A value assigned to a tag key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # The metadata about the Amazon Inspector application data metrics
    # collected by the agent. This data type is used as the response element
    # in the GetTelemetryMetadata action.
    #
    # @!attribute [rw] message_type
    #   A specific type of behavioral data that is collected by the agent.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The count of messages that the agent sends to the Amazon Inspector
    #   service.
    #   @return [Integer]
    #
    # @!attribute [rw] data_size
    #   The data size of messages that the agent sends to the Amazon
    #   Inspector service.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/TelemetryMetadata AWS API Documentation
    #
    class TelemetryMetadata < Struct.new(
      :message_type,
      :count,
      :data_size)
      include Aws::Structure
    end

    # This data type is used in the AssessmentRunFilter data type.
    #
    # @note When making an API call, you may pass TimestampRange
    #   data as a hash:
    #
    #       {
    #         begin_date: Time.now,
    #         end_date: Time.now,
    #       }
    #
    # @!attribute [rw] begin_date
    #   The minimum value of the timestamp range.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The maximum value of the timestamp range.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/TimestampRange AWS API Documentation
    #
    class TimestampRange < Struct.new(
      :begin_date,
      :end_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UnsubscribeFromEventRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         event: "ASSESSMENT_RUN_STARTED", # required, accepts ASSESSMENT_RUN_STARTED, ASSESSMENT_RUN_COMPLETED, ASSESSMENT_RUN_STATE_CHANGED, FINDING_REPORTED, OTHER
    #         topic_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the assessment template that is used during the event for
    #   which you want to stop receiving SNS notifications.
    #   @return [String]
    #
    # @!attribute [rw] event
    #   The event for which you want to stop receiving SNS notifications.
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The ARN of the SNS topic to which SNS notifications are sent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/UnsubscribeFromEventRequest AWS API Documentation
    #
    class UnsubscribeFromEventRequest < Struct.new(
      :resource_arn,
      :event,
      :topic_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAssessmentTargetRequest
    #   data as a hash:
    #
    #       {
    #         assessment_target_arn: "Arn", # required
    #         assessment_target_name: "AssessmentTargetName", # required
    #         resource_group_arn: "Arn",
    #       }
    #
    # @!attribute [rw] assessment_target_arn
    #   The ARN of the assessment target that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] assessment_target_name
    #   The name of the assessment target that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] resource_group_arn
    #   The ARN of the resource group that is used to specify the new
    #   resource group to associate with the assessment target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-2016-02-16/UpdateAssessmentTargetRequest AWS API Documentation
    #
    class UpdateAssessmentTargetRequest < Struct.new(
      :assessment_target_arn,
      :assessment_target_name,
      :resource_group_arn)
      include Aws::Structure
    end

  end
end
