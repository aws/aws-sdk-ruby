# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module ConfigService
    module Types

      # Indicates whether an AWS resource or AWS Config rule is compliant and
      # provides the number of contributors that affect the compliance.
      class Compliance < Aws::Structure.new(
        :compliance_type,
        :compliance_contributor_count)

        # @!attribute [rw] compliance_type
        #   Indicates whether an AWS resource or AWS Config rule is compliant.
        #
        #   A resource is compliant if it complies with all of the AWS Config
        #   rules that evaluate it, and it is noncompliant if it does not comply
        #   with one or more of these rules.
        #
        #   A rule is compliant if all of the resources that the rule evaluates
        #   comply with it, and it is noncompliant if any of these resources do
        #   not comply.
        #
        #   AWS Config returns the `INSUFFICIENT_DATA` value when no evaluation
        #   results are available for the AWS resource or Config rule.
        #
        #   For the `Compliance` data type, AWS Config supports only
        #   `COMPLIANT`, `NON_COMPLIANT`, and `INSUFFICIENT_DATA` values. AWS
        #   Config does not support the `NOT_APPLICABLE` value for the
        #   `Compliance` data type.
        #   @return [String]

        # @!attribute [rw] compliance_contributor_count
        #   The number of AWS resources or AWS Config rules that cause a result
        #   of `NON_COMPLIANT`, up to a maximum number.
        #   @return [Types::ComplianceContributorCount]

      end

      # Indicates whether an AWS Config rule is compliant. A rule is compliant
      # if all of the resources that the rule evaluated comply with it, and it
      # is noncompliant if any of these resources do not comply.
      class ComplianceByConfigRule < Aws::Structure.new(
        :config_rule_name,
        :compliance)

        # @!attribute [rw] config_rule_name
        #   The name of the AWS Config rule.
        #   @return [String]

        # @!attribute [rw] compliance
        #   Indicates whether the AWS Config rule is compliant.
        #   @return [Types::Compliance]

      end

      # Indicates whether an AWS resource that is evaluated according to one
      # or more AWS Config rules is compliant. A resource is compliant if it
      # complies with all of the rules that evaluate it, and it is
      # noncompliant if it does not comply with one or more of these rules.
      class ComplianceByResource < Aws::Structure.new(
        :resource_type,
        :resource_id,
        :compliance)

        # @!attribute [rw] resource_type
        #   The type of the AWS resource that was evaluated.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The ID of the AWS resource that was evaluated.
        #   @return [String]

        # @!attribute [rw] compliance
        #   Indicates whether the AWS resource complies with all of the AWS
        #   Config rules that evaluated it.
        #   @return [Types::Compliance]

      end

      # The number of AWS resources or AWS Config rules responsible for the
      # current compliance of the item, up to a maximum number.
      class ComplianceContributorCount < Aws::Structure.new(
        :capped_count,
        :cap_exceeded)

        # @!attribute [rw] capped_count
        #   The number of AWS resources or AWS Config rules responsible for the
        #   current compliance of the item.
        #   @return [Integer]

        # @!attribute [rw] cap_exceeded
        #   Indicates whether the maximum count is reached.
        #   @return [Boolean]

      end

      # The number of AWS Config rules or AWS resources that are compliant and
      # noncompliant, up to a maximum.
      class ComplianceSummary < Aws::Structure.new(
        :compliant_resource_count,
        :non_compliant_resource_count,
        :compliance_summary_timestamp)

        # @!attribute [rw] compliant_resource_count
        #   The number of AWS Config rules or AWS resources that are compliant,
        #   up to a maximum of 25 for rules and 100 for resources.
        #   @return [Types::ComplianceContributorCount]

        # @!attribute [rw] non_compliant_resource_count
        #   The number of AWS Config rules or AWS resources that are
        #   noncompliant, up to a maximum of 25 for rules and 100 for resources.
        #   @return [Types::ComplianceContributorCount]

        # @!attribute [rw] compliance_summary_timestamp
        #   The time that AWS Config created the compliance summary.
        #   @return [Time]

      end

      # The number of AWS resources of a specific type that are compliant or
      # noncompliant, up to a maximum of 100 for each compliance.
      class ComplianceSummaryByResourceType < Aws::Structure.new(
        :resource_type,
        :compliance_summary)

        # @!attribute [rw] resource_type
        #   The type of AWS resource.
        #   @return [String]

        # @!attribute [rw] compliance_summary
        #   The number of AWS resources that are compliant or noncompliant, up
        #   to a maximum of 100 for each compliance.
        #   @return [Types::ComplianceSummary]

      end

      # A list that contains the status of the delivery of either the snapshot
      # or the configuration history to the specified Amazon S3 bucket.
      class ConfigExportDeliveryInfo < Aws::Structure.new(
        :last_status,
        :last_error_code,
        :last_error_message,
        :last_attempt_time,
        :last_successful_time,
        :next_delivery_time)

        # @!attribute [rw] last_status
        #   Status of the last attempted delivery.
        #   @return [String]

        # @!attribute [rw] last_error_code
        #   The error code from the last attempted delivery.
        #   @return [String]

        # @!attribute [rw] last_error_message
        #   The error message from the last attempted delivery.
        #   @return [String]

        # @!attribute [rw] last_attempt_time
        #   The time of the last attempted delivery.
        #   @return [Time]

        # @!attribute [rw] last_successful_time
        #   The time of the last successful delivery.
        #   @return [Time]

        # @!attribute [rw] next_delivery_time
        #   The time that the next delivery occurs.
        #   @return [Time]

      end

      # An AWS Lambda function that evaluates configuration items to assess
      # whether your AWS resources comply with your desired configurations.
      # This function can run when AWS Config detects a configuration change
      # to an AWS resource and at a periodic frequency that you choose (for
      # example, every 24 hours).
      #
      # <note markdown="1"> You can use the AWS CLI and AWS SDKs if you want to create a rule that
      # triggers evaluations for your resources when AWS Config delivers the
      # configuration snapshot. For more information, see
      # ConfigSnapshotDeliveryProperties.
      #
      #  </note>
      #
      # For more information about developing and using AWS Config rules, see
      # [Evaluating AWS Resource Configurations with AWS Config][1] in the
      # *AWS Config Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html
      # @note When making an API call, pass ConfigRule
      #   data as a hash:
      #
      #       {
      #         config_rule_name: "StringWithCharLimit64",
      #         config_rule_arn: "String",
      #         config_rule_id: "String",
      #         description: "EmptiableStringWithCharLimit256",
      #         scope: {
      #           compliance_resource_types: ["StringWithCharLimit256"],
      #           tag_key: "StringWithCharLimit128",
      #           tag_value: "StringWithCharLimit256",
      #           compliance_resource_id: "StringWithCharLimit256",
      #         },
      #         source: { # required
      #           owner: "CUSTOM_LAMBDA", # accepts CUSTOM_LAMBDA, AWS
      #           source_identifier: "StringWithCharLimit256",
      #           source_details: [
      #             {
      #               event_source: "aws.config", # accepts aws.config
      #               message_type: "ConfigurationItemChangeNotification", # accepts ConfigurationItemChangeNotification, ConfigurationSnapshotDeliveryCompleted, ScheduledNotification
      #               maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
      #             },
      #           ],
      #         },
      #         input_parameters: "StringWithCharLimit256",
      #         maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
      #         config_rule_state: "ACTIVE", # accepts ACTIVE, DELETING, DELETING_RESULTS, EVALUATING
      #       }
      class ConfigRule < Aws::Structure.new(
        :config_rule_name,
        :config_rule_arn,
        :config_rule_id,
        :description,
        :scope,
        :source,
        :input_parameters,
        :maximum_execution_frequency,
        :config_rule_state)

        # @!attribute [rw] config_rule_name
        #   The name that you assign to the AWS Config rule. The name is
        #   required if you are adding a new rule.
        #   @return [String]

        # @!attribute [rw] config_rule_arn
        #   The Amazon Resource Name (ARN) of the AWS Config rule.
        #   @return [String]

        # @!attribute [rw] config_rule_id
        #   The ID of the AWS Config rule.
        #   @return [String]

        # @!attribute [rw] description
        #   The description that you provide for the AWS Config rule.
        #   @return [String]

        # @!attribute [rw] scope
        #   Defines which resources can trigger an evaluation for the rule. The
        #   scope can include one or more resource types, a combination of one
        #   resource type and one resource ID, or a combination of a tag key and
        #   value. Specify a scope to constrain the resources that can trigger
        #   an evaluation for the rule. If you do not specify a scope,
        #   evaluations are triggered when any resource in the recording group
        #   changes.
        #   @return [Types::Scope]

        # @!attribute [rw] source
        #   Provides the rule owner (AWS or customer), the rule identifier, and
        #   the notifications that cause the function to evaluate your AWS
        #   resources.
        #   @return [Types::Source]

        # @!attribute [rw] input_parameters
        #   A string in JSON format that is passed to the AWS Config rule Lambda
        #   function.
        #   @return [String]

        # @!attribute [rw] maximum_execution_frequency
        #   If you want to create a rule that evaluates at a frequency that is
        #   independent of the configuration snapshot delivery, use the
        #   `MaximumExecutionFrequency` parameter in the SourceDetail object.
        #
        #   <note markdown="1"> If you want to create a rule that triggers evaluations for your
        #   resources when AWS Config delivers the configuration snapshot, see
        #   the following:
        #
        #    </note>
        #
        #   A rule that runs an evaluation when AWS Config delivers a
        #   configuration snapshot cannot run evaluations more frequently than
        #   AWS Config delivers the snapshots. Set the value of the
        #   `MaximumExecutionFrequency` to be equal to or greater than the value
        #   of the `deliveryFrequency` key, which is part of
        #   `ConfigSnapshotDeliveryProperties`.
        #
        #   For more information, see ConfigSnapshotDeliveryProperties.
        #   @return [String]

        # @!attribute [rw] config_rule_state
        #   Indicates whether the AWS Config rule is active or is currently
        #   being deleted by AWS Config. It can also indicate the evaluation
        #   status for the Config rule.
        #
        #   AWS Config sets the state of the rule to `EVALUATING` temporarily
        #   after you use the `StartConfigRulesEvaluation` request to evaluate
        #   your resources against the Config rule.
        #
        #   AWS Config sets the state of the rule to `DELETING_RESULTS`
        #   temporarily after you use the `DeleteEvaluationResults` request to
        #   delete the current evaluation results for the Config rule.
        #
        #   AWS Config sets the state of a rule to `DELETING` temporarily after
        #   you use the `DeleteConfigRule` request to delete the rule. After AWS
        #   Config deletes the rule, the rule and all of its evaluations are
        #   erased and are no longer available.
        #   @return [String]

      end

      # Status information for your AWS managed Config rules. The status
      # includes information such as the last time the rule ran, the last time
      # it failed, and the related error for the last failure.
      #
      # This action does not return status information about custom Config
      # rules.
      class ConfigRuleEvaluationStatus < Aws::Structure.new(
        :config_rule_name,
        :config_rule_arn,
        :config_rule_id,
        :last_successful_invocation_time,
        :last_failed_invocation_time,
        :last_successful_evaluation_time,
        :last_failed_evaluation_time,
        :first_activated_time,
        :last_error_code,
        :last_error_message,
        :first_evaluation_started)

        # @!attribute [rw] config_rule_name
        #   The name of the AWS Config rule.
        #   @return [String]

        # @!attribute [rw] config_rule_arn
        #   The Amazon Resource Name (ARN) of the AWS Config rule.
        #   @return [String]

        # @!attribute [rw] config_rule_id
        #   The ID of the AWS Config rule.
        #   @return [String]

        # @!attribute [rw] last_successful_invocation_time
        #   The time that AWS Config last successfully invoked the AWS Config
        #   rule to evaluate your AWS resources.
        #   @return [Time]

        # @!attribute [rw] last_failed_invocation_time
        #   The time that AWS Config last failed to invoke the AWS Config rule
        #   to evaluate your AWS resources.
        #   @return [Time]

        # @!attribute [rw] last_successful_evaluation_time
        #   The time that AWS Config last successfully evaluated your AWS
        #   resources against the rule.
        #   @return [Time]

        # @!attribute [rw] last_failed_evaluation_time
        #   The time that AWS Config last failed to evaluate your AWS resources
        #   against the rule.
        #   @return [Time]

        # @!attribute [rw] first_activated_time
        #   The time that you first activated the AWS Config rule.
        #   @return [Time]

        # @!attribute [rw] last_error_code
        #   The error code that AWS Config returned when the rule last failed.
        #   @return [String]

        # @!attribute [rw] last_error_message
        #   The error message that AWS Config returned when the rule last
        #   failed.
        #   @return [String]

        # @!attribute [rw] first_evaluation_started
        #   Indicates whether AWS Config has evaluated your resources against
        #   the rule at least once.
        #
        #   * `true` - AWS Config has evaluated your AWS resources against the
        #     rule at least once.
        #   * `false` - AWS Config has not once finished evaluating your AWS
        #     resources against the rule.
        #   @return [Boolean]

      end

      # Shows the options for how often AWS Config delivers configuration
      # snapshots to the Amazon S3 bucket in your delivery channel.
      #
      # <note markdown="1"> If you want to create a rule that triggers evaluations for your
      # resources when AWS Config delivers the configuration snapshot, see the
      # following:
      #
      #  </note>
      #
      # The frequency for a rule that triggers evaluations for your resources
      # when AWS Config delivers the configuration snapshot is set by one of
      # two values, depending on which is less frequent:
      #
      # * The value for the `deliveryFrequency` parameter within the delivery
      #   channel configuration, which sets how often AWS Config delivers
      #   configuration snapshots. This value also sets how often AWS Config
      #   invokes evaluations for Config rules.
      #
      # * The value for the `MaximumExecutionFrequency` parameter, which sets
      #   the maximum frequency with which AWS Config invokes evaluations for
      #   the rule. For more information, see ConfigRule.
      #
      # If the `deliveryFrequency` value is less frequent than the
      # `MaximumExecutionFrequency` value for a rule, AWS Config invokes the
      # rule only as often as the `deliveryFrequency` value.
      #
      # 1.  For example, you have a rule and you specify the
      #     `MaximumExecutionFrequency` value to be `Six_Hours`.
      #
      # 2.  You then specify the delivery channel `deliveryFrequency` value to
      #     `TwentyFour_Hours`.
      #
      # 3.  Because the value for `deliveryFrequency` is less frequent than
      #     `MaximumExecutionFrequency`, AWS Config invokes evaluations for
      #     the rule every 24 hours.
      #
      # You should set the `MaximumExecutionFrequency` value to be at least as
      # frequent as the `deliveryFrequency` value. You can view the
      # `deliveryFrequency` value by using the `DescribeDeliveryChannnels`
      # action.
      #
      # To update the frequency with which AWS Config delivers your
      # configuration snapshots, use the `PutDeliveryChannel` action.
      # @note When making an API call, pass ConfigSnapshotDeliveryProperties
      #   data as a hash:
      #
      #       {
      #         delivery_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
      #       }
      class ConfigSnapshotDeliveryProperties < Aws::Structure.new(
        :delivery_frequency)

        # @!attribute [rw] delivery_frequency
        #   The frequency with which AWS Config delivers configuration
        #   snapshots.
        #   @return [String]

      end

      # A list that contains the status of the delivery of the configuration
      # stream notification to the Amazon SNS topic.
      class ConfigStreamDeliveryInfo < Aws::Structure.new(
        :last_status,
        :last_error_code,
        :last_error_message,
        :last_status_change_time)

        # @!attribute [rw] last_status
        #   Status of the last attempted delivery.
        #
        #   **Note** Providing an SNS topic on a [DeliveryChannel][1] for AWS
        #   Config is optional. If the SNS delivery is turned off, the last
        #   status will be **Not\_Applicable**.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html
        #   @return [String]

        # @!attribute [rw] last_error_code
        #   The error code from the last attempted delivery.
        #   @return [String]

        # @!attribute [rw] last_error_message
        #   The error message from the last attempted delivery.
        #   @return [String]

        # @!attribute [rw] last_status_change_time
        #   The time from the last status change.
        #   @return [Time]

      end

      # A list that contains detailed configurations of a specified resource.
      #
      # <note markdown="1"> Currently, the list does not contain information about non-AWS
      # components (for example, applications on your Amazon EC2 instances).
      #
      #  </note>
      class ConfigurationItem < Aws::Structure.new(
        :version,
        :account_id,
        :configuration_item_capture_time,
        :configuration_item_status,
        :configuration_state_id,
        :configuration_item_md5_hash,
        :arn,
        :resource_type,
        :resource_id,
        :resource_name,
        :aws_region,
        :availability_zone,
        :resource_creation_time,
        :tags,
        :related_events,
        :relationships,
        :configuration,
        :supplementary_configuration)

        # @!attribute [rw] version
        #   The version number of the resource configuration.
        #   @return [String]

        # @!attribute [rw] account_id
        #   The 12 digit AWS account ID associated with the resource.
        #   @return [String]

        # @!attribute [rw] configuration_item_capture_time
        #   The time when the configuration recording was initiated.
        #   @return [Time]

        # @!attribute [rw] configuration_item_status
        #   The configuration item status.
        #   @return [String]

        # @!attribute [rw] configuration_state_id
        #   An identifier that indicates the ordering of the configuration items
        #   of a resource.
        #   @return [String]

        # @!attribute [rw] configuration_item_md5_hash
        #   Unique MD5 hash that represents the configuration item's state.
        #
        #   You can use MD5 hash to compare the states of two or more
        #   configuration items that are associated with the same resource.
        #   @return [String]

        # @!attribute [rw] arn
        #   The Amazon Resource Name (ARN) of the resource.
        #   @return [String]

        # @!attribute [rw] resource_type
        #   The type of AWS resource.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The ID of the resource (for example., `sg-xxxxxx`).
        #   @return [String]

        # @!attribute [rw] resource_name
        #   The custom name of the resource, if available.
        #   @return [String]

        # @!attribute [rw] aws_region
        #   The region where the resource resides.
        #   @return [String]

        # @!attribute [rw] availability_zone
        #   The Availability Zone associated with the resource.
        #   @return [String]

        # @!attribute [rw] resource_creation_time
        #   The time stamp when the resource was created.
        #   @return [Time]

        # @!attribute [rw] tags
        #   A mapping of key value tags associated with the resource.
        #   @return [Hash<String,String>]

        # @!attribute [rw] related_events
        #   A list of CloudTrail event IDs.
        #
        #   A populated field indicates that the current configuration was
        #   initiated by the events recorded in the CloudTrail log. For more
        #   information about CloudTrail, see [What is AWS CloudTrail?][1].
        #
        #   An empty field indicates that the current configuration was not
        #   initiated by any event.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html
        #   @return [Array<String>]

        # @!attribute [rw] relationships
        #   A list of related AWS resources.
        #   @return [Array<Types::Relationship>]

        # @!attribute [rw] configuration
        #   The description of the resource configuration.
        #   @return [String]

        # @!attribute [rw] supplementary_configuration
        #   Configuration attributes that AWS Config returns for certain
        #   resource types to supplement the information returned for the
        #   `configuration` parameter.
        #   @return [Hash<String,String>]

      end

      # An object that represents the recording of configuration changes of an
      # AWS resource.
      # @note When making an API call, pass ConfigurationRecorder
      #   data as a hash:
      #
      #       {
      #         name: "RecorderName",
      #         role_arn: "String",
      #         recording_group: {
      #           all_supported: false,
      #           include_global_resource_types: false,
      #           resource_types: ["AWS::EC2::CustomerGateway"], # accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription
      #         },
      #       }
      class ConfigurationRecorder < Aws::Structure.new(
        :name,
        :role_arn,
        :recording_group)

        # @!attribute [rw] name
        #   The name of the recorder. By default, AWS Config automatically
        #   assigns the name "default" when creating the configuration recorder.
        #   You cannot change the assigned name.
        #   @return [String]

        # @!attribute [rw] role_arn
        #   Amazon Resource Name (ARN) of the IAM role used to describe the AWS
        #   resources associated with the account.
        #   @return [String]

        # @!attribute [rw] recording_group
        #   Specifies the types of AWS resource for which AWS Config records
        #   configuration changes.
        #   @return [Types::RecordingGroup]

      end

      # The current status of the configuration recorder.
      class ConfigurationRecorderStatus < Aws::Structure.new(
        :name,
        :last_start_time,
        :last_stop_time,
        :recording,
        :last_status,
        :last_error_code,
        :last_error_message,
        :last_status_change_time)

        # @!attribute [rw] name
        #   The name of the configuration recorder.
        #   @return [String]

        # @!attribute [rw] last_start_time
        #   The time the recorder was last started.
        #   @return [Time]

        # @!attribute [rw] last_stop_time
        #   The time the recorder was last stopped.
        #   @return [Time]

        # @!attribute [rw] recording
        #   Specifies whether the recorder is currently recording or not.
        #   @return [Boolean]

        # @!attribute [rw] last_status
        #   The last (previous) status of the recorder.
        #   @return [String]

        # @!attribute [rw] last_error_code
        #   The error code indicating that the recording failed.
        #   @return [String]

        # @!attribute [rw] last_error_message
        #   The message indicating that the recording failed due to an error.
        #   @return [String]

        # @!attribute [rw] last_status_change_time
        #   The time when the status was last changed.
        #   @return [Time]

      end

      # @note When making an API call, pass DeleteConfigRuleRequest
      #   data as a hash:
      #
      #       {
      #         config_rule_name: "StringWithCharLimit64", # required
      #       }
      class DeleteConfigRuleRequest < Aws::Structure.new(
        :config_rule_name)

        # @!attribute [rw] config_rule_name
        #   The name of the AWS Config rule that you want to delete.
        #   @return [String]

      end

      # The request object for the `DeleteConfigurationRecorder` action.
      # @note When making an API call, pass DeleteConfigurationRecorderRequest
      #   data as a hash:
      #
      #       {
      #         configuration_recorder_name: "RecorderName", # required
      #       }
      class DeleteConfigurationRecorderRequest < Aws::Structure.new(
        :configuration_recorder_name)

        # @!attribute [rw] configuration_recorder_name
        #   The name of the configuration recorder to be deleted. You can
        #   retrieve the name of your configuration recorder by using the
        #   `DescribeConfigurationRecorders` action.
        #   @return [String]

      end

      # The input for the DeleteDeliveryChannel action. The action accepts the
      # following data in JSON format.
      # @note When making an API call, pass DeleteDeliveryChannelRequest
      #   data as a hash:
      #
      #       {
      #         delivery_channel_name: "ChannelName", # required
      #       }
      class DeleteDeliveryChannelRequest < Aws::Structure.new(
        :delivery_channel_name)

        # @!attribute [rw] delivery_channel_name
        #   The name of the delivery channel to delete.
        #   @return [String]

      end

      # @note When making an API call, pass DeleteEvaluationResultsRequest
      #   data as a hash:
      #
      #       {
      #         config_rule_name: "StringWithCharLimit64", # required
      #       }
      class DeleteEvaluationResultsRequest < Aws::Structure.new(
        :config_rule_name)

        # @!attribute [rw] config_rule_name
        #   The name of the Config rule for which you want to delete the
        #   evaluation results.
        #   @return [String]

      end

      # The output when you delete the evaluation results for the specified
      # Config rule.
      class DeleteEvaluationResultsResponse < Aws::EmptyStructure; end

      # The input for the DeliverConfigSnapshot action.
      # @note When making an API call, pass DeliverConfigSnapshotRequest
      #   data as a hash:
      #
      #       {
      #         delivery_channel_name: "ChannelName", # required
      #       }
      class DeliverConfigSnapshotRequest < Aws::Structure.new(
        :delivery_channel_name)

        # @!attribute [rw] delivery_channel_name
        #   The name of the delivery channel through which the snapshot is
        #   delivered.
        #   @return [String]

      end

      # The output for the DeliverConfigSnapshot action in JSON format.
      class DeliverConfigSnapshotResponse < Aws::Structure.new(
        :config_snapshot_id)

        # @!attribute [rw] config_snapshot_id
        #   The ID of the snapshot that is being created.
        #   @return [String]

      end

      # The channel through which AWS Config delivers notifications and
      # updated configuration states.
      # @note When making an API call, pass DeliveryChannel
      #   data as a hash:
      #
      #       {
      #         name: "ChannelName",
      #         s3_bucket_name: "String",
      #         s3_key_prefix: "String",
      #         sns_topic_arn: "String",
      #         config_snapshot_delivery_properties: {
      #           delivery_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
      #         },
      #       }
      class DeliveryChannel < Aws::Structure.new(
        :name,
        :s3_bucket_name,
        :s3_key_prefix,
        :sns_topic_arn,
        :config_snapshot_delivery_properties)

        # @!attribute [rw] name
        #   The name of the delivery channel. By default, AWS Config assigns the
        #   name "default" when creating the delivery channel. To change the
        #   delivery channel name, you must use the DeleteDeliveryChannel action
        #   to delete your current delivery channel, and then you must use the
        #   PutDeliveryChannel command to create a delivery channel that has the
        #   desired name.
        #   @return [String]

        # @!attribute [rw] s3_bucket_name
        #   The name of the Amazon S3 bucket to which AWS Config delivers
        #   configuration snapshots and configuration history files.
        #
        #   If you specify a bucket that belongs to another AWS account, that
        #   bucket must have policies that grant access permissions to AWS
        #   Config. For more information, see [Permissions for the Amazon S3
        #   Bucket][1] in the AWS Config Developer Guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html
        #   @return [String]

        # @!attribute [rw] s3_key_prefix
        #   The prefix for the specified Amazon S3 bucket.
        #   @return [String]

        # @!attribute [rw] sns_topic_arn
        #   The Amazon Resource Name (ARN) of the Amazon SNS topic to which AWS
        #   Config sends notifications about configuration changes.
        #
        #   If you choose a topic from another account, the topic must have
        #   policies that grant access permissions to AWS Config. For more
        #   information, see [Permissions for the Amazon SNS Topic][1] in the
        #   AWS Config Developer Guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html
        #   @return [String]

        # @!attribute [rw] config_snapshot_delivery_properties
        #   Shows the options for how often AWS Config delivers configuration
        #   snapshots to the Amazon S3 bucket in your delivery channel.
        #
        #   <note markdown="1"> If you want to create a rule that triggers evaluations for your
        #   resources when AWS Config delivers the configuration snapshot, see
        #   the following:
        #
        #    </note>
        #
        #   The frequency for a rule that triggers evaluations for your
        #   resources when AWS Config delivers the configuration snapshot is set
        #   by one of two values, depending on which is less frequent:
        #
        #   * The value for the `deliveryFrequency` parameter within the
        #     delivery channel configuration, which sets how often AWS Config
        #     delivers configuration snapshots. This value also sets how often
        #     AWS Config invokes evaluations for Config rules.
        #
        #   * The value for the `MaximumExecutionFrequency` parameter, which
        #     sets the maximum frequency with which AWS Config invokes
        #     evaluations for the rule. For more information, see ConfigRule.
        #
        #   If the `deliveryFrequency` value is less frequent than the
        #   `MaximumExecutionFrequency` value for a rule, AWS Config invokes the
        #   rule only as often as the `deliveryFrequency` value.
        #
        #   1.  For example, you have a rule and you specify the
        #       `MaximumExecutionFrequency` value to be `Six_Hours`.
        #
        #   2.  You then specify the delivery channel `deliveryFrequency` value
        #       to `TwentyFour_Hours`.
        #
        #   3.  Because the value for `deliveryFrequency` is less frequent than
        #       `MaximumExecutionFrequency`, AWS Config invokes evaluations for
        #       the rule every 24 hours.
        #
        #   You should set the `MaximumExecutionFrequency` value to be at least
        #   as frequent as the `deliveryFrequency` value. You can view the
        #   `deliveryFrequency` value by using the `DescribeDeliveryChannnels`
        #   action.
        #
        #   To update the frequency with which AWS Config delivers your
        #   configuration snapshots, use the `PutDeliveryChannel` action.
        #   @return [Types::ConfigSnapshotDeliveryProperties]

      end

      # The status of a specified delivery channel.
      #
      # Valid values: `Success` \| `Failure`
      class DeliveryChannelStatus < Aws::Structure.new(
        :name,
        :config_snapshot_delivery_info,
        :config_history_delivery_info,
        :config_stream_delivery_info)

        # @!attribute [rw] name
        #   The name of the delivery channel.
        #   @return [String]

        # @!attribute [rw] config_snapshot_delivery_info
        #   A list containing the status of the delivery of the snapshot to the
        #   specified Amazon S3 bucket.
        #   @return [Types::ConfigExportDeliveryInfo]

        # @!attribute [rw] config_history_delivery_info
        #   A list that contains the status of the delivery of the configuration
        #   history to the specified Amazon S3 bucket.
        #   @return [Types::ConfigExportDeliveryInfo]

        # @!attribute [rw] config_stream_delivery_info
        #   A list containing the status of the delivery of the configuration
        #   stream notification to the specified Amazon SNS topic.
        #   @return [Types::ConfigStreamDeliveryInfo]

      end

      # @note When making an API call, pass DescribeComplianceByConfigRuleRequest
      #   data as a hash:
      #
      #       {
      #         config_rule_names: ["StringWithCharLimit64"],
      #         compliance_types: ["COMPLIANT"], # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
      #         next_token: "String",
      #       }
      class DescribeComplianceByConfigRuleRequest < Aws::Structure.new(
        :config_rule_names,
        :compliance_types,
        :next_token)

        # @!attribute [rw] config_rule_names
        #   Specify one or more AWS Config rule names to filter the results by
        #   rule.
        #   @return [Array<String>]

        # @!attribute [rw] compliance_types
        #   Filters the results by compliance.
        #
        #   The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and
        #   `INSUFFICIENT_DATA`.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   The `nextToken` string returned on a previous page that you use to
        #   get the next page of results in a paginated response.
        #   @return [String]

      end

      class DescribeComplianceByConfigRuleResponse < Aws::Structure.new(
        :compliance_by_config_rules,
        :next_token)

        # @!attribute [rw] compliance_by_config_rules
        #   Indicates whether each of the specified AWS Config rules is
        #   compliant.
        #   @return [Array<Types::ComplianceByConfigRule>]

        # @!attribute [rw] next_token
        #   The string that you use in a subsequent request to get the next page
        #   of results in a paginated response.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeComplianceByResourceRequest
      #   data as a hash:
      #
      #       {
      #         resource_type: "StringWithCharLimit256",
      #         resource_id: "StringWithCharLimit256",
      #         compliance_types: ["COMPLIANT"], # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
      #         limit: 1,
      #         next_token: "NextToken",
      #       }
      class DescribeComplianceByResourceRequest < Aws::Structure.new(
        :resource_type,
        :resource_id,
        :compliance_types,
        :limit,
        :next_token)

        # @!attribute [rw] resource_type
        #   The types of AWS resources for which you want compliance
        #   information; for example, `AWS::EC2::Instance`. For this action, you
        #   can specify that the resource type is an AWS account by specifying
        #   `AWS::::Account`.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The ID of the AWS resource for which you want compliance
        #   information. You can specify only one resource ID. If you specify a
        #   resource ID, you must also specify a type for `ResourceType`.
        #   @return [String]

        # @!attribute [rw] compliance_types
        #   Filters the results by compliance.
        #
        #   The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and
        #   `INSUFFICIENT_DATA`.
        #   @return [Array<String>]

        # @!attribute [rw] limit
        #   The maximum number of evaluation results returned on each page. The
        #   default is 10. You cannot specify a limit greater than 100. If you
        #   specify 0, AWS Config uses the default.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   The `nextToken` string returned on a previous page that you use to
        #   get the next page of results in a paginated response.
        #   @return [String]

      end

      class DescribeComplianceByResourceResponse < Aws::Structure.new(
        :compliance_by_resources,
        :next_token)

        # @!attribute [rw] compliance_by_resources
        #   Indicates whether the specified AWS resource complies with all of
        #   the AWS Config rules that evaluate it.
        #   @return [Array<Types::ComplianceByResource>]

        # @!attribute [rw] next_token
        #   The string that you use in a subsequent request to get the next page
        #   of results in a paginated response.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeConfigRuleEvaluationStatusRequest
      #   data as a hash:
      #
      #       {
      #         config_rule_names: ["StringWithCharLimit64"],
      #       }
      class DescribeConfigRuleEvaluationStatusRequest < Aws::Structure.new(
        :config_rule_names)

        # @!attribute [rw] config_rule_names
        #   The name of the AWS managed Config rules for which you want status
        #   information. If you do not specify any names, AWS Config returns
        #   status information for all AWS managed Config rules that you use.
        #   @return [Array<String>]

      end

      class DescribeConfigRuleEvaluationStatusResponse < Aws::Structure.new(
        :config_rules_evaluation_status)

        # @!attribute [rw] config_rules_evaluation_status
        #   Status information about your AWS managed Config rules.
        #   @return [Array<Types::ConfigRuleEvaluationStatus>]

      end

      # @note When making an API call, pass DescribeConfigRulesRequest
      #   data as a hash:
      #
      #       {
      #         config_rule_names: ["StringWithCharLimit64"],
      #         next_token: "String",
      #       }
      class DescribeConfigRulesRequest < Aws::Structure.new(
        :config_rule_names,
        :next_token)

        # @!attribute [rw] config_rule_names
        #   The names of the AWS Config rules for which you want details. If you
        #   do not specify any names, AWS Config returns details for all your
        #   rules.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   The `nextToken` string returned on a previous page that you use to
        #   get the next page of results in a paginated response.
        #   @return [String]

      end

      class DescribeConfigRulesResponse < Aws::Structure.new(
        :config_rules,
        :next_token)

        # @!attribute [rw] config_rules
        #   The details about your AWS Config rules.
        #   @return [Array<Types::ConfigRule>]

        # @!attribute [rw] next_token
        #   The string that you use in a subsequent request to get the next page
        #   of results in a paginated response.
        #   @return [String]

      end

      # The input for the DescribeConfigurationRecorderStatus action.
      # @note When making an API call, pass DescribeConfigurationRecorderStatusRequest
      #   data as a hash:
      #
      #       {
      #         configuration_recorder_names: ["RecorderName"],
      #       }
      class DescribeConfigurationRecorderStatusRequest < Aws::Structure.new(
        :configuration_recorder_names)

        # @!attribute [rw] configuration_recorder_names
        #   The name(s) of the configuration recorder. If the name is not
        #   specified, the action returns the current status of all the
        #   configuration recorders associated with the account.
        #   @return [Array<String>]

      end

      # The output for the DescribeConfigurationRecorderStatus action in JSON
      # format.
      class DescribeConfigurationRecorderStatusResponse < Aws::Structure.new(
        :configuration_recorders_status)

        # @!attribute [rw] configuration_recorders_status
        #   A list that contains status of the specified recorders.
        #   @return [Array<Types::ConfigurationRecorderStatus>]

      end

      # The input for the DescribeConfigurationRecorders action.
      # @note When making an API call, pass DescribeConfigurationRecordersRequest
      #   data as a hash:
      #
      #       {
      #         configuration_recorder_names: ["RecorderName"],
      #       }
      class DescribeConfigurationRecordersRequest < Aws::Structure.new(
        :configuration_recorder_names)

        # @!attribute [rw] configuration_recorder_names
        #   A list of configuration recorder names.
        #   @return [Array<String>]

      end

      # The output for the DescribeConfigurationRecorders action.
      class DescribeConfigurationRecordersResponse < Aws::Structure.new(
        :configuration_recorders)

        # @!attribute [rw] configuration_recorders
        #   A list that contains the descriptions of the specified configuration
        #   recorders.
        #   @return [Array<Types::ConfigurationRecorder>]

      end

      # The input for the DeliveryChannelStatus action.
      # @note When making an API call, pass DescribeDeliveryChannelStatusRequest
      #   data as a hash:
      #
      #       {
      #         delivery_channel_names: ["ChannelName"],
      #       }
      class DescribeDeliveryChannelStatusRequest < Aws::Structure.new(
        :delivery_channel_names)

        # @!attribute [rw] delivery_channel_names
        #   A list of delivery channel names.
        #   @return [Array<String>]

      end

      # The output for the DescribeDeliveryChannelStatus action.
      class DescribeDeliveryChannelStatusResponse < Aws::Structure.new(
        :delivery_channels_status)

        # @!attribute [rw] delivery_channels_status
        #   A list that contains the status of a specified delivery channel.
        #   @return [Array<Types::DeliveryChannelStatus>]

      end

      # The input for the DescribeDeliveryChannels action.
      # @note When making an API call, pass DescribeDeliveryChannelsRequest
      #   data as a hash:
      #
      #       {
      #         delivery_channel_names: ["ChannelName"],
      #       }
      class DescribeDeliveryChannelsRequest < Aws::Structure.new(
        :delivery_channel_names)

        # @!attribute [rw] delivery_channel_names
        #   A list of delivery channel names.
        #   @return [Array<String>]

      end

      # The output for the DescribeDeliveryChannels action.
      class DescribeDeliveryChannelsResponse < Aws::Structure.new(
        :delivery_channels)

        # @!attribute [rw] delivery_channels
        #   A list that contains the descriptions of the specified delivery
        #   channel.
        #   @return [Array<Types::DeliveryChannel>]

      end

      # Identifies an AWS resource and indicates whether it complies with the
      # AWS Config rule that it was evaluated against.
      # @note When making an API call, pass Evaluation
      #   data as a hash:
      #
      #       {
      #         compliance_resource_type: "StringWithCharLimit256", # required
      #         compliance_resource_id: "StringWithCharLimit256", # required
      #         compliance_type: "COMPLIANT", # required, accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
      #         annotation: "StringWithCharLimit256",
      #         ordering_timestamp: Time.now, # required
      #       }
      class Evaluation < Aws::Structure.new(
        :compliance_resource_type,
        :compliance_resource_id,
        :compliance_type,
        :annotation,
        :ordering_timestamp)

        # @!attribute [rw] compliance_resource_type
        #   The type of AWS resource that was evaluated.
        #   @return [String]

        # @!attribute [rw] compliance_resource_id
        #   The ID of the AWS resource that was evaluated.
        #   @return [String]

        # @!attribute [rw] compliance_type
        #   Indicates whether the AWS resource complies with the AWS Config rule
        #   that it was evaluated against.
        #
        #   For the `Evaluation` data type, AWS Config supports only the
        #   `COMPLIANT`, `NON_COMPLIANT`, and `NOT_APPLICABLE` values. AWS
        #   Config does not support the `INSUFFICIENT_DATA` value for this data
        #   type.
        #
        #   Similarly, AWS Config does not accept `INSUFFICIENT_DATA` as the
        #   value for `ComplianceType` from a `PutEvaluations` request. For
        #   example, an AWS Lambda function for a custom Config rule cannot pass
        #   an `INSUFFICIENT_DATA` value to AWS Config.
        #   @return [String]

        # @!attribute [rw] annotation
        #   Supplementary information about how the evaluation determined the
        #   compliance.
        #   @return [String]

        # @!attribute [rw] ordering_timestamp
        #   The time of the event in AWS Config that triggered the evaluation.
        #   For event-based evaluations, the time indicates when AWS Config
        #   created the configuration item that triggered the evaluation. For
        #   periodic evaluations, the time indicates when AWS Config delivered
        #   the configuration snapshot that triggered the evaluation.
        #   @return [Time]

      end

      # The details of an AWS Config evaluation. Provides the AWS resource
      # that was evaluated, the compliance of the resource, related
      # timestamps, and supplementary information.
      class EvaluationResult < Aws::Structure.new(
        :evaluation_result_identifier,
        :compliance_type,
        :result_recorded_time,
        :config_rule_invoked_time,
        :annotation,
        :result_token)

        # @!attribute [rw] evaluation_result_identifier
        #   Uniquely identifies the evaluation result.
        #   @return [Types::EvaluationResultIdentifier]

        # @!attribute [rw] compliance_type
        #   Indicates whether the AWS resource complies with the AWS Config rule
        #   that evaluated it.
        #
        #   For the `EvaluationResult` data type, AWS Config supports only the
        #   `COMPLIANT`, `NON_COMPLIANT`, and `NOT_APPLICABLE` values. AWS
        #   Config does not support the `INSUFFICIENT_DATA` value for the
        #   `EvaluationResult` data type.
        #   @return [String]

        # @!attribute [rw] result_recorded_time
        #   The time when AWS Config recorded the evaluation result.
        #   @return [Time]

        # @!attribute [rw] config_rule_invoked_time
        #   The time when the AWS Config rule evaluated the AWS resource.
        #   @return [Time]

        # @!attribute [rw] annotation
        #   Supplementary information about how the evaluation determined the
        #   compliance.
        #   @return [String]

        # @!attribute [rw] result_token
        #   An encrypted token that associates an evaluation with an AWS Config
        #   rule. The token identifies the rule, the AWS resource being
        #   evaluated, and the event that triggered the evaluation.
        #   @return [String]

      end

      # Uniquely identifies an evaluation result.
      class EvaluationResultIdentifier < Aws::Structure.new(
        :evaluation_result_qualifier,
        :ordering_timestamp)

        # @!attribute [rw] evaluation_result_qualifier
        #   Identifies an AWS Config rule used to evaluate an AWS resource, and
        #   provides the type and ID of the evaluated resource.
        #   @return [Types::EvaluationResultQualifier]

        # @!attribute [rw] ordering_timestamp
        #   The time of the event that triggered the evaluation of your AWS
        #   resources. The time can indicate when AWS Config delivered a
        #   configuration item change notification, or it can indicate when AWS
        #   Config delivered the configuration snapshot, depending on which
        #   event triggered the evaluation.
        #   @return [Time]

      end

      # Identifies an AWS Config rule that evaluated an AWS resource, and
      # provides the type and ID of the resource that the rule evaluated.
      class EvaluationResultQualifier < Aws::Structure.new(
        :config_rule_name,
        :resource_type,
        :resource_id)

        # @!attribute [rw] config_rule_name
        #   The name of the AWS Config rule that was used in the evaluation.
        #   @return [String]

        # @!attribute [rw] resource_type
        #   The type of AWS resource that was evaluated.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The ID of the evaluated AWS resource.
        #   @return [String]

      end

      # @note When making an API call, pass GetComplianceDetailsByConfigRuleRequest
      #   data as a hash:
      #
      #       {
      #         config_rule_name: "StringWithCharLimit64", # required
      #         compliance_types: ["COMPLIANT"], # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
      #         limit: 1,
      #         next_token: "NextToken",
      #       }
      class GetComplianceDetailsByConfigRuleRequest < Aws::Structure.new(
        :config_rule_name,
        :compliance_types,
        :limit,
        :next_token)

        # @!attribute [rw] config_rule_name
        #   The name of the AWS Config rule for which you want compliance
        #   information.
        #   @return [String]

        # @!attribute [rw] compliance_types
        #   Filters the results by compliance.
        #
        #   The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and
        #   `NOT_APPLICABLE`.
        #   @return [Array<String>]

        # @!attribute [rw] limit
        #   The maximum number of evaluation results returned on each page. The
        #   default is 10. You cannot specify a limit greater than 100. If you
        #   specify 0, AWS Config uses the default.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   The `nextToken` string returned on a previous page that you use to
        #   get the next page of results in a paginated response.
        #   @return [String]

      end

      class GetComplianceDetailsByConfigRuleResponse < Aws::Structure.new(
        :evaluation_results,
        :next_token)

        # @!attribute [rw] evaluation_results
        #   Indicates whether the AWS resource complies with the specified AWS
        #   Config rule.
        #   @return [Array<Types::EvaluationResult>]

        # @!attribute [rw] next_token
        #   The string that you use in a subsequent request to get the next page
        #   of results in a paginated response.
        #   @return [String]

      end

      # @note When making an API call, pass GetComplianceDetailsByResourceRequest
      #   data as a hash:
      #
      #       {
      #         resource_type: "StringWithCharLimit256", # required
      #         resource_id: "StringWithCharLimit256", # required
      #         compliance_types: ["COMPLIANT"], # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
      #         next_token: "String",
      #       }
      class GetComplianceDetailsByResourceRequest < Aws::Structure.new(
        :resource_type,
        :resource_id,
        :compliance_types,
        :next_token)

        # @!attribute [rw] resource_type
        #   The type of the AWS resource for which you want compliance
        #   information.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The ID of the AWS resource for which you want compliance
        #   information.
        #   @return [String]

        # @!attribute [rw] compliance_types
        #   Filters the results by compliance.
        #
        #   The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and
        #   `NOT_APPLICABLE`.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   The `nextToken` string returned on a previous page that you use to
        #   get the next page of results in a paginated response.
        #   @return [String]

      end

      class GetComplianceDetailsByResourceResponse < Aws::Structure.new(
        :evaluation_results,
        :next_token)

        # @!attribute [rw] evaluation_results
        #   Indicates whether the specified AWS resource complies each AWS
        #   Config rule.
        #   @return [Array<Types::EvaluationResult>]

        # @!attribute [rw] next_token
        #   The string that you use in a subsequent request to get the next page
        #   of results in a paginated response.
        #   @return [String]

      end

      class GetComplianceSummaryByConfigRuleResponse < Aws::Structure.new(
        :compliance_summary)

        # @!attribute [rw] compliance_summary
        #   The number of AWS Config rules that are compliant and the number
        #   that are noncompliant, up to a maximum of 25 for each.
        #   @return [Types::ComplianceSummary]

      end

      # @note When making an API call, pass GetComplianceSummaryByResourceTypeRequest
      #   data as a hash:
      #
      #       {
      #         resource_types: ["StringWithCharLimit256"],
      #       }
      class GetComplianceSummaryByResourceTypeRequest < Aws::Structure.new(
        :resource_types)

        # @!attribute [rw] resource_types
        #   Specify one or more resource types to get the number of resources
        #   that are compliant and the number that are noncompliant for each
        #   resource type.
        #
        #   For this request, you can specify an AWS resource type such as
        #   `AWS::EC2::Instance`, and you can specify that the resource type is
        #   an AWS account by specifying `AWS::::Account`.
        #   @return [Array<String>]

      end

      class GetComplianceSummaryByResourceTypeResponse < Aws::Structure.new(
        :compliance_summaries_by_resource_type)

        # @!attribute [rw] compliance_summaries_by_resource_type
        #   The number of resources that are compliant and the number that are
        #   noncompliant. If one or more resource types were provided with the
        #   request, the numbers are returned for each resource type. The
        #   maximum number returned is 100.
        #   @return [Array<Types::ComplianceSummaryByResourceType>]

      end

      # The input for the GetResourceConfigHistory action.
      # @note When making an API call, pass GetResourceConfigHistoryRequest
      #   data as a hash:
      #
      #       {
      #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription
      #         resource_id: "ResourceId", # required
      #         later_time: Time.now,
      #         earlier_time: Time.now,
      #         chronological_order: "Reverse", # accepts Reverse, Forward
      #         limit: 1,
      #         next_token: "NextToken",
      #       }
      class GetResourceConfigHistoryRequest < Aws::Structure.new(
        :resource_type,
        :resource_id,
        :later_time,
        :earlier_time,
        :chronological_order,
        :limit,
        :next_token)

        # @!attribute [rw] resource_type
        #   The resource type.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The ID of the resource (for example., `sg-xxxxxx`).
        #   @return [String]

        # @!attribute [rw] later_time
        #   The time stamp that indicates a later time. If not specified,
        #   current time is taken.
        #   @return [Time]

        # @!attribute [rw] earlier_time
        #   The time stamp that indicates an earlier time. If not specified, the
        #   action returns paginated results that contain configuration items
        #   that start from when the first configuration item was recorded.
        #   @return [Time]

        # @!attribute [rw] chronological_order
        #   The chronological order for configuration items listed. By default
        #   the results are listed in reverse chronological order.
        #   @return [String]

        # @!attribute [rw] limit
        #   The maximum number of configuration items returned on each page. The
        #   default is 10. You cannot specify a limit greater than 100. If you
        #   specify 0, AWS Config uses the default.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   The `nextToken` string returned on a previous page that you use to
        #   get the next page of results in a paginated response.
        #   @return [String]

      end

      # The output for the GetResourceConfigHistory action.
      class GetResourceConfigHistoryResponse < Aws::Structure.new(
        :configuration_items,
        :next_token)

        # @!attribute [rw] configuration_items
        #   A list that contains the configuration history of one or more
        #   resources.
        #   @return [Array<Types::ConfigurationItem>]

        # @!attribute [rw] next_token
        #   The string that you use in a subsequent request to get the next page
        #   of results in a paginated response.
        #   @return [String]

      end

      # @note When making an API call, pass ListDiscoveredResourcesRequest
      #   data as a hash:
      #
      #       {
      #         resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription
      #         resource_ids: ["ResourceId"],
      #         resource_name: "ResourceName",
      #         limit: 1,
      #         include_deleted_resources: false,
      #         next_token: "NextToken",
      #       }
      class ListDiscoveredResourcesRequest < Aws::Structure.new(
        :resource_type,
        :resource_ids,
        :resource_name,
        :limit,
        :include_deleted_resources,
        :next_token)

        # @!attribute [rw] resource_type
        #   The type of resources that you want AWS Config to list in the
        #   response.
        #   @return [String]

        # @!attribute [rw] resource_ids
        #   The IDs of only those resources that you want AWS Config to list in
        #   the response. If you do not specify this parameter, AWS Config lists
        #   all resources of the specified type that it has discovered.
        #   @return [Array<String>]

        # @!attribute [rw] resource_name
        #   The custom name of only those resources that you want AWS Config to
        #   list in the response. If you do not specify this parameter, AWS
        #   Config lists all resources of the specified type that it has
        #   discovered.
        #   @return [String]

        # @!attribute [rw] limit
        #   The maximum number of resource identifiers returned on each page.
        #   The default is 100. You cannot specify a limit greater than 100. If
        #   you specify 0, AWS Config uses the default.
        #   @return [Integer]

        # @!attribute [rw] include_deleted_resources
        #   Specifies whether AWS Config includes deleted resources in the
        #   results. By default, deleted resources are not included.
        #   @return [Boolean]

        # @!attribute [rw] next_token
        #   The `nextToken` string returned on a previous page that you use to
        #   get the next page of results in a paginated response.
        #   @return [String]

      end

      class ListDiscoveredResourcesResponse < Aws::Structure.new(
        :resource_identifiers,
        :next_token)

        # @!attribute [rw] resource_identifiers
        #   The details that identify a resource that is discovered by AWS
        #   Config, including the resource type, ID, and (if available) the
        #   custom resource name.
        #   @return [Array<Types::ResourceIdentifier>]

        # @!attribute [rw] next_token
        #   The string that you use in a subsequent request to get the next page
        #   of results in a paginated response.
        #   @return [String]

      end

      # @note When making an API call, pass PutConfigRuleRequest
      #   data as a hash:
      #
      #       {
      #         config_rule: { # required
      #           config_rule_name: "StringWithCharLimit64",
      #           config_rule_arn: "String",
      #           config_rule_id: "String",
      #           description: "EmptiableStringWithCharLimit256",
      #           scope: {
      #             compliance_resource_types: ["StringWithCharLimit256"],
      #             tag_key: "StringWithCharLimit128",
      #             tag_value: "StringWithCharLimit256",
      #             compliance_resource_id: "StringWithCharLimit256",
      #           },
      #           source: { # required
      #             owner: "CUSTOM_LAMBDA", # accepts CUSTOM_LAMBDA, AWS
      #             source_identifier: "StringWithCharLimit256",
      #             source_details: [
      #               {
      #                 event_source: "aws.config", # accepts aws.config
      #                 message_type: "ConfigurationItemChangeNotification", # accepts ConfigurationItemChangeNotification, ConfigurationSnapshotDeliveryCompleted, ScheduledNotification
      #                 maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
      #               },
      #             ],
      #           },
      #           input_parameters: "StringWithCharLimit256",
      #           maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
      #           config_rule_state: "ACTIVE", # accepts ACTIVE, DELETING, DELETING_RESULTS, EVALUATING
      #         },
      #       }
      class PutConfigRuleRequest < Aws::Structure.new(
        :config_rule)

        # @!attribute [rw] config_rule
        #   An AWS Lambda function that evaluates configuration items to assess
        #   whether your AWS resources comply with your desired configurations.
        #   This function can run when AWS Config detects a configuration change
        #   to an AWS resource and at a periodic frequency that you choose (for
        #   example, every 24 hours).
        #
        #   <note markdown="1"> You can use the AWS CLI and AWS SDKs if you want to create a rule
        #   that triggers evaluations for your resources when AWS Config
        #   delivers the configuration snapshot. For more information, see
        #   ConfigSnapshotDeliveryProperties.
        #
        #    </note>
        #
        #   For more information about developing and using AWS Config rules,
        #   see [Evaluating AWS Resource Configurations with AWS Config][1] in
        #   the *AWS Config Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html
        #   @return [Types::ConfigRule]

      end

      # The input for the PutConfigurationRecorder action.
      # @note When making an API call, pass PutConfigurationRecorderRequest
      #   data as a hash:
      #
      #       {
      #         configuration_recorder: { # required
      #           name: "RecorderName",
      #           role_arn: "String",
      #           recording_group: {
      #             all_supported: false,
      #             include_global_resource_types: false,
      #             resource_types: ["AWS::EC2::CustomerGateway"], # accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription
      #           },
      #         },
      #       }
      class PutConfigurationRecorderRequest < Aws::Structure.new(
        :configuration_recorder)

        # @!attribute [rw] configuration_recorder
        #   The configuration recorder object that records each configuration
        #   change made to the resources.
        #   @return [Types::ConfigurationRecorder]

      end

      # The input for the PutDeliveryChannel action.
      # @note When making an API call, pass PutDeliveryChannelRequest
      #   data as a hash:
      #
      #       {
      #         delivery_channel: { # required
      #           name: "ChannelName",
      #           s3_bucket_name: "String",
      #           s3_key_prefix: "String",
      #           sns_topic_arn: "String",
      #           config_snapshot_delivery_properties: {
      #             delivery_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
      #           },
      #         },
      #       }
      class PutDeliveryChannelRequest < Aws::Structure.new(
        :delivery_channel)

        # @!attribute [rw] delivery_channel
        #   The configuration delivery channel object that delivers the
        #   configuration information to an Amazon S3 bucket, and to an Amazon
        #   SNS topic.
        #   @return [Types::DeliveryChannel]

      end

      # @note When making an API call, pass PutEvaluationsRequest
      #   data as a hash:
      #
      #       {
      #         evaluations: [
      #           {
      #             compliance_resource_type: "StringWithCharLimit256", # required
      #             compliance_resource_id: "StringWithCharLimit256", # required
      #             compliance_type: "COMPLIANT", # required, accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
      #             annotation: "StringWithCharLimit256",
      #             ordering_timestamp: Time.now, # required
      #           },
      #         ],
      #         result_token: "String", # required
      #       }
      class PutEvaluationsRequest < Aws::Structure.new(
        :evaluations,
        :result_token)

        # @!attribute [rw] evaluations
        #   The assessments that the AWS Lambda function performs. Each
        #   evaluation identifies an AWS resource and indicates whether it
        #   complies with the AWS Config rule that invokes the AWS Lambda
        #   function.
        #   @return [Array<Types::Evaluation>]

        # @!attribute [rw] result_token
        #   An encrypted token that associates an evaluation with an AWS Config
        #   rule. Identifies the rule and the event that triggered the
        #   evaluation
        #   @return [String]

      end

      class PutEvaluationsResponse < Aws::Structure.new(
        :failed_evaluations)

        # @!attribute [rw] failed_evaluations
        #   Requests that failed because of a client or server error.
        #   @return [Array<Types::Evaluation>]

      end

      # Specifies the types of AWS resource for which AWS Config records
      # configuration changes.
      #
      # In the recording group, you specify whether all supported types or
      # specific types of resources are recorded.
      #
      # By default, AWS Config records configuration changes for all supported
      # types of regional resources that AWS Config discovers in the region in
      # which it is running. Regional resources are tied to a region and can
      # be used only in that region. Examples of regional resources are EC2
      # instances and EBS volumes.
      #
      # You can also have AWS Config record configuration changes for
      # supported types of global resources (for example, IAM resources).
      # Global resources are not tied to an individual region and can be used
      # in all regions.
      #
      # <important markdown="1"> The configuration details for any global resource are the same in all
      # regions. If you customize AWS Config in multiple regions to record
      # global resources, it will create multiple configuration items each
      # time a global resource changes: one configuration item for each
      # region. These configuration items will contain identical data. To
      # prevent duplicate configuration items, you should consider customizing
      # AWS Config in only one region to record global resources, unless you
      # want the configuration items to be available in multiple regions.
      #
      #  </important>
      #
      # If you don\'t want AWS Config to record all resources, you can specify
      # which types of resources it will record with the `resourceTypes`
      # parameter.
      #
      # For a list of supported resource types, see [Supported resource
      # types][1].
      #
      # For more information, see [Selecting Which Resources AWS Config
      # Records][2].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources
      # [2]: http://docs.aws.amazon.com/config/latest/developerguide/select-resources.html
      # @note When making an API call, pass RecordingGroup
      #   data as a hash:
      #
      #       {
      #         all_supported: false,
      #         include_global_resource_types: false,
      #         resource_types: ["AWS::EC2::CustomerGateway"], # accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription
      #       }
      class RecordingGroup < Aws::Structure.new(
        :all_supported,
        :include_global_resource_types,
        :resource_types)

        # @!attribute [rw] all_supported
        #   Specifies whether AWS Config records configuration changes for every
        #   supported type of regional resource.
        #
        #   If you set this option to `true`, when AWS Config adds support for a
        #   new type of regional resource, it automatically starts recording
        #   resources of that type.
        #
        #   If you set this option to `true`, you cannot enumerate a list of
        #   `resourceTypes`.
        #   @return [Boolean]

        # @!attribute [rw] include_global_resource_types
        #   Specifies whether AWS Config includes all supported types of global
        #   resources (for example, IAM resources) with the resources that it
        #   records.
        #
        #   Before you can set this option to `true`, you must set the
        #   `allSupported` option to `true`.
        #
        #   If you set this option to `true`, when AWS Config adds support for a
        #   new type of global resource, it automatically starts recording
        #   resources of that type.
        #
        #   The configuration details for any global resource are the same in
        #   all regions. To prevent duplicate configuration items, you should
        #   consider customizing AWS Config in only one region to record global
        #   resources.
        #   @return [Boolean]

        # @!attribute [rw] resource_types
        #   A comma-separated list that specifies the types of AWS resources for
        #   which AWS Config records configuration changes (for example,
        #   `AWS::EC2::Instance` or `AWS::CloudTrail::Trail`).
        #
        #   Before you can set this option to `true`, you must set the
        #   `allSupported` option to `false`.
        #
        #   If you set this option to `true`, when AWS Config adds support for a
        #   new type of resource, it will not record resources of that type
        #   unless you manually add that type to your recording group.
        #
        #   For a list of valid `resourceTypes` values, see the **resourceType
        #   Value** column in [Supported AWS Resource Types][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources
        #   @return [Array<String>]

      end

      # The relationship of the related resource to the main resource.
      class Relationship < Aws::Structure.new(
        :resource_type,
        :resource_id,
        :resource_name,
        :relationship_name)

        # @!attribute [rw] resource_type
        #   The resource type of the related resource.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The ID of the related resource (for example, `sg-xxxxxx`).
        #   @return [String]

        # @!attribute [rw] resource_name
        #   The custom name of the related resource, if available.
        #   @return [String]

        # @!attribute [rw] relationship_name
        #   The type of relationship with the related resource.
        #   @return [String]

      end

      # The details that identify a resource that is discovered by AWS Config,
      # including the resource type, ID, and (if available) the custom
      # resource name.
      class ResourceIdentifier < Aws::Structure.new(
        :resource_type,
        :resource_id,
        :resource_name,
        :resource_deletion_time)

        # @!attribute [rw] resource_type
        #   The type of resource.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   The ID of the resource (for example., `sg-xxxxxx`).
        #   @return [String]

        # @!attribute [rw] resource_name
        #   The custom name of the resource (if available).
        #   @return [String]

        # @!attribute [rw] resource_deletion_time
        #   The time that the resource was deleted.
        #   @return [Time]

      end

      # Defines which resources trigger an evaluation for an AWS Config rule.
      # The scope can include one or more resource types, a combination of a
      # tag key and value, or a combination of one resource type and one
      # resource ID. Specify a scope to constrain which resources trigger an
      # evaluation for a rule. Otherwise, evaluations for the rule are
      # triggered when any resource in your recording group changes in
      # configuration.
      # @note When making an API call, pass Scope
      #   data as a hash:
      #
      #       {
      #         compliance_resource_types: ["StringWithCharLimit256"],
      #         tag_key: "StringWithCharLimit128",
      #         tag_value: "StringWithCharLimit256",
      #         compliance_resource_id: "StringWithCharLimit256",
      #       }
      class Scope < Aws::Structure.new(
        :compliance_resource_types,
        :tag_key,
        :tag_value,
        :compliance_resource_id)

        # @!attribute [rw] compliance_resource_types
        #   The resource types of only those AWS resources that you want to
        #   trigger an evaluation for the rule. You can only specify one type if
        #   you also specify a resource ID for `ComplianceResourceId`.
        #   @return [Array<String>]

        # @!attribute [rw] tag_key
        #   The tag key that is applied to only those AWS resources that you
        #   want you want to trigger an evaluation for the rule.
        #   @return [String]

        # @!attribute [rw] tag_value
        #   The tag value applied to only those AWS resources that you want to
        #   trigger an evaluation for the rule. If you specify a value for
        #   `TagValue`, you must also specify a value for `TagKey`.
        #   @return [String]

        # @!attribute [rw] compliance_resource_id
        #   The IDs of the only AWS resource that you want to trigger an
        #   evaluation for the rule. If you specify a resource ID, you must
        #   specify one resource type for `ComplianceResourceTypes`.
        #   @return [String]

      end

      # Provides the AWS Config rule owner (AWS or customer), the rule
      # identifier, and the events that trigger the evaluation of your AWS
      # resources.
      # @note When making an API call, pass Source
      #   data as a hash:
      #
      #       {
      #         owner: "CUSTOM_LAMBDA", # accepts CUSTOM_LAMBDA, AWS
      #         source_identifier: "StringWithCharLimit256",
      #         source_details: [
      #           {
      #             event_source: "aws.config", # accepts aws.config
      #             message_type: "ConfigurationItemChangeNotification", # accepts ConfigurationItemChangeNotification, ConfigurationSnapshotDeliveryCompleted, ScheduledNotification
      #             maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
      #           },
      #         ],
      #       }
      class Source < Aws::Structure.new(
        :owner,
        :source_identifier,
        :source_details)

        # @!attribute [rw] owner
        #   Indicates whether AWS or the customer owns and manages the AWS
        #   Config rule.
        #   @return [String]

        # @!attribute [rw] source_identifier
        #   For AWS managed Config rules, a pre-defined identifier from a list.
        #   To reference the list, see [Using AWS Managed Config Rules][1].
        #
        #   For custom Config rules, the identifier is the Amazon Resource Name
        #   (ARN) of the rule\'s AWS Lambda function.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html
        #   @return [String]

        # @!attribute [rw] source_details
        #   Provides the source and type of the event that causes AWS Config to
        #   evaluate your AWS resources.
        #   @return [Array<Types::SourceDetail>]

      end

      # Provides the source and the message type that trigger AWS Config to
      # evaluate your AWS resources against a rule. It also provides the
      # frequency with which you want AWS Config to run evaluations for the
      # rule if the trigger type is periodic.
      # @note When making an API call, pass SourceDetail
      #   data as a hash:
      #
      #       {
      #         event_source: "aws.config", # accepts aws.config
      #         message_type: "ConfigurationItemChangeNotification", # accepts ConfigurationItemChangeNotification, ConfigurationSnapshotDeliveryCompleted, ScheduledNotification
      #         maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
      #       }
      class SourceDetail < Aws::Structure.new(
        :event_source,
        :message_type,
        :maximum_execution_frequency)

        # @!attribute [rw] event_source
        #   The source of the event, such as an AWS service, that triggers AWS
        #   Config to evaluate your AWS resources.
        #   @return [String]

        # @!attribute [rw] message_type
        #   The type of SNS message that triggers AWS Config to run an
        #   evaluation.
        #
        #   For evaluations that are initiated when AWS Config delivers a
        #   configuration item change notification, you must use
        #   `ConfigurationItemChangeNotification`.
        #
        #   For evaluations that are initiated at a frequency that you choose
        #   (for example, every 24 hours), you must use `ScheduledNotification`.
        #
        #   For evaluations that are initiated when AWS Config delivers a
        #   configuration snapshot, you must use
        #   `ConfigurationSnapshotDeliveryCompleted`.
        #   @return [String]

        # @!attribute [rw] maximum_execution_frequency
        #   If the trigger type for your rule includes periodic, AWS Config runs
        #   evaluations for the rule at a frequency that you choose. If you
        #   specify a value for `MaximumExecutionFrequency`, then `MessageType`
        #   must use the `ScheduledNotification` value.
        #   @return [String]

      end

      # @note When making an API call, pass StartConfigRulesEvaluationRequest
      #   data as a hash:
      #
      #       {
      #         config_rule_names: ["StringWithCharLimit64"],
      #       }
      class StartConfigRulesEvaluationRequest < Aws::Structure.new(
        :config_rule_names)

        # @!attribute [rw] config_rule_names
        #   The list of names of Config rules that you want to run evaluations
        #   for.
        #   @return [Array<String>]

      end

      # The output when you start the evaluation for the specified Config
      # rule.
      class StartConfigRulesEvaluationResponse < Aws::EmptyStructure; end

      # The input for the StartConfigurationRecorder action.
      # @note When making an API call, pass StartConfigurationRecorderRequest
      #   data as a hash:
      #
      #       {
      #         configuration_recorder_name: "RecorderName", # required
      #       }
      class StartConfigurationRecorderRequest < Aws::Structure.new(
        :configuration_recorder_name)

        # @!attribute [rw] configuration_recorder_name
        #   The name of the recorder object that records each configuration
        #   change made to the resources.
        #   @return [String]

      end

      # The input for the StopConfigurationRecorder action.
      # @note When making an API call, pass StopConfigurationRecorderRequest
      #   data as a hash:
      #
      #       {
      #         configuration_recorder_name: "RecorderName", # required
      #       }
      class StopConfigurationRecorderRequest < Aws::Structure.new(
        :configuration_recorder_name)

        # @!attribute [rw] configuration_recorder_name
        #   The name of the recorder object that records each configuration
        #   change made to the resources.
        #   @return [String]

      end

    end
  end
end
