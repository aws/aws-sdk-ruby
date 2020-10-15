# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoT
  module Types

    # The criteria that determine when and how a job abort takes place.
    #
    # @note When making an API call, you may pass AbortConfig
    #   data as a hash:
    #
    #       {
    #         criteria_list: [ # required
    #           {
    #             failure_type: "FAILED", # required, accepts FAILED, REJECTED, TIMED_OUT, ALL
    #             action: "CANCEL", # required, accepts CANCEL
    #             threshold_percentage: 1.0, # required
    #             min_number_of_executed_things: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] criteria_list
    #   The list of criteria that determine when and how to abort the job.
    #   @return [Array<Types::AbortCriteria>]
    #
    class AbortConfig < Struct.new(
      :criteria_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The criteria that determine when and how a job abort takes place.
    #
    # @note When making an API call, you may pass AbortCriteria
    #   data as a hash:
    #
    #       {
    #         failure_type: "FAILED", # required, accepts FAILED, REJECTED, TIMED_OUT, ALL
    #         action: "CANCEL", # required, accepts CANCEL
    #         threshold_percentage: 1.0, # required
    #         min_number_of_executed_things: 1, # required
    #       }
    #
    # @!attribute [rw] failure_type
    #   The type of job execution failures that can initiate a job abort.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The type of job action to take to initiate the job abort.
    #   @return [String]
    #
    # @!attribute [rw] threshold_percentage
    #   The minimum percentage of job execution failures that must occur to
    #   initiate the job abort.
    #
    #   AWS IoT supports up to two digits after the decimal (for example,
    #   10.9 and 10.99, but not 10.999).
    #   @return [Float]
    #
    # @!attribute [rw] min_number_of_executed_things
    #   The minimum number of things which must receive job execution
    #   notifications before the job can be aborted.
    #   @return [Integer]
    #
    class AbortCriteria < Struct.new(
      :failure_type,
      :action,
      :threshold_percentage,
      :min_number_of_executed_things)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the AcceptCertificateTransfer operation.
    #
    # @note When making an API call, you may pass AcceptCertificateTransferRequest
    #   data as a hash:
    #
    #       {
    #         certificate_id: "CertificateId", # required
    #         set_as_active: false,
    #       }
    #
    # @!attribute [rw] certificate_id
    #   The ID of the certificate. (The last part of the certificate ARN
    #   contains the certificate ID.)
    #   @return [String]
    #
    # @!attribute [rw] set_as_active
    #   Specifies whether the certificate is active.
    #   @return [Boolean]
    #
    class AcceptCertificateTransferRequest < Struct.new(
      :certificate_id,
      :set_as_active)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the actions associated with a rule.
    #
    # @note When making an API call, you may pass Action
    #   data as a hash:
    #
    #       {
    #         dynamo_db: {
    #           table_name: "TableName", # required
    #           role_arn: "AwsArn", # required
    #           operation: "DynamoOperation",
    #           hash_key_field: "HashKeyField", # required
    #           hash_key_value: "HashKeyValue", # required
    #           hash_key_type: "STRING", # accepts STRING, NUMBER
    #           range_key_field: "RangeKeyField",
    #           range_key_value: "RangeKeyValue",
    #           range_key_type: "STRING", # accepts STRING, NUMBER
    #           payload_field: "PayloadField",
    #         },
    #         dynamo_d_bv_2: {
    #           role_arn: "AwsArn", # required
    #           put_item: { # required
    #             table_name: "TableName", # required
    #           },
    #         },
    #         lambda: {
    #           function_arn: "FunctionArn", # required
    #         },
    #         sns: {
    #           target_arn: "AwsArn", # required
    #           role_arn: "AwsArn", # required
    #           message_format: "RAW", # accepts RAW, JSON
    #         },
    #         sqs: {
    #           role_arn: "AwsArn", # required
    #           queue_url: "QueueUrl", # required
    #           use_base_64: false,
    #         },
    #         kinesis: {
    #           role_arn: "AwsArn", # required
    #           stream_name: "StreamName", # required
    #           partition_key: "PartitionKey",
    #         },
    #         republish: {
    #           role_arn: "AwsArn", # required
    #           topic: "TopicPattern", # required
    #           qos: 1,
    #         },
    #         s3: {
    #           role_arn: "AwsArn", # required
    #           bucket_name: "BucketName", # required
    #           key: "Key", # required
    #           canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write
    #         },
    #         firehose: {
    #           role_arn: "AwsArn", # required
    #           delivery_stream_name: "DeliveryStreamName", # required
    #           separator: "FirehoseSeparator",
    #         },
    #         cloudwatch_metric: {
    #           role_arn: "AwsArn", # required
    #           metric_namespace: "String", # required
    #           metric_name: "String", # required
    #           metric_value: "String", # required
    #           metric_unit: "String", # required
    #           metric_timestamp: "String",
    #         },
    #         cloudwatch_alarm: {
    #           role_arn: "AwsArn", # required
    #           alarm_name: "AlarmName", # required
    #           state_reason: "StateReason", # required
    #           state_value: "StateValue", # required
    #         },
    #         cloudwatch_logs: {
    #           role_arn: "AwsArn", # required
    #           log_group_name: "LogGroupName", # required
    #         },
    #         elasticsearch: {
    #           role_arn: "AwsArn", # required
    #           endpoint: "ElasticsearchEndpoint", # required
    #           index: "ElasticsearchIndex", # required
    #           type: "ElasticsearchType", # required
    #           id: "ElasticsearchId", # required
    #         },
    #         salesforce: {
    #           token: "SalesforceToken", # required
    #           url: "SalesforceEndpoint", # required
    #         },
    #         iot_analytics: {
    #           channel_arn: "AwsArn",
    #           channel_name: "ChannelName",
    #           role_arn: "AwsArn",
    #         },
    #         iot_events: {
    #           input_name: "InputName", # required
    #           message_id: "MessageId",
    #           role_arn: "AwsArn", # required
    #         },
    #         iot_site_wise: {
    #           put_asset_property_value_entries: [ # required
    #             {
    #               entry_id: "AssetPropertyEntryId",
    #               asset_id: "AssetId",
    #               property_id: "AssetPropertyId",
    #               property_alias: "AssetPropertyAlias",
    #               property_values: [ # required
    #                 {
    #                   value: { # required
    #                     string_value: "AssetPropertyStringValue",
    #                     integer_value: "AssetPropertyIntegerValue",
    #                     double_value: "AssetPropertyDoubleValue",
    #                     boolean_value: "AssetPropertyBooleanValue",
    #                   },
    #                   timestamp: { # required
    #                     time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                     offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                   },
    #                   quality: "AssetPropertyQuality",
    #                 },
    #               ],
    #             },
    #           ],
    #           role_arn: "AwsArn", # required
    #         },
    #         step_functions: {
    #           execution_name_prefix: "ExecutionNamePrefix",
    #           state_machine_name: "StateMachineName", # required
    #           role_arn: "AwsArn", # required
    #         },
    #         timestream: {
    #           role_arn: "AwsArn", # required
    #           database_name: "TimestreamDatabaseName", # required
    #           table_name: "TimestreamTableName", # required
    #           dimensions: [ # required
    #             {
    #               name: "TimestreamDimensionName", # required
    #               value: "TimestreamDimensionValue", # required
    #             },
    #           ],
    #           timestamp: {
    #             value: "TimestreamTimestampValue", # required
    #             unit: "TimestreamTimestampUnit", # required
    #           },
    #         },
    #         http: {
    #           url: "Url", # required
    #           confirmation_url: "Url",
    #           headers: [
    #             {
    #               key: "HeaderKey", # required
    #               value: "HeaderValue", # required
    #             },
    #           ],
    #           auth: {
    #             sigv4: {
    #               signing_region: "SigningRegion", # required
    #               service_name: "ServiceName", # required
    #               role_arn: "AwsArn", # required
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] dynamo_db
    #   Write to a DynamoDB table.
    #   @return [Types::DynamoDBAction]
    #
    # @!attribute [rw] dynamo_d_bv_2
    #   Write to a DynamoDB table. This is a new version of the DynamoDB
    #   action. It allows you to write each attribute in an MQTT message
    #   payload into a separate DynamoDB column.
    #   @return [Types::DynamoDBv2Action]
    #
    # @!attribute [rw] lambda
    #   Invoke a Lambda function.
    #   @return [Types::LambdaAction]
    #
    # @!attribute [rw] sns
    #   Publish to an Amazon SNS topic.
    #   @return [Types::SnsAction]
    #
    # @!attribute [rw] sqs
    #   Publish to an Amazon SQS queue.
    #   @return [Types::SqsAction]
    #
    # @!attribute [rw] kinesis
    #   Write data to an Amazon Kinesis stream.
    #   @return [Types::KinesisAction]
    #
    # @!attribute [rw] republish
    #   Publish to another MQTT topic.
    #   @return [Types::RepublishAction]
    #
    # @!attribute [rw] s3
    #   Write to an Amazon S3 bucket.
    #   @return [Types::S3Action]
    #
    # @!attribute [rw] firehose
    #   Write to an Amazon Kinesis Firehose stream.
    #   @return [Types::FirehoseAction]
    #
    # @!attribute [rw] cloudwatch_metric
    #   Capture a CloudWatch metric.
    #   @return [Types::CloudwatchMetricAction]
    #
    # @!attribute [rw] cloudwatch_alarm
    #   Change the state of a CloudWatch alarm.
    #   @return [Types::CloudwatchAlarmAction]
    #
    # @!attribute [rw] cloudwatch_logs
    #   Send data to CloudWatch Logs.
    #   @return [Types::CloudwatchLogsAction]
    #
    # @!attribute [rw] elasticsearch
    #   Write data to an Amazon Elasticsearch Service domain.
    #   @return [Types::ElasticsearchAction]
    #
    # @!attribute [rw] salesforce
    #   Send a message to a Salesforce IoT Cloud Input Stream.
    #   @return [Types::SalesforceAction]
    #
    # @!attribute [rw] iot_analytics
    #   Sends message data to an AWS IoT Analytics channel.
    #   @return [Types::IotAnalyticsAction]
    #
    # @!attribute [rw] iot_events
    #   Sends an input to an AWS IoT Events detector.
    #   @return [Types::IotEventsAction]
    #
    # @!attribute [rw] iot_site_wise
    #   Sends data from the MQTT message that triggered the rule to AWS IoT
    #   SiteWise asset properties.
    #   @return [Types::IotSiteWiseAction]
    #
    # @!attribute [rw] step_functions
    #   Starts execution of a Step Functions state machine.
    #   @return [Types::StepFunctionsAction]
    #
    # @!attribute [rw] timestream
    #   The Timestream rule action writes attributes (measures) from an MQTT
    #   message into an Amazon Timestream table. For more information, see
    #   the [Timestream][1] topic rule action documentation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot/latest/developerguide/timestream-rule-action.html
    #   @return [Types::TimestreamAction]
    #
    # @!attribute [rw] http
    #   Send data to an HTTPS endpoint.
    #   @return [Types::HttpAction]
    #
    class Action < Struct.new(
      :dynamo_db,
      :dynamo_d_bv_2,
      :lambda,
      :sns,
      :sqs,
      :kinesis,
      :republish,
      :s3,
      :firehose,
      :cloudwatch_metric,
      :cloudwatch_alarm,
      :cloudwatch_logs,
      :elasticsearch,
      :salesforce,
      :iot_analytics,
      :iot_events,
      :iot_site_wise,
      :step_functions,
      :timestream,
      :http)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an active Device Defender security profile behavior
    # violation.
    #
    # @!attribute [rw] violation_id
    #   The ID of the active violation.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The name of the thing responsible for the active violation.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_name
    #   The security profile whose behavior is in violation.
    #   @return [String]
    #
    # @!attribute [rw] behavior
    #   The behavior which is being violated.
    #   @return [Types::Behavior]
    #
    # @!attribute [rw] last_violation_value
    #   The value of the metric (the measurement) which caused the most
    #   recent violation.
    #   @return [Types::MetricValue]
    #
    # @!attribute [rw] last_violation_time
    #   The time the most recent violation occurred.
    #   @return [Time]
    #
    # @!attribute [rw] violation_start_time
    #   The time the violation started.
    #   @return [Time]
    #
    class ActiveViolation < Struct.new(
      :violation_id,
      :thing_name,
      :security_profile_name,
      :behavior,
      :last_violation_value,
      :last_violation_time,
      :violation_start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddThingToBillingGroupRequest
    #   data as a hash:
    #
    #       {
    #         billing_group_name: "BillingGroupName",
    #         billing_group_arn: "BillingGroupArn",
    #         thing_name: "ThingName",
    #         thing_arn: "ThingArn",
    #       }
    #
    # @!attribute [rw] billing_group_name
    #   The name of the billing group.
    #   @return [String]
    #
    # @!attribute [rw] billing_group_arn
    #   The ARN of the billing group.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The name of the thing to be added to the billing group.
    #   @return [String]
    #
    # @!attribute [rw] thing_arn
    #   The ARN of the thing to be added to the billing group.
    #   @return [String]
    #
    class AddThingToBillingGroupRequest < Struct.new(
      :billing_group_name,
      :billing_group_arn,
      :thing_name,
      :thing_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    class AddThingToBillingGroupResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AddThingToThingGroupRequest
    #   data as a hash:
    #
    #       {
    #         thing_group_name: "ThingGroupName",
    #         thing_group_arn: "ThingGroupArn",
    #         thing_name: "ThingName",
    #         thing_arn: "ThingArn",
    #         override_dynamic_groups: false,
    #       }
    #
    # @!attribute [rw] thing_group_name
    #   The name of the group to which you are adding a thing.
    #   @return [String]
    #
    # @!attribute [rw] thing_group_arn
    #   The ARN of the group to which you are adding a thing.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The name of the thing to add to a group.
    #   @return [String]
    #
    # @!attribute [rw] thing_arn
    #   The ARN of the thing to add to a group.
    #   @return [String]
    #
    # @!attribute [rw] override_dynamic_groups
    #   Override dynamic thing groups with static thing groups when 10-group
    #   limit is reached. If a thing belongs to 10 thing groups, and one or
    #   more of those groups are dynamic thing groups, adding a thing to a
    #   static group removes the thing from the last dynamic group.
    #   @return [Boolean]
    #
    class AddThingToThingGroupRequest < Struct.new(
      :thing_group_name,
      :thing_group_arn,
      :thing_name,
      :thing_arn,
      :override_dynamic_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    class AddThingToThingGroupResponse < Aws::EmptyStructure; end

    # Parameters used when defining a mitigation action that move a set of
    # things to a thing group.
    #
    # @note When making an API call, you may pass AddThingsToThingGroupParams
    #   data as a hash:
    #
    #       {
    #         thing_group_names: ["ThingGroupName"], # required
    #         override_dynamic_groups: false,
    #       }
    #
    # @!attribute [rw] thing_group_names
    #   The list of groups to which you want to add the things that
    #   triggered the mitigation action. You can add a thing to a maximum of
    #   10 groups, but you cannot add a thing to more than one group in the
    #   same hierarchy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] override_dynamic_groups
    #   Specifies if this mitigation action can move the things that
    #   triggered the mitigation action even if they are part of one or more
    #   dynamic things groups.
    #   @return [Boolean]
    #
    class AddThingsToThingGroupParams < Struct.new(
      :thing_group_names,
      :override_dynamic_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing the alert target ARN and the role ARN.
    #
    # @note When making an API call, you may pass AlertTarget
    #   data as a hash:
    #
    #       {
    #         alert_target_arn: "AlertTargetArn", # required
    #         role_arn: "RoleArn", # required
    #       }
    #
    # @!attribute [rw] alert_target_arn
    #   The ARN of the notification target to which alerts are sent.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants permission to send alerts to the
    #   notification target.
    #   @return [String]
    #
    class AlertTarget < Struct.new(
      :alert_target_arn,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information that allowed the authorization.
    #
    # @!attribute [rw] policies
    #   A list of policies that allowed the authentication.
    #   @return [Array<Types::Policy>]
    #
    class Allowed < Struct.new(
      :policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # An asset property timestamp entry containing the following
    # information.
    #
    # @note When making an API call, you may pass AssetPropertyTimestamp
    #   data as a hash:
    #
    #       {
    #         time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #         offset_in_nanos: "AssetPropertyOffsetInNanos",
    #       }
    #
    # @!attribute [rw] time_in_seconds
    #   A string that contains the time in seconds since epoch. Accepts
    #   substitution templates.
    #   @return [String]
    #
    # @!attribute [rw] offset_in_nanos
    #   Optional. A string that contains the nanosecond time offset. Accepts
    #   substitution templates.
    #   @return [String]
    #
    class AssetPropertyTimestamp < Struct.new(
      :time_in_seconds,
      :offset_in_nanos)
      SENSITIVE = []
      include Aws::Structure
    end

    # An asset property value entry containing the following information.
    #
    # @note When making an API call, you may pass AssetPropertyValue
    #   data as a hash:
    #
    #       {
    #         value: { # required
    #           string_value: "AssetPropertyStringValue",
    #           integer_value: "AssetPropertyIntegerValue",
    #           double_value: "AssetPropertyDoubleValue",
    #           boolean_value: "AssetPropertyBooleanValue",
    #         },
    #         timestamp: { # required
    #           time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #           offset_in_nanos: "AssetPropertyOffsetInNanos",
    #         },
    #         quality: "AssetPropertyQuality",
    #       }
    #
    # @!attribute [rw] value
    #   The value of the asset property.
    #   @return [Types::AssetPropertyVariant]
    #
    # @!attribute [rw] timestamp
    #   The asset property value timestamp.
    #   @return [Types::AssetPropertyTimestamp]
    #
    # @!attribute [rw] quality
    #   Optional. A string that describes the quality of the value. Accepts
    #   substitution templates. Must be `GOOD`, `BAD`, or `UNCERTAIN`.
    #   @return [String]
    #
    class AssetPropertyValue < Struct.new(
      :value,
      :timestamp,
      :quality)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an asset property value (of a single type).
    #
    # @note When making an API call, you may pass AssetPropertyVariant
    #   data as a hash:
    #
    #       {
    #         string_value: "AssetPropertyStringValue",
    #         integer_value: "AssetPropertyIntegerValue",
    #         double_value: "AssetPropertyDoubleValue",
    #         boolean_value: "AssetPropertyBooleanValue",
    #       }
    #
    # @!attribute [rw] string_value
    #   Optional. The string value of the value entry. Accepts substitution
    #   templates.
    #   @return [String]
    #
    # @!attribute [rw] integer_value
    #   Optional. A string that contains the integer value of the value
    #   entry. Accepts substitution templates.
    #   @return [String]
    #
    # @!attribute [rw] double_value
    #   Optional. A string that contains the double value of the value
    #   entry. Accepts substitution templates.
    #   @return [String]
    #
    # @!attribute [rw] boolean_value
    #   Optional. A string that contains the boolean value (`true` or
    #   `false`) of the value entry. Accepts substitution templates.
    #   @return [String]
    #
    class AssetPropertyVariant < Struct.new(
      :string_value,
      :integer_value,
      :double_value,
      :boolean_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateTargetsWithJobRequest
    #   data as a hash:
    #
    #       {
    #         targets: ["TargetArn"], # required
    #         job_id: "JobId", # required
    #         comment: "Comment",
    #       }
    #
    # @!attribute [rw] targets
    #   A list of thing group ARNs that define the targets of the job.
    #   @return [Array<String>]
    #
    # @!attribute [rw] job_id
    #   The unique identifier you assigned to this job when it was created.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   An optional comment string describing why the job was associated
    #   with the targets.
    #   @return [String]
    #
    class AssociateTargetsWithJobRequest < Struct.new(
      :targets,
      :job_id,
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_arn
    #   An ARN identifying the job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique identifier you assigned to this job when it was created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A short text description of the job.
    #   @return [String]
    #
    class AssociateTargetsWithJobResponse < Struct.new(
      :job_arn,
      :job_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AttachPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "PolicyName", # required
    #         target: "PolicyTarget", # required
    #       }
    #
    # @!attribute [rw] policy_name
    #   The name of the policy to attach.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The [identity][1] to which the policy is attached.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot/latest/developerguide/security-iam.html
    #   @return [String]
    #
    class AttachPolicyRequest < Struct.new(
      :policy_name,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the AttachPrincipalPolicy operation.
    #
    # @note When making an API call, you may pass AttachPrincipalPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "PolicyName", # required
    #         principal: "Principal", # required
    #       }
    #
    # @!attribute [rw] policy_name
    #   The policy name.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal, which can be a certificate ARN (as returned from the
    #   CreateCertificate operation) or an Amazon Cognito ID.
    #   @return [String]
    #
    class AttachPrincipalPolicyRequest < Struct.new(
      :policy_name,
      :principal)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AttachSecurityProfileRequest
    #   data as a hash:
    #
    #       {
    #         security_profile_name: "SecurityProfileName", # required
    #         security_profile_target_arn: "SecurityProfileTargetArn", # required
    #       }
    #
    # @!attribute [rw] security_profile_name
    #   The security profile that is attached.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_target_arn
    #   The ARN of the target (thing group) to which the security profile is
    #   attached.
    #   @return [String]
    #
    class AttachSecurityProfileRequest < Struct.new(
      :security_profile_name,
      :security_profile_target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    class AttachSecurityProfileResponse < Aws::EmptyStructure; end

    # The input for the AttachThingPrincipal operation.
    #
    # @note When making an API call, you may pass AttachThingPrincipalRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #         principal: "Principal", # required
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal, which can be a certificate ARN (as returned from the
    #   CreateCertificate operation) or an Amazon Cognito ID.
    #   @return [String]
    #
    class AttachThingPrincipalRequest < Struct.new(
      :thing_name,
      :principal)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the AttachThingPrincipal operation.
    #
    class AttachThingPrincipalResponse < Aws::EmptyStructure; end

    # The attribute payload.
    #
    # @note When making an API call, you may pass AttributePayload
    #   data as a hash:
    #
    #       {
    #         attributes: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #         merge: false,
    #       }
    #
    # @!attribute [rw] attributes
    #   A JSON string containing up to three key-value pair in JSON format.
    #   For example:
    #
    #   `\{"attributes":\{"string1":"string2"\}\}`
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] merge
    #   Specifies whether the list of attributes provided in the
    #   `AttributePayload` is merged with the attributes stored in the
    #   registry, instead of overwriting them.
    #
    #   To remove an attribute, call `UpdateThing` with an empty attribute
    #   value.
    #
    #   <note markdown="1"> The `merge` attribute is only valid when calling `UpdateThing` or
    #   `UpdateThingGroup`.
    #
    #    </note>
    #   @return [Boolean]
    #
    class AttributePayload < Struct.new(
      :attributes,
      :merge)
      SENSITIVE = []
      include Aws::Structure
    end

    # Which audit checks are enabled and disabled for this account.
    #
    # @note When making an API call, you may pass AuditCheckConfiguration
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   True if this audit check is enabled for this account.
    #   @return [Boolean]
    #
    class AuditCheckConfiguration < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the audit check.
    #
    # @!attribute [rw] check_run_status
    #   The completion status of this check. One of "IN\_PROGRESS",
    #   "WAITING\_FOR\_DATA\_COLLECTION", "CANCELED",
    #   "COMPLETED\_COMPLIANT", "COMPLETED\_NON\_COMPLIANT", or
    #   "FAILED".
    #   @return [String]
    #
    # @!attribute [rw] check_compliant
    #   True if the check is complete and found all resources compliant.
    #   @return [Boolean]
    #
    # @!attribute [rw] total_resources_count
    #   The number of resources on which the check was performed.
    #   @return [Integer]
    #
    # @!attribute [rw] non_compliant_resources_count
    #   The number of resources that were found noncompliant during the
    #   check.
    #   @return [Integer]
    #
    # @!attribute [rw] suppressed_non_compliant_resources_count
    #   Describes how many of the non-compliant resources created during the
    #   evaluation of an audit check were marked as suppressed.
    #   @return [Integer]
    #
    # @!attribute [rw] error_code
    #   The code of any error encountered when this check is performed
    #   during this audit. One of "INSUFFICIENT\_PERMISSIONS" or
    #   "AUDIT\_CHECK\_DISABLED".
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message associated with any error encountered when this check is
    #   performed during this audit.
    #   @return [String]
    #
    class AuditCheckDetails < Struct.new(
      :check_run_status,
      :check_compliant,
      :total_resources_count,
      :non_compliant_resources_count,
      :suppressed_non_compliant_resources_count,
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The findings (results) of the audit.
    #
    # @!attribute [rw] finding_id
    #   A unique identifier for this set of audit findings. This identifier
    #   is used to apply mitigation tasks to one or more sets of findings.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The ID of the audit that generated this result (finding).
    #   @return [String]
    #
    # @!attribute [rw] check_name
    #   The audit check that generated this result.
    #   @return [String]
    #
    # @!attribute [rw] task_start_time
    #   The time the audit started.
    #   @return [Time]
    #
    # @!attribute [rw] finding_time
    #   The time the result (finding) was discovered.
    #   @return [Time]
    #
    # @!attribute [rw] severity
    #   The severity of the result (finding).
    #   @return [String]
    #
    # @!attribute [rw] non_compliant_resource
    #   The resource that was found to be noncompliant with the audit check.
    #   @return [Types::NonCompliantResource]
    #
    # @!attribute [rw] related_resources
    #   The list of related resources.
    #   @return [Array<Types::RelatedResource>]
    #
    # @!attribute [rw] reason_for_non_compliance
    #   The reason the resource was noncompliant.
    #   @return [String]
    #
    # @!attribute [rw] reason_for_non_compliance_code
    #   A code that indicates the reason that the resource was noncompliant.
    #   @return [String]
    #
    # @!attribute [rw] is_suppressed
    #   Indicates whether the audit finding was suppressed or not during
    #   reporting.
    #   @return [Boolean]
    #
    class AuditFinding < Struct.new(
      :finding_id,
      :task_id,
      :check_name,
      :task_start_time,
      :finding_time,
      :severity,
      :non_compliant_resource,
      :related_resources,
      :reason_for_non_compliance,
      :reason_for_non_compliance_code,
      :is_suppressed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returned by ListAuditMitigationActionsTask, this object contains
    # information that describes a mitigation action that has been started.
    #
    # @!attribute [rw] task_id
    #   The unique identifier for the task that applies the mitigation
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] finding_id
    #   The unique identifier for the findings to which the task and
    #   associated mitigation action are applied.
    #   @return [String]
    #
    # @!attribute [rw] action_name
    #   The friendly name of the mitigation action being applied by the
    #   task.
    #   @return [String]
    #
    # @!attribute [rw] action_id
    #   The unique identifier for the mitigation action being applied by the
    #   task.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the task being executed.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time when the task was started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time when the task was completed or canceled. Blank if
    #   the task is still running.
    #   @return [Time]
    #
    # @!attribute [rw] error_code
    #   If an error occurred, the code that indicates which type of error
    #   occurred.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   If an error occurred, a message that describes the error.
    #   @return [String]
    #
    class AuditMitigationActionExecutionMetadata < Struct.new(
      :task_id,
      :finding_id,
      :action_name,
      :action_id,
      :status,
      :start_time,
      :end_time,
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an audit mitigation actions task that is returned by
    # `ListAuditMitigationActionsTasks`.
    #
    # @!attribute [rw] task_id
    #   The unique identifier for the task.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time at which the audit mitigation actions task was started.
    #   @return [Time]
    #
    # @!attribute [rw] task_status
    #   The current state of the audit mitigation actions task.
    #   @return [String]
    #
    class AuditMitigationActionsTaskMetadata < Struct.new(
      :task_id,
      :start_time,
      :task_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used in MitigationActionParams, this information identifies the target
    # findings to which the mitigation actions are applied. Only one entry
    # appears.
    #
    # @note When making an API call, you may pass AuditMitigationActionsTaskTarget
    #   data as a hash:
    #
    #       {
    #         audit_task_id: "AuditTaskId",
    #         finding_ids: ["FindingId"],
    #         audit_check_to_reason_code_filter: {
    #           "AuditCheckName" => ["ReasonForNonComplianceCode"],
    #         },
    #       }
    #
    # @!attribute [rw] audit_task_id
    #   If the task will apply a mitigation action to findings from a
    #   specific audit, this value uniquely identifies the audit.
    #   @return [String]
    #
    # @!attribute [rw] finding_ids
    #   If the task will apply a mitigation action to one or more listed
    #   findings, this value uniquely identifies those findings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] audit_check_to_reason_code_filter
    #   Specifies a filter in the form of an audit check and set of reason
    #   codes that identify the findings from the audit to which the audit
    #   mitigation actions task apply.
    #   @return [Hash<String,Array<String>>]
    #
    class AuditMitigationActionsTaskTarget < Struct.new(
      :audit_task_id,
      :finding_ids,
      :audit_check_to_reason_code_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the targets to which audit notifications are sent.
    #
    # @note When making an API call, you may pass AuditNotificationTarget
    #   data as a hash:
    #
    #       {
    #         target_arn: "TargetArn",
    #         role_arn: "RoleArn",
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] target_arn
    #   The ARN of the target (SNS topic) to which audit notifications are
    #   sent.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants permission to send notifications to
    #   the target.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   True if notifications to the target are enabled.
    #   @return [Boolean]
    #
    class AuditNotificationTarget < Struct.new(
      :target_arn,
      :role_arn,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters out specific findings of a Device Defender audit.
    #
    # @!attribute [rw] check_name
    #   An audit check name. Checks must be enabled for your account. (Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks,
    #   including those that are enabled or use
    #   `UpdateAccountAuditConfiguration` to select which checks are
    #   enabled.)
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   Information that identifies the noncompliant resource.
    #   @return [Types::ResourceIdentifier]
    #
    # @!attribute [rw] expiration_date
    #   The expiration date (epoch timestamp in seconds) that you want the
    #   suppression to adhere to.
    #   @return [Time]
    #
    # @!attribute [rw] suppress_indefinitely
    #   Indicates whether a suppression should exist indefinitely or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description of the audit suppression.
    #   @return [String]
    #
    class AuditSuppression < Struct.new(
      :check_name,
      :resource_identifier,
      :expiration_date,
      :suppress_indefinitely,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The audits that were performed.
    #
    # @!attribute [rw] task_id
    #   The ID of this audit.
    #   @return [String]
    #
    # @!attribute [rw] task_status
    #   The status of this audit. One of "IN\_PROGRESS", "COMPLETED",
    #   "FAILED", or "CANCELED".
    #   @return [String]
    #
    # @!attribute [rw] task_type
    #   The type of this audit. One of "ON\_DEMAND\_AUDIT\_TASK" or
    #   "SCHEDULED\_AUDIT\_TASK".
    #   @return [String]
    #
    class AuditTaskMetadata < Struct.new(
      :task_id,
      :task_status,
      :task_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of authorization information.
    #
    # @note When making an API call, you may pass AuthInfo
    #   data as a hash:
    #
    #       {
    #         action_type: "PUBLISH", # accepts PUBLISH, SUBSCRIBE, RECEIVE, CONNECT
    #         resources: ["Resource"], # required
    #       }
    #
    # @!attribute [rw] action_type
    #   The type of action for which the principal is being authorized.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The resources for which the principal is being authorized to perform
    #   the specified action.
    #   @return [Array<String>]
    #
    class AuthInfo < Struct.new(
      :action_type,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # The authorizer result.
    #
    # @!attribute [rw] auth_info
    #   Authorization information.
    #   @return [Types::AuthInfo]
    #
    # @!attribute [rw] allowed
    #   The policies and statements that allowed the specified action.
    #   @return [Types::Allowed]
    #
    # @!attribute [rw] denied
    #   The policies and statements that denied the specified action.
    #   @return [Types::Denied]
    #
    # @!attribute [rw] auth_decision
    #   The final authorization decision of this scenario. Multiple
    #   statements are taken into account when determining the authorization
    #   decision. An explicit deny statement can override multiple allow
    #   statements.
    #   @return [String]
    #
    # @!attribute [rw] missing_context_values
    #   Contains any missing context values found while evaluating policy.
    #   @return [Array<String>]
    #
    class AuthResult < Struct.new(
      :auth_info,
      :allowed,
      :denied,
      :auth_decision,
      :missing_context_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that specifies the authorization service for a domain.
    #
    # @note When making an API call, you may pass AuthorizerConfig
    #   data as a hash:
    #
    #       {
    #         default_authorizer_name: "AuthorizerName",
    #         allow_authorizer_override: false,
    #       }
    #
    # @!attribute [rw] default_authorizer_name
    #   The name of the authorization service for a domain configuration.
    #   @return [String]
    #
    # @!attribute [rw] allow_authorizer_override
    #   A Boolean that specifies whether the domain configuration's
    #   authorization service can be overridden.
    #   @return [Boolean]
    #
    class AuthorizerConfig < Struct.new(
      :default_authorizer_name,
      :allow_authorizer_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # The authorizer description.
    #
    # @!attribute [rw] authorizer_name
    #   The authorizer name.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_arn
    #   The authorizer ARN.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_function_arn
    #   The authorizer's Lambda function ARN.
    #   @return [String]
    #
    # @!attribute [rw] token_key_name
    #   The key used to extract the token from the HTTP headers.
    #   @return [String]
    #
    # @!attribute [rw] token_signing_public_keys
    #   The public keys used to validate the token signature returned by
    #   your custom authentication service.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of the authorizer.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The UNIX timestamp of when the authorizer was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The UNIX timestamp of when the authorizer was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] signing_disabled
    #   Specifies whether AWS IoT validates the token signature in an
    #   authorization request.
    #   @return [Boolean]
    #
    class AuthorizerDescription < Struct.new(
      :authorizer_name,
      :authorizer_arn,
      :authorizer_function_arn,
      :token_key_name,
      :token_signing_public_keys,
      :status,
      :creation_date,
      :last_modified_date,
      :signing_disabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The authorizer summary.
    #
    # @!attribute [rw] authorizer_name
    #   The authorizer name.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_arn
    #   The authorizer ARN.
    #   @return [String]
    #
    class AuthorizerSummary < Struct.new(
      :authorizer_name,
      :authorizer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The criteria that determine when and how a job abort takes place.
    #
    # @note When making an API call, you may pass AwsJobAbortConfig
    #   data as a hash:
    #
    #       {
    #         abort_criteria_list: [ # required
    #           {
    #             failure_type: "FAILED", # required, accepts FAILED, REJECTED, TIMED_OUT, ALL
    #             action: "CANCEL", # required, accepts CANCEL
    #             threshold_percentage: 1.0, # required
    #             min_number_of_executed_things: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] abort_criteria_list
    #   The list of criteria that determine when and how to abort the job.
    #   @return [Array<Types::AwsJobAbortCriteria>]
    #
    class AwsJobAbortConfig < Struct.new(
      :abort_criteria_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The criteria that determine when and how a job abort takes place.
    #
    # @note When making an API call, you may pass AwsJobAbortCriteria
    #   data as a hash:
    #
    #       {
    #         failure_type: "FAILED", # required, accepts FAILED, REJECTED, TIMED_OUT, ALL
    #         action: "CANCEL", # required, accepts CANCEL
    #         threshold_percentage: 1.0, # required
    #         min_number_of_executed_things: 1, # required
    #       }
    #
    # @!attribute [rw] failure_type
    #   The type of job execution failures that can initiate a job abort.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The type of job action to take to initiate the job abort.
    #   @return [String]
    #
    # @!attribute [rw] threshold_percentage
    #   The minimum percentage of job execution failures that must occur to
    #   initiate the job abort.
    #
    #   AWS IoT supports up to two digits after the decimal (for example,
    #   10.9 and 10.99, but not 10.999).
    #   @return [Float]
    #
    # @!attribute [rw] min_number_of_executed_things
    #   The minimum number of things which must receive job execution
    #   notifications before the job can be aborted.
    #   @return [Integer]
    #
    class AwsJobAbortCriteria < Struct.new(
      :failure_type,
      :action,
      :threshold_percentage,
      :min_number_of_executed_things)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for the rollout of OTA updates.
    #
    # @note When making an API call, you may pass AwsJobExecutionsRolloutConfig
    #   data as a hash:
    #
    #       {
    #         maximum_per_minute: 1,
    #         exponential_rate: {
    #           base_rate_per_minute: 1, # required
    #           increment_factor: 1.0, # required
    #           rate_increase_criteria: { # required
    #             number_of_notified_things: 1,
    #             number_of_succeeded_things: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] maximum_per_minute
    #   The maximum number of OTA update job executions started per minute.
    #   @return [Integer]
    #
    # @!attribute [rw] exponential_rate
    #   The rate of increase for a job rollout. This parameter allows you to
    #   define an exponential rate increase for a job rollout.
    #   @return [Types::AwsJobExponentialRolloutRate]
    #
    class AwsJobExecutionsRolloutConfig < Struct.new(
      :maximum_per_minute,
      :exponential_rate)
      SENSITIVE = []
      include Aws::Structure
    end

    # The rate of increase for a job rollout. This parameter allows you to
    # define an exponential rate increase for a job rollout.
    #
    # @note When making an API call, you may pass AwsJobExponentialRolloutRate
    #   data as a hash:
    #
    #       {
    #         base_rate_per_minute: 1, # required
    #         increment_factor: 1.0, # required
    #         rate_increase_criteria: { # required
    #           number_of_notified_things: 1,
    #           number_of_succeeded_things: 1,
    #         },
    #       }
    #
    # @!attribute [rw] base_rate_per_minute
    #   The minimum number of things that will be notified of a pending job,
    #   per minute, at the start of the job rollout. This is the initial
    #   rate of the rollout.
    #   @return [Integer]
    #
    # @!attribute [rw] increment_factor
    #   The rate of increase for a job rollout. The number of things
    #   notified is multiplied by this factor.
    #   @return [Float]
    #
    # @!attribute [rw] rate_increase_criteria
    #   The criteria to initiate the increase in rate of rollout for a job.
    #
    #   AWS IoT supports up to one digit after the decimal (for example,
    #   1.5, but not 1.55).
    #   @return [Types::AwsJobRateIncreaseCriteria]
    #
    class AwsJobExponentialRolloutRate < Struct.new(
      :base_rate_per_minute,
      :increment_factor,
      :rate_increase_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for pre-signed URLs. Valid when `protocols`
    # contains HTTP.
    #
    # @note When making an API call, you may pass AwsJobPresignedUrlConfig
    #   data as a hash:
    #
    #       {
    #         expires_in_sec: 1,
    #       }
    #
    # @!attribute [rw] expires_in_sec
    #   How long (in seconds) pre-signed URLs are valid. Valid values are 60
    #   - 3600, the default value is 1800 seconds. Pre-signed URLs are
    #   generated when a request for the job document is received.
    #   @return [Integer]
    #
    class AwsJobPresignedUrlConfig < Struct.new(
      :expires_in_sec)
      SENSITIVE = []
      include Aws::Structure
    end

    # The criteria to initiate the increase in rate of rollout for a job.
    #
    # @note When making an API call, you may pass AwsJobRateIncreaseCriteria
    #   data as a hash:
    #
    #       {
    #         number_of_notified_things: 1,
    #         number_of_succeeded_things: 1,
    #       }
    #
    # @!attribute [rw] number_of_notified_things
    #   When this number of things have been notified, it will initiate an
    #   increase in the rollout rate.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_succeeded_things
    #   When this number of things have succeeded in their job execution, it
    #   will initiate an increase in the rollout rate.
    #   @return [Integer]
    #
    class AwsJobRateIncreaseCriteria < Struct.new(
      :number_of_notified_things,
      :number_of_succeeded_things)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the amount of time each device has to finish its execution
    # of the job. A timer is started when the job execution status is set to
    # `IN_PROGRESS`. If the job execution status is not set to another
    # terminal state before the timer expires, it will be automatically set
    # to `TIMED_OUT`.
    #
    # @note When making an API call, you may pass AwsJobTimeoutConfig
    #   data as a hash:
    #
    #       {
    #         in_progress_timeout_in_minutes: 1,
    #       }
    #
    # @!attribute [rw] in_progress_timeout_in_minutes
    #   Specifies the amount of time, in minutes, this device has to finish
    #   execution of this job. The timeout interval can be anywhere between
    #   1 minute and 7 days (1 to 10080 minutes). The in progress timer
    #   can't be updated and will apply to all job executions for the job.
    #   Whenever a job execution remains in the IN\_PROGRESS status for
    #   longer than this interval, the job execution will fail and switch to
    #   the terminal `TIMED_OUT` status.
    #   @return [Integer]
    #
    class AwsJobTimeoutConfig < Struct.new(
      :in_progress_timeout_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Device Defender security profile behavior.
    #
    # @note When making an API call, you may pass Behavior
    #   data as a hash:
    #
    #       {
    #         name: "BehaviorName", # required
    #         metric: "BehaviorMetric",
    #         metric_dimension: {
    #           dimension_name: "DimensionName", # required
    #           operator: "IN", # accepts IN, NOT_IN
    #         },
    #         criteria: {
    #           comparison_operator: "less-than", # accepts less-than, less-than-equals, greater-than, greater-than-equals, in-cidr-set, not-in-cidr-set, in-port-set, not-in-port-set
    #           value: {
    #             count: 1,
    #             cidrs: ["Cidr"],
    #             ports: [1],
    #           },
    #           duration_seconds: 1,
    #           consecutive_datapoints_to_alarm: 1,
    #           consecutive_datapoints_to_clear: 1,
    #           statistical_threshold: {
    #             statistic: "EvaluationStatistic",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name you have given to the behavior.
    #   @return [String]
    #
    # @!attribute [rw] metric
    #   What is measured by the behavior.
    #   @return [String]
    #
    # @!attribute [rw] metric_dimension
    #   The dimension for a metric in your behavior. For example, using a
    #   `TOPIC_FILTER` dimension, you can narrow down the scope of the
    #   metric only to MQTT topics whose name match the pattern specified in
    #   the dimension.
    #   @return [Types::MetricDimension]
    #
    # @!attribute [rw] criteria
    #   The criteria that determine if a device is behaving normally in
    #   regard to the `metric`.
    #   @return [Types::BehaviorCriteria]
    #
    class Behavior < Struct.new(
      :name,
      :metric,
      :metric_dimension,
      :criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # The criteria by which the behavior is determined to be normal.
    #
    # @note When making an API call, you may pass BehaviorCriteria
    #   data as a hash:
    #
    #       {
    #         comparison_operator: "less-than", # accepts less-than, less-than-equals, greater-than, greater-than-equals, in-cidr-set, not-in-cidr-set, in-port-set, not-in-port-set
    #         value: {
    #           count: 1,
    #           cidrs: ["Cidr"],
    #           ports: [1],
    #         },
    #         duration_seconds: 1,
    #         consecutive_datapoints_to_alarm: 1,
    #         consecutive_datapoints_to_clear: 1,
    #         statistical_threshold: {
    #           statistic: "EvaluationStatistic",
    #         },
    #       }
    #
    # @!attribute [rw] comparison_operator
    #   The operator that relates the thing measured (`metric`) to the
    #   criteria (containing a `value` or `statisticalThreshold`).
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value to be compared with the `metric`.
    #   @return [Types::MetricValue]
    #
    # @!attribute [rw] duration_seconds
    #   Use this to specify the time duration over which the behavior is
    #   evaluated, for those criteria which have a time dimension (for
    #   example, `NUM_MESSAGES_SENT`). For a `statisticalThreshhold` metric
    #   comparison, measurements from all devices are accumulated over this
    #   time duration before being used to calculate percentiles, and later,
    #   measurements from an individual device are also accumulated over
    #   this time duration before being given a percentile rank.
    #   @return [Integer]
    #
    # @!attribute [rw] consecutive_datapoints_to_alarm
    #   If a device is in violation of the behavior for the specified number
    #   of consecutive datapoints, an alarm occurs. If not specified, the
    #   default is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] consecutive_datapoints_to_clear
    #   If an alarm has occurred and the offending device is no longer in
    #   violation of the behavior for the specified number of consecutive
    #   datapoints, the alarm is cleared. If not specified, the default is
    #   1.
    #   @return [Integer]
    #
    # @!attribute [rw] statistical_threshold
    #   A statistical ranking (percentile) which indicates a threshold value
    #   by which a behavior is determined to be in compliance or in
    #   violation of the behavior.
    #   @return [Types::StatisticalThreshold]
    #
    class BehaviorCriteria < Struct.new(
      :comparison_operator,
      :value,
      :duration_seconds,
      :consecutive_datapoints_to_alarm,
      :consecutive_datapoints_to_clear,
      :statistical_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional information about the billing group.
    #
    # @!attribute [rw] creation_date
    #   The date the billing group was created.
    #   @return [Time]
    #
    class BillingGroupMetadata < Struct.new(
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of a billing group.
    #
    # @note When making an API call, you may pass BillingGroupProperties
    #   data as a hash:
    #
    #       {
    #         billing_group_description: "BillingGroupDescription",
    #       }
    #
    # @!attribute [rw] billing_group_description
    #   The description of the billing group.
    #   @return [String]
    #
    class BillingGroupProperties < Struct.new(
      :billing_group_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A CA certificate.
    #
    # @!attribute [rw] certificate_arn
    #   The ARN of the CA certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The ID of the CA certificate.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the CA certificate.
    #
    #   The status value REGISTER\_INACTIVE is deprecated and should not be
    #   used.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the CA certificate was created.
    #   @return [Time]
    #
    class CACertificate < Struct.new(
      :certificate_arn,
      :certificate_id,
      :status,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a CA certificate.
    #
    # @!attribute [rw] certificate_arn
    #   The CA certificate ARN.
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The CA certificate ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a CA certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_pem
    #   The CA certificate data, in PEM format.
    #   @return [String]
    #
    # @!attribute [rw] owned_by
    #   The owner of the CA certificate.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the CA certificate was created.
    #   @return [Time]
    #
    # @!attribute [rw] auto_registration_status
    #   Whether the CA certificate configured for auto registration of
    #   device certificates. Valid values are "ENABLE" and "DISABLE"
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date the CA certificate was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] customer_version
    #   The customer version of the CA certificate.
    #   @return [Integer]
    #
    # @!attribute [rw] generation_id
    #   The generation ID of the CA certificate.
    #   @return [String]
    #
    # @!attribute [rw] validity
    #   When the CA certificate is valid.
    #   @return [Types::CertificateValidity]
    #
    class CACertificateDescription < Struct.new(
      :certificate_arn,
      :certificate_id,
      :status,
      :certificate_pem,
      :owned_by,
      :creation_date,
      :auto_registration_status,
      :last_modified_date,
      :customer_version,
      :generation_id,
      :validity)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelAuditMitigationActionsTaskRequest
    #   data as a hash:
    #
    #       {
    #         task_id: "AuditMitigationActionsTaskId", # required
    #       }
    #
    # @!attribute [rw] task_id
    #   The unique identifier for the task that you want to cancel.
    #   @return [String]
    #
    class CancelAuditMitigationActionsTaskRequest < Struct.new(
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class CancelAuditMitigationActionsTaskResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CancelAuditTaskRequest
    #   data as a hash:
    #
    #       {
    #         task_id: "AuditTaskId", # required
    #       }
    #
    # @!attribute [rw] task_id
    #   The ID of the audit you want to cancel. You can only cancel an audit
    #   that is "IN\_PROGRESS".
    #   @return [String]
    #
    class CancelAuditTaskRequest < Struct.new(
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class CancelAuditTaskResponse < Aws::EmptyStructure; end

    # The input for the CancelCertificateTransfer operation.
    #
    # @note When making an API call, you may pass CancelCertificateTransferRequest
    #   data as a hash:
    #
    #       {
    #         certificate_id: "CertificateId", # required
    #       }
    #
    # @!attribute [rw] certificate_id
    #   The ID of the certificate. (The last part of the certificate ARN
    #   contains the certificate ID.)
    #   @return [String]
    #
    class CancelCertificateTransferRequest < Struct.new(
      :certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelJobExecutionRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         thing_name: "ThingName", # required
    #         force: false,
    #         expected_version: 1,
    #         status_details: {
    #           "DetailsKey" => "DetailsValue",
    #         },
    #       }
    #
    # @!attribute [rw] job_id
    #   The ID of the job to be canceled.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The name of the thing whose execution of the job will be canceled.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   (Optional) If `true` the job execution will be canceled if it has
    #   status IN\_PROGRESS or QUEUED, otherwise the job execution will be
    #   canceled only if it has status QUEUED. If you attempt to cancel a
    #   job execution that is IN\_PROGRESS, and you do not set `force` to
    #   `true`, then an `InvalidStateTransitionException` will be thrown.
    #   The default is `false`.
    #
    #   Canceling a job execution which is "IN\_PROGRESS", will cause the
    #   device to be unable to update the job execution status. Use caution
    #   and ensure that the device is able to recover to a valid state.
    #   @return [Boolean]
    #
    # @!attribute [rw] expected_version
    #   (Optional) The expected current version of the job execution. Each
    #   time you update the job execution, its version is incremented. If
    #   the version of the job execution stored in Jobs does not match, the
    #   update is rejected with a VersionMismatch error, and an
    #   ErrorResponse that contains the current job execution status data is
    #   returned. (This makes it unnecessary to perform a separate
    #   DescribeJobExecution request in order to obtain the job execution
    #   status data.)
    #   @return [Integer]
    #
    # @!attribute [rw] status_details
    #   A collection of name/value pairs that describe the status of the job
    #   execution. If not specified, the statusDetails are unchanged. You
    #   can specify at most 10 name/value pairs.
    #   @return [Hash<String,String>]
    #
    class CancelJobExecutionRequest < Struct.new(
      :job_id,
      :thing_name,
      :force,
      :expected_version,
      :status_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         reason_code: "ReasonCode",
    #         comment: "Comment",
    #         force: false,
    #       }
    #
    # @!attribute [rw] job_id
    #   The unique identifier you assigned to this job when it was created.
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   (Optional)A reason code string that explains why the job was
    #   canceled.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   An optional comment string describing why the job was canceled.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   (Optional) If `true` job executions with status "IN\_PROGRESS" and
    #   "QUEUED" are canceled, otherwise only job executions with status
    #   "QUEUED" are canceled. The default is `false`.
    #
    #   Canceling a job which is "IN\_PROGRESS", will cause a device which
    #   is executing the job to be unable to update the job execution
    #   status. Use caution and ensure that each device executing a job
    #   which is canceled is able to recover to a valid state.
    #   @return [Boolean]
    #
    class CancelJobRequest < Struct.new(
      :job_id,
      :reason_code,
      :comment,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_arn
    #   The job ARN.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique identifier you assigned to this job when it was created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A short text description of the job.
    #   @return [String]
    #
    class CancelJobResponse < Struct.new(
      :job_arn,
      :job_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a certificate.
    #
    # @!attribute [rw] certificate_arn
    #   The ARN of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The ID of the certificate. (The last part of the certificate ARN
    #   contains the certificate ID.)
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the certificate.
    #
    #   The status value REGISTER\_INACTIVE is deprecated and should not be
    #   used.
    #   @return [String]
    #
    # @!attribute [rw] certificate_mode
    #   The mode of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time the certificate was created.
    #   @return [Time]
    #
    class Certificate < Struct.new(
      :certificate_arn,
      :certificate_id,
      :status,
      :certificate_mode,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unable to verify the CA certificate used to sign the device
    # certificate you are attempting to register. This is happens when you
    # have registered more than one CA certificate that has the same subject
    # field and public key.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class CertificateConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a certificate.
    #
    # @!attribute [rw] certificate_arn
    #   The ARN of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The ID of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate_id
    #   The certificate ID of the CA certificate used to sign this
    #   certificate.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_pem
    #   The certificate data, in PEM format.
    #   @return [String]
    #
    # @!attribute [rw] owned_by
    #   The ID of the AWS account that owns the certificate.
    #   @return [String]
    #
    # @!attribute [rw] previous_owned_by
    #   The ID of the AWS account of the previous owner of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time the certificate was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time the certificate was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] customer_version
    #   The customer version of the certificate.
    #   @return [Integer]
    #
    # @!attribute [rw] transfer_data
    #   The transfer data.
    #   @return [Types::TransferData]
    #
    # @!attribute [rw] generation_id
    #   The generation ID of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] validity
    #   When the certificate is valid.
    #   @return [Types::CertificateValidity]
    #
    # @!attribute [rw] certificate_mode
    #   The mode of the certificate.
    #   @return [String]
    #
    class CertificateDescription < Struct.new(
      :certificate_arn,
      :certificate_id,
      :ca_certificate_id,
      :status,
      :certificate_pem,
      :owned_by,
      :previous_owned_by,
      :creation_date,
      :last_modified_date,
      :customer_version,
      :transfer_data,
      :generation_id,
      :validity,
      :certificate_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The certificate operation is not allowed.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class CertificateStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The certificate is invalid.
    #
    # @!attribute [rw] message
    #   Additional information about the exception.
    #   @return [String]
    #
    class CertificateValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # When the certificate is valid.
    #
    # @!attribute [rw] not_before
    #   The certificate is not valid before this date.
    #   @return [Time]
    #
    # @!attribute [rw] not_after
    #   The certificate is not valid after this date.
    #   @return [Time]
    #
    class CertificateValidity < Struct.new(
      :not_before,
      :not_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    class ClearDefaultAuthorizerRequest < Aws::EmptyStructure; end

    class ClearDefaultAuthorizerResponse < Aws::EmptyStructure; end

    # Describes an action that updates a CloudWatch alarm.
    #
    # @note When making an API call, you may pass CloudwatchAlarmAction
    #   data as a hash:
    #
    #       {
    #         role_arn: "AwsArn", # required
    #         alarm_name: "AlarmName", # required
    #         state_reason: "StateReason", # required
    #         state_value: "StateValue", # required
    #       }
    #
    # @!attribute [rw] role_arn
    #   The IAM role that allows access to the CloudWatch alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_name
    #   The CloudWatch alarm name.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason for the alarm change.
    #   @return [String]
    #
    # @!attribute [rw] state_value
    #   The value of the alarm state. Acceptable values are: OK, ALARM,
    #   INSUFFICIENT\_DATA.
    #   @return [String]
    #
    class CloudwatchAlarmAction < Struct.new(
      :role_arn,
      :alarm_name,
      :state_reason,
      :state_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an action that sends data to CloudWatch Logs.
    #
    # @note When making an API call, you may pass CloudwatchLogsAction
    #   data as a hash:
    #
    #       {
    #         role_arn: "AwsArn", # required
    #         log_group_name: "LogGroupName", # required
    #       }
    #
    # @!attribute [rw] role_arn
    #   The IAM role that allows access to the CloudWatch log.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The CloudWatch log group to which the action sends data.
    #   @return [String]
    #
    class CloudwatchLogsAction < Struct.new(
      :role_arn,
      :log_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an action that captures a CloudWatch metric.
    #
    # @note When making an API call, you may pass CloudwatchMetricAction
    #   data as a hash:
    #
    #       {
    #         role_arn: "AwsArn", # required
    #         metric_namespace: "String", # required
    #         metric_name: "String", # required
    #         metric_value: "String", # required
    #         metric_unit: "String", # required
    #         metric_timestamp: "String",
    #       }
    #
    # @!attribute [rw] role_arn
    #   The IAM role that allows access to the CloudWatch metric.
    #   @return [String]
    #
    # @!attribute [rw] metric_namespace
    #   The CloudWatch metric namespace name.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The CloudWatch metric name.
    #   @return [String]
    #
    # @!attribute [rw] metric_value
    #   The CloudWatch metric value.
    #   @return [String]
    #
    # @!attribute [rw] metric_unit
    #   The [metric unit][1] supported by CloudWatch.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#Unit
    #   @return [String]
    #
    # @!attribute [rw] metric_timestamp
    #   An optional [Unix timestamp][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#about_timestamp
    #   @return [String]
    #
    class CloudwatchMetricAction < Struct.new(
      :role_arn,
      :metric_namespace,
      :metric_name,
      :metric_value,
      :metric_unit,
      :metric_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the method to use when code signing a file.
    #
    # @note When making an API call, you may pass CodeSigning
    #   data as a hash:
    #
    #       {
    #         aws_signer_job_id: "SigningJobId",
    #         start_signing_job_parameter: {
    #           signing_profile_parameter: {
    #             certificate_arn: "CertificateArn",
    #             platform: "Platform",
    #             certificate_path_on_device: "CertificatePathOnDevice",
    #           },
    #           signing_profile_name: "SigningProfileName",
    #           destination: {
    #             s3_destination: {
    #               bucket: "S3Bucket",
    #               prefix: "Prefix",
    #             },
    #           },
    #         },
    #         custom_code_signing: {
    #           signature: {
    #             inline_document: "data",
    #           },
    #           certificate_chain: {
    #             certificate_name: "CertificateName",
    #             inline_document: "InlineDocument",
    #           },
    #           hash_algorithm: "HashAlgorithm",
    #           signature_algorithm: "SignatureAlgorithm",
    #         },
    #       }
    #
    # @!attribute [rw] aws_signer_job_id
    #   The ID of the AWSSignerJob which was created to sign the file.
    #   @return [String]
    #
    # @!attribute [rw] start_signing_job_parameter
    #   Describes the code-signing job.
    #   @return [Types::StartSigningJobParameter]
    #
    # @!attribute [rw] custom_code_signing
    #   A custom method for code signing a file.
    #   @return [Types::CustomCodeSigning]
    #
    class CodeSigning < Struct.new(
      :aws_signer_job_id,
      :start_signing_job_parameter,
      :custom_code_signing)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the certificate chain being used when code signing a file.
    #
    # @note When making an API call, you may pass CodeSigningCertificateChain
    #   data as a hash:
    #
    #       {
    #         certificate_name: "CertificateName",
    #         inline_document: "InlineDocument",
    #       }
    #
    # @!attribute [rw] certificate_name
    #   The name of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] inline_document
    #   A base64 encoded binary representation of the code signing
    #   certificate chain.
    #   @return [String]
    #
    class CodeSigningCertificateChain < Struct.new(
      :certificate_name,
      :inline_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the signature for a file.
    #
    # @note When making an API call, you may pass CodeSigningSignature
    #   data as a hash:
    #
    #       {
    #         inline_document: "data",
    #       }
    #
    # @!attribute [rw] inline_document
    #   A base64 encoded binary representation of the code signing
    #   signature.
    #   @return [String]
    #
    class CodeSigningSignature < Struct.new(
      :inline_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration.
    #
    # @note When making an API call, you may pass Configuration
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   True to enable the configuration.
    #   @return [Boolean]
    #
    class Configuration < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ConfirmTopicRuleDestinationRequest
    #   data as a hash:
    #
    #       {
    #         confirmation_token: "ConfirmationToken", # required
    #       }
    #
    # @!attribute [rw] confirmation_token
    #   The token used to confirm ownership or access to the topic rule
    #   confirmation URL.
    #   @return [String]
    #
    class ConfirmTopicRuleDestinationRequest < Struct.new(
      :confirmation_token)
      SENSITIVE = []
      include Aws::Structure
    end

    class ConfirmTopicRuleDestinationResponse < Aws::EmptyStructure; end

    # A conflicting resource update exception. This exception is thrown when
    # two pending updates cause a conflict.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class ConflictingResourceUpdateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAuditSuppressionRequest
    #   data as a hash:
    #
    #       {
    #         check_name: "AuditCheckName", # required
    #         resource_identifier: { # required
    #           device_certificate_id: "CertificateId",
    #           ca_certificate_id: "CertificateId",
    #           cognito_identity_pool_id: "CognitoIdentityPoolId",
    #           client_id: "ClientId",
    #           policy_version_identifier: {
    #             policy_name: "PolicyName",
    #             policy_version_id: "PolicyVersionId",
    #           },
    #           account: "AwsAccountId",
    #           iam_role_arn: "RoleArn",
    #           role_alias_arn: "RoleAliasArn",
    #         },
    #         expiration_date: Time.now,
    #         suppress_indefinitely: false,
    #         description: "AuditDescription",
    #         client_request_token: "ClientRequestToken", # required
    #       }
    #
    # @!attribute [rw] check_name
    #   An audit check name. Checks must be enabled for your account. (Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks,
    #   including those that are enabled or use
    #   `UpdateAccountAuditConfiguration` to select which checks are
    #   enabled.)
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   Information that identifies the noncompliant resource.
    #   @return [Types::ResourceIdentifier]
    #
    # @!attribute [rw] expiration_date
    #   The epoch timestamp in seconds at which this suppression expires.
    #   @return [Time]
    #
    # @!attribute [rw] suppress_indefinitely
    #   Indicates whether a suppression should exist indefinitely or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description of the audit suppression.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The epoch timestamp in seconds at which this suppression expires.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class CreateAuditSuppressionRequest < Struct.new(
      :check_name,
      :resource_identifier,
      :expiration_date,
      :suppress_indefinitely,
      :description,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    class CreateAuditSuppressionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateAuthorizerRequest
    #   data as a hash:
    #
    #       {
    #         authorizer_name: "AuthorizerName", # required
    #         authorizer_function_arn: "AuthorizerFunctionArn", # required
    #         token_key_name: "TokenKeyName",
    #         token_signing_public_keys: {
    #           "KeyName" => "KeyValue",
    #         },
    #         status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         signing_disabled: false,
    #       }
    #
    # @!attribute [rw] authorizer_name
    #   The authorizer name.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_function_arn
    #   The ARN of the authorizer's Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] token_key_name
    #   The name of the token key used to extract the token from the HTTP
    #   headers.
    #   @return [String]
    #
    # @!attribute [rw] token_signing_public_keys
    #   The public keys used to verify the digital signature returned by
    #   your custom authentication service.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of the create authorizer request.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage the custom authorizer.
    #
    #   <note markdown="1"> For URI Request parameters use format:
    #   ...key1=value1&amp;key2=value2...
    #
    #    For the CLI command-line parameter use format: &amp;&amp;tags
    #   "key1=value1&amp;key2=value2..."
    #
    #    For the cli-input-json file use format: "tags":
    #   "key1=value1&amp;key2=value2..."
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] signing_disabled
    #   Specifies whether AWS IoT validates the token signature in an
    #   authorization request.
    #   @return [Boolean]
    #
    class CreateAuthorizerRequest < Struct.new(
      :authorizer_name,
      :authorizer_function_arn,
      :token_key_name,
      :token_signing_public_keys,
      :status,
      :tags,
      :signing_disabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorizer_name
    #   The authorizer's name.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_arn
    #   The authorizer ARN.
    #   @return [String]
    #
    class CreateAuthorizerResponse < Struct.new(
      :authorizer_name,
      :authorizer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateBillingGroupRequest
    #   data as a hash:
    #
    #       {
    #         billing_group_name: "BillingGroupName", # required
    #         billing_group_properties: {
    #           billing_group_description: "BillingGroupDescription",
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] billing_group_name
    #   The name you wish to give to the billing group.
    #   @return [String]
    #
    # @!attribute [rw] billing_group_properties
    #   The properties of the billing group.
    #   @return [Types::BillingGroupProperties]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage the billing group.
    #   @return [Array<Types::Tag>]
    #
    class CreateBillingGroupRequest < Struct.new(
      :billing_group_name,
      :billing_group_properties,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_group_name
    #   The name you gave to the billing group.
    #   @return [String]
    #
    # @!attribute [rw] billing_group_arn
    #   The ARN of the billing group.
    #   @return [String]
    #
    # @!attribute [rw] billing_group_id
    #   The ID of the billing group.
    #   @return [String]
    #
    class CreateBillingGroupResponse < Struct.new(
      :billing_group_name,
      :billing_group_arn,
      :billing_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the CreateCertificateFromCsr operation.
    #
    # @note When making an API call, you may pass CreateCertificateFromCsrRequest
    #   data as a hash:
    #
    #       {
    #         certificate_signing_request: "CertificateSigningRequest", # required
    #         set_as_active: false,
    #       }
    #
    # @!attribute [rw] certificate_signing_request
    #   The certificate signing request (CSR).
    #   @return [String]
    #
    # @!attribute [rw] set_as_active
    #   Specifies whether the certificate is active.
    #   @return [Boolean]
    #
    class CreateCertificateFromCsrRequest < Struct.new(
      :certificate_signing_request,
      :set_as_active)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the CreateCertificateFromCsr operation.
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate. You can use the
    #   ARN as a principal for policy operations.
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The ID of the certificate. Certificate management operations only
    #   take a certificateId.
    #   @return [String]
    #
    # @!attribute [rw] certificate_pem
    #   The certificate data, in PEM format.
    #   @return [String]
    #
    class CreateCertificateFromCsrResponse < Struct.new(
      :certificate_arn,
      :certificate_id,
      :certificate_pem)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDimensionRequest
    #   data as a hash:
    #
    #       {
    #         name: "DimensionName", # required
    #         type: "TOPIC_FILTER", # required, accepts TOPIC_FILTER
    #         string_values: ["DimensionStringValue"], # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         client_request_token: "ClientRequestToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   A unique identifier for the dimension. Choose something that
    #   describes the type and value to make it easy to remember what it
    #   does.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specifies the type of dimension. Supported types: `TOPIC_FILTER.`
    #   @return [String]
    #
    # @!attribute [rw] string_values
    #   Specifies the value or list of values for the dimension. For
    #   `TOPIC_FILTER` dimensions, this is a pattern used to match the MQTT
    #   topic (for example, "admin/#").
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Metadata that can be used to manage the dimension.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_request_token
    #   Each dimension must have a unique client request token. If you try
    #   to create a new dimension with the same token as a dimension that
    #   already exists, an exception occurs. If you omit this value, AWS
    #   SDKs will automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class CreateDimensionRequest < Struct.new(
      :name,
      :type,
      :string_values,
      :tags,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A unique identifier for the dimension.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon resource name) of the created dimension.
    #   @return [String]
    #
    class CreateDimensionResponse < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDomainConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         domain_configuration_name: "DomainConfigurationName", # required
    #         domain_name: "DomainName",
    #         server_certificate_arns: ["AcmCertificateArn"],
    #         validation_certificate_arn: "AcmCertificateArn",
    #         authorizer_config: {
    #           default_authorizer_name: "AuthorizerName",
    #           allow_authorizer_override: false,
    #         },
    #         service_type: "DATA", # accepts DATA, CREDENTIAL_PROVIDER, JOBS
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] domain_configuration_name
    #   The name of the domain configuration. This value must be unique to a
    #   region.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] server_certificate_arns
    #   The ARNs of the certificates that AWS IoT passes to the device
    #   during the TLS handshake. Currently you can specify only one
    #   certificate ARN. This value is not required for AWS-managed domains.
    #   @return [Array<String>]
    #
    # @!attribute [rw] validation_certificate_arn
    #   The certificate used to validate the server certificate and prove
    #   domain name ownership. This certificate must be signed by a public
    #   certificate authority. This value is not required for AWS-managed
    #   domains.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_config
    #   An object that specifies the authorization service for a domain.
    #   @return [Types::AuthorizerConfig]
    #
    # @!attribute [rw] service_type
    #   The type of service delivered by the endpoint.
    #
    #   <note markdown="1"> AWS IoT Core currently supports only the `DATA` service type.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage the domain configuration.
    #
    #   <note markdown="1"> For URI Request parameters use format:
    #   ...key1=value1&amp;key2=value2...
    #
    #    For the CLI command-line parameter use format: &amp;&amp;tags
    #   "key1=value1&amp;key2=value2..."
    #
    #    For the cli-input-json file use format: "tags":
    #   "key1=value1&amp;key2=value2..."
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    class CreateDomainConfigurationRequest < Struct.new(
      :domain_configuration_name,
      :domain_name,
      :server_certificate_arns,
      :validation_certificate_arn,
      :authorizer_config,
      :service_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_configuration_name
    #   The name of the domain configuration.
    #   @return [String]
    #
    # @!attribute [rw] domain_configuration_arn
    #   The ARN of the domain configuration.
    #   @return [String]
    #
    class CreateDomainConfigurationResponse < Struct.new(
      :domain_configuration_name,
      :domain_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDynamicThingGroupRequest
    #   data as a hash:
    #
    #       {
    #         thing_group_name: "ThingGroupName", # required
    #         thing_group_properties: {
    #           thing_group_description: "ThingGroupDescription",
    #           attribute_payload: {
    #             attributes: {
    #               "AttributeName" => "AttributeValue",
    #             },
    #             merge: false,
    #           },
    #         },
    #         index_name: "IndexName",
    #         query_string: "QueryString", # required
    #         query_version: "QueryVersion",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] thing_group_name
    #   The dynamic thing group name to create.
    #   @return [String]
    #
    # @!attribute [rw] thing_group_properties
    #   The dynamic thing group properties.
    #   @return [Types::ThingGroupProperties]
    #
    # @!attribute [rw] index_name
    #   The dynamic thing group index name.
    #
    #   <note markdown="1"> Currently one index is supported: "AWS\_Things".
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The dynamic thing group search query string.
    #
    #   See [Query Syntax][1] for information about query string syntax.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot/latest/developerguide/query-syntax.html
    #   @return [String]
    #
    # @!attribute [rw] query_version
    #   The dynamic thing group query version.
    #
    #   <note markdown="1"> Currently one query version is supported: "2017-09-30". If not
    #   specified, the query version defaults to this value.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage the dynamic thing group.
    #   @return [Array<Types::Tag>]
    #
    class CreateDynamicThingGroupRequest < Struct.new(
      :thing_group_name,
      :thing_group_properties,
      :index_name,
      :query_string,
      :query_version,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] thing_group_name
    #   The dynamic thing group name.
    #   @return [String]
    #
    # @!attribute [rw] thing_group_arn
    #   The dynamic thing group ARN.
    #   @return [String]
    #
    # @!attribute [rw] thing_group_id
    #   The dynamic thing group ID.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The dynamic thing group index name.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The dynamic thing group search query string.
    #   @return [String]
    #
    # @!attribute [rw] query_version
    #   The dynamic thing group query version.
    #   @return [String]
    #
    class CreateDynamicThingGroupResponse < Struct.new(
      :thing_group_name,
      :thing_group_arn,
      :thing_group_id,
      :index_name,
      :query_string,
      :query_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         targets: ["TargetArn"], # required
    #         document_source: "JobDocumentSource",
    #         document: "JobDocument",
    #         description: "JobDescription",
    #         presigned_url_config: {
    #           role_arn: "RoleArn",
    #           expires_in_sec: 1,
    #         },
    #         target_selection: "CONTINUOUS", # accepts CONTINUOUS, SNAPSHOT
    #         job_executions_rollout_config: {
    #           maximum_per_minute: 1,
    #           exponential_rate: {
    #             base_rate_per_minute: 1, # required
    #             increment_factor: 1.0, # required
    #             rate_increase_criteria: { # required
    #               number_of_notified_things: 1,
    #               number_of_succeeded_things: 1,
    #             },
    #           },
    #         },
    #         abort_config: {
    #           criteria_list: [ # required
    #             {
    #               failure_type: "FAILED", # required, accepts FAILED, REJECTED, TIMED_OUT, ALL
    #               action: "CANCEL", # required, accepts CANCEL
    #               threshold_percentage: 1.0, # required
    #               min_number_of_executed_things: 1, # required
    #             },
    #           ],
    #         },
    #         timeout_config: {
    #           in_progress_timeout_in_minutes: 1,
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] job_id
    #   A job identifier which must be unique for your AWS account. We
    #   recommend using a UUID. Alpha-numeric characters, "-" and "\_"
    #   are valid for use here.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   A list of things and thing groups to which the job should be sent.
    #   @return [Array<String>]
    #
    # @!attribute [rw] document_source
    #   An S3 link to the job document.
    #   @return [String]
    #
    # @!attribute [rw] document
    #   The job document.
    #
    #   <note markdown="1"> If the job document resides in an S3 bucket, you must use a
    #   placeholder link when specifying the document.
    #
    #    The placeholder link is of the following form:
    #
    #    `$\{aws:iot:s3-presigned-url:https://s3.amazonaws.com/bucket/key\}`
    #
    #    where *bucket* is your bucket name and *key* is the object in the
    #   bucket to which you are linking.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A short text description of the job.
    #   @return [String]
    #
    # @!attribute [rw] presigned_url_config
    #   Configuration information for pre-signed S3 URLs.
    #   @return [Types::PresignedUrlConfig]
    #
    # @!attribute [rw] target_selection
    #   Specifies whether the job will continue to run (CONTINUOUS), or will
    #   be complete after all those things specified as targets have
    #   completed the job (SNAPSHOT). If continuous, the job may also be run
    #   on a thing when a change is detected in a target. For example, a job
    #   will run on a thing when the thing is added to a target group, even
    #   after the job was completed by all things originally in the group.
    #   @return [String]
    #
    # @!attribute [rw] job_executions_rollout_config
    #   Allows you to create a staged rollout of the job.
    #   @return [Types::JobExecutionsRolloutConfig]
    #
    # @!attribute [rw] abort_config
    #   Allows you to create criteria to abort a job.
    #   @return [Types::AbortConfig]
    #
    # @!attribute [rw] timeout_config
    #   Specifies the amount of time each device has to finish its execution
    #   of the job. The timer is started when the job execution status is
    #   set to `IN_PROGRESS`. If the job execution status is not set to
    #   another terminal state before the time expires, it will be
    #   automatically set to `TIMED_OUT`.
    #   @return [Types::TimeoutConfig]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage the job.
    #   @return [Array<Types::Tag>]
    #
    class CreateJobRequest < Struct.new(
      :job_id,
      :targets,
      :document_source,
      :document,
      :description,
      :presigned_url_config,
      :target_selection,
      :job_executions_rollout_config,
      :abort_config,
      :timeout_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_arn
    #   The job ARN.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique identifier you assigned to this job.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The job description.
    #   @return [String]
    #
    class CreateJobResponse < Struct.new(
      :job_arn,
      :job_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the CreateKeysAndCertificate operation.
    #
    # @note When making an API call, you may pass CreateKeysAndCertificateRequest
    #   data as a hash:
    #
    #       {
    #         set_as_active: false,
    #       }
    #
    # @!attribute [rw] set_as_active
    #   Specifies whether the certificate is active.
    #   @return [Boolean]
    #
    class CreateKeysAndCertificateRequest < Struct.new(
      :set_as_active)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output of the CreateKeysAndCertificate operation.
    #
    # @!attribute [rw] certificate_arn
    #   The ARN of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The ID of the certificate. AWS IoT issues a default subject name for
    #   the certificate (for example, AWS IoT Certificate).
    #   @return [String]
    #
    # @!attribute [rw] certificate_pem
    #   The certificate data, in PEM format.
    #   @return [String]
    #
    # @!attribute [rw] key_pair
    #   The generated key pair.
    #   @return [Types::KeyPair]
    #
    class CreateKeysAndCertificateResponse < Struct.new(
      :certificate_arn,
      :certificate_id,
      :certificate_pem,
      :key_pair)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMitigationActionRequest
    #   data as a hash:
    #
    #       {
    #         action_name: "MitigationActionName", # required
    #         role_arn: "RoleArn", # required
    #         action_params: { # required
    #           update_device_certificate_params: {
    #             action: "DEACTIVATE", # required, accepts DEACTIVATE
    #           },
    #           update_ca_certificate_params: {
    #             action: "DEACTIVATE", # required, accepts DEACTIVATE
    #           },
    #           add_things_to_thing_group_params: {
    #             thing_group_names: ["ThingGroupName"], # required
    #             override_dynamic_groups: false,
    #           },
    #           replace_default_policy_version_params: {
    #             template_name: "BLANK_POLICY", # required, accepts BLANK_POLICY
    #           },
    #           enable_io_t_logging_params: {
    #             role_arn_for_logging: "RoleArn", # required
    #             log_level: "DEBUG", # required, accepts DEBUG, INFO, ERROR, WARN, DISABLED
    #           },
    #           publish_finding_to_sns_params: {
    #             topic_arn: "SnsTopicArn", # required
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] action_name
    #   A friendly name for the action. Choose a friendly name that
    #   accurately describes the action (for example,
    #   `EnableLoggingAction`).
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that is used to apply the mitigation action.
    #   @return [String]
    #
    # @!attribute [rw] action_params
    #   Defines the type of action and the parameters for that action.
    #   @return [Types::MitigationActionParams]
    #
    # @!attribute [rw] tags
    #   Metadata that can be used to manage the mitigation action.
    #   @return [Array<Types::Tag>]
    #
    class CreateMitigationActionRequest < Struct.new(
      :action_name,
      :role_arn,
      :action_params,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_arn
    #   The ARN for the new mitigation action.
    #   @return [String]
    #
    # @!attribute [rw] action_id
    #   A unique identifier for the new mitigation action.
    #   @return [String]
    #
    class CreateMitigationActionResponse < Struct.new(
      :action_arn,
      :action_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateOTAUpdateRequest
    #   data as a hash:
    #
    #       {
    #         ota_update_id: "OTAUpdateId", # required
    #         description: "OTAUpdateDescription",
    #         targets: ["Target"], # required
    #         protocols: ["MQTT"], # accepts MQTT, HTTP
    #         target_selection: "CONTINUOUS", # accepts CONTINUOUS, SNAPSHOT
    #         aws_job_executions_rollout_config: {
    #           maximum_per_minute: 1,
    #           exponential_rate: {
    #             base_rate_per_minute: 1, # required
    #             increment_factor: 1.0, # required
    #             rate_increase_criteria: { # required
    #               number_of_notified_things: 1,
    #               number_of_succeeded_things: 1,
    #             },
    #           },
    #         },
    #         aws_job_presigned_url_config: {
    #           expires_in_sec: 1,
    #         },
    #         aws_job_abort_config: {
    #           abort_criteria_list: [ # required
    #             {
    #               failure_type: "FAILED", # required, accepts FAILED, REJECTED, TIMED_OUT, ALL
    #               action: "CANCEL", # required, accepts CANCEL
    #               threshold_percentage: 1.0, # required
    #               min_number_of_executed_things: 1, # required
    #             },
    #           ],
    #         },
    #         aws_job_timeout_config: {
    #           in_progress_timeout_in_minutes: 1,
    #         },
    #         files: [ # required
    #           {
    #             file_name: "FileName",
    #             file_version: "OTAUpdateFileVersion",
    #             file_location: {
    #               stream: {
    #                 stream_id: "StreamId",
    #                 file_id: 1,
    #               },
    #               s3_location: {
    #                 bucket: "S3Bucket",
    #                 key: "S3Key",
    #                 version: "S3Version",
    #               },
    #             },
    #             code_signing: {
    #               aws_signer_job_id: "SigningJobId",
    #               start_signing_job_parameter: {
    #                 signing_profile_parameter: {
    #                   certificate_arn: "CertificateArn",
    #                   platform: "Platform",
    #                   certificate_path_on_device: "CertificatePathOnDevice",
    #                 },
    #                 signing_profile_name: "SigningProfileName",
    #                 destination: {
    #                   s3_destination: {
    #                     bucket: "S3Bucket",
    #                     prefix: "Prefix",
    #                   },
    #                 },
    #               },
    #               custom_code_signing: {
    #                 signature: {
    #                   inline_document: "data",
    #                 },
    #                 certificate_chain: {
    #                   certificate_name: "CertificateName",
    #                   inline_document: "InlineDocument",
    #                 },
    #                 hash_algorithm: "HashAlgorithm",
    #                 signature_algorithm: "SignatureAlgorithm",
    #               },
    #             },
    #             attributes: {
    #               "AttributeKey" => "Value",
    #             },
    #           },
    #         ],
    #         role_arn: "RoleArn", # required
    #         additional_parameters: {
    #           "AttributeKey" => "Value",
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] ota_update_id
    #   The ID of the OTA update to be created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the OTA update.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The devices targeted to receive OTA updates.
    #   @return [Array<String>]
    #
    # @!attribute [rw] protocols
    #   The protocol used to transfer the OTA update image. Valid values are
    #   \[HTTP\], \[MQTT\], \[HTTP, MQTT\]. When both HTTP and MQTT are
    #   specified, the target device can choose the protocol.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_selection
    #   Specifies whether the update will continue to run (CONTINUOUS), or
    #   will be complete after all the things specified as targets have
    #   completed the update (SNAPSHOT). If continuous, the update may also
    #   be run on a thing when a change is detected in a target. For
    #   example, an update will run on a thing when the thing is added to a
    #   target group, even after the update was completed by all things
    #   originally in the group. Valid values: CONTINUOUS \| SNAPSHOT.
    #   @return [String]
    #
    # @!attribute [rw] aws_job_executions_rollout_config
    #   Configuration for the rollout of OTA updates.
    #   @return [Types::AwsJobExecutionsRolloutConfig]
    #
    # @!attribute [rw] aws_job_presigned_url_config
    #   Configuration information for pre-signed URLs.
    #   @return [Types::AwsJobPresignedUrlConfig]
    #
    # @!attribute [rw] aws_job_abort_config
    #   The criteria that determine when and how a job abort takes place.
    #   @return [Types::AwsJobAbortConfig]
    #
    # @!attribute [rw] aws_job_timeout_config
    #   Specifies the amount of time each device has to finish its execution
    #   of the job. A timer is started when the job execution status is set
    #   to `IN_PROGRESS`. If the job execution status is not set to another
    #   terminal state before the timer expires, it will be automatically
    #   set to `TIMED_OUT`.
    #   @return [Types::AwsJobTimeoutConfig]
    #
    # @!attribute [rw] files
    #   The files to be streamed by the OTA update.
    #   @return [Array<Types::OTAUpdateFile>]
    #
    # @!attribute [rw] role_arn
    #   The IAM role that grants AWS IoT access to the Amazon S3, AWS IoT
    #   jobs and AWS Code Signing resources to create an OTA update job.
    #   @return [String]
    #
    # @!attribute [rw] additional_parameters
    #   A list of additional OTA update parameters which are name-value
    #   pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage updates.
    #   @return [Array<Types::Tag>]
    #
    class CreateOTAUpdateRequest < Struct.new(
      :ota_update_id,
      :description,
      :targets,
      :protocols,
      :target_selection,
      :aws_job_executions_rollout_config,
      :aws_job_presigned_url_config,
      :aws_job_abort_config,
      :aws_job_timeout_config,
      :files,
      :role_arn,
      :additional_parameters,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ota_update_id
    #   The OTA update ID.
    #   @return [String]
    #
    # @!attribute [rw] aws_iot_job_id
    #   The AWS IoT job ID associated with the OTA update.
    #   @return [String]
    #
    # @!attribute [rw] ota_update_arn
    #   The OTA update ARN.
    #   @return [String]
    #
    # @!attribute [rw] aws_iot_job_arn
    #   The AWS IoT job ARN associated with the OTA update.
    #   @return [String]
    #
    # @!attribute [rw] ota_update_status
    #   The OTA update status.
    #   @return [String]
    #
    class CreateOTAUpdateResponse < Struct.new(
      :ota_update_id,
      :aws_iot_job_id,
      :ota_update_arn,
      :aws_iot_job_arn,
      :ota_update_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the CreatePolicy operation.
    #
    # @note When making an API call, you may pass CreatePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "PolicyName", # required
    #         policy_document: "PolicyDocument", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] policy_name
    #   The policy name.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The JSON document that describes the policy. **policyDocument** must
    #   have a minimum length of 1, with a maximum length of 2048, excluding
    #   whitespace.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage the policy.
    #
    #   <note markdown="1"> For URI Request parameters use format:
    #   ...key1=value1&amp;key2=value2...
    #
    #    For the CLI command-line parameter use format: &amp;&amp;tags
    #   "key1=value1&amp;key2=value2..."
    #
    #    For the cli-input-json file use format: "tags":
    #   "key1=value1&amp;key2=value2..."
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    class CreatePolicyRequest < Struct.new(
      :policy_name,
      :policy_document,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the CreatePolicy operation.
    #
    # @!attribute [rw] policy_name
    #   The policy name.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The policy ARN.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The JSON document that describes the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_version_id
    #   The policy version ID.
    #   @return [String]
    #
    class CreatePolicyResponse < Struct.new(
      :policy_name,
      :policy_arn,
      :policy_document,
      :policy_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the CreatePolicyVersion operation.
    #
    # @note When making an API call, you may pass CreatePolicyVersionRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "PolicyName", # required
    #         policy_document: "PolicyDocument", # required
    #         set_as_default: false,
    #       }
    #
    # @!attribute [rw] policy_name
    #   The policy name.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The JSON document that describes the policy. Minimum length of 1.
    #   Maximum length of 2048, excluding whitespace.
    #   @return [String]
    #
    # @!attribute [rw] set_as_default
    #   Specifies whether the policy version is set as the default. When
    #   this parameter is true, the new policy version becomes the operative
    #   version (that is, the version that is in effect for the certificates
    #   to which the policy is attached).
    #   @return [Boolean]
    #
    class CreatePolicyVersionRequest < Struct.new(
      :policy_name,
      :policy_document,
      :set_as_default)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output of the CreatePolicyVersion operation.
    #
    # @!attribute [rw] policy_arn
    #   The policy ARN.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The JSON document that describes the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_version_id
    #   The policy version ID.
    #   @return [String]
    #
    # @!attribute [rw] is_default_version
    #   Specifies whether the policy version is the default.
    #   @return [Boolean]
    #
    class CreatePolicyVersionResponse < Struct.new(
      :policy_arn,
      :policy_document,
      :policy_version_id,
      :is_default_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateProvisioningClaimRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "TemplateName", # required
    #       }
    #
    # @!attribute [rw] template_name
    #   The name of the provisioning template to use.
    #   @return [String]
    #
    class CreateProvisioningClaimRequest < Struct.new(
      :template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_id
    #   The ID of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_pem
    #   The provisioning claim certificate.
    #   @return [String]
    #
    # @!attribute [rw] key_pair
    #   The provisioning claim key pair.
    #   @return [Types::KeyPair]
    #
    # @!attribute [rw] expiration
    #   The provisioning claim expiration time.
    #   @return [Time]
    #
    class CreateProvisioningClaimResponse < Struct.new(
      :certificate_id,
      :certificate_pem,
      :key_pair,
      :expiration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateProvisioningTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "TemplateName", # required
    #         description: "TemplateDescription",
    #         template_body: "TemplateBody", # required
    #         enabled: false,
    #         provisioning_role_arn: "RoleArn", # required
    #         pre_provisioning_hook: {
    #           payload_version: "PayloadVersion",
    #           target_arn: "TargetArn", # required
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] template_name
    #   The name of the fleet provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the fleet provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   The JSON formatted contents of the fleet provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   True to enable the fleet provisioning template, otherwise false.
    #   @return [Boolean]
    #
    # @!attribute [rw] provisioning_role_arn
    #   The role ARN for the role associated with the fleet provisioning
    #   template. This IoT role grants permission to provision a device.
    #   @return [String]
    #
    # @!attribute [rw] pre_provisioning_hook
    #   Creates a pre-provisioning hook template.
    #   @return [Types::ProvisioningHook]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage the fleet provisioning
    #   template.
    #
    #   <note markdown="1"> For URI Request parameters use format:
    #   ...key1=value1&amp;key2=value2...
    #
    #    For the CLI command-line parameter use format: &amp;&amp;tags
    #   "key1=value1&amp;key2=value2..."
    #
    #    For the cli-input-json file use format: "tags":
    #   "key1=value1&amp;key2=value2..."
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    class CreateProvisioningTemplateRequest < Struct.new(
      :template_name,
      :description,
      :template_body,
      :enabled,
      :provisioning_role_arn,
      :pre_provisioning_hook,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_arn
    #   The ARN that identifies the provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the fleet provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] default_version_id
    #   The default version of the fleet provisioning template.
    #   @return [Integer]
    #
    class CreateProvisioningTemplateResponse < Struct.new(
      :template_arn,
      :template_name,
      :default_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateProvisioningTemplateVersionRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "TemplateName", # required
    #         template_body: "TemplateBody", # required
    #         set_as_default: false,
    #       }
    #
    # @!attribute [rw] template_name
    #   The name of the fleet provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   The JSON formatted contents of the fleet provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] set_as_default
    #   Sets a fleet provision template version as the default version.
    #   @return [Boolean]
    #
    class CreateProvisioningTemplateVersionRequest < Struct.new(
      :template_name,
      :template_body,
      :set_as_default)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_arn
    #   The ARN that identifies the provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the fleet provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version of the fleet provisioning template.
    #   @return [Integer]
    #
    # @!attribute [rw] is_default_version
    #   True if the fleet provisioning template version is the default
    #   version, otherwise false.
    #   @return [Boolean]
    #
    class CreateProvisioningTemplateVersionResponse < Struct.new(
      :template_arn,
      :template_name,
      :version_id,
      :is_default_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRoleAliasRequest
    #   data as a hash:
    #
    #       {
    #         role_alias: "RoleAlias", # required
    #         role_arn: "RoleArn", # required
    #         credential_duration_seconds: 1,
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] role_alias
    #   The role alias that points to a role ARN. This allows you to change
    #   the role without having to update the device.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The role ARN.
    #   @return [String]
    #
    # @!attribute [rw] credential_duration_seconds
    #   How long (in seconds) the credentials will be valid.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage the role alias.
    #
    #   <note markdown="1"> For URI Request parameters use format:
    #   ...key1=value1&amp;key2=value2...
    #
    #    For the CLI command-line parameter use format: &amp;&amp;tags
    #   "key1=value1&amp;key2=value2..."
    #
    #    For the cli-input-json file use format: "tags":
    #   "key1=value1&amp;key2=value2..."
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    class CreateRoleAliasRequest < Struct.new(
      :role_alias,
      :role_arn,
      :credential_duration_seconds,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_alias
    #   The role alias.
    #   @return [String]
    #
    # @!attribute [rw] role_alias_arn
    #   The role alias ARN.
    #   @return [String]
    #
    class CreateRoleAliasResponse < Struct.new(
      :role_alias,
      :role_alias_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateScheduledAuditRequest
    #   data as a hash:
    #
    #       {
    #         frequency: "DAILY", # required, accepts DAILY, WEEKLY, BIWEEKLY, MONTHLY
    #         day_of_month: "DayOfMonth",
    #         day_of_week: "SUN", # accepts SUN, MON, TUE, WED, THU, FRI, SAT
    #         target_check_names: ["AuditCheckName"], # required
    #         scheduled_audit_name: "ScheduledAuditName", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] frequency
    #   How often the scheduled audit takes place. Can be one of "DAILY",
    #   "WEEKLY", "BIWEEKLY" or "MONTHLY". The start time of each
    #   audit is determined by the system.
    #   @return [String]
    #
    # @!attribute [rw] day_of_month
    #   The day of the month on which the scheduled audit takes place. Can
    #   be "1" through "31" or "LAST". This field is required if the
    #   "frequency" parameter is set to "MONTHLY". If days 29-31 are
    #   specified, and the month does not have that many days, the audit
    #   takes place on the "LAST" day of the month.
    #   @return [String]
    #
    # @!attribute [rw] day_of_week
    #   The day of the week on which the scheduled audit takes place. Can be
    #   one of "SUN", "MON", "TUE", "WED", "THU", "FRI", or
    #   "SAT". This field is required if the "frequency" parameter is
    #   set to "WEEKLY" or "BIWEEKLY".
    #   @return [String]
    #
    # @!attribute [rw] target_check_names
    #   Which checks are performed during the scheduled audit. Checks must
    #   be enabled for your account. (Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks,
    #   including those that are enabled or use
    #   `UpdateAccountAuditConfiguration` to select which checks are
    #   enabled.)
    #   @return [Array<String>]
    #
    # @!attribute [rw] scheduled_audit_name
    #   The name you want to give to the scheduled audit. (Max. 128 chars)
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata that can be used to manage the scheduled audit.
    #   @return [Array<Types::Tag>]
    #
    class CreateScheduledAuditRequest < Struct.new(
      :frequency,
      :day_of_month,
      :day_of_week,
      :target_check_names,
      :scheduled_audit_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_audit_arn
    #   The ARN of the scheduled audit.
    #   @return [String]
    #
    class CreateScheduledAuditResponse < Struct.new(
      :scheduled_audit_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSecurityProfileRequest
    #   data as a hash:
    #
    #       {
    #         security_profile_name: "SecurityProfileName", # required
    #         security_profile_description: "SecurityProfileDescription",
    #         behaviors: [
    #           {
    #             name: "BehaviorName", # required
    #             metric: "BehaviorMetric",
    #             metric_dimension: {
    #               dimension_name: "DimensionName", # required
    #               operator: "IN", # accepts IN, NOT_IN
    #             },
    #             criteria: {
    #               comparison_operator: "less-than", # accepts less-than, less-than-equals, greater-than, greater-than-equals, in-cidr-set, not-in-cidr-set, in-port-set, not-in-port-set
    #               value: {
    #                 count: 1,
    #                 cidrs: ["Cidr"],
    #                 ports: [1],
    #               },
    #               duration_seconds: 1,
    #               consecutive_datapoints_to_alarm: 1,
    #               consecutive_datapoints_to_clear: 1,
    #               statistical_threshold: {
    #                 statistic: "EvaluationStatistic",
    #               },
    #             },
    #           },
    #         ],
    #         alert_targets: {
    #           "SNS" => {
    #             alert_target_arn: "AlertTargetArn", # required
    #             role_arn: "RoleArn", # required
    #           },
    #         },
    #         additional_metrics_to_retain: ["BehaviorMetric"],
    #         additional_metrics_to_retain_v2: [
    #           {
    #             metric: "BehaviorMetric", # required
    #             metric_dimension: {
    #               dimension_name: "DimensionName", # required
    #               operator: "IN", # accepts IN, NOT_IN
    #             },
    #           },
    #         ],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] security_profile_name
    #   The name you are giving to the security profile.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_description
    #   A description of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] behaviors
    #   Specifies the behaviors that, when violated by a device (thing),
    #   cause an alert.
    #   @return [Array<Types::Behavior>]
    #
    # @!attribute [rw] alert_targets
    #   Specifies the destinations to which alerts are sent. (Alerts are
    #   always sent to the console.) Alerts are generated when a device
    #   (thing) violates a behavior.
    #   @return [Hash<String,Types::AlertTarget>]
    #
    # @!attribute [rw] additional_metrics_to_retain
    #   *Please use CreateSecurityProfileRequest$additionalMetricsToRetainV2
    #   instead.*
    #
    #   A list of metrics whose data is retained (stored). By default, data
    #   is retained for any metric used in the profile's `behaviors`, but
    #   it is also retained for any metric specified here.
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_metrics_to_retain_v2
    #   A list of metrics whose data is retained (stored). By default, data
    #   is retained for any metric used in the profile's `behaviors`, but
    #   it is also retained for any metric specified here.
    #   @return [Array<Types::MetricToRetain>]
    #
    # @!attribute [rw] tags
    #   Metadata that can be used to manage the security profile.
    #   @return [Array<Types::Tag>]
    #
    class CreateSecurityProfileRequest < Struct.new(
      :security_profile_name,
      :security_profile_description,
      :behaviors,
      :alert_targets,
      :additional_metrics_to_retain,
      :additional_metrics_to_retain_v2,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_profile_name
    #   The name you gave to the security profile.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_arn
    #   The ARN of the security profile.
    #   @return [String]
    #
    class CreateSecurityProfileResponse < Struct.new(
      :security_profile_name,
      :security_profile_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateStreamRequest
    #   data as a hash:
    #
    #       {
    #         stream_id: "StreamId", # required
    #         description: "StreamDescription",
    #         files: [ # required
    #           {
    #             file_id: 1,
    #             s3_location: {
    #               bucket: "S3Bucket",
    #               key: "S3Key",
    #               version: "S3Version",
    #             },
    #           },
    #         ],
    #         role_arn: "RoleArn", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] stream_id
    #   The stream ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the stream.
    #   @return [String]
    #
    # @!attribute [rw] files
    #   The files to stream.
    #   @return [Array<Types::StreamFile>]
    #
    # @!attribute [rw] role_arn
    #   An IAM role that allows the IoT service principal assumes to access
    #   your S3 files.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage streams.
    #   @return [Array<Types::Tag>]
    #
    class CreateStreamRequest < Struct.new(
      :stream_id,
      :description,
      :files,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_id
    #   The stream ID.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The stream ARN.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the stream.
    #   @return [String]
    #
    # @!attribute [rw] stream_version
    #   The version of the stream.
    #   @return [Integer]
    #
    class CreateStreamResponse < Struct.new(
      :stream_id,
      :stream_arn,
      :description,
      :stream_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateThingGroupRequest
    #   data as a hash:
    #
    #       {
    #         thing_group_name: "ThingGroupName", # required
    #         parent_group_name: "ThingGroupName",
    #         thing_group_properties: {
    #           thing_group_description: "ThingGroupDescription",
    #           attribute_payload: {
    #             attributes: {
    #               "AttributeName" => "AttributeValue",
    #             },
    #             merge: false,
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] thing_group_name
    #   The thing group name to create.
    #   @return [String]
    #
    # @!attribute [rw] parent_group_name
    #   The name of the parent thing group.
    #   @return [String]
    #
    # @!attribute [rw] thing_group_properties
    #   The thing group properties.
    #   @return [Types::ThingGroupProperties]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage the thing group.
    #   @return [Array<Types::Tag>]
    #
    class CreateThingGroupRequest < Struct.new(
      :thing_group_name,
      :parent_group_name,
      :thing_group_properties,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] thing_group_name
    #   The thing group name.
    #   @return [String]
    #
    # @!attribute [rw] thing_group_arn
    #   The thing group ARN.
    #   @return [String]
    #
    # @!attribute [rw] thing_group_id
    #   The thing group ID.
    #   @return [String]
    #
    class CreateThingGroupResponse < Struct.new(
      :thing_group_name,
      :thing_group_arn,
      :thing_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the CreateThing operation.
    #
    # @note When making an API call, you may pass CreateThingRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #         thing_type_name: "ThingTypeName",
    #         attribute_payload: {
    #           attributes: {
    #             "AttributeName" => "AttributeValue",
    #           },
    #           merge: false,
    #         },
    #         billing_group_name: "BillingGroupName",
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing to create.
    #
    #   You can't change a thing's name after you create it. To change a
    #   thing's name, you must create a new thing, give it the new name,
    #   and then delete the old thing.
    #   @return [String]
    #
    # @!attribute [rw] thing_type_name
    #   The name of the thing type associated with the new thing.
    #   @return [String]
    #
    # @!attribute [rw] attribute_payload
    #   The attribute payload, which consists of up to three name/value
    #   pairs in a JSON document. For example:
    #
    #   `\{"attributes":\{"string1":"string2"\}\}`
    #   @return [Types::AttributePayload]
    #
    # @!attribute [rw] billing_group_name
    #   The name of the billing group the thing will be added to.
    #   @return [String]
    #
    class CreateThingRequest < Struct.new(
      :thing_name,
      :thing_type_name,
      :attribute_payload,
      :billing_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output of the CreateThing operation.
    #
    # @!attribute [rw] thing_name
    #   The name of the new thing.
    #   @return [String]
    #
    # @!attribute [rw] thing_arn
    #   The ARN of the new thing.
    #   @return [String]
    #
    # @!attribute [rw] thing_id
    #   The thing ID.
    #   @return [String]
    #
    class CreateThingResponse < Struct.new(
      :thing_name,
      :thing_arn,
      :thing_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the CreateThingType operation.
    #
    # @note When making an API call, you may pass CreateThingTypeRequest
    #   data as a hash:
    #
    #       {
    #         thing_type_name: "ThingTypeName", # required
    #         thing_type_properties: {
    #           thing_type_description: "ThingTypeDescription",
    #           searchable_attributes: ["AttributeName"],
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] thing_type_name
    #   The name of the thing type.
    #   @return [String]
    #
    # @!attribute [rw] thing_type_properties
    #   The ThingTypeProperties for the thing type to create. It contains
    #   information about the new thing type including a description, and a
    #   list of searchable thing attribute names.
    #   @return [Types::ThingTypeProperties]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage the thing type.
    #   @return [Array<Types::Tag>]
    #
    class CreateThingTypeRequest < Struct.new(
      :thing_type_name,
      :thing_type_properties,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output of the CreateThingType operation.
    #
    # @!attribute [rw] thing_type_name
    #   The name of the thing type.
    #   @return [String]
    #
    # @!attribute [rw] thing_type_arn
    #   The Amazon Resource Name (ARN) of the thing type.
    #   @return [String]
    #
    # @!attribute [rw] thing_type_id
    #   The thing type ID.
    #   @return [String]
    #
    class CreateThingTypeResponse < Struct.new(
      :thing_type_name,
      :thing_type_arn,
      :thing_type_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTopicRuleDestinationRequest
    #   data as a hash:
    #
    #       {
    #         destination_configuration: { # required
    #           http_url_configuration: {
    #             confirmation_url: "Url", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] destination_configuration
    #   The topic rule destination configuration.
    #   @return [Types::TopicRuleDestinationConfiguration]
    #
    class CreateTopicRuleDestinationRequest < Struct.new(
      :destination_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] topic_rule_destination
    #   The topic rule destination.
    #   @return [Types::TopicRuleDestination]
    #
    class CreateTopicRuleDestinationResponse < Struct.new(
      :topic_rule_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the CreateTopicRule operation.
    #
    # @note When making an API call, you may pass CreateTopicRuleRequest
    #   data as a hash:
    #
    #       {
    #         rule_name: "RuleName", # required
    #         topic_rule_payload: { # required
    #           sql: "SQL", # required
    #           description: "Description",
    #           actions: [ # required
    #             {
    #               dynamo_db: {
    #                 table_name: "TableName", # required
    #                 role_arn: "AwsArn", # required
    #                 operation: "DynamoOperation",
    #                 hash_key_field: "HashKeyField", # required
    #                 hash_key_value: "HashKeyValue", # required
    #                 hash_key_type: "STRING", # accepts STRING, NUMBER
    #                 range_key_field: "RangeKeyField",
    #                 range_key_value: "RangeKeyValue",
    #                 range_key_type: "STRING", # accepts STRING, NUMBER
    #                 payload_field: "PayloadField",
    #               },
    #               dynamo_d_bv_2: {
    #                 role_arn: "AwsArn", # required
    #                 put_item: { # required
    #                   table_name: "TableName", # required
    #                 },
    #               },
    #               lambda: {
    #                 function_arn: "FunctionArn", # required
    #               },
    #               sns: {
    #                 target_arn: "AwsArn", # required
    #                 role_arn: "AwsArn", # required
    #                 message_format: "RAW", # accepts RAW, JSON
    #               },
    #               sqs: {
    #                 role_arn: "AwsArn", # required
    #                 queue_url: "QueueUrl", # required
    #                 use_base_64: false,
    #               },
    #               kinesis: {
    #                 role_arn: "AwsArn", # required
    #                 stream_name: "StreamName", # required
    #                 partition_key: "PartitionKey",
    #               },
    #               republish: {
    #                 role_arn: "AwsArn", # required
    #                 topic: "TopicPattern", # required
    #                 qos: 1,
    #               },
    #               s3: {
    #                 role_arn: "AwsArn", # required
    #                 bucket_name: "BucketName", # required
    #                 key: "Key", # required
    #                 canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write
    #               },
    #               firehose: {
    #                 role_arn: "AwsArn", # required
    #                 delivery_stream_name: "DeliveryStreamName", # required
    #                 separator: "FirehoseSeparator",
    #               },
    #               cloudwatch_metric: {
    #                 role_arn: "AwsArn", # required
    #                 metric_namespace: "String", # required
    #                 metric_name: "String", # required
    #                 metric_value: "String", # required
    #                 metric_unit: "String", # required
    #                 metric_timestamp: "String",
    #               },
    #               cloudwatch_alarm: {
    #                 role_arn: "AwsArn", # required
    #                 alarm_name: "AlarmName", # required
    #                 state_reason: "StateReason", # required
    #                 state_value: "StateValue", # required
    #               },
    #               cloudwatch_logs: {
    #                 role_arn: "AwsArn", # required
    #                 log_group_name: "LogGroupName", # required
    #               },
    #               elasticsearch: {
    #                 role_arn: "AwsArn", # required
    #                 endpoint: "ElasticsearchEndpoint", # required
    #                 index: "ElasticsearchIndex", # required
    #                 type: "ElasticsearchType", # required
    #                 id: "ElasticsearchId", # required
    #               },
    #               salesforce: {
    #                 token: "SalesforceToken", # required
    #                 url: "SalesforceEndpoint", # required
    #               },
    #               iot_analytics: {
    #                 channel_arn: "AwsArn",
    #                 channel_name: "ChannelName",
    #                 role_arn: "AwsArn",
    #               },
    #               iot_events: {
    #                 input_name: "InputName", # required
    #                 message_id: "MessageId",
    #                 role_arn: "AwsArn", # required
    #               },
    #               iot_site_wise: {
    #                 put_asset_property_value_entries: [ # required
    #                   {
    #                     entry_id: "AssetPropertyEntryId",
    #                     asset_id: "AssetId",
    #                     property_id: "AssetPropertyId",
    #                     property_alias: "AssetPropertyAlias",
    #                     property_values: [ # required
    #                       {
    #                         value: { # required
    #                           string_value: "AssetPropertyStringValue",
    #                           integer_value: "AssetPropertyIntegerValue",
    #                           double_value: "AssetPropertyDoubleValue",
    #                           boolean_value: "AssetPropertyBooleanValue",
    #                         },
    #                         timestamp: { # required
    #                           time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                           offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                         },
    #                         quality: "AssetPropertyQuality",
    #                       },
    #                     ],
    #                   },
    #                 ],
    #                 role_arn: "AwsArn", # required
    #               },
    #               step_functions: {
    #                 execution_name_prefix: "ExecutionNamePrefix",
    #                 state_machine_name: "StateMachineName", # required
    #                 role_arn: "AwsArn", # required
    #               },
    #               timestream: {
    #                 role_arn: "AwsArn", # required
    #                 database_name: "TimestreamDatabaseName", # required
    #                 table_name: "TimestreamTableName", # required
    #                 dimensions: [ # required
    #                   {
    #                     name: "TimestreamDimensionName", # required
    #                     value: "TimestreamDimensionValue", # required
    #                   },
    #                 ],
    #                 timestamp: {
    #                   value: "TimestreamTimestampValue", # required
    #                   unit: "TimestreamTimestampUnit", # required
    #                 },
    #               },
    #               http: {
    #                 url: "Url", # required
    #                 confirmation_url: "Url",
    #                 headers: [
    #                   {
    #                     key: "HeaderKey", # required
    #                     value: "HeaderValue", # required
    #                   },
    #                 ],
    #                 auth: {
    #                   sigv4: {
    #                     signing_region: "SigningRegion", # required
    #                     service_name: "ServiceName", # required
    #                     role_arn: "AwsArn", # required
    #                   },
    #                 },
    #               },
    #             },
    #           ],
    #           rule_disabled: false,
    #           aws_iot_sql_version: "AwsIotSqlVersion",
    #           error_action: {
    #             dynamo_db: {
    #               table_name: "TableName", # required
    #               role_arn: "AwsArn", # required
    #               operation: "DynamoOperation",
    #               hash_key_field: "HashKeyField", # required
    #               hash_key_value: "HashKeyValue", # required
    #               hash_key_type: "STRING", # accepts STRING, NUMBER
    #               range_key_field: "RangeKeyField",
    #               range_key_value: "RangeKeyValue",
    #               range_key_type: "STRING", # accepts STRING, NUMBER
    #               payload_field: "PayloadField",
    #             },
    #             dynamo_d_bv_2: {
    #               role_arn: "AwsArn", # required
    #               put_item: { # required
    #                 table_name: "TableName", # required
    #               },
    #             },
    #             lambda: {
    #               function_arn: "FunctionArn", # required
    #             },
    #             sns: {
    #               target_arn: "AwsArn", # required
    #               role_arn: "AwsArn", # required
    #               message_format: "RAW", # accepts RAW, JSON
    #             },
    #             sqs: {
    #               role_arn: "AwsArn", # required
    #               queue_url: "QueueUrl", # required
    #               use_base_64: false,
    #             },
    #             kinesis: {
    #               role_arn: "AwsArn", # required
    #               stream_name: "StreamName", # required
    #               partition_key: "PartitionKey",
    #             },
    #             republish: {
    #               role_arn: "AwsArn", # required
    #               topic: "TopicPattern", # required
    #               qos: 1,
    #             },
    #             s3: {
    #               role_arn: "AwsArn", # required
    #               bucket_name: "BucketName", # required
    #               key: "Key", # required
    #               canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write
    #             },
    #             firehose: {
    #               role_arn: "AwsArn", # required
    #               delivery_stream_name: "DeliveryStreamName", # required
    #               separator: "FirehoseSeparator",
    #             },
    #             cloudwatch_metric: {
    #               role_arn: "AwsArn", # required
    #               metric_namespace: "String", # required
    #               metric_name: "String", # required
    #               metric_value: "String", # required
    #               metric_unit: "String", # required
    #               metric_timestamp: "String",
    #             },
    #             cloudwatch_alarm: {
    #               role_arn: "AwsArn", # required
    #               alarm_name: "AlarmName", # required
    #               state_reason: "StateReason", # required
    #               state_value: "StateValue", # required
    #             },
    #             cloudwatch_logs: {
    #               role_arn: "AwsArn", # required
    #               log_group_name: "LogGroupName", # required
    #             },
    #             elasticsearch: {
    #               role_arn: "AwsArn", # required
    #               endpoint: "ElasticsearchEndpoint", # required
    #               index: "ElasticsearchIndex", # required
    #               type: "ElasticsearchType", # required
    #               id: "ElasticsearchId", # required
    #             },
    #             salesforce: {
    #               token: "SalesforceToken", # required
    #               url: "SalesforceEndpoint", # required
    #             },
    #             iot_analytics: {
    #               channel_arn: "AwsArn",
    #               channel_name: "ChannelName",
    #               role_arn: "AwsArn",
    #             },
    #             iot_events: {
    #               input_name: "InputName", # required
    #               message_id: "MessageId",
    #               role_arn: "AwsArn", # required
    #             },
    #             iot_site_wise: {
    #               put_asset_property_value_entries: [ # required
    #                 {
    #                   entry_id: "AssetPropertyEntryId",
    #                   asset_id: "AssetId",
    #                   property_id: "AssetPropertyId",
    #                   property_alias: "AssetPropertyAlias",
    #                   property_values: [ # required
    #                     {
    #                       value: { # required
    #                         string_value: "AssetPropertyStringValue",
    #                         integer_value: "AssetPropertyIntegerValue",
    #                         double_value: "AssetPropertyDoubleValue",
    #                         boolean_value: "AssetPropertyBooleanValue",
    #                       },
    #                       timestamp: { # required
    #                         time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                         offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                       },
    #                       quality: "AssetPropertyQuality",
    #                     },
    #                   ],
    #                 },
    #               ],
    #               role_arn: "AwsArn", # required
    #             },
    #             step_functions: {
    #               execution_name_prefix: "ExecutionNamePrefix",
    #               state_machine_name: "StateMachineName", # required
    #               role_arn: "AwsArn", # required
    #             },
    #             timestream: {
    #               role_arn: "AwsArn", # required
    #               database_name: "TimestreamDatabaseName", # required
    #               table_name: "TimestreamTableName", # required
    #               dimensions: [ # required
    #                 {
    #                   name: "TimestreamDimensionName", # required
    #                   value: "TimestreamDimensionValue", # required
    #                 },
    #               ],
    #               timestamp: {
    #                 value: "TimestreamTimestampValue", # required
    #                 unit: "TimestreamTimestampUnit", # required
    #               },
    #             },
    #             http: {
    #               url: "Url", # required
    #               confirmation_url: "Url",
    #               headers: [
    #                 {
    #                   key: "HeaderKey", # required
    #                   value: "HeaderValue", # required
    #                 },
    #               ],
    #               auth: {
    #                 sigv4: {
    #                   signing_region: "SigningRegion", # required
    #                   service_name: "ServiceName", # required
    #                   role_arn: "AwsArn", # required
    #                 },
    #               },
    #             },
    #           },
    #         },
    #         tags: "String",
    #       }
    #
    # @!attribute [rw] rule_name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] topic_rule_payload
    #   The rule payload.
    #   @return [Types::TopicRulePayload]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage the topic rule.
    #
    #   <note markdown="1"> For URI Request parameters use format:
    #   ...key1=value1&amp;key2=value2...
    #
    #    For the CLI command-line parameter use format: --tags
    #   "key1=value1&amp;key2=value2..."
    #
    #    For the cli-input-json file use format: "tags":
    #   "key1=value1&amp;key2=value2..."
    #
    #    </note>
    #   @return [String]
    #
    class CreateTopicRuleRequest < Struct.new(
      :rule_name,
      :topic_rule_payload,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a custom method used to code sign a file.
    #
    # @note When making an API call, you may pass CustomCodeSigning
    #   data as a hash:
    #
    #       {
    #         signature: {
    #           inline_document: "data",
    #         },
    #         certificate_chain: {
    #           certificate_name: "CertificateName",
    #           inline_document: "InlineDocument",
    #         },
    #         hash_algorithm: "HashAlgorithm",
    #         signature_algorithm: "SignatureAlgorithm",
    #       }
    #
    # @!attribute [rw] signature
    #   The signature for the file.
    #   @return [Types::CodeSigningSignature]
    #
    # @!attribute [rw] certificate_chain
    #   The certificate chain.
    #   @return [Types::CodeSigningCertificateChain]
    #
    # @!attribute [rw] hash_algorithm
    #   The hash algorithm used to code sign the file.
    #   @return [String]
    #
    # @!attribute [rw] signature_algorithm
    #   The signature algorithm used to code sign the file.
    #   @return [String]
    #
    class CustomCodeSigning < Struct.new(
      :signature,
      :certificate_chain,
      :hash_algorithm,
      :signature_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAccountAuditConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         delete_scheduled_audits: false,
    #       }
    #
    # @!attribute [rw] delete_scheduled_audits
    #   If true, all scheduled audits are deleted.
    #   @return [Boolean]
    #
    class DeleteAccountAuditConfigurationRequest < Struct.new(
      :delete_scheduled_audits)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteAccountAuditConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteAuditSuppressionRequest
    #   data as a hash:
    #
    #       {
    #         check_name: "AuditCheckName", # required
    #         resource_identifier: { # required
    #           device_certificate_id: "CertificateId",
    #           ca_certificate_id: "CertificateId",
    #           cognito_identity_pool_id: "CognitoIdentityPoolId",
    #           client_id: "ClientId",
    #           policy_version_identifier: {
    #             policy_name: "PolicyName",
    #             policy_version_id: "PolicyVersionId",
    #           },
    #           account: "AwsAccountId",
    #           iam_role_arn: "RoleArn",
    #           role_alias_arn: "RoleAliasArn",
    #         },
    #       }
    #
    # @!attribute [rw] check_name
    #   An audit check name. Checks must be enabled for your account. (Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks,
    #   including those that are enabled or use
    #   `UpdateAccountAuditConfiguration` to select which checks are
    #   enabled.)
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   Information that identifies the noncompliant resource.
    #   @return [Types::ResourceIdentifier]
    #
    class DeleteAuditSuppressionRequest < Struct.new(
      :check_name,
      :resource_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteAuditSuppressionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteAuthorizerRequest
    #   data as a hash:
    #
    #       {
    #         authorizer_name: "AuthorizerName", # required
    #       }
    #
    # @!attribute [rw] authorizer_name
    #   The name of the authorizer to delete.
    #   @return [String]
    #
    class DeleteAuthorizerRequest < Struct.new(
      :authorizer_name)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteAuthorizerResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteBillingGroupRequest
    #   data as a hash:
    #
    #       {
    #         billing_group_name: "BillingGroupName", # required
    #         expected_version: 1,
    #       }
    #
    # @!attribute [rw] billing_group_name
    #   The name of the billing group.
    #   @return [String]
    #
    # @!attribute [rw] expected_version
    #   The expected version of the billing group. If the version of the
    #   billing group does not match the expected version specified in the
    #   request, the `DeleteBillingGroup` request is rejected with a
    #   `VersionConflictException`.
    #   @return [Integer]
    #
    class DeleteBillingGroupRequest < Struct.new(
      :billing_group_name,
      :expected_version)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteBillingGroupResponse < Aws::EmptyStructure; end

    # Input for the DeleteCACertificate operation.
    #
    # @note When making an API call, you may pass DeleteCACertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_id: "CertificateId", # required
    #       }
    #
    # @!attribute [rw] certificate_id
    #   The ID of the certificate to delete. (The last part of the
    #   certificate ARN contains the certificate ID.)
    #   @return [String]
    #
    class DeleteCACertificateRequest < Struct.new(
      :certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for the DeleteCACertificate operation.
    #
    class DeleteCACertificateResponse < Aws::EmptyStructure; end

    # The input for the DeleteCertificate operation.
    #
    # @note When making an API call, you may pass DeleteCertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_id: "CertificateId", # required
    #         force_delete: false,
    #       }
    #
    # @!attribute [rw] certificate_id
    #   The ID of the certificate. (The last part of the certificate ARN
    #   contains the certificate ID.)
    #   @return [String]
    #
    # @!attribute [rw] force_delete
    #   Forces the deletion of a certificate if it is inactive and is not
    #   attached to an IoT thing.
    #   @return [Boolean]
    #
    class DeleteCertificateRequest < Struct.new(
      :certificate_id,
      :force_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can't delete the resource because it is attached to one or more
    # resources.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class DeleteConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDimensionRequest
    #   data as a hash:
    #
    #       {
    #         name: "DimensionName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The unique identifier for the dimension that you want to delete.
    #   @return [String]
    #
    class DeleteDimensionRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteDimensionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteDomainConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         domain_configuration_name: "DomainConfigurationName", # required
    #       }
    #
    # @!attribute [rw] domain_configuration_name
    #   The name of the domain configuration to be deleted.
    #   @return [String]
    #
    class DeleteDomainConfigurationRequest < Struct.new(
      :domain_configuration_name)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteDomainConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteDynamicThingGroupRequest
    #   data as a hash:
    #
    #       {
    #         thing_group_name: "ThingGroupName", # required
    #         expected_version: 1,
    #       }
    #
    # @!attribute [rw] thing_group_name
    #   The name of the dynamic thing group to delete.
    #   @return [String]
    #
    # @!attribute [rw] expected_version
    #   The expected version of the dynamic thing group to delete.
    #   @return [Integer]
    #
    class DeleteDynamicThingGroupRequest < Struct.new(
      :thing_group_name,
      :expected_version)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteDynamicThingGroupResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteJobExecutionRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         thing_name: "ThingName", # required
    #         execution_number: 1, # required
    #         force: false,
    #       }
    #
    # @!attribute [rw] job_id
    #   The ID of the job whose execution on a particular device will be
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The name of the thing whose job execution will be deleted.
    #   @return [String]
    #
    # @!attribute [rw] execution_number
    #   The ID of the job execution to be deleted. The `executionNumber`
    #   refers to the execution of a particular job on a particular device.
    #
    #   Note that once a job execution is deleted, the `executionNumber` may
    #   be reused by IoT, so be sure you get and use the correct value here.
    #   @return [Integer]
    #
    # @!attribute [rw] force
    #   (Optional) When true, you can delete a job execution which is
    #   "IN\_PROGRESS". Otherwise, you can only delete a job execution
    #   which is in a terminal state ("SUCCEEDED", "FAILED",
    #   "REJECTED", "REMOVED" or "CANCELED") or an exception will
    #   occur. The default is false.
    #
    #   <note markdown="1"> Deleting a job execution which is "IN\_PROGRESS", will cause the
    #   device to be unable to access job information or update the job
    #   execution status. Use caution and ensure that the device is able to
    #   recover to a valid state.
    #
    #    </note>
    #   @return [Boolean]
    #
    class DeleteJobExecutionRequest < Struct.new(
      :job_id,
      :thing_name,
      :execution_number,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         force: false,
    #       }
    #
    # @!attribute [rw] job_id
    #   The ID of the job to be deleted.
    #
    #   After a job deletion is completed, you may reuse this jobId when you
    #   create a new job. However, this is not recommended, and you must
    #   ensure that your devices are not using the jobId to refer to the
    #   deleted job.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   (Optional) When true, you can delete a job which is
    #   "IN\_PROGRESS". Otherwise, you can only delete a job which is in a
    #   terminal state ("COMPLETED" or "CANCELED") or an exception will
    #   occur. The default is false.
    #
    #   <note markdown="1"> Deleting a job which is "IN\_PROGRESS", will cause a device which
    #   is executing the job to be unable to access job information or
    #   update the job execution status. Use caution and ensure that each
    #   device executing a job which is deleted is able to recover to a
    #   valid state.
    #
    #    </note>
    #   @return [Boolean]
    #
    class DeleteJobRequest < Struct.new(
      :job_id,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteMitigationActionRequest
    #   data as a hash:
    #
    #       {
    #         action_name: "MitigationActionName", # required
    #       }
    #
    # @!attribute [rw] action_name
    #   The name of the mitigation action that you want to delete.
    #   @return [String]
    #
    class DeleteMitigationActionRequest < Struct.new(
      :action_name)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteMitigationActionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteOTAUpdateRequest
    #   data as a hash:
    #
    #       {
    #         ota_update_id: "OTAUpdateId", # required
    #         delete_stream: false,
    #         force_delete_aws_job: false,
    #       }
    #
    # @!attribute [rw] ota_update_id
    #   The ID of the OTA update to delete.
    #   @return [String]
    #
    # @!attribute [rw] delete_stream
    #   Specifies if the stream associated with an OTA update should be
    #   deleted when the OTA update is deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] force_delete_aws_job
    #   Specifies if the AWS Job associated with the OTA update should be
    #   deleted when the OTA update is deleted.
    #   @return [Boolean]
    #
    class DeleteOTAUpdateRequest < Struct.new(
      :ota_update_id,
      :delete_stream,
      :force_delete_aws_job)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteOTAUpdateResponse < Aws::EmptyStructure; end

    # The input for the DeletePolicy operation.
    #
    # @note When making an API call, you may pass DeletePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "PolicyName", # required
    #       }
    #
    # @!attribute [rw] policy_name
    #   The name of the policy to delete.
    #   @return [String]
    #
    class DeletePolicyRequest < Struct.new(
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the DeletePolicyVersion operation.
    #
    # @note When making an API call, you may pass DeletePolicyVersionRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "PolicyName", # required
    #         policy_version_id: "PolicyVersionId", # required
    #       }
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_version_id
    #   The policy version ID.
    #   @return [String]
    #
    class DeletePolicyVersionRequest < Struct.new(
      :policy_name,
      :policy_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteProvisioningTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "TemplateName", # required
    #       }
    #
    # @!attribute [rw] template_name
    #   The name of the fleet provision template to delete.
    #   @return [String]
    #
    class DeleteProvisioningTemplateRequest < Struct.new(
      :template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteProvisioningTemplateResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteProvisioningTemplateVersionRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "TemplateName", # required
    #         version_id: 1, # required
    #       }
    #
    # @!attribute [rw] template_name
    #   The name of the fleet provisioning template version to delete.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The fleet provisioning template version ID to delete.
    #   @return [Integer]
    #
    class DeleteProvisioningTemplateVersionRequest < Struct.new(
      :template_name,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteProvisioningTemplateVersionResponse < Aws::EmptyStructure; end

    # The input for the DeleteRegistrationCode operation.
    #
    # @api private
    #
    class DeleteRegistrationCodeRequest < Aws::EmptyStructure; end

    # The output for the DeleteRegistrationCode operation.
    #
    class DeleteRegistrationCodeResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteRoleAliasRequest
    #   data as a hash:
    #
    #       {
    #         role_alias: "RoleAlias", # required
    #       }
    #
    # @!attribute [rw] role_alias
    #   The role alias to delete.
    #   @return [String]
    #
    class DeleteRoleAliasRequest < Struct.new(
      :role_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteRoleAliasResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteScheduledAuditRequest
    #   data as a hash:
    #
    #       {
    #         scheduled_audit_name: "ScheduledAuditName", # required
    #       }
    #
    # @!attribute [rw] scheduled_audit_name
    #   The name of the scheduled audit you want to delete.
    #   @return [String]
    #
    class DeleteScheduledAuditRequest < Struct.new(
      :scheduled_audit_name)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteScheduledAuditResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteSecurityProfileRequest
    #   data as a hash:
    #
    #       {
    #         security_profile_name: "SecurityProfileName", # required
    #         expected_version: 1,
    #       }
    #
    # @!attribute [rw] security_profile_name
    #   The name of the security profile to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] expected_version
    #   The expected version of the security profile. A new version is
    #   generated whenever the security profile is updated. If you specify a
    #   value that is different from the actual version, a
    #   `VersionConflictException` is thrown.
    #   @return [Integer]
    #
    class DeleteSecurityProfileRequest < Struct.new(
      :security_profile_name,
      :expected_version)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteSecurityProfileResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteStreamRequest
    #   data as a hash:
    #
    #       {
    #         stream_id: "StreamId", # required
    #       }
    #
    # @!attribute [rw] stream_id
    #   The stream ID.
    #   @return [String]
    #
    class DeleteStreamRequest < Struct.new(
      :stream_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteStreamResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteThingGroupRequest
    #   data as a hash:
    #
    #       {
    #         thing_group_name: "ThingGroupName", # required
    #         expected_version: 1,
    #       }
    #
    # @!attribute [rw] thing_group_name
    #   The name of the thing group to delete.
    #   @return [String]
    #
    # @!attribute [rw] expected_version
    #   The expected version of the thing group to delete.
    #   @return [Integer]
    #
    class DeleteThingGroupRequest < Struct.new(
      :thing_group_name,
      :expected_version)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteThingGroupResponse < Aws::EmptyStructure; end

    # The input for the DeleteThing operation.
    #
    # @note When making an API call, you may pass DeleteThingRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #         expected_version: 1,
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing to delete.
    #   @return [String]
    #
    # @!attribute [rw] expected_version
    #   The expected version of the thing record in the registry. If the
    #   version of the record in the registry does not match the expected
    #   version specified in the request, the `DeleteThing` request is
    #   rejected with a `VersionConflictException`.
    #   @return [Integer]
    #
    class DeleteThingRequest < Struct.new(
      :thing_name,
      :expected_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output of the DeleteThing operation.
    #
    class DeleteThingResponse < Aws::EmptyStructure; end

    # The input for the DeleteThingType operation.
    #
    # @note When making an API call, you may pass DeleteThingTypeRequest
    #   data as a hash:
    #
    #       {
    #         thing_type_name: "ThingTypeName", # required
    #       }
    #
    # @!attribute [rw] thing_type_name
    #   The name of the thing type.
    #   @return [String]
    #
    class DeleteThingTypeRequest < Struct.new(
      :thing_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for the DeleteThingType operation.
    #
    class DeleteThingTypeResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteTopicRuleDestinationRequest
    #   data as a hash:
    #
    #       {
    #         arn: "AwsArn", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the topic rule destination to delete.
    #   @return [String]
    #
    class DeleteTopicRuleDestinationRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteTopicRuleDestinationResponse < Aws::EmptyStructure; end

    # The input for the DeleteTopicRule operation.
    #
    # @note When making an API call, you may pass DeleteTopicRuleRequest
    #   data as a hash:
    #
    #       {
    #         rule_name: "RuleName", # required
    #       }
    #
    # @!attribute [rw] rule_name
    #   The name of the rule.
    #   @return [String]
    #
    class DeleteTopicRuleRequest < Struct.new(
      :rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteV2LoggingLevelRequest
    #   data as a hash:
    #
    #       {
    #         target_type: "DEFAULT", # required, accepts DEFAULT, THING_GROUP
    #         target_name: "LogTargetName", # required
    #       }
    #
    # @!attribute [rw] target_type
    #   The type of resource for which you are configuring logging. Must be
    #   `THING_Group`.
    #   @return [String]
    #
    # @!attribute [rw] target_name
    #   The name of the resource for which you are configuring logging.
    #   @return [String]
    #
    class DeleteV2LoggingLevelRequest < Struct.new(
      :target_type,
      :target_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information that denied the authorization.
    #
    # @!attribute [rw] implicit_deny
    #   Information that implicitly denies the authorization. When a policy
    #   doesn't explicitly deny or allow an action on a resource it is
    #   considered an implicit deny.
    #   @return [Types::ImplicitDeny]
    #
    # @!attribute [rw] explicit_deny
    #   Information that explicitly denies the authorization.
    #   @return [Types::ExplicitDeny]
    #
    class Denied < Struct.new(
      :implicit_deny,
      :explicit_deny)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the DeprecateThingType operation.
    #
    # @note When making an API call, you may pass DeprecateThingTypeRequest
    #   data as a hash:
    #
    #       {
    #         thing_type_name: "ThingTypeName", # required
    #         undo_deprecate: false,
    #       }
    #
    # @!attribute [rw] thing_type_name
    #   The name of the thing type to deprecate.
    #   @return [String]
    #
    # @!attribute [rw] undo_deprecate
    #   Whether to undeprecate a deprecated thing type. If **true**, the
    #   thing type will not be deprecated anymore and you can associate it
    #   with things.
    #   @return [Boolean]
    #
    class DeprecateThingTypeRequest < Struct.new(
      :thing_type_name,
      :undo_deprecate)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for the DeprecateThingType operation.
    #
    class DeprecateThingTypeResponse < Aws::EmptyStructure; end

    # @api private
    #
    class DescribeAccountAuditConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] role_arn
    #   The ARN of the role that grants permission to AWS IoT to access
    #   information about your devices, policies, certificates, and other
    #   items as required when performing an audit.
    #
    #   On the first call to `UpdateAccountAuditConfiguration`, this
    #   parameter is required.
    #   @return [String]
    #
    # @!attribute [rw] audit_notification_target_configurations
    #   Information about the targets to which audit notifications are sent
    #   for this account.
    #   @return [Hash<String,Types::AuditNotificationTarget>]
    #
    # @!attribute [rw] audit_check_configurations
    #   Which audit checks are enabled and disabled for this account.
    #   @return [Hash<String,Types::AuditCheckConfiguration>]
    #
    class DescribeAccountAuditConfigurationResponse < Struct.new(
      :role_arn,
      :audit_notification_target_configurations,
      :audit_check_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAuditFindingRequest
    #   data as a hash:
    #
    #       {
    #         finding_id: "FindingId", # required
    #       }
    #
    # @!attribute [rw] finding_id
    #   A unique identifier for a single audit finding. You can use this
    #   identifier to apply mitigation actions to the finding.
    #   @return [String]
    #
    class DescribeAuditFindingRequest < Struct.new(
      :finding_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding
    #   The findings (results) of the audit.
    #   @return [Types::AuditFinding]
    #
    class DescribeAuditFindingResponse < Struct.new(
      :finding)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAuditMitigationActionsTaskRequest
    #   data as a hash:
    #
    #       {
    #         task_id: "AuditMitigationActionsTaskId", # required
    #       }
    #
    # @!attribute [rw] task_id
    #   The unique identifier for the audit mitigation task.
    #   @return [String]
    #
    class DescribeAuditMitigationActionsTaskRequest < Struct.new(
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_status
    #   The current status of the task.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time when the task was started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time when the task was completed or canceled.
    #   @return [Time]
    #
    # @!attribute [rw] task_statistics
    #   Aggregate counts of the results when the mitigation tasks were
    #   applied to the findings for this audit mitigation actions task.
    #   @return [Hash<String,Types::TaskStatisticsForAuditCheck>]
    #
    # @!attribute [rw] target
    #   Identifies the findings to which the mitigation actions are applied.
    #   This can be by audit checks, by audit task, or a set of findings.
    #   @return [Types::AuditMitigationActionsTaskTarget]
    #
    # @!attribute [rw] audit_check_to_actions_mapping
    #   Specifies the mitigation actions that should be applied to specific
    #   audit checks.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] actions_definition
    #   Specifies the mitigation actions and their parameters that are
    #   applied as part of this task.
    #   @return [Array<Types::MitigationAction>]
    #
    class DescribeAuditMitigationActionsTaskResponse < Struct.new(
      :task_status,
      :start_time,
      :end_time,
      :task_statistics,
      :target,
      :audit_check_to_actions_mapping,
      :actions_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAuditSuppressionRequest
    #   data as a hash:
    #
    #       {
    #         check_name: "AuditCheckName", # required
    #         resource_identifier: { # required
    #           device_certificate_id: "CertificateId",
    #           ca_certificate_id: "CertificateId",
    #           cognito_identity_pool_id: "CognitoIdentityPoolId",
    #           client_id: "ClientId",
    #           policy_version_identifier: {
    #             policy_name: "PolicyName",
    #             policy_version_id: "PolicyVersionId",
    #           },
    #           account: "AwsAccountId",
    #           iam_role_arn: "RoleArn",
    #           role_alias_arn: "RoleAliasArn",
    #         },
    #       }
    #
    # @!attribute [rw] check_name
    #   An audit check name. Checks must be enabled for your account. (Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks,
    #   including those that are enabled or use
    #   `UpdateAccountAuditConfiguration` to select which checks are
    #   enabled.)
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   Information that identifies the noncompliant resource.
    #   @return [Types::ResourceIdentifier]
    #
    class DescribeAuditSuppressionRequest < Struct.new(
      :check_name,
      :resource_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] check_name
    #   An audit check name. Checks must be enabled for your account. (Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks,
    #   including those that are enabled or use
    #   `UpdateAccountAuditConfiguration` to select which checks are
    #   enabled.)
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   Information that identifies the noncompliant resource.
    #   @return [Types::ResourceIdentifier]
    #
    # @!attribute [rw] expiration_date
    #   The epoch timestamp in seconds at which this suppression expires.
    #   @return [Time]
    #
    # @!attribute [rw] suppress_indefinitely
    #   Indicates whether a suppression should exist indefinitely or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description of the audit suppression.
    #   @return [String]
    #
    class DescribeAuditSuppressionResponse < Struct.new(
      :check_name,
      :resource_identifier,
      :expiration_date,
      :suppress_indefinitely,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAuditTaskRequest
    #   data as a hash:
    #
    #       {
    #         task_id: "AuditTaskId", # required
    #       }
    #
    # @!attribute [rw] task_id
    #   The ID of the audit whose information you want to get.
    #   @return [String]
    #
    class DescribeAuditTaskRequest < Struct.new(
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_status
    #   The status of the audit: one of "IN\_PROGRESS", "COMPLETED",
    #   "FAILED", or "CANCELED".
    #   @return [String]
    #
    # @!attribute [rw] task_type
    #   The type of audit: "ON\_DEMAND\_AUDIT\_TASK" or
    #   "SCHEDULED\_AUDIT\_TASK".
    #   @return [String]
    #
    # @!attribute [rw] task_start_time
    #   The time the audit started.
    #   @return [Time]
    #
    # @!attribute [rw] task_statistics
    #   Statistical information about the audit.
    #   @return [Types::TaskStatistics]
    #
    # @!attribute [rw] scheduled_audit_name
    #   The name of the scheduled audit (only if the audit was a scheduled
    #   audit).
    #   @return [String]
    #
    # @!attribute [rw] audit_details
    #   Detailed information about each check performed during this audit.
    #   @return [Hash<String,Types::AuditCheckDetails>]
    #
    class DescribeAuditTaskResponse < Struct.new(
      :task_status,
      :task_type,
      :task_start_time,
      :task_statistics,
      :scheduled_audit_name,
      :audit_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAuthorizerRequest
    #   data as a hash:
    #
    #       {
    #         authorizer_name: "AuthorizerName", # required
    #       }
    #
    # @!attribute [rw] authorizer_name
    #   The name of the authorizer to describe.
    #   @return [String]
    #
    class DescribeAuthorizerRequest < Struct.new(
      :authorizer_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorizer_description
    #   The authorizer description.
    #   @return [Types::AuthorizerDescription]
    #
    class DescribeAuthorizerResponse < Struct.new(
      :authorizer_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeBillingGroupRequest
    #   data as a hash:
    #
    #       {
    #         billing_group_name: "BillingGroupName", # required
    #       }
    #
    # @!attribute [rw] billing_group_name
    #   The name of the billing group.
    #   @return [String]
    #
    class DescribeBillingGroupRequest < Struct.new(
      :billing_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_group_name
    #   The name of the billing group.
    #   @return [String]
    #
    # @!attribute [rw] billing_group_id
    #   The ID of the billing group.
    #   @return [String]
    #
    # @!attribute [rw] billing_group_arn
    #   The ARN of the billing group.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the billing group.
    #   @return [Integer]
    #
    # @!attribute [rw] billing_group_properties
    #   The properties of the billing group.
    #   @return [Types::BillingGroupProperties]
    #
    # @!attribute [rw] billing_group_metadata
    #   Additional information about the billing group.
    #   @return [Types::BillingGroupMetadata]
    #
    class DescribeBillingGroupResponse < Struct.new(
      :billing_group_name,
      :billing_group_id,
      :billing_group_arn,
      :version,
      :billing_group_properties,
      :billing_group_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the DescribeCACertificate operation.
    #
    # @note When making an API call, you may pass DescribeCACertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_id: "CertificateId", # required
    #       }
    #
    # @!attribute [rw] certificate_id
    #   The CA certificate identifier.
    #   @return [String]
    #
    class DescribeCACertificateRequest < Struct.new(
      :certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the DescribeCACertificate operation.
    #
    # @!attribute [rw] certificate_description
    #   The CA certificate description.
    #   @return [Types::CACertificateDescription]
    #
    # @!attribute [rw] registration_config
    #   Information about the registration configuration.
    #   @return [Types::RegistrationConfig]
    #
    class DescribeCACertificateResponse < Struct.new(
      :certificate_description,
      :registration_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the DescribeCertificate operation.
    #
    # @note When making an API call, you may pass DescribeCertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_id: "CertificateId", # required
    #       }
    #
    # @!attribute [rw] certificate_id
    #   The ID of the certificate. (The last part of the certificate ARN
    #   contains the certificate ID.)
    #   @return [String]
    #
    class DescribeCertificateRequest < Struct.new(
      :certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output of the DescribeCertificate operation.
    #
    # @!attribute [rw] certificate_description
    #   The description of the certificate.
    #   @return [Types::CertificateDescription]
    #
    class DescribeCertificateResponse < Struct.new(
      :certificate_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    class DescribeDefaultAuthorizerRequest < Aws::EmptyStructure; end

    # @!attribute [rw] authorizer_description
    #   The default authorizer's description.
    #   @return [Types::AuthorizerDescription]
    #
    class DescribeDefaultAuthorizerResponse < Struct.new(
      :authorizer_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDimensionRequest
    #   data as a hash:
    #
    #       {
    #         name: "DimensionName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The unique identifier for the dimension.
    #   @return [String]
    #
    class DescribeDimensionRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The unique identifier for the dimension.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon resource name) for the dimension.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the dimension.
    #   @return [String]
    #
    # @!attribute [rw] string_values
    #   The value or list of values used to scope the dimension. For
    #   example, for topic filters, this is the pattern used to match the
    #   MQTT topic name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_date
    #   The date the dimension was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date the dimension was last modified.
    #   @return [Time]
    #
    class DescribeDimensionResponse < Struct.new(
      :name,
      :arn,
      :type,
      :string_values,
      :creation_date,
      :last_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDomainConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         domain_configuration_name: "ReservedDomainConfigurationName", # required
    #       }
    #
    # @!attribute [rw] domain_configuration_name
    #   The name of the domain configuration.
    #   @return [String]
    #
    class DescribeDomainConfigurationRequest < Struct.new(
      :domain_configuration_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_configuration_name
    #   The name of the domain configuration.
    #   @return [String]
    #
    # @!attribute [rw] domain_configuration_arn
    #   The ARN of the domain configuration.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] server_certificates
    #   A list containing summary information about the server certificate
    #   included in the domain configuration.
    #   @return [Array<Types::ServerCertificateSummary>]
    #
    # @!attribute [rw] authorizer_config
    #   An object that specifies the authorization service for a domain.
    #   @return [Types::AuthorizerConfig]
    #
    # @!attribute [rw] domain_configuration_status
    #   A Boolean value that specifies the current state of the domain
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] service_type
    #   The type of service delivered by the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] domain_type
    #   The type of the domain.
    #   @return [String]
    #
    # @!attribute [rw] last_status_change_date
    #   The date and time the domain configuration's status was last
    #   changed.
    #   @return [Time]
    #
    class DescribeDomainConfigurationResponse < Struct.new(
      :domain_configuration_name,
      :domain_configuration_arn,
      :domain_name,
      :server_certificates,
      :authorizer_config,
      :domain_configuration_status,
      :service_type,
      :domain_type,
      :last_status_change_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the DescribeEndpoint operation.
    #
    # @note When making an API call, you may pass DescribeEndpointRequest
    #   data as a hash:
    #
    #       {
    #         endpoint_type: "EndpointType",
    #       }
    #
    # @!attribute [rw] endpoint_type
    #   The endpoint type. Valid endpoint types include:
    #
    #   * `iot:Data` - Returns a VeriSign signed data endpoint.
    #
    #   ^
    #   ^
    #
    #   * `iot:Data-ATS` - Returns an ATS signed data endpoint.
    #
    #   ^
    #   ^
    #
    #   * `iot:CredentialProvider` - Returns an AWS IoT credentials provider
    #     API endpoint.
    #
    #   ^
    #   ^
    #
    #   * `iot:Jobs` - Returns an AWS IoT device management Jobs API
    #     endpoint.
    #
    #   ^
    #
    #   We strongly recommend that customers use the newer `iot:Data-ATS`
    #   endpoint type to avoid issues related to the widespread distrust of
    #   Symantec certificate authorities.
    #   @return [String]
    #
    class DescribeEndpointRequest < Struct.new(
      :endpoint_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the DescribeEndpoint operation.
    #
    # @!attribute [rw] endpoint_address
    #   The endpoint. The format of the endpoint is as follows:
    #   *identifier*.iot.*region*.amazonaws.com.
    #   @return [String]
    #
    class DescribeEndpointResponse < Struct.new(
      :endpoint_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    class DescribeEventConfigurationsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] event_configurations
    #   The event configurations.
    #   @return [Hash<String,Types::Configuration>]
    #
    # @!attribute [rw] creation_date
    #   The creation date of the event configuration.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date the event configurations were last modified.
    #   @return [Time]
    #
    class DescribeEventConfigurationsResponse < Struct.new(
      :event_configurations,
      :creation_date,
      :last_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeIndexRequest
    #   data as a hash:
    #
    #       {
    #         index_name: "IndexName", # required
    #       }
    #
    # @!attribute [rw] index_name
    #   The index name.
    #   @return [String]
    #
    class DescribeIndexRequest < Struct.new(
      :index_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] index_name
    #   The index name.
    #   @return [String]
    #
    # @!attribute [rw] index_status
    #   The index status.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   Contains a value that specifies the type of indexing performed.
    #   Valid values are:
    #
    #   * REGISTRY – Your thing index contains only registry data.
    #
    #   * REGISTRY\_AND\_SHADOW - Your thing index contains registry data
    #     and shadow data.
    #
    #   * REGISTRY\_AND\_CONNECTIVITY\_STATUS - Your thing index contains
    #     registry data and thing connectivity status data.
    #
    #   * REGISTRY\_AND\_SHADOW\_AND\_CONNECTIVITY\_STATUS - Your thing
    #     index contains registry data, shadow data, and thing connectivity
    #     status data.
    #   @return [String]
    #
    class DescribeIndexResponse < Struct.new(
      :index_name,
      :index_status,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeJobExecutionRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         thing_name: "ThingName", # required
    #         execution_number: 1,
    #       }
    #
    # @!attribute [rw] job_id
    #   The unique identifier you assigned to this job when it was created.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The name of the thing on which the job execution is running.
    #   @return [String]
    #
    # @!attribute [rw] execution_number
    #   A string (consisting of the digits "0" through "9" which is used
    #   to specify a particular job execution on a particular device.
    #   @return [Integer]
    #
    class DescribeJobExecutionRequest < Struct.new(
      :job_id,
      :thing_name,
      :execution_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution
    #   Information about the job execution.
    #   @return [Types::JobExecution]
    #
    class DescribeJobExecutionResponse < Struct.new(
      :execution)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The unique identifier you assigned to this job when it was created.
    #   @return [String]
    #
    class DescribeJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_source
    #   An S3 link to the job document.
    #   @return [String]
    #
    # @!attribute [rw] job
    #   Information about the job.
    #   @return [Types::Job]
    #
    class DescribeJobResponse < Struct.new(
      :document_source,
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMitigationActionRequest
    #   data as a hash:
    #
    #       {
    #         action_name: "MitigationActionName", # required
    #       }
    #
    # @!attribute [rw] action_name
    #   The friendly name that uniquely identifies the mitigation action.
    #   @return [String]
    #
    class DescribeMitigationActionRequest < Struct.new(
      :action_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_name
    #   The friendly name that uniquely identifies the mitigation action.
    #   @return [String]
    #
    # @!attribute [rw] action_type
    #   The type of mitigation action.
    #   @return [String]
    #
    # @!attribute [rw] action_arn
    #   The ARN that identifies this migration action.
    #   @return [String]
    #
    # @!attribute [rw] action_id
    #   A unique identifier for this action.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role used to apply this action.
    #   @return [String]
    #
    # @!attribute [rw] action_params
    #   Parameters that control how the mitigation action is applied,
    #   specific to the type of mitigation action.
    #   @return [Types::MitigationActionParams]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the mitigation action was added to your AWS
    #   account.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the mitigation action was last changed.
    #   @return [Time]
    #
    class DescribeMitigationActionResponse < Struct.new(
      :action_name,
      :action_type,
      :action_arn,
      :action_id,
      :role_arn,
      :action_params,
      :creation_date,
      :last_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProvisioningTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "TemplateName", # required
    #       }
    #
    # @!attribute [rw] template_name
    #   The name of the fleet provisioning template.
    #   @return [String]
    #
    class DescribeProvisioningTemplateRequest < Struct.new(
      :template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_arn
    #   The ARN of the fleet provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the fleet provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the fleet provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date when the fleet provisioning template was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date when the fleet provisioning template was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] default_version_id
    #   The default fleet template version ID.
    #   @return [Integer]
    #
    # @!attribute [rw] template_body
    #   The JSON formatted contents of the fleet provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   True if the fleet provisioning template is enabled, otherwise false.
    #   @return [Boolean]
    #
    # @!attribute [rw] provisioning_role_arn
    #   The ARN of the role associated with the provisioning template. This
    #   IoT role grants permission to provision a device.
    #   @return [String]
    #
    # @!attribute [rw] pre_provisioning_hook
    #   Gets information about a pre-provisioned hook.
    #   @return [Types::ProvisioningHook]
    #
    class DescribeProvisioningTemplateResponse < Struct.new(
      :template_arn,
      :template_name,
      :description,
      :creation_date,
      :last_modified_date,
      :default_version_id,
      :template_body,
      :enabled,
      :provisioning_role_arn,
      :pre_provisioning_hook)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProvisioningTemplateVersionRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "TemplateName", # required
    #         version_id: 1, # required
    #       }
    #
    # @!attribute [rw] template_name
    #   The template name.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The fleet provisioning template version ID.
    #   @return [Integer]
    #
    class DescribeProvisioningTemplateVersionRequest < Struct.new(
      :template_name,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] version_id
    #   The fleet provisioning template version ID.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_date
    #   The date when the fleet provisioning template version was created.
    #   @return [Time]
    #
    # @!attribute [rw] template_body
    #   The JSON formatted contents of the fleet provisioning template
    #   version.
    #   @return [String]
    #
    # @!attribute [rw] is_default_version
    #   True if the fleet provisioning template version is the default
    #   version.
    #   @return [Boolean]
    #
    class DescribeProvisioningTemplateVersionResponse < Struct.new(
      :version_id,
      :creation_date,
      :template_body,
      :is_default_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRoleAliasRequest
    #   data as a hash:
    #
    #       {
    #         role_alias: "RoleAlias", # required
    #       }
    #
    # @!attribute [rw] role_alias
    #   The role alias to describe.
    #   @return [String]
    #
    class DescribeRoleAliasRequest < Struct.new(
      :role_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_alias_description
    #   The role alias description.
    #   @return [Types::RoleAliasDescription]
    #
    class DescribeRoleAliasResponse < Struct.new(
      :role_alias_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeScheduledAuditRequest
    #   data as a hash:
    #
    #       {
    #         scheduled_audit_name: "ScheduledAuditName", # required
    #       }
    #
    # @!attribute [rw] scheduled_audit_name
    #   The name of the scheduled audit whose information you want to get.
    #   @return [String]
    #
    class DescribeScheduledAuditRequest < Struct.new(
      :scheduled_audit_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] frequency
    #   How often the scheduled audit takes place. One of "DAILY",
    #   "WEEKLY", "BIWEEKLY", or "MONTHLY". The start time of each
    #   audit is determined by the system.
    #   @return [String]
    #
    # @!attribute [rw] day_of_month
    #   The day of the month on which the scheduled audit takes place. Will
    #   be "1" through "31" or "LAST". If days 29-31 are specified,
    #   and the month does not have that many days, the audit takes place on
    #   the "LAST" day of the month.
    #   @return [String]
    #
    # @!attribute [rw] day_of_week
    #   The day of the week on which the scheduled audit takes place. One of
    #   "SUN", "MON", "TUE", "WED", "THU", "FRI", or "SAT".
    #   @return [String]
    #
    # @!attribute [rw] target_check_names
    #   Which checks are performed during the scheduled audit. Checks must
    #   be enabled for your account. (Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks,
    #   including those that are enabled or use
    #   `UpdateAccountAuditConfiguration` to select which checks are
    #   enabled.)
    #   @return [Array<String>]
    #
    # @!attribute [rw] scheduled_audit_name
    #   The name of the scheduled audit.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_audit_arn
    #   The ARN of the scheduled audit.
    #   @return [String]
    #
    class DescribeScheduledAuditResponse < Struct.new(
      :frequency,
      :day_of_month,
      :day_of_week,
      :target_check_names,
      :scheduled_audit_name,
      :scheduled_audit_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSecurityProfileRequest
    #   data as a hash:
    #
    #       {
    #         security_profile_name: "SecurityProfileName", # required
    #       }
    #
    # @!attribute [rw] security_profile_name
    #   The name of the security profile whose information you want to get.
    #   @return [String]
    #
    class DescribeSecurityProfileRequest < Struct.new(
      :security_profile_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_profile_name
    #   The name of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_arn
    #   The ARN of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_description
    #   A description of the security profile (associated with the security
    #   profile when it was created or updated).
    #   @return [String]
    #
    # @!attribute [rw] behaviors
    #   Specifies the behaviors that, when violated by a device (thing),
    #   cause an alert.
    #   @return [Array<Types::Behavior>]
    #
    # @!attribute [rw] alert_targets
    #   Where the alerts are sent. (Alerts are always sent to the console.)
    #   @return [Hash<String,Types::AlertTarget>]
    #
    # @!attribute [rw] additional_metrics_to_retain
    #   *Please use
    #   DescribeSecurityProfileResponse$additionalMetricsToRetainV2
    #   instead.*
    #
    #   A list of metrics whose data is retained (stored). By default, data
    #   is retained for any metric used in the profile's `behaviors`, but
    #   it is also retained for any metric specified here.
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_metrics_to_retain_v2
    #   A list of metrics whose data is retained (stored). By default, data
    #   is retained for any metric used in the profile's behaviors, but it
    #   is also retained for any metric specified here.
    #   @return [Array<Types::MetricToRetain>]
    #
    # @!attribute [rw] version
    #   The version of the security profile. A new version is generated
    #   whenever the security profile is updated.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_date
    #   The time the security profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The time the security profile was last modified.
    #   @return [Time]
    #
    class DescribeSecurityProfileResponse < Struct.new(
      :security_profile_name,
      :security_profile_arn,
      :security_profile_description,
      :behaviors,
      :alert_targets,
      :additional_metrics_to_retain,
      :additional_metrics_to_retain_v2,
      :version,
      :creation_date,
      :last_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeStreamRequest
    #   data as a hash:
    #
    #       {
    #         stream_id: "StreamId", # required
    #       }
    #
    # @!attribute [rw] stream_id
    #   The stream ID.
    #   @return [String]
    #
    class DescribeStreamRequest < Struct.new(
      :stream_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_info
    #   Information about the stream.
    #   @return [Types::StreamInfo]
    #
    class DescribeStreamResponse < Struct.new(
      :stream_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeThingGroupRequest
    #   data as a hash:
    #
    #       {
    #         thing_group_name: "ThingGroupName", # required
    #       }
    #
    # @!attribute [rw] thing_group_name
    #   The name of the thing group.
    #   @return [String]
    #
    class DescribeThingGroupRequest < Struct.new(
      :thing_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] thing_group_name
    #   The name of the thing group.
    #   @return [String]
    #
    # @!attribute [rw] thing_group_id
    #   The thing group ID.
    #   @return [String]
    #
    # @!attribute [rw] thing_group_arn
    #   The thing group ARN.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the thing group.
    #   @return [Integer]
    #
    # @!attribute [rw] thing_group_properties
    #   The thing group properties.
    #   @return [Types::ThingGroupProperties]
    #
    # @!attribute [rw] thing_group_metadata
    #   Thing group metadata.
    #   @return [Types::ThingGroupMetadata]
    #
    # @!attribute [rw] index_name
    #   The dynamic thing group index name.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The dynamic thing group search query string.
    #   @return [String]
    #
    # @!attribute [rw] query_version
    #   The dynamic thing group query version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The dynamic thing group status.
    #   @return [String]
    #
    class DescribeThingGroupResponse < Struct.new(
      :thing_group_name,
      :thing_group_id,
      :thing_group_arn,
      :version,
      :thing_group_properties,
      :thing_group_metadata,
      :index_name,
      :query_string,
      :query_version,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeThingRegistrationTaskRequest
    #   data as a hash:
    #
    #       {
    #         task_id: "TaskId", # required
    #       }
    #
    # @!attribute [rw] task_id
    #   The task ID.
    #   @return [String]
    #
    class DescribeThingRegistrationTaskRequest < Struct.new(
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The task ID.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The task creation date.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date when the task was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] template_body
    #   The task's template.
    #   @return [String]
    #
    # @!attribute [rw] input_file_bucket
    #   The S3 bucket that contains the input file.
    #   @return [String]
    #
    # @!attribute [rw] input_file_key
    #   The input file key.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The role ARN that grants access to the input file bucket.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the bulk thing provisioning task.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message.
    #   @return [String]
    #
    # @!attribute [rw] success_count
    #   The number of things successfully provisioned.
    #   @return [Integer]
    #
    # @!attribute [rw] failure_count
    #   The number of things that failed to be provisioned.
    #   @return [Integer]
    #
    # @!attribute [rw] percentage_progress
    #   The progress of the bulk provisioning task expressed as a
    #   percentage.
    #   @return [Integer]
    #
    class DescribeThingRegistrationTaskResponse < Struct.new(
      :task_id,
      :creation_date,
      :last_modified_date,
      :template_body,
      :input_file_bucket,
      :input_file_key,
      :role_arn,
      :status,
      :message,
      :success_count,
      :failure_count,
      :percentage_progress)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the DescribeThing operation.
    #
    # @note When making an API call, you may pass DescribeThingRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing.
    #   @return [String]
    #
    class DescribeThingRequest < Struct.new(
      :thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the DescribeThing operation.
    #
    # @!attribute [rw] default_client_id
    #   The default MQTT client ID. For a typical device, the thing name is
    #   also used as the default MQTT client ID. Although we don’t require a
    #   mapping between a thing's registry name and its use of MQTT client
    #   IDs, certificates, or shadow state, we recommend that you choose a
    #   thing name and use it as the MQTT client ID for the registry and the
    #   Device Shadow service.
    #
    #   This lets you better organize your AWS IoT fleet without removing
    #   the flexibility of the underlying device certificate model or
    #   shadows.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The name of the thing.
    #   @return [String]
    #
    # @!attribute [rw] thing_id
    #   The ID of the thing to describe.
    #   @return [String]
    #
    # @!attribute [rw] thing_arn
    #   The ARN of the thing to describe.
    #   @return [String]
    #
    # @!attribute [rw] thing_type_name
    #   The thing type name.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The thing attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] version
    #   The current version of the thing record in the registry.
    #
    #   <note markdown="1"> To avoid unintentional changes to the information in the registry,
    #   you can pass the version information in the `expectedVersion`
    #   parameter of the `UpdateThing` and `DeleteThing` calls.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] billing_group_name
    #   The name of the billing group the thing belongs to.
    #   @return [String]
    #
    class DescribeThingResponse < Struct.new(
      :default_client_id,
      :thing_name,
      :thing_id,
      :thing_arn,
      :thing_type_name,
      :attributes,
      :version,
      :billing_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the DescribeThingType operation.
    #
    # @note When making an API call, you may pass DescribeThingTypeRequest
    #   data as a hash:
    #
    #       {
    #         thing_type_name: "ThingTypeName", # required
    #       }
    #
    # @!attribute [rw] thing_type_name
    #   The name of the thing type.
    #   @return [String]
    #
    class DescribeThingTypeRequest < Struct.new(
      :thing_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for the DescribeThingType operation.
    #
    # @!attribute [rw] thing_type_name
    #   The name of the thing type.
    #   @return [String]
    #
    # @!attribute [rw] thing_type_id
    #   The thing type ID.
    #   @return [String]
    #
    # @!attribute [rw] thing_type_arn
    #   The thing type ARN.
    #   @return [String]
    #
    # @!attribute [rw] thing_type_properties
    #   The ThingTypeProperties contains information about the thing type
    #   including description, and a list of searchable thing attribute
    #   names.
    #   @return [Types::ThingTypeProperties]
    #
    # @!attribute [rw] thing_type_metadata
    #   The ThingTypeMetadata contains additional information about the
    #   thing type including: creation date and time, a value indicating
    #   whether the thing type is deprecated, and a date and time when it
    #   was deprecated.
    #   @return [Types::ThingTypeMetadata]
    #
    class DescribeThingTypeResponse < Struct.new(
      :thing_type_name,
      :thing_type_id,
      :thing_type_arn,
      :thing_type_properties,
      :thing_type_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the location of the updated firmware.
    #
    # @note When making an API call, you may pass Destination
    #   data as a hash:
    #
    #       {
    #         s3_destination: {
    #           bucket: "S3Bucket",
    #           prefix: "Prefix",
    #         },
    #       }
    #
    # @!attribute [rw] s3_destination
    #   Describes the location in S3 of the updated firmware.
    #   @return [Types::S3Destination]
    #
    class Destination < Struct.new(
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetachPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "PolicyName", # required
    #         target: "PolicyTarget", # required
    #       }
    #
    # @!attribute [rw] policy_name
    #   The policy to detach.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target from which the policy will be detached.
    #   @return [String]
    #
    class DetachPolicyRequest < Struct.new(
      :policy_name,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the DetachPrincipalPolicy operation.
    #
    # @note When making an API call, you may pass DetachPrincipalPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "PolicyName", # required
    #         principal: "Principal", # required
    #       }
    #
    # @!attribute [rw] policy_name
    #   The name of the policy to detach.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal.
    #
    #   Valid principals are CertificateArn
    #   (arn:aws:iot:*region*\:*accountId*\:cert/*certificateId*),
    #   thingGroupArn
    #   (arn:aws:iot:*region*\:*accountId*\:thinggroup/*groupName*) and
    #   CognitoId (*region*\:*id*).
    #   @return [String]
    #
    class DetachPrincipalPolicyRequest < Struct.new(
      :policy_name,
      :principal)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetachSecurityProfileRequest
    #   data as a hash:
    #
    #       {
    #         security_profile_name: "SecurityProfileName", # required
    #         security_profile_target_arn: "SecurityProfileTargetArn", # required
    #       }
    #
    # @!attribute [rw] security_profile_name
    #   The security profile that is detached.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_target_arn
    #   The ARN of the thing group from which the security profile is
    #   detached.
    #   @return [String]
    #
    class DetachSecurityProfileRequest < Struct.new(
      :security_profile_name,
      :security_profile_target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    class DetachSecurityProfileResponse < Aws::EmptyStructure; end

    # The input for the DetachThingPrincipal operation.
    #
    # @note When making an API call, you may pass DetachThingPrincipalRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #         principal: "Principal", # required
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   If the principal is a certificate, this value must be ARN of the
    #   certificate. If the principal is an Amazon Cognito identity, this
    #   value must be the ID of the Amazon Cognito identity.
    #   @return [String]
    #
    class DetachThingPrincipalRequest < Struct.new(
      :thing_name,
      :principal)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the DetachThingPrincipal operation.
    #
    class DetachThingPrincipalResponse < Aws::EmptyStructure; end

    # The input for the DisableTopicRuleRequest operation.
    #
    # @note When making an API call, you may pass DisableTopicRuleRequest
    #   data as a hash:
    #
    #       {
    #         rule_name: "RuleName", # required
    #       }
    #
    # @!attribute [rw] rule_name
    #   The name of the rule to disable.
    #   @return [String]
    #
    class DisableTopicRuleRequest < Struct.new(
      :rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of a domain configuration. A domain configuration
    # specifies custom IoT-specific information about a domain. A domain
    # configuration can be associated with an AWS-managed domain (for
    # example, dbc123defghijk.iot.us-west-2.amazonaws.com), a customer
    # managed domain, or a default endpoint.
    #
    # * Data
    #
    # * Jobs
    #
    # * CredentialProvider
    #
    # <note markdown="1"> The domain configuration feature is in public preview and is subject
    # to change.
    #
    #  </note>
    #
    # @!attribute [rw] domain_configuration_name
    #   The name of the domain configuration. This value must be unique to a
    #   region.
    #   @return [String]
    #
    # @!attribute [rw] domain_configuration_arn
    #   The ARN of the domain configuration.
    #   @return [String]
    #
    # @!attribute [rw] service_type
    #   The type of service delivered by the endpoint.
    #   @return [String]
    #
    class DomainConfigurationSummary < Struct.new(
      :domain_configuration_name,
      :domain_configuration_arn,
      :service_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an action to write to a DynamoDB table.
    #
    # The `tableName`, `hashKeyField`, and `rangeKeyField` values must match
    # the values used when you created the table.
    #
    # The `hashKeyValue` and `rangeKeyvalue` fields use a substitution
    # template syntax. These templates provide data at runtime. The syntax
    # is as follows: $\\\{*sql-expression*\\}.
    #
    # You can specify any valid expression in a WHERE or SELECT clause,
    # including JSON properties, comparisons, calculations, and functions.
    # For example, the following field uses the third level of the topic:
    #
    # `"hashKeyValue": "$\{topic(3)\}"`
    #
    # The following field uses the timestamp:
    #
    # `"rangeKeyValue": "$\{timestamp()\}"`
    #
    # @note When making an API call, you may pass DynamoDBAction
    #   data as a hash:
    #
    #       {
    #         table_name: "TableName", # required
    #         role_arn: "AwsArn", # required
    #         operation: "DynamoOperation",
    #         hash_key_field: "HashKeyField", # required
    #         hash_key_value: "HashKeyValue", # required
    #         hash_key_type: "STRING", # accepts STRING, NUMBER
    #         range_key_field: "RangeKeyField",
    #         range_key_value: "RangeKeyValue",
    #         range_key_type: "STRING", # accepts STRING, NUMBER
    #         payload_field: "PayloadField",
    #       }
    #
    # @!attribute [rw] table_name
    #   The name of the DynamoDB table.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that grants access to the DynamoDB table.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The type of operation to be performed. This follows the substitution
    #   template, so it can be `$\{operation\}`, but the substitution must
    #   result in one of the following: `INSERT`, `UPDATE`, or `DELETE`.
    #   @return [String]
    #
    # @!attribute [rw] hash_key_field
    #   The hash key name.
    #   @return [String]
    #
    # @!attribute [rw] hash_key_value
    #   The hash key value.
    #   @return [String]
    #
    # @!attribute [rw] hash_key_type
    #   The hash key type. Valid values are "STRING" or "NUMBER"
    #   @return [String]
    #
    # @!attribute [rw] range_key_field
    #   The range key name.
    #   @return [String]
    #
    # @!attribute [rw] range_key_value
    #   The range key value.
    #   @return [String]
    #
    # @!attribute [rw] range_key_type
    #   The range key type. Valid values are "STRING" or "NUMBER"
    #   @return [String]
    #
    # @!attribute [rw] payload_field
    #   The action payload. This name can be customized.
    #   @return [String]
    #
    class DynamoDBAction < Struct.new(
      :table_name,
      :role_arn,
      :operation,
      :hash_key_field,
      :hash_key_value,
      :hash_key_type,
      :range_key_field,
      :range_key_value,
      :range_key_type,
      :payload_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an action to write to a DynamoDB table.
    #
    # This DynamoDB action writes each attribute in the message payload into
    # it's own column in the DynamoDB table.
    #
    # @note When making an API call, you may pass DynamoDBv2Action
    #   data as a hash:
    #
    #       {
    #         role_arn: "AwsArn", # required
    #         put_item: { # required
    #           table_name: "TableName", # required
    #         },
    #       }
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that grants access to the DynamoDB table.
    #   @return [String]
    #
    # @!attribute [rw] put_item
    #   Specifies the DynamoDB table to which the message data will be
    #   written. For example:
    #
    #   `\{ "dynamoDBv2": \{ "roleArn": "aws:iam:12341251:my-role"
    #   "putItem": \{ "tableName": "my-table" \} \} \}`
    #
    #   Each attribute in the message payload will be written to a separate
    #   column in the DynamoDB database.
    #   @return [Types::PutItemInput]
    #
    class DynamoDBv2Action < Struct.new(
      :role_arn,
      :put_item)
      SENSITIVE = []
      include Aws::Structure
    end

    # The policy that has the effect on the authorization results.
    #
    # @!attribute [rw] policy_name
    #   The policy name.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The policy ARN.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The IAM policy document.
    #   @return [String]
    #
    class EffectivePolicy < Struct.new(
      :policy_name,
      :policy_arn,
      :policy_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an action that writes data to an Amazon Elasticsearch
    # Service domain.
    #
    # @note When making an API call, you may pass ElasticsearchAction
    #   data as a hash:
    #
    #       {
    #         role_arn: "AwsArn", # required
    #         endpoint: "ElasticsearchEndpoint", # required
    #         index: "ElasticsearchIndex", # required
    #         type: "ElasticsearchType", # required
    #         id: "ElasticsearchId", # required
    #       }
    #
    # @!attribute [rw] role_arn
    #   The IAM role ARN that has access to Elasticsearch.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint of your Elasticsearch domain.
    #   @return [String]
    #
    # @!attribute [rw] index
    #   The Elasticsearch index where you want to store your data.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of document you are storing.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the document you are storing.
    #   @return [String]
    #
    class ElasticsearchAction < Struct.new(
      :role_arn,
      :endpoint,
      :index,
      :type,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters used when defining a mitigation action that enable AWS IoT
    # logging.
    #
    # @note When making an API call, you may pass EnableIoTLoggingParams
    #   data as a hash:
    #
    #       {
    #         role_arn_for_logging: "RoleArn", # required
    #         log_level: "DEBUG", # required, accepts DEBUG, INFO, ERROR, WARN, DISABLED
    #       }
    #
    # @!attribute [rw] role_arn_for_logging
    #   The ARN of the IAM role used for logging.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   Specifies the types of information to be logged.
    #   @return [String]
    #
    class EnableIoTLoggingParams < Struct.new(
      :role_arn_for_logging,
      :log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the EnableTopicRuleRequest operation.
    #
    # @note When making an API call, you may pass EnableTopicRuleRequest
    #   data as a hash:
    #
    #       {
    #         rule_name: "RuleName", # required
    #       }
    #
    # @!attribute [rw] rule_name
    #   The name of the topic rule to enable.
    #   @return [String]
    #
    class EnableTopicRuleRequest < Struct.new(
      :rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error information.
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    class ErrorInfo < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information that explicitly denies authorization.
    #
    # @!attribute [rw] policies
    #   The policies that denied the authorization.
    #   @return [Array<Types::Policy>]
    #
    class ExplicitDeny < Struct.new(
      :policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows you to create an exponential rate of rollout for a job.
    #
    # @note When making an API call, you may pass ExponentialRolloutRate
    #   data as a hash:
    #
    #       {
    #         base_rate_per_minute: 1, # required
    #         increment_factor: 1.0, # required
    #         rate_increase_criteria: { # required
    #           number_of_notified_things: 1,
    #           number_of_succeeded_things: 1,
    #         },
    #       }
    #
    # @!attribute [rw] base_rate_per_minute
    #   The minimum number of things that will be notified of a pending job,
    #   per minute at the start of job rollout. This parameter allows you to
    #   define the initial rate of rollout.
    #   @return [Integer]
    #
    # @!attribute [rw] increment_factor
    #   The exponential factor to increase the rate of rollout for a job.
    #
    #   AWS IoT supports up to one digit after the decimal (for example,
    #   1.5, but not 1.55).
    #   @return [Float]
    #
    # @!attribute [rw] rate_increase_criteria
    #   The criteria to initiate the increase in rate of rollout for a job.
    #   @return [Types::RateIncreaseCriteria]
    #
    class ExponentialRolloutRate < Struct.new(
      :base_rate_per_minute,
      :increment_factor,
      :rate_increase_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the name and data type at a field.
    #
    # @note When making an API call, you may pass Field
    #   data as a hash:
    #
    #       {
    #         name: "FieldName",
    #         type: "Number", # accepts Number, String, Boolean
    #       }
    #
    # @!attribute [rw] name
    #   The name of the field.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The datatype of the field.
    #   @return [String]
    #
    class Field < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location of the OTA update.
    #
    # @note When making an API call, you may pass FileLocation
    #   data as a hash:
    #
    #       {
    #         stream: {
    #           stream_id: "StreamId",
    #           file_id: 1,
    #         },
    #         s3_location: {
    #           bucket: "S3Bucket",
    #           key: "S3Key",
    #           version: "S3Version",
    #         },
    #       }
    #
    # @!attribute [rw] stream
    #   The stream that contains the OTA update.
    #   @return [Types::Stream]
    #
    # @!attribute [rw] s3_location
    #   The location of the updated firmware in S3.
    #   @return [Types::S3Location]
    #
    class FileLocation < Struct.new(
      :stream,
      :s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an action that writes data to an Amazon Kinesis Firehose
    # stream.
    #
    # @note When making an API call, you may pass FirehoseAction
    #   data as a hash:
    #
    #       {
    #         role_arn: "AwsArn", # required
    #         delivery_stream_name: "DeliveryStreamName", # required
    #         separator: "FirehoseSeparator",
    #       }
    #
    # @!attribute [rw] role_arn
    #   The IAM role that grants access to the Amazon Kinesis Firehose
    #   stream.
    #   @return [String]
    #
    # @!attribute [rw] delivery_stream_name
    #   The delivery stream name.
    #   @return [String]
    #
    # @!attribute [rw] separator
    #   A character separator that will be used to separate records written
    #   to the Firehose stream. Valid values are: '\\n' (newline), '\\t'
    #   (tab), '\\r\\n' (Windows newline), ',' (comma).
    #   @return [String]
    #
    class FirehoseAction < Struct.new(
      :role_arn,
      :delivery_stream_name,
      :separator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCardinalityRequest
    #   data as a hash:
    #
    #       {
    #         index_name: "IndexName",
    #         query_string: "QueryString", # required
    #         aggregation_field: "AggregationField",
    #         query_version: "QueryVersion",
    #       }
    #
    # @!attribute [rw] index_name
    #   The name of the index to search.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The search query.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_field
    #   The field to aggregate.
    #   @return [String]
    #
    # @!attribute [rw] query_version
    #   The query version.
    #   @return [String]
    #
    class GetCardinalityRequest < Struct.new(
      :index_name,
      :query_string,
      :aggregation_field,
      :query_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cardinality
    #   The approximate count of unique values that match the query.
    #   @return [Integer]
    #
    class GetCardinalityResponse < Struct.new(
      :cardinality)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEffectivePoliciesRequest
    #   data as a hash:
    #
    #       {
    #         principal: "Principal",
    #         cognito_identity_pool_id: "CognitoIdentityPoolId",
    #         thing_name: "ThingName",
    #       }
    #
    # @!attribute [rw] principal
    #   The principal. Valid principals are CertificateArn
    #   (arn:aws:iot:*region*\:*accountId*\:cert/*certificateId*),
    #   thingGroupArn
    #   (arn:aws:iot:*region*\:*accountId*\:thinggroup/*groupName*) and
    #   CognitoId (*region*\:*id*).
    #   @return [String]
    #
    # @!attribute [rw] cognito_identity_pool_id
    #   The Cognito identity pool ID.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The thing name.
    #   @return [String]
    #
    class GetEffectivePoliciesRequest < Struct.new(
      :principal,
      :cognito_identity_pool_id,
      :thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] effective_policies
    #   The effective policies.
    #   @return [Array<Types::EffectivePolicy>]
    #
    class GetEffectivePoliciesResponse < Struct.new(
      :effective_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    class GetIndexingConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] thing_indexing_configuration
    #   Thing indexing configuration.
    #   @return [Types::ThingIndexingConfiguration]
    #
    # @!attribute [rw] thing_group_indexing_configuration
    #   The index configuration.
    #   @return [Types::ThingGroupIndexingConfiguration]
    #
    class GetIndexingConfigurationResponse < Struct.new(
      :thing_indexing_configuration,
      :thing_group_indexing_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetJobDocumentRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The unique identifier you assigned to this job when it was created.
    #   @return [String]
    #
    class GetJobDocumentRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document
    #   The job document content.
    #   @return [String]
    #
    class GetJobDocumentResponse < Struct.new(
      :document)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the GetLoggingOptions operation.
    #
    # @api private
    #
    class GetLoggingOptionsRequest < Aws::EmptyStructure; end

    # The output from the GetLoggingOptions operation.
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that grants access.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   The logging level.
    #   @return [String]
    #
    class GetLoggingOptionsResponse < Struct.new(
      :role_arn,
      :log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetOTAUpdateRequest
    #   data as a hash:
    #
    #       {
    #         ota_update_id: "OTAUpdateId", # required
    #       }
    #
    # @!attribute [rw] ota_update_id
    #   The OTA update ID.
    #   @return [String]
    #
    class GetOTAUpdateRequest < Struct.new(
      :ota_update_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ota_update_info
    #   The OTA update info.
    #   @return [Types::OTAUpdateInfo]
    #
    class GetOTAUpdateResponse < Struct.new(
      :ota_update_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPercentilesRequest
    #   data as a hash:
    #
    #       {
    #         index_name: "IndexName",
    #         query_string: "QueryString", # required
    #         aggregation_field: "AggregationField",
    #         query_version: "QueryVersion",
    #         percents: [1.0],
    #       }
    #
    # @!attribute [rw] index_name
    #   The name of the index to search.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The query string.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_field
    #   The field to aggregate.
    #   @return [String]
    #
    # @!attribute [rw] query_version
    #   The query version.
    #   @return [String]
    #
    # @!attribute [rw] percents
    #   The percentile groups returned.
    #   @return [Array<Float>]
    #
    class GetPercentilesRequest < Struct.new(
      :index_name,
      :query_string,
      :aggregation_field,
      :query_version,
      :percents)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] percentiles
    #   The percentile values of the aggregated fields.
    #   @return [Array<Types::PercentPair>]
    #
    class GetPercentilesResponse < Struct.new(
      :percentiles)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the GetPolicy operation.
    #
    # @note When making an API call, you may pass GetPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "PolicyName", # required
    #       }
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    class GetPolicyRequest < Struct.new(
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the GetPolicy operation.
    #
    # @!attribute [rw] policy_name
    #   The policy name.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The policy ARN.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The JSON document that describes the policy.
    #   @return [String]
    #
    # @!attribute [rw] default_version_id
    #   The default policy version ID.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the policy was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date the policy was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] generation_id
    #   The generation ID of the policy.
    #   @return [String]
    #
    class GetPolicyResponse < Struct.new(
      :policy_name,
      :policy_arn,
      :policy_document,
      :default_version_id,
      :creation_date,
      :last_modified_date,
      :generation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the GetPolicyVersion operation.
    #
    # @note When making an API call, you may pass GetPolicyVersionRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "PolicyName", # required
    #         policy_version_id: "PolicyVersionId", # required
    #       }
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_version_id
    #   The policy version ID.
    #   @return [String]
    #
    class GetPolicyVersionRequest < Struct.new(
      :policy_name,
      :policy_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the GetPolicyVersion operation.
    #
    # @!attribute [rw] policy_arn
    #   The policy ARN.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The policy name.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The JSON document that describes the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_version_id
    #   The policy version ID.
    #   @return [String]
    #
    # @!attribute [rw] is_default_version
    #   Specifies whether the policy version is the default.
    #   @return [Boolean]
    #
    # @!attribute [rw] creation_date
    #   The date the policy was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date the policy was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] generation_id
    #   The generation ID of the policy version.
    #   @return [String]
    #
    class GetPolicyVersionResponse < Struct.new(
      :policy_arn,
      :policy_name,
      :policy_document,
      :policy_version_id,
      :is_default_version,
      :creation_date,
      :last_modified_date,
      :generation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input to the GetRegistrationCode operation.
    #
    # @api private
    #
    class GetRegistrationCodeRequest < Aws::EmptyStructure; end

    # The output from the GetRegistrationCode operation.
    #
    # @!attribute [rw] registration_code
    #   The CA certificate registration code.
    #   @return [String]
    #
    class GetRegistrationCodeResponse < Struct.new(
      :registration_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetStatisticsRequest
    #   data as a hash:
    #
    #       {
    #         index_name: "IndexName",
    #         query_string: "QueryString", # required
    #         aggregation_field: "AggregationField",
    #         query_version: "QueryVersion",
    #       }
    #
    # @!attribute [rw] index_name
    #   The name of the index to search. The default value is `AWS_Things`.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The query used to search. You can specify "*" for the query
    #   string to get the count of all indexed things in your AWS account.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_field
    #   The aggregation field name.
    #   @return [String]
    #
    # @!attribute [rw] query_version
    #   The version of the query used to search.
    #   @return [String]
    #
    class GetStatisticsRequest < Struct.new(
      :index_name,
      :query_string,
      :aggregation_field,
      :query_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] statistics
    #   The statistics returned by the Fleet Indexing service based on the
    #   query and aggregation field.
    #   @return [Types::Statistics]
    #
    class GetStatisticsResponse < Struct.new(
      :statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTopicRuleDestinationRequest
    #   data as a hash:
    #
    #       {
    #         arn: "AwsArn", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the topic rule destination.
    #   @return [String]
    #
    class GetTopicRuleDestinationRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] topic_rule_destination
    #   The topic rule destination.
    #   @return [Types::TopicRuleDestination]
    #
    class GetTopicRuleDestinationResponse < Struct.new(
      :topic_rule_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the GetTopicRule operation.
    #
    # @note When making an API call, you may pass GetTopicRuleRequest
    #   data as a hash:
    #
    #       {
    #         rule_name: "RuleName", # required
    #       }
    #
    # @!attribute [rw] rule_name
    #   The name of the rule.
    #   @return [String]
    #
    class GetTopicRuleRequest < Struct.new(
      :rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the GetTopicRule operation.
    #
    # @!attribute [rw] rule_arn
    #   The rule ARN.
    #   @return [String]
    #
    # @!attribute [rw] rule
    #   The rule.
    #   @return [Types::TopicRule]
    #
    class GetTopicRuleResponse < Struct.new(
      :rule_arn,
      :rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    class GetV2LoggingOptionsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] role_arn
    #   The IAM role ARN AWS IoT uses to write to your CloudWatch logs.
    #   @return [String]
    #
    # @!attribute [rw] default_log_level
    #   The default log level.
    #   @return [String]
    #
    # @!attribute [rw] disable_all_logs
    #   Disables all logs.
    #   @return [Boolean]
    #
    class GetV2LoggingOptionsResponse < Struct.new(
      :role_arn,
      :default_log_level,
      :disable_all_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The name and ARN of a group.
    #
    # @!attribute [rw] group_name
    #   The group name.
    #   @return [String]
    #
    # @!attribute [rw] group_arn
    #   The group ARN.
    #   @return [String]
    #
    class GroupNameAndArn < Struct.new(
      :group_name,
      :group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Send data to an HTTPS endpoint.
    #
    # @note When making an API call, you may pass HttpAction
    #   data as a hash:
    #
    #       {
    #         url: "Url", # required
    #         confirmation_url: "Url",
    #         headers: [
    #           {
    #             key: "HeaderKey", # required
    #             value: "HeaderValue", # required
    #           },
    #         ],
    #         auth: {
    #           sigv4: {
    #             signing_region: "SigningRegion", # required
    #             service_name: "ServiceName", # required
    #             role_arn: "AwsArn", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] url
    #   The endpoint URL. If substitution templates are used in the URL, you
    #   must also specify a `confirmationUrl`. If this is a new destination,
    #   a new `TopicRuleDestination` is created if possible.
    #   @return [String]
    #
    # @!attribute [rw] confirmation_url
    #   The URL to which AWS IoT sends a confirmation message. The value of
    #   the confirmation URL must be a prefix of the endpoint URL. If you do
    #   not specify a confirmation URL AWS IoT uses the endpoint URL as the
    #   confirmation URL. If you use substitution templates in the
    #   confirmationUrl, you must create and enable topic rule destinations
    #   that match each possible value of the substitution template before
    #   traffic is allowed to your endpoint URL.
    #   @return [String]
    #
    # @!attribute [rw] headers
    #   The HTTP headers to send with the message data.
    #   @return [Array<Types::HttpActionHeader>]
    #
    # @!attribute [rw] auth
    #   The authentication method to use when sending data to an HTTPS
    #   endpoint.
    #   @return [Types::HttpAuthorization]
    #
    class HttpAction < Struct.new(
      :url,
      :confirmation_url,
      :headers,
      :auth)
      SENSITIVE = []
      include Aws::Structure
    end

    # The HTTP action header.
    #
    # @note When making an API call, you may pass HttpActionHeader
    #   data as a hash:
    #
    #       {
    #         key: "HeaderKey", # required
    #         value: "HeaderValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The HTTP header key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The HTTP header value. Substitution templates are supported.
    #   @return [String]
    #
    class HttpActionHeader < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The authorization method used to send messages.
    #
    # @note When making an API call, you may pass HttpAuthorization
    #   data as a hash:
    #
    #       {
    #         sigv4: {
    #           signing_region: "SigningRegion", # required
    #           service_name: "ServiceName", # required
    #           role_arn: "AwsArn", # required
    #         },
    #       }
    #
    # @!attribute [rw] sigv4
    #   Use Sig V4 authorization. For more information, see [Signature
    #   Version 4 Signing Process][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #   @return [Types::SigV4Authorization]
    #
    class HttpAuthorization < Struct.new(
      :sigv4)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the HTTP context to use for the test authorizer request.
    #
    # @note When making an API call, you may pass HttpContext
    #   data as a hash:
    #
    #       {
    #         headers: {
    #           "HttpHeaderName" => "HttpHeaderValue",
    #         },
    #         query_string: "HttpQueryString",
    #       }
    #
    # @!attribute [rw] headers
    #   The header keys and values in an HTTP authorization request.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] query_string
    #   The query string keys and values in an HTTP authorization request.
    #   @return [String]
    #
    class HttpContext < Struct.new(
      :headers,
      :query_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # HTTP URL destination configuration used by the topic rule's HTTP
    # action.
    #
    # @note When making an API call, you may pass HttpUrlDestinationConfiguration
    #   data as a hash:
    #
    #       {
    #         confirmation_url: "Url", # required
    #       }
    #
    # @!attribute [rw] confirmation_url
    #   The URL AWS IoT uses to confirm ownership of or access to the topic
    #   rule destination URL.
    #   @return [String]
    #
    class HttpUrlDestinationConfiguration < Struct.new(
      :confirmation_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # HTTP URL destination properties.
    #
    # @!attribute [rw] confirmation_url
    #   The URL used to confirm the HTTP topic rule destination URL.
    #   @return [String]
    #
    class HttpUrlDestinationProperties < Struct.new(
      :confirmation_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an HTTP URL destination.
    #
    # @!attribute [rw] confirmation_url
    #   The URL used to confirm ownership of or access to the HTTP topic
    #   rule destination URL.
    #   @return [String]
    #
    class HttpUrlDestinationSummary < Struct.new(
      :confirmation_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information that implicitly denies authorization. When policy doesn't
    # explicitly deny or allow an action on a resource it is considered an
    # implicit deny.
    #
    # @!attribute [rw] policies
    #   Policies that don't contain a matching allow or deny statement for
    #   the specified action on the specified resource.
    #   @return [Array<Types::Policy>]
    #
    class ImplicitDeny < Struct.new(
      :policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # The index is not ready.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class IndexNotReadyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error has occurred.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class InternalException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error has occurred.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class InternalFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The aggregation is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InvalidAggregationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The query is invalid.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class InvalidQueryException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is not valid.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response is invalid.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class InvalidResponseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An attempt was made to change to an invalid state, for example by
    # deleting a job or a job execution which is "IN\_PROGRESS" without
    # setting the `force` parameter.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class InvalidStateTransitionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sends message data to an AWS IoT Analytics channel.
    #
    # @note When making an API call, you may pass IotAnalyticsAction
    #   data as a hash:
    #
    #       {
    #         channel_arn: "AwsArn",
    #         channel_name: "ChannelName",
    #         role_arn: "AwsArn",
    #       }
    #
    # @!attribute [rw] channel_arn
    #   (deprecated) The ARN of the IoT Analytics channel to which message
    #   data will be sent.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the IoT Analytics channel to which message data will be
    #   sent.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role which has a policy that grants IoT Analytics
    #   permission to send message data via IoT Analytics
    #   (iotanalytics:BatchPutMessage).
    #   @return [String]
    #
    class IotAnalyticsAction < Struct.new(
      :channel_arn,
      :channel_name,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sends an input to an AWS IoT Events detector.
    #
    # @note When making an API call, you may pass IotEventsAction
    #   data as a hash:
    #
    #       {
    #         input_name: "InputName", # required
    #         message_id: "MessageId",
    #         role_arn: "AwsArn", # required
    #       }
    #
    # @!attribute [rw] input_name
    #   The name of the AWS IoT Events input.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   \[Optional\] Use this to ensure that only one input (message) with a
    #   given messageId will be processed by an AWS IoT Events detector.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants AWS IoT permission to send an input
    #   to an AWS IoT Events detector.
    #   ("Action":"iotevents:BatchPutMessage").
    #   @return [String]
    #
    class IotEventsAction < Struct.new(
      :input_name,
      :message_id,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an action to send data from an MQTT message that triggered
    # the rule to AWS IoT SiteWise asset properties.
    #
    # @note When making an API call, you may pass IotSiteWiseAction
    #   data as a hash:
    #
    #       {
    #         put_asset_property_value_entries: [ # required
    #           {
    #             entry_id: "AssetPropertyEntryId",
    #             asset_id: "AssetId",
    #             property_id: "AssetPropertyId",
    #             property_alias: "AssetPropertyAlias",
    #             property_values: [ # required
    #               {
    #                 value: { # required
    #                   string_value: "AssetPropertyStringValue",
    #                   integer_value: "AssetPropertyIntegerValue",
    #                   double_value: "AssetPropertyDoubleValue",
    #                   boolean_value: "AssetPropertyBooleanValue",
    #                 },
    #                 timestamp: { # required
    #                   time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                   offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                 },
    #                 quality: "AssetPropertyQuality",
    #               },
    #             ],
    #           },
    #         ],
    #         role_arn: "AwsArn", # required
    #       }
    #
    # @!attribute [rw] put_asset_property_value_entries
    #   A list of asset property value entries.
    #   @return [Array<Types::PutAssetPropertyValueEntry>]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants AWS IoT permission to send an asset
    #   property value to AWS IoTSiteWise. (`"Action":
    #   "iotsitewise:BatchPutAssetPropertyValue"`). The trust policy can
    #   restrict access to specific asset hierarchy paths.
    #   @return [String]
    #
    class IotSiteWiseAction < Struct.new(
      :put_asset_property_value_entries,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `Job` object contains details about a job.
    #
    # @!attribute [rw] job_arn
    #   An ARN identifying the job with format
    #   "arn:aws:iot:region:account:job/jobId".
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique identifier you assigned to this job when it was created.
    #   @return [String]
    #
    # @!attribute [rw] target_selection
    #   Specifies whether the job will continue to run (CONTINUOUS), or will
    #   be complete after all those things specified as targets have
    #   completed the job (SNAPSHOT). If continuous, the job may also be run
    #   on a thing when a change is detected in a target. For example, a job
    #   will run on a device when the thing representing the device is added
    #   to a target group, even after the job was completed by all things
    #   originally in the group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the job, one of `IN_PROGRESS`, `CANCELED`,
    #   `DELETION_IN_PROGRESS` or `COMPLETED`.
    #   @return [String]
    #
    # @!attribute [rw] force_canceled
    #   Will be `true` if the job was canceled with the optional `force`
    #   parameter set to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] reason_code
    #   If the job was updated, provides the reason code for the update.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   If the job was updated, describes the reason for the update.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   A list of IoT things and thing groups to which the job should be
    #   sent.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   A short text description of the job.
    #   @return [String]
    #
    # @!attribute [rw] presigned_url_config
    #   Configuration for pre-signed S3 URLs.
    #   @return [Types::PresignedUrlConfig]
    #
    # @!attribute [rw] job_executions_rollout_config
    #   Allows you to create a staged rollout of a job.
    #   @return [Types::JobExecutionsRolloutConfig]
    #
    # @!attribute [rw] abort_config
    #   Configuration for criteria to abort the job.
    #   @return [Types::AbortConfig]
    #
    # @!attribute [rw] created_at
    #   The time, in seconds since the epoch, when the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in seconds since the epoch, when the job was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] completed_at
    #   The time, in seconds since the epoch, when the job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] job_process_details
    #   Details about the job process.
    #   @return [Types::JobProcessDetails]
    #
    # @!attribute [rw] timeout_config
    #   Specifies the amount of time each device has to finish its execution
    #   of the job. A timer is started when the job execution status is set
    #   to `IN_PROGRESS`. If the job execution status is not set to another
    #   terminal state before the timer expires, it will be automatically
    #   set to `TIMED_OUT`.
    #   @return [Types::TimeoutConfig]
    #
    class Job < Struct.new(
      :job_arn,
      :job_id,
      :target_selection,
      :status,
      :force_canceled,
      :reason_code,
      :comment,
      :targets,
      :description,
      :presigned_url_config,
      :job_executions_rollout_config,
      :abort_config,
      :created_at,
      :last_updated_at,
      :completed_at,
      :job_process_details,
      :timeout_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The job execution object represents the execution of a job on a
    # particular device.
    #
    # @!attribute [rw] job_id
    #   The unique identifier you assigned to the job when it was created.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the job execution (IN\_PROGRESS, QUEUED, FAILED,
    #   SUCCEEDED, TIMED\_OUT, CANCELED, or REJECTED).
    #   @return [String]
    #
    # @!attribute [rw] force_canceled
    #   Will be `true` if the job execution was canceled with the optional
    #   `force` parameter set to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] status_details
    #   A collection of name/value pairs that describe the status of the job
    #   execution.
    #   @return [Types::JobExecutionStatusDetails]
    #
    # @!attribute [rw] thing_arn
    #   The ARN of the thing on which the job execution is running.
    #   @return [String]
    #
    # @!attribute [rw] queued_at
    #   The time, in seconds since the epoch, when the job execution was
    #   queued.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The time, in seconds since the epoch, when the job execution
    #   started.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in seconds since the epoch, when the job execution was
    #   last updated.
    #   @return [Time]
    #
    # @!attribute [rw] execution_number
    #   A string (consisting of the digits "0" through "9") which
    #   identifies this particular job execution on this particular device.
    #   It can be used in commands which return or update job execution
    #   information.
    #   @return [Integer]
    #
    # @!attribute [rw] version_number
    #   The version of the job execution. Job execution versions are
    #   incremented each time they are updated by a device.
    #   @return [Integer]
    #
    # @!attribute [rw] approximate_seconds_before_timed_out
    #   The estimated number of seconds that remain before the job execution
    #   status will be changed to `TIMED_OUT`. The timeout interval can be
    #   anywhere between 1 minute and 7 days (1 to 10080 minutes). The
    #   actual job execution timeout can occur up to 60 seconds later than
    #   the estimated duration. This value will not be included if the job
    #   execution has reached a terminal status.
    #   @return [Integer]
    #
    class JobExecution < Struct.new(
      :job_id,
      :status,
      :force_canceled,
      :status_details,
      :thing_arn,
      :queued_at,
      :started_at,
      :last_updated_at,
      :execution_number,
      :version_number,
      :approximate_seconds_before_timed_out)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the job execution status.
    #
    # @!attribute [rw] details_map
    #   The job execution status.
    #   @return [Hash<String,String>]
    #
    class JobExecutionStatusDetails < Struct.new(
      :details_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # The job execution summary.
    #
    # @!attribute [rw] status
    #   The status of the job execution.
    #   @return [String]
    #
    # @!attribute [rw] queued_at
    #   The time, in seconds since the epoch, when the job execution was
    #   queued.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The time, in seconds since the epoch, when the job execution
    #   started.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in seconds since the epoch, when the job execution was
    #   last updated.
    #   @return [Time]
    #
    # @!attribute [rw] execution_number
    #   A string (consisting of the digits "0" through "9") which
    #   identifies this particular job execution on this particular device.
    #   It can be used later in commands which return or update job
    #   execution information.
    #   @return [Integer]
    #
    class JobExecutionSummary < Struct.new(
      :status,
      :queued_at,
      :started_at,
      :last_updated_at,
      :execution_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of information about job executions for a specific
    # job.
    #
    # @!attribute [rw] thing_arn
    #   The ARN of the thing on which the job execution is running.
    #   @return [String]
    #
    # @!attribute [rw] job_execution_summary
    #   Contains a subset of information about a job execution.
    #   @return [Types::JobExecutionSummary]
    #
    class JobExecutionSummaryForJob < Struct.new(
      :thing_arn,
      :job_execution_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # The job execution summary for a thing.
    #
    # @!attribute [rw] job_id
    #   The unique identifier you assigned to this job when it was created.
    #   @return [String]
    #
    # @!attribute [rw] job_execution_summary
    #   Contains a subset of information about a job execution.
    #   @return [Types::JobExecutionSummary]
    #
    class JobExecutionSummaryForThing < Struct.new(
      :job_id,
      :job_execution_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows you to create a staged rollout of a job.
    #
    # @note When making an API call, you may pass JobExecutionsRolloutConfig
    #   data as a hash:
    #
    #       {
    #         maximum_per_minute: 1,
    #         exponential_rate: {
    #           base_rate_per_minute: 1, # required
    #           increment_factor: 1.0, # required
    #           rate_increase_criteria: { # required
    #             number_of_notified_things: 1,
    #             number_of_succeeded_things: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] maximum_per_minute
    #   The maximum number of things that will be notified of a pending job,
    #   per minute. This parameter allows you to create a staged rollout.
    #   @return [Integer]
    #
    # @!attribute [rw] exponential_rate
    #   The rate of increase for a job rollout. This parameter allows you to
    #   define an exponential rate for a job rollout.
    #   @return [Types::ExponentialRolloutRate]
    #
    class JobExecutionsRolloutConfig < Struct.new(
      :maximum_per_minute,
      :exponential_rate)
      SENSITIVE = []
      include Aws::Structure
    end

    # The job process details.
    #
    # @!attribute [rw] processing_targets
    #   The target devices to which the job execution is being rolled out.
    #   This value will be null after the job execution has finished rolling
    #   out to all the target devices.
    #   @return [Array<String>]
    #
    # @!attribute [rw] number_of_canceled_things
    #   The number of things that cancelled the job.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_succeeded_things
    #   The number of things which successfully completed the job.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_failed_things
    #   The number of things that failed executing the job.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_rejected_things
    #   The number of things that rejected the job.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_queued_things
    #   The number of things that are awaiting execution of the job.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_in_progress_things
    #   The number of things currently executing the job.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_removed_things
    #   The number of things that are no longer scheduled to execute the job
    #   because they have been deleted or have been removed from the group
    #   that was a target of the job.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_timed_out_things
    #   The number of things whose job execution status is `TIMED_OUT`.
    #   @return [Integer]
    #
    class JobProcessDetails < Struct.new(
      :processing_targets,
      :number_of_canceled_things,
      :number_of_succeeded_things,
      :number_of_failed_things,
      :number_of_rejected_things,
      :number_of_queued_things,
      :number_of_in_progress_things,
      :number_of_removed_things,
      :number_of_timed_out_things)
      SENSITIVE = []
      include Aws::Structure
    end

    # The job summary.
    #
    # @!attribute [rw] job_arn
    #   The job ARN.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique identifier you assigned to this job when it was created.
    #   @return [String]
    #
    # @!attribute [rw] thing_group_id
    #   The ID of the thing group.
    #   @return [String]
    #
    # @!attribute [rw] target_selection
    #   Specifies whether the job will continue to run (CONTINUOUS), or will
    #   be complete after all those things specified as targets have
    #   completed the job (SNAPSHOT). If continuous, the job may also be run
    #   on a thing when a change is detected in a target. For example, a job
    #   will run on a thing when the thing is added to a target group, even
    #   after the job was completed by all things originally in the group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job summary status.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in seconds since the epoch, when the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in seconds since the epoch, when the job was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] completed_at
    #   The time, in seconds since the epoch, when the job completed.
    #   @return [Time]
    #
    class JobSummary < Struct.new(
      :job_arn,
      :job_id,
      :thing_group_id,
      :target_selection,
      :status,
      :created_at,
      :last_updated_at,
      :completed_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a key pair.
    #
    # @!attribute [rw] public_key
    #   The public key.
    #   @return [String]
    #
    # @!attribute [rw] private_key
    #   The private key.
    #   @return [String]
    #
    class KeyPair < Struct.new(
      :public_key,
      :private_key)
      SENSITIVE = [:private_key]
      include Aws::Structure
    end

    # Describes an action to write data to an Amazon Kinesis stream.
    #
    # @note When making an API call, you may pass KinesisAction
    #   data as a hash:
    #
    #       {
    #         role_arn: "AwsArn", # required
    #         stream_name: "StreamName", # required
    #         partition_key: "PartitionKey",
    #       }
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that grants access to the Amazon Kinesis
    #   stream.
    #   @return [String]
    #
    # @!attribute [rw] stream_name
    #   The name of the Amazon Kinesis stream.
    #   @return [String]
    #
    # @!attribute [rw] partition_key
    #   The partition key.
    #   @return [String]
    #
    class KinesisAction < Struct.new(
      :role_arn,
      :stream_name,
      :partition_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an action to invoke a Lambda function.
    #
    # @note When making an API call, you may pass LambdaAction
    #   data as a hash:
    #
    #       {
    #         function_arn: "FunctionArn", # required
    #       }
    #
    # @!attribute [rw] function_arn
    #   The ARN of the Lambda function.
    #   @return [String]
    #
    class LambdaAction < Struct.new(
      :function_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A limit has been exceeded.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListActiveViolationsRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "DeviceDefenderThingName",
    #         security_profile_name: "SecurityProfileName",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing whose active violations are listed.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_name
    #   The name of the Device Defender security profile for which
    #   violations are listed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListActiveViolationsRequest < Struct.new(
      :thing_name,
      :security_profile_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] active_violations
    #   The list of active violations.
    #   @return [Array<Types::ActiveViolation>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results, or
    #   `null` if there are no additional results.
    #   @return [String]
    #
    class ListActiveViolationsResponse < Struct.new(
      :active_violations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAttachedPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         target: "PolicyTarget", # required
    #         recursive: false,
    #         marker: "Marker",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] target
    #   The group or principal for which the policies will be listed. Valid
    #   principals are CertificateArn
    #   (arn:aws:iot:*region*\:*accountId*\:cert/*certificateId*),
    #   thingGroupArn
    #   (arn:aws:iot:*region*\:*accountId*\:thinggroup/*groupName*) and
    #   CognitoId (*region*\:*id*).
    #   @return [String]
    #
    # @!attribute [rw] recursive
    #   When true, recursively list attached policies.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    class ListAttachedPoliciesRequest < Struct.new(
      :target,
      :recursive,
      :marker,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policies
    #   The policies.
    #   @return [Array<Types::Policy>]
    #
    # @!attribute [rw] next_marker
    #   The token to retrieve the next set of results, or ``null`` if
    #   there are no more results.
    #   @return [String]
    #
    class ListAttachedPoliciesResponse < Struct.new(
      :policies,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAuditFindingsRequest
    #   data as a hash:
    #
    #       {
    #         task_id: "AuditTaskId",
    #         check_name: "AuditCheckName",
    #         resource_identifier: {
    #           device_certificate_id: "CertificateId",
    #           ca_certificate_id: "CertificateId",
    #           cognito_identity_pool_id: "CognitoIdentityPoolId",
    #           client_id: "ClientId",
    #           policy_version_identifier: {
    #             policy_name: "PolicyName",
    #             policy_version_id: "PolicyVersionId",
    #           },
    #           account: "AwsAccountId",
    #           iam_role_arn: "RoleArn",
    #           role_alias_arn: "RoleAliasArn",
    #         },
    #         max_results: 1,
    #         next_token: "NextToken",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         list_suppressed_findings: false,
    #       }
    #
    # @!attribute [rw] task_id
    #   A filter to limit results to the audit with the specified ID. You
    #   must specify either the taskId or the startTime and endTime, but not
    #   both.
    #   @return [String]
    #
    # @!attribute [rw] check_name
    #   A filter to limit results to the findings for the specified audit
    #   check.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   Information identifying the noncompliant resource.
    #   @return [Types::ResourceIdentifier]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   A filter to limit results to those found after the specified time.
    #   You must specify either the startTime and endTime or the taskId, but
    #   not both.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   A filter to limit results to those found before the specified time.
    #   You must specify either the startTime and endTime or the taskId, but
    #   not both.
    #   @return [Time]
    #
    # @!attribute [rw] list_suppressed_findings
    #   Boolean flag indicating whether only the suppressed findings or the
    #   unsuppressed findings should be listed. If this parameter isn't
    #   provided, the response will list both suppressed and unsuppressed
    #   findings.
    #   @return [Boolean]
    #
    class ListAuditFindingsRequest < Struct.new(
      :task_id,
      :check_name,
      :resource_identifier,
      :max_results,
      :next_token,
      :start_time,
      :end_time,
      :list_suppressed_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] findings
    #   The findings (results) of the audit.
    #   @return [Array<Types::AuditFinding>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results, or
    #   `null` if there are no additional results.
    #   @return [String]
    #
    class ListAuditFindingsResponse < Struct.new(
      :findings,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAuditMitigationActionsExecutionsRequest
    #   data as a hash:
    #
    #       {
    #         task_id: "AuditMitigationActionsTaskId", # required
    #         action_status: "IN_PROGRESS", # accepts IN_PROGRESS, COMPLETED, FAILED, CANCELED, SKIPPED, PENDING
    #         finding_id: "FindingId", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] task_id
    #   Specify this filter to limit results to actions for a specific audit
    #   mitigation actions task.
    #   @return [String]
    #
    # @!attribute [rw] action_status
    #   Specify this filter to limit results to those with a specific
    #   status.
    #   @return [String]
    #
    # @!attribute [rw] finding_id
    #   Specify this filter to limit results to those that were applied to a
    #   specific audit finding.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    class ListAuditMitigationActionsExecutionsRequest < Struct.new(
      :task_id,
      :action_status,
      :finding_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] actions_executions
    #   A set of task execution results based on the input parameters.
    #   Details include the mitigation action applied, start time, and task
    #   status.
    #   @return [Array<Types::AuditMitigationActionExecutionMetadata>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    class ListAuditMitigationActionsExecutionsResponse < Struct.new(
      :actions_executions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAuditMitigationActionsTasksRequest
    #   data as a hash:
    #
    #       {
    #         audit_task_id: "AuditTaskId",
    #         finding_id: "FindingId",
    #         task_status: "IN_PROGRESS", # accepts IN_PROGRESS, COMPLETED, FAILED, CANCELED
    #         max_results: 1,
    #         next_token: "NextToken",
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #       }
    #
    # @!attribute [rw] audit_task_id
    #   Specify this filter to limit results to tasks that were applied to
    #   results for a specific audit.
    #   @return [String]
    #
    # @!attribute [rw] finding_id
    #   Specify this filter to limit results to tasks that were applied to a
    #   specific audit finding.
    #   @return [String]
    #
    # @!attribute [rw] task_status
    #   Specify this filter to limit results to tasks that are in a specific
    #   state.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Specify this filter to limit results to tasks that began on or after
    #   a specific date and time.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Specify this filter to limit results to tasks that were completed or
    #   canceled on or before a specific date and time.
    #   @return [Time]
    #
    class ListAuditMitigationActionsTasksRequest < Struct.new(
      :audit_task_id,
      :finding_id,
      :task_status,
      :max_results,
      :next_token,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tasks
    #   The collection of audit mitigation tasks that matched the filter
    #   criteria.
    #   @return [Array<Types::AuditMitigationActionsTaskMetadata>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    class ListAuditMitigationActionsTasksResponse < Struct.new(
      :tasks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAuditSuppressionsRequest
    #   data as a hash:
    #
    #       {
    #         check_name: "AuditCheckName",
    #         resource_identifier: {
    #           device_certificate_id: "CertificateId",
    #           ca_certificate_id: "CertificateId",
    #           cognito_identity_pool_id: "CognitoIdentityPoolId",
    #           client_id: "ClientId",
    #           policy_version_identifier: {
    #             policy_name: "PolicyName",
    #             policy_version_id: "PolicyVersionId",
    #           },
    #           account: "AwsAccountId",
    #           iam_role_arn: "RoleArn",
    #           role_alias_arn: "RoleAliasArn",
    #         },
    #         ascending_order: false,
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] check_name
    #   An audit check name. Checks must be enabled for your account. (Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks,
    #   including those that are enabled or use
    #   `UpdateAccountAuditConfiguration` to select which checks are
    #   enabled.)
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   Information that identifies the noncompliant resource.
    #   @return [Types::ResourceIdentifier]
    #
    # @!attribute [rw] ascending_order
    #   Determines whether suppressions are listed in ascending order by
    #   expiration date or not. If parameter isn't provided,
    #   `ascendingOrder=true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #   @return [Integer]
    #
    class ListAuditSuppressionsRequest < Struct.new(
      :check_name,
      :resource_identifier,
      :ascending_order,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] suppressions
    #   List of audit suppressions.
    #   @return [Array<Types::AuditSuppression>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results, or
    #   `null` if there are no additional results.
    #   @return [String]
    #
    class ListAuditSuppressionsResponse < Struct.new(
      :suppressions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAuditTasksRequest
    #   data as a hash:
    #
    #       {
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         task_type: "ON_DEMAND_AUDIT_TASK", # accepts ON_DEMAND_AUDIT_TASK, SCHEDULED_AUDIT_TASK
    #         task_status: "IN_PROGRESS", # accepts IN_PROGRESS, COMPLETED, FAILED, CANCELED
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] start_time
    #   The beginning of the time period. Audit information is retained for
    #   a limited time (90 days). Requesting a start time prior to what is
    #   retained results in an "InvalidRequestException".
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time period.
    #   @return [Time]
    #
    # @!attribute [rw] task_type
    #   A filter to limit the output to the specified type of audit: can be
    #   one of "ON\_DEMAND\_AUDIT\_TASK" or "SCHEDULED\_\_AUDIT\_TASK".
    #   @return [String]
    #
    # @!attribute [rw] task_status
    #   A filter to limit the output to audits with the specified completion
    #   status: can be one of "IN\_PROGRESS", "COMPLETED", "FAILED",
    #   or "CANCELED".
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #   @return [Integer]
    #
    class ListAuditTasksRequest < Struct.new(
      :start_time,
      :end_time,
      :task_type,
      :task_status,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tasks
    #   The audits that were performed during the specified time period.
    #   @return [Array<Types::AuditTaskMetadata>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results, or
    #   `null` if there are no additional results.
    #   @return [String]
    #
    class ListAuditTasksResponse < Struct.new(
      :tasks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAuthorizersRequest
    #   data as a hash:
    #
    #       {
    #         page_size: 1,
    #         marker: "Marker",
    #         ascending_order: false,
    #         status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #       }
    #
    # @!attribute [rw] page_size
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   A marker used to get the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] ascending_order
    #   Return the list of authorizers in ascending alphabetical order.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The status of the list authorizers request.
    #   @return [String]
    #
    class ListAuthorizersRequest < Struct.new(
      :page_size,
      :marker,
      :ascending_order,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorizers
    #   The authorizers.
    #   @return [Array<Types::AuthorizerSummary>]
    #
    # @!attribute [rw] next_marker
    #   A marker used to get the next set of results.
    #   @return [String]
    #
    class ListAuthorizersResponse < Struct.new(
      :authorizers,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBillingGroupsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         name_prefix_filter: "BillingGroupName",
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per request.
    #   @return [Integer]
    #
    # @!attribute [rw] name_prefix_filter
    #   Limit the results to billing groups whose names have the given
    #   prefix.
    #   @return [String]
    #
    class ListBillingGroupsRequest < Struct.new(
      :next_token,
      :max_results,
      :name_prefix_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_groups
    #   The list of billing groups.
    #   @return [Array<Types::GroupNameAndArn>]
    #
    # @!attribute [rw] next_token
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
    #   @return [String]
    #
    class ListBillingGroupsResponse < Struct.new(
      :billing_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for the ListCACertificates operation.
    #
    # @note When making an API call, you may pass ListCACertificatesRequest
    #   data as a hash:
    #
    #       {
    #         page_size: 1,
    #         marker: "Marker",
    #         ascending_order: false,
    #       }
    #
    # @!attribute [rw] page_size
    #   The result page size.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] ascending_order
    #   Determines the order of the results.
    #   @return [Boolean]
    #
    class ListCACertificatesRequest < Struct.new(
      :page_size,
      :marker,
      :ascending_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the ListCACertificates operation.
    #
    # @!attribute [rw] certificates
    #   The CA certificates registered in your AWS account.
    #   @return [Array<Types::CACertificate>]
    #
    # @!attribute [rw] next_marker
    #   The current position within the list of CA certificates.
    #   @return [String]
    #
    class ListCACertificatesResponse < Struct.new(
      :certificates,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input to the ListCertificatesByCA operation.
    #
    # @note When making an API call, you may pass ListCertificatesByCARequest
    #   data as a hash:
    #
    #       {
    #         ca_certificate_id: "CertificateId", # required
    #         page_size: 1,
    #         marker: "Marker",
    #         ascending_order: false,
    #       }
    #
    # @!attribute [rw] ca_certificate_id
    #   The ID of the CA certificate. This operation will list all
    #   registered device certificate that were signed by this CA
    #   certificate.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The result page size.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] ascending_order
    #   Specifies the order for results. If True, the results are returned
    #   in ascending order, based on the creation date.
    #   @return [Boolean]
    #
    class ListCertificatesByCARequest < Struct.new(
      :ca_certificate_id,
      :page_size,
      :marker,
      :ascending_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output of the ListCertificatesByCA operation.
    #
    # @!attribute [rw] certificates
    #   The device certificates signed by the specified CA certificate.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] next_marker
    #   The marker for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListCertificatesByCAResponse < Struct.new(
      :certificates,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the ListCertificates operation.
    #
    # @note When making an API call, you may pass ListCertificatesRequest
    #   data as a hash:
    #
    #       {
    #         page_size: 1,
    #         marker: "Marker",
    #         ascending_order: false,
    #       }
    #
    # @!attribute [rw] page_size
    #   The result page size.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] ascending_order
    #   Specifies the order for results. If True, the results are returned
    #   in ascending order, based on the creation date.
    #   @return [Boolean]
    #
    class ListCertificatesRequest < Struct.new(
      :page_size,
      :marker,
      :ascending_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output of the ListCertificates operation.
    #
    # @!attribute [rw] certificates
    #   The descriptions of the certificates.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] next_marker
    #   The marker for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListCertificatesResponse < Struct.new(
      :certificates,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDimensionsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve at one time.
    #   @return [Integer]
    #
    class ListDimensionsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dimension_names
    #   A list of the names of the defined dimensions. Use
    #   `DescribeDimension` to get details for a dimension.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results, or
    #   `null` if there are no additional results.
    #   @return [String]
    #
    class ListDimensionsResponse < Struct.new(
      :dimension_names,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDomainConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         marker: "Marker",
    #         page_size: 1,
    #         service_type: "DATA", # accepts DATA, CREDENTIAL_PROVIDER, JOBS
    #       }
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The result page size.
    #   @return [Integer]
    #
    # @!attribute [rw] service_type
    #   The type of service delivered by the endpoint.
    #   @return [String]
    #
    class ListDomainConfigurationsRequest < Struct.new(
      :marker,
      :page_size,
      :service_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_configurations
    #   A list of objects that contain summary information about the user's
    #   domain configurations.
    #   @return [Array<Types::DomainConfigurationSummary>]
    #
    # @!attribute [rw] next_marker
    #   The marker for the next set of results.
    #   @return [String]
    #
    class ListDomainConfigurationsResponse < Struct.new(
      :domain_configurations,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListIndicesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token used to get the next set of results, or `null` if there
    #   are no additional results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListIndicesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] index_names
    #   The index names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token used to get the next set of results, or `null` if there
    #   are no additional results.
    #   @return [String]
    #
    class ListIndicesResponse < Struct.new(
      :index_names,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListJobExecutionsForJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         status: "QUEUED", # accepts QUEUED, IN_PROGRESS, SUCCEEDED, FAILED, TIMED_OUT, REJECTED, REMOVED, CANCELED
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] job_id
    #   The unique identifier you assigned to this job when it was created.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the job.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    class ListJobExecutionsForJobRequest < Struct.new(
      :job_id,
      :status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_summaries
    #   A list of job execution summaries.
    #   @return [Array<Types::JobExecutionSummaryForJob>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or **null** if there are no
    #   additional results.
    #   @return [String]
    #
    class ListJobExecutionsForJobResponse < Struct.new(
      :execution_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListJobExecutionsForThingRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #         status: "QUEUED", # accepts QUEUED, IN_PROGRESS, SUCCEEDED, FAILED, TIMED_OUT, REJECTED, REMOVED, CANCELED
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] thing_name
    #   The thing name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   An optional filter that lets you search for jobs that have the
    #   specified status.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    class ListJobExecutionsForThingRequest < Struct.new(
      :thing_name,
      :status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_summaries
    #   A list of job execution summaries.
    #   @return [Array<Types::JobExecutionSummaryForThing>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or **null** if there are no
    #   additional results.
    #   @return [String]
    #
    class ListJobExecutionsForThingResponse < Struct.new(
      :execution_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListJobsRequest
    #   data as a hash:
    #
    #       {
    #         status: "IN_PROGRESS", # accepts IN_PROGRESS, CANCELED, COMPLETED, DELETION_IN_PROGRESS
    #         target_selection: "CONTINUOUS", # accepts CONTINUOUS, SNAPSHOT
    #         max_results: 1,
    #         next_token: "NextToken",
    #         thing_group_name: "ThingGroupName",
    #         thing_group_id: "ThingGroupId",
    #       }
    #
    # @!attribute [rw] status
    #   An optional filter that lets you search for jobs that have the
    #   specified status.
    #   @return [String]
    #
    # @!attribute [rw] target_selection
    #   Specifies whether the job will continue to run (CONTINUOUS), or will
    #   be complete after all those things specified as targets have
    #   completed the job (SNAPSHOT). If continuous, the job may also be run
    #   on a thing when a change is detected in a target. For example, a job
    #   will run on a thing when the thing is added to a target group, even
    #   after the job was completed by all things originally in the group.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] thing_group_name
    #   A filter that limits the returned jobs to those for the specified
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] thing_group_id
    #   A filter that limits the returned jobs to those for the specified
    #   group.
    #   @return [String]
    #
    class ListJobsRequest < Struct.new(
      :status,
      :target_selection,
      :max_results,
      :next_token,
      :thing_group_name,
      :thing_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   A list of jobs.
    #   @return [Array<Types::JobSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or **null** if there are no
    #   additional results.
    #   @return [String]
    #
    class ListJobsResponse < Struct.new(
      :jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMitigationActionsRequest
    #   data as a hash:
    #
    #       {
    #         action_type: "UPDATE_DEVICE_CERTIFICATE", # accepts UPDATE_DEVICE_CERTIFICATE, UPDATE_CA_CERTIFICATE, ADD_THINGS_TO_THING_GROUP, REPLACE_DEFAULT_POLICY_VERSION, ENABLE_IOT_LOGGING, PUBLISH_FINDING_TO_SNS
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] action_type
    #   Specify a value to limit the result to mitigation actions with a
    #   specific action type.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    class ListMitigationActionsRequest < Struct.new(
      :action_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_identifiers
    #   A set of actions that matched the specified filter criteria.
    #   @return [Array<Types::MitigationActionIdentifier>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    class ListMitigationActionsResponse < Struct.new(
      :action_identifiers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListOTAUpdatesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         ota_update_status: "CREATE_PENDING", # accepts CREATE_PENDING, CREATE_IN_PROGRESS, CREATE_COMPLETE, CREATE_FAILED
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] ota_update_status
    #   The OTA update job status.
    #   @return [String]
    #
    class ListOTAUpdatesRequest < Struct.new(
      :max_results,
      :next_token,
      :ota_update_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ota_updates
    #   A list of OTA update jobs.
    #   @return [Array<Types::OTAUpdateSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use to get the next set of results.
    #   @return [String]
    #
    class ListOTAUpdatesResponse < Struct.new(
      :ota_updates,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input to the ListOutgoingCertificates operation.
    #
    # @note When making an API call, you may pass ListOutgoingCertificatesRequest
    #   data as a hash:
    #
    #       {
    #         page_size: 1,
    #         marker: "Marker",
    #         ascending_order: false,
    #       }
    #
    # @!attribute [rw] page_size
    #   The result page size.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] ascending_order
    #   Specifies the order for results. If True, the results are returned
    #   in ascending order, based on the creation date.
    #   @return [Boolean]
    #
    class ListOutgoingCertificatesRequest < Struct.new(
      :page_size,
      :marker,
      :ascending_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the ListOutgoingCertificates operation.
    #
    # @!attribute [rw] outgoing_certificates
    #   The certificates that are being transferred but not yet accepted.
    #   @return [Array<Types::OutgoingCertificate>]
    #
    # @!attribute [rw] next_marker
    #   The marker for the next set of results.
    #   @return [String]
    #
    class ListOutgoingCertificatesResponse < Struct.new(
      :outgoing_certificates,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the ListPolicies operation.
    #
    # @note When making an API call, you may pass ListPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         marker: "Marker",
    #         page_size: 1,
    #         ascending_order: false,
    #       }
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The result page size.
    #   @return [Integer]
    #
    # @!attribute [rw] ascending_order
    #   Specifies the order for results. If true, the results are returned
    #   in ascending creation order.
    #   @return [Boolean]
    #
    class ListPoliciesRequest < Struct.new(
      :marker,
      :page_size,
      :ascending_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the ListPolicies operation.
    #
    # @!attribute [rw] policies
    #   The descriptions of the policies.
    #   @return [Array<Types::Policy>]
    #
    # @!attribute [rw] next_marker
    #   The marker for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListPoliciesResponse < Struct.new(
      :policies,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the ListPolicyPrincipals operation.
    #
    # @note When making an API call, you may pass ListPolicyPrincipalsRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "PolicyName", # required
    #         marker: "Marker",
    #         page_size: 1,
    #         ascending_order: false,
    #       }
    #
    # @!attribute [rw] policy_name
    #   The policy name.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The result page size.
    #   @return [Integer]
    #
    # @!attribute [rw] ascending_order
    #   Specifies the order for results. If true, the results are returned
    #   in ascending creation order.
    #   @return [Boolean]
    #
    class ListPolicyPrincipalsRequest < Struct.new(
      :policy_name,
      :marker,
      :page_size,
      :ascending_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the ListPolicyPrincipals operation.
    #
    # @!attribute [rw] principals
    #   The descriptions of the principals.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_marker
    #   The marker for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListPolicyPrincipalsResponse < Struct.new(
      :principals,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the ListPolicyVersions operation.
    #
    # @note When making an API call, you may pass ListPolicyVersionsRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "PolicyName", # required
    #       }
    #
    # @!attribute [rw] policy_name
    #   The policy name.
    #   @return [String]
    #
    class ListPolicyVersionsRequest < Struct.new(
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the ListPolicyVersions operation.
    #
    # @!attribute [rw] policy_versions
    #   The policy versions.
    #   @return [Array<Types::PolicyVersion>]
    #
    class ListPolicyVersionsResponse < Struct.new(
      :policy_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the ListPrincipalPolicies operation.
    #
    # @note When making an API call, you may pass ListPrincipalPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         principal: "Principal", # required
    #         marker: "Marker",
    #         page_size: 1,
    #         ascending_order: false,
    #       }
    #
    # @!attribute [rw] principal
    #   The principal. Valid principals are CertificateArn
    #   (arn:aws:iot:*region*\:*accountId*\:cert/*certificateId*),
    #   thingGroupArn
    #   (arn:aws:iot:*region*\:*accountId*\:thinggroup/*groupName*) and
    #   CognitoId (*region*\:*id*).
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The result page size.
    #   @return [Integer]
    #
    # @!attribute [rw] ascending_order
    #   Specifies the order for results. If true, results are returned in
    #   ascending creation order.
    #   @return [Boolean]
    #
    class ListPrincipalPoliciesRequest < Struct.new(
      :principal,
      :marker,
      :page_size,
      :ascending_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the ListPrincipalPolicies operation.
    #
    # @!attribute [rw] policies
    #   The policies.
    #   @return [Array<Types::Policy>]
    #
    # @!attribute [rw] next_marker
    #   The marker for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListPrincipalPoliciesResponse < Struct.new(
      :policies,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the ListPrincipalThings operation.
    #
    # @note When making an API call, you may pass ListPrincipalThingsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         principal: "Principal", # required
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this operation.
    #   @return [Integer]
    #
    # @!attribute [rw] principal
    #   The principal.
    #   @return [String]
    #
    class ListPrincipalThingsRequest < Struct.new(
      :next_token,
      :max_results,
      :principal)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the ListPrincipalThings operation.
    #
    # @!attribute [rw] things
    #   The things.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
    #   @return [String]
    #
    class ListPrincipalThingsResponse < Struct.new(
      :things,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProvisioningTemplateVersionsRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "TemplateName", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] template_name
    #   The name of the fleet provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next set of results.
    #   @return [String]
    #
    class ListProvisioningTemplateVersionsRequest < Struct.new(
      :template_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] versions
    #   The list of fleet provisioning template versions.
    #   @return [Array<Types::ProvisioningTemplateVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next set of results.
    #   @return [String]
    #
    class ListProvisioningTemplateVersionsResponse < Struct.new(
      :versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProvisioningTemplatesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next set of results.
    #   @return [String]
    #
    class ListProvisioningTemplatesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] templates
    #   A list of fleet provisioning templates
    #   @return [Array<Types::ProvisioningTemplateSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next set of results.
    #   @return [String]
    #
    class ListProvisioningTemplatesResponse < Struct.new(
      :templates,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRoleAliasesRequest
    #   data as a hash:
    #
    #       {
    #         page_size: 1,
    #         marker: "Marker",
    #         ascending_order: false,
    #       }
    #
    # @!attribute [rw] page_size
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   A marker used to get the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] ascending_order
    #   Return the list of role aliases in ascending alphabetical order.
    #   @return [Boolean]
    #
    class ListRoleAliasesRequest < Struct.new(
      :page_size,
      :marker,
      :ascending_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_aliases
    #   The role aliases.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_marker
    #   A marker used to get the next set of results.
    #   @return [String]
    #
    class ListRoleAliasesResponse < Struct.new(
      :role_aliases,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListScheduledAuditsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #   @return [Integer]
    #
    class ListScheduledAuditsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_audits
    #   The list of scheduled audits.
    #   @return [Array<Types::ScheduledAuditMetadata>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results, or
    #   `null` if there are no additional results.
    #   @return [String]
    #
    class ListScheduledAuditsResponse < Struct.new(
      :scheduled_audits,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSecurityProfilesForTargetRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         recursive: false,
    #         security_profile_target_arn: "SecurityProfileTargetArn", # required
    #       }
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    # @!attribute [rw] recursive
    #   If true, return child groups too.
    #   @return [Boolean]
    #
    # @!attribute [rw] security_profile_target_arn
    #   The ARN of the target (thing group) whose attached security profiles
    #   you want to get.
    #   @return [String]
    #
    class ListSecurityProfilesForTargetRequest < Struct.new(
      :next_token,
      :max_results,
      :recursive,
      :security_profile_target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_profile_target_mappings
    #   A list of security profiles and their associated targets.
    #   @return [Array<Types::SecurityProfileTargetMapping>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results, or
    #   `null` if there are no additional results.
    #   @return [String]
    #
    class ListSecurityProfilesForTargetResponse < Struct.new(
      :security_profile_target_mappings,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSecurityProfilesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         dimension_name: "DimensionName",
    #       }
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    # @!attribute [rw] dimension_name
    #   A filter to limit results to the security profiles that use the
    #   defined dimension.
    #   @return [String]
    #
    class ListSecurityProfilesRequest < Struct.new(
      :next_token,
      :max_results,
      :dimension_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_profile_identifiers
    #   A list of security profile identifiers (names and ARNs).
    #   @return [Array<Types::SecurityProfileIdentifier>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results, or
    #   `null` if there are no additional results.
    #   @return [String]
    #
    class ListSecurityProfilesResponse < Struct.new(
      :security_profile_identifiers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListStreamsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         ascending_order: false,
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at a time.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used to get the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] ascending_order
    #   Set to true to return the list of streams in ascending order.
    #   @return [Boolean]
    #
    class ListStreamsRequest < Struct.new(
      :max_results,
      :next_token,
      :ascending_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streams
    #   A list of streams.
    #   @return [Array<Types::StreamSummary>]
    #
    # @!attribute [rw] next_token
    #   A token used to get the next set of results.
    #   @return [String]
    #
    class ListStreamsResponse < Struct.new(
      :streams,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
    #   @return [String]
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTargetsForPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "PolicyName", # required
    #         marker: "Marker",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] policy_name
    #   The policy name.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   A marker used to get the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListTargetsForPolicyRequest < Struct.new(
      :policy_name,
      :marker,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] targets
    #   The policy targets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_marker
    #   A marker used to get the next set of results.
    #   @return [String]
    #
    class ListTargetsForPolicyResponse < Struct.new(
      :targets,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTargetsForSecurityProfileRequest
    #   data as a hash:
    #
    #       {
    #         security_profile_name: "SecurityProfileName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] security_profile_name
    #   The security profile.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListTargetsForSecurityProfileRequest < Struct.new(
      :security_profile_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_profile_targets
    #   The thing groups to which the security profile is attached.
    #   @return [Array<Types::SecurityProfileTarget>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results, or
    #   `null` if there are no additional results.
    #   @return [String]
    #
    class ListTargetsForSecurityProfileResponse < Struct.new(
      :security_profile_targets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListThingGroupsForThingRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] thing_name
    #   The thing name.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListThingGroupsForThingRequest < Struct.new(
      :thing_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] thing_groups
    #   The thing groups.
    #   @return [Array<Types::GroupNameAndArn>]
    #
    # @!attribute [rw] next_token
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
    #   @return [String]
    #
    class ListThingGroupsForThingResponse < Struct.new(
      :thing_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListThingGroupsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         parent_group: "ThingGroupName",
    #         name_prefix_filter: "ThingGroupName",
    #         recursive: false,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    # @!attribute [rw] parent_group
    #   A filter that limits the results to those with the specified parent
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] name_prefix_filter
    #   A filter that limits the results to those with the specified name
    #   prefix.
    #   @return [String]
    #
    # @!attribute [rw] recursive
    #   If true, return child groups as well.
    #   @return [Boolean]
    #
    class ListThingGroupsRequest < Struct.new(
      :next_token,
      :max_results,
      :parent_group,
      :name_prefix_filter,
      :recursive)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] thing_groups
    #   The thing groups.
    #   @return [Array<Types::GroupNameAndArn>]
    #
    # @!attribute [rw] next_token
    #   The token used to get the next set of results. Will not be returned
    #   if operation has returned all results.
    #   @return [String]
    #
    class ListThingGroupsResponse < Struct.new(
      :thing_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the ListThingPrincipal operation.
    #
    # @note When making an API call, you may pass ListThingPrincipalsRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing.
    #   @return [String]
    #
    class ListThingPrincipalsRequest < Struct.new(
      :thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the ListThingPrincipals operation.
    #
    # @!attribute [rw] principals
    #   The principals associated with the thing.
    #   @return [Array<String>]
    #
    class ListThingPrincipalsResponse < Struct.new(
      :principals)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListThingRegistrationTaskReportsRequest
    #   data as a hash:
    #
    #       {
    #         task_id: "TaskId", # required
    #         report_type: "ERRORS", # required, accepts ERRORS, RESULTS
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] task_id
    #   The id of the task.
    #   @return [String]
    #
    # @!attribute [rw] report_type
    #   The type of task report.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per request.
    #   @return [Integer]
    #
    class ListThingRegistrationTaskReportsRequest < Struct.new(
      :task_id,
      :report_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_links
    #   Links to the task resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] report_type
    #   The type of task report.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
    #   @return [String]
    #
    class ListThingRegistrationTaskReportsResponse < Struct.new(
      :resource_links,
      :report_type,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListThingRegistrationTasksRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         status: "InProgress", # accepts InProgress, Completed, Failed, Cancelled, Cancelling
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the bulk thing provisioning task.
    #   @return [String]
    #
    class ListThingRegistrationTasksRequest < Struct.new(
      :next_token,
      :max_results,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_ids
    #   A list of bulk thing provisioning task IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
    #   @return [String]
    #
    class ListThingRegistrationTasksResponse < Struct.new(
      :task_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the ListThingTypes operation.
    #
    # @note When making an API call, you may pass ListThingTypesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         thing_type_name: "ThingTypeName",
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this operation.
    #   @return [Integer]
    #
    # @!attribute [rw] thing_type_name
    #   The name of the thing type.
    #   @return [String]
    #
    class ListThingTypesRequest < Struct.new(
      :next_token,
      :max_results,
      :thing_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for the ListThingTypes operation.
    #
    # @!attribute [rw] thing_types
    #   The thing types.
    #   @return [Array<Types::ThingTypeDefinition>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Will not be returned if
    #   operation has returned all results.
    #   @return [String]
    #
    class ListThingTypesResponse < Struct.new(
      :thing_types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListThingsInBillingGroupRequest
    #   data as a hash:
    #
    #       {
    #         billing_group_name: "BillingGroupName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] billing_group_name
    #   The name of the billing group.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per request.
    #   @return [Integer]
    #
    class ListThingsInBillingGroupRequest < Struct.new(
      :billing_group_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] things
    #   A list of things in the billing group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token used to get the next set of results. Will not be returned
    #   if operation has returned all results.
    #   @return [String]
    #
    class ListThingsInBillingGroupResponse < Struct.new(
      :things,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListThingsInThingGroupRequest
    #   data as a hash:
    #
    #       {
    #         thing_group_name: "ThingGroupName", # required
    #         recursive: false,
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] thing_group_name
    #   The thing group name.
    #   @return [String]
    #
    # @!attribute [rw] recursive
    #   When true, list things in this thing group and in all child groups
    #   as well.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListThingsInThingGroupRequest < Struct.new(
      :thing_group_name,
      :recursive,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] things
    #   The things in the specified thing group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
    #   @return [String]
    #
    class ListThingsInThingGroupResponse < Struct.new(
      :things,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the ListThings operation.
    #
    # @note When making an API call, you may pass ListThingsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         attribute_name: "AttributeName",
    #         attribute_value: "AttributeValue",
    #         thing_type_name: "ThingTypeName",
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this operation.
    #   @return [Integer]
    #
    # @!attribute [rw] attribute_name
    #   The attribute name used to search for things.
    #   @return [String]
    #
    # @!attribute [rw] attribute_value
    #   The attribute value used to search for things.
    #   @return [String]
    #
    # @!attribute [rw] thing_type_name
    #   The name of the thing type used to search for things.
    #   @return [String]
    #
    class ListThingsRequest < Struct.new(
      :next_token,
      :max_results,
      :attribute_name,
      :attribute_value,
      :thing_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the ListThings operation.
    #
    # @!attribute [rw] things
    #   The things.
    #   @return [Array<Types::ThingAttribute>]
    #
    # @!attribute [rw] next_token
    #   The token used to get the next set of results. Will not be returned
    #   if operation has returned all results.
    #   @return [String]
    #
    class ListThingsResponse < Struct.new(
      :things,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTopicRuleDestinationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    class ListTopicRuleDestinationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_summaries
    #   Information about a topic rule destination.
    #   @return [Array<Types::TopicRuleDestinationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    class ListTopicRuleDestinationsResponse < Struct.new(
      :destination_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the ListTopicRules operation.
    #
    # @note When making an API call, you may pass ListTopicRulesRequest
    #   data as a hash:
    #
    #       {
    #         topic: "Topic",
    #         max_results: 1,
    #         next_token: "NextToken",
    #         rule_disabled: false,
    #       }
    #
    # @!attribute [rw] topic
    #   The topic.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used to retrieve the next value.
    #   @return [String]
    #
    # @!attribute [rw] rule_disabled
    #   Specifies whether the rule is disabled.
    #   @return [Boolean]
    #
    class ListTopicRulesRequest < Struct.new(
      :topic,
      :max_results,
      :next_token,
      :rule_disabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the ListTopicRules operation.
    #
    # @!attribute [rw] rules
    #   The rules.
    #   @return [Array<Types::TopicRuleListItem>]
    #
    # @!attribute [rw] next_token
    #   A token used to retrieve the next value.
    #   @return [String]
    #
    class ListTopicRulesResponse < Struct.new(
      :rules,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListV2LoggingLevelsRequest
    #   data as a hash:
    #
    #       {
    #         target_type: "DEFAULT", # accepts DEFAULT, THING_GROUP
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] target_type
    #   The type of resource for which you are configuring logging. Must be
    #   `THING_Group`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListV2LoggingLevelsRequest < Struct.new(
      :target_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_target_configurations
    #   The logging configuration for a target.
    #   @return [Array<Types::LogTargetConfiguration>]
    #
    # @!attribute [rw] next_token
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
    #   @return [String]
    #
    class ListV2LoggingLevelsResponse < Struct.new(
      :log_target_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListViolationEventsRequest
    #   data as a hash:
    #
    #       {
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         thing_name: "DeviceDefenderThingName",
    #         security_profile_name: "SecurityProfileName",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] start_time
    #   The start time for the alerts to be listed.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time for the alerts to be listed.
    #   @return [Time]
    #
    # @!attribute [rw] thing_name
    #   A filter to limit results to those alerts caused by the specified
    #   thing.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_name
    #   A filter to limit results to those alerts generated by the specified
    #   security profile.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListViolationEventsRequest < Struct.new(
      :start_time,
      :end_time,
      :thing_name,
      :security_profile_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] violation_events
    #   The security profile violation alerts issued for this account during
    #   the given time period, potentially filtered by security profile,
    #   behavior violated, or thing (device) violating.
    #   @return [Array<Types::ViolationEvent>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to retrieve the next set of results, or
    #   `null` if there are no additional results.
    #   @return [String]
    #
    class ListViolationEventsResponse < Struct.new(
      :violation_events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A log target.
    #
    # @note When making an API call, you may pass LogTarget
    #   data as a hash:
    #
    #       {
    #         target_type: "DEFAULT", # required, accepts DEFAULT, THING_GROUP
    #         target_name: "LogTargetName",
    #       }
    #
    # @!attribute [rw] target_type
    #   The target type.
    #   @return [String]
    #
    # @!attribute [rw] target_name
    #   The target name.
    #   @return [String]
    #
    class LogTarget < Struct.new(
      :target_type,
      :target_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target configuration.
    #
    # @!attribute [rw] log_target
    #   A log target
    #   @return [Types::LogTarget]
    #
    # @!attribute [rw] log_level
    #   The logging level.
    #   @return [String]
    #
    class LogTargetConfiguration < Struct.new(
      :log_target,
      :log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the logging options payload.
    #
    # @note When making an API call, you may pass LoggingOptionsPayload
    #   data as a hash:
    #
    #       {
    #         role_arn: "AwsArn", # required
    #         log_level: "DEBUG", # accepts DEBUG, INFO, ERROR, WARN, DISABLED
    #       }
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that grants access.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   The log level.
    #   @return [String]
    #
    class LoggingOptionsPayload < Struct.new(
      :role_arn,
      :log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # The policy documentation is not valid.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class MalformedPolicyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dimension of a metric.
    #
    # @note When making an API call, you may pass MetricDimension
    #   data as a hash:
    #
    #       {
    #         dimension_name: "DimensionName", # required
    #         operator: "IN", # accepts IN, NOT_IN
    #       }
    #
    # @!attribute [rw] dimension_name
    #   A unique identifier for the dimension.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   Defines how the `dimensionValues` of a dimension are interpreted.
    #   For example, for dimension type TOPIC\_FILTER, the `IN` operator, a
    #   message will be counted only if its topic matches one of the topic
    #   filters. With `NOT_IN` operator, a message will be counted only if
    #   it doesn't match any of the topic filters. The operator is
    #   optional: if it's not provided (is `null`), it will be interpreted
    #   as `IN`.
    #   @return [String]
    #
    class MetricDimension < Struct.new(
      :dimension_name,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metric you want to retain. Dimensions are optional.
    #
    # @note When making an API call, you may pass MetricToRetain
    #   data as a hash:
    #
    #       {
    #         metric: "BehaviorMetric", # required
    #         metric_dimension: {
    #           dimension_name: "DimensionName", # required
    #           operator: "IN", # accepts IN, NOT_IN
    #         },
    #       }
    #
    # @!attribute [rw] metric
    #   What is measured by the behavior.
    #   @return [String]
    #
    # @!attribute [rw] metric_dimension
    #   The dimension of a metric.
    #   @return [Types::MetricDimension]
    #
    class MetricToRetain < Struct.new(
      :metric,
      :metric_dimension)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value to be compared with the `metric`.
    #
    # @note When making an API call, you may pass MetricValue
    #   data as a hash:
    #
    #       {
    #         count: 1,
    #         cidrs: ["Cidr"],
    #         ports: [1],
    #       }
    #
    # @!attribute [rw] count
    #   If the `comparisonOperator` calls for a numeric value, use this to
    #   specify that numeric value to be compared with the `metric`.
    #   @return [Integer]
    #
    # @!attribute [rw] cidrs
    #   If the `comparisonOperator` calls for a set of CIDRs, use this to
    #   specify that set to be compared with the `metric`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ports
    #   If the `comparisonOperator` calls for a set of ports, use this to
    #   specify that set to be compared with the `metric`.
    #   @return [Array<Integer>]
    #
    class MetricValue < Struct.new(
      :count,
      :cidrs,
      :ports)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes which changes should be applied as part of a mitigation
    # action.
    #
    # @!attribute [rw] name
    #   A user-friendly name for the mitigation action.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the mitigation action.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM role ARN used to apply this mitigation action.
    #   @return [String]
    #
    # @!attribute [rw] action_params
    #   The set of parameters for this mitigation action. The parameters
    #   vary, depending on the kind of action you apply.
    #   @return [Types::MitigationActionParams]
    #
    class MitigationAction < Struct.new(
      :name,
      :id,
      :role_arn,
      :action_params)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information that identifies a mitigation action. This information is
    # returned by ListMitigationActions.
    #
    # @!attribute [rw] action_name
    #   The friendly name of the mitigation action.
    #   @return [String]
    #
    # @!attribute [rw] action_arn
    #   The IAM role ARN used to apply this mitigation action.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date when this mitigation action was created.
    #   @return [Time]
    #
    class MitigationActionIdentifier < Struct.new(
      :action_name,
      :action_arn,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set of parameters for this mitigation action. You can specify only
    # one type of parameter (in other words, you can apply only one action
    # for each defined mitigation action).
    #
    # @note When making an API call, you may pass MitigationActionParams
    #   data as a hash:
    #
    #       {
    #         update_device_certificate_params: {
    #           action: "DEACTIVATE", # required, accepts DEACTIVATE
    #         },
    #         update_ca_certificate_params: {
    #           action: "DEACTIVATE", # required, accepts DEACTIVATE
    #         },
    #         add_things_to_thing_group_params: {
    #           thing_group_names: ["ThingGroupName"], # required
    #           override_dynamic_groups: false,
    #         },
    #         replace_default_policy_version_params: {
    #           template_name: "BLANK_POLICY", # required, accepts BLANK_POLICY
    #         },
    #         enable_io_t_logging_params: {
    #           role_arn_for_logging: "RoleArn", # required
    #           log_level: "DEBUG", # required, accepts DEBUG, INFO, ERROR, WARN, DISABLED
    #         },
    #         publish_finding_to_sns_params: {
    #           topic_arn: "SnsTopicArn", # required
    #         },
    #       }
    #
    # @!attribute [rw] update_device_certificate_params
    #   Parameters to define a mitigation action that changes the state of
    #   the device certificate to inactive.
    #   @return [Types::UpdateDeviceCertificateParams]
    #
    # @!attribute [rw] update_ca_certificate_params
    #   Parameters to define a mitigation action that changes the state of
    #   the CA certificate to inactive.
    #   @return [Types::UpdateCACertificateParams]
    #
    # @!attribute [rw] add_things_to_thing_group_params
    #   Parameters to define a mitigation action that moves devices
    #   associated with a certificate to one or more specified thing groups,
    #   typically for quarantine.
    #   @return [Types::AddThingsToThingGroupParams]
    #
    # @!attribute [rw] replace_default_policy_version_params
    #   Parameters to define a mitigation action that adds a blank policy to
    #   restrict permissions.
    #   @return [Types::ReplaceDefaultPolicyVersionParams]
    #
    # @!attribute [rw] enable_io_t_logging_params
    #   Parameters to define a mitigation action that enables AWS IoT
    #   logging at a specified level of detail.
    #   @return [Types::EnableIoTLoggingParams]
    #
    # @!attribute [rw] publish_finding_to_sns_params
    #   Parameters to define a mitigation action that publishes findings to
    #   Amazon SNS. You can implement your own custom actions in response to
    #   the Amazon SNS messages.
    #   @return [Types::PublishFindingToSnsParams]
    #
    class MitigationActionParams < Struct.new(
      :update_device_certificate_params,
      :update_ca_certificate_params,
      :add_things_to_thing_group_params,
      :replace_default_policy_version_params,
      :enable_io_t_logging_params,
      :publish_finding_to_sns_params)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the MQTT context to use for the test authorizer request
    #
    # @note When making an API call, you may pass MqttContext
    #   data as a hash:
    #
    #       {
    #         username: "MqttUsername",
    #         password: "data",
    #         client_id: "MqttClientId",
    #       }
    #
    # @!attribute [rw] username
    #   The value of the `username` key in an MQTT authorization request.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The value of the `password` key in an MQTT authorization request.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The value of the `clientId` key in an MQTT authorization request.
    #   @return [String]
    #
    class MqttContext < Struct.new(
      :username,
      :password,
      :client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the resource that was noncompliant with the audit
    # check.
    #
    # @!attribute [rw] resource_type
    #   The type of the noncompliant resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   Information that identifies the noncompliant resource.
    #   @return [Types::ResourceIdentifier]
    #
    # @!attribute [rw] additional_info
    #   Other information about the noncompliant resource.
    #   @return [Hash<String,String>]
    #
    class NonCompliantResource < Struct.new(
      :resource_type,
      :resource_identifier,
      :additional_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource is not configured.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class NotConfiguredException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a file to be associated with an OTA update.
    #
    # @note When making an API call, you may pass OTAUpdateFile
    #   data as a hash:
    #
    #       {
    #         file_name: "FileName",
    #         file_version: "OTAUpdateFileVersion",
    #         file_location: {
    #           stream: {
    #             stream_id: "StreamId",
    #             file_id: 1,
    #           },
    #           s3_location: {
    #             bucket: "S3Bucket",
    #             key: "S3Key",
    #             version: "S3Version",
    #           },
    #         },
    #         code_signing: {
    #           aws_signer_job_id: "SigningJobId",
    #           start_signing_job_parameter: {
    #             signing_profile_parameter: {
    #               certificate_arn: "CertificateArn",
    #               platform: "Platform",
    #               certificate_path_on_device: "CertificatePathOnDevice",
    #             },
    #             signing_profile_name: "SigningProfileName",
    #             destination: {
    #               s3_destination: {
    #                 bucket: "S3Bucket",
    #                 prefix: "Prefix",
    #               },
    #             },
    #           },
    #           custom_code_signing: {
    #             signature: {
    #               inline_document: "data",
    #             },
    #             certificate_chain: {
    #               certificate_name: "CertificateName",
    #               inline_document: "InlineDocument",
    #             },
    #             hash_algorithm: "HashAlgorithm",
    #             signature_algorithm: "SignatureAlgorithm",
    #           },
    #         },
    #         attributes: {
    #           "AttributeKey" => "Value",
    #         },
    #       }
    #
    # @!attribute [rw] file_name
    #   The name of the file.
    #   @return [String]
    #
    # @!attribute [rw] file_version
    #   The file version.
    #   @return [String]
    #
    # @!attribute [rw] file_location
    #   The location of the updated firmware.
    #   @return [Types::FileLocation]
    #
    # @!attribute [rw] code_signing
    #   The code signing method of the file.
    #   @return [Types::CodeSigning]
    #
    # @!attribute [rw] attributes
    #   A list of name/attribute pairs.
    #   @return [Hash<String,String>]
    #
    class OTAUpdateFile < Struct.new(
      :file_name,
      :file_version,
      :file_location,
      :code_signing,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an OTA update.
    #
    # @!attribute [rw] ota_update_id
    #   The OTA update ID.
    #   @return [String]
    #
    # @!attribute [rw] ota_update_arn
    #   The OTA update ARN.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date when the OTA update was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date when the OTA update was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the OTA update.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets of the OTA update.
    #   @return [Array<String>]
    #
    # @!attribute [rw] protocols
    #   The protocol used to transfer the OTA update image. Valid values are
    #   \[HTTP\], \[MQTT\], \[HTTP, MQTT\]. When both HTTP and MQTT are
    #   specified, the target device can choose the protocol.
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_job_executions_rollout_config
    #   Configuration for the rollout of OTA updates.
    #   @return [Types::AwsJobExecutionsRolloutConfig]
    #
    # @!attribute [rw] aws_job_presigned_url_config
    #   Configuration information for pre-signed URLs. Valid when
    #   `protocols` contains HTTP.
    #   @return [Types::AwsJobPresignedUrlConfig]
    #
    # @!attribute [rw] target_selection
    #   Specifies whether the OTA update will continue to run (CONTINUOUS),
    #   or will be complete after all those things specified as targets have
    #   completed the OTA update (SNAPSHOT). If continuous, the OTA update
    #   may also be run on a thing when a change is detected in a target.
    #   For example, an OTA update will run on a thing when the thing is
    #   added to a target group, even after the OTA update was completed by
    #   all things originally in the group.
    #   @return [String]
    #
    # @!attribute [rw] ota_update_files
    #   A list of files associated with the OTA update.
    #   @return [Array<Types::OTAUpdateFile>]
    #
    # @!attribute [rw] ota_update_status
    #   The status of the OTA update.
    #   @return [String]
    #
    # @!attribute [rw] aws_iot_job_id
    #   The AWS IoT job ID associated with the OTA update.
    #   @return [String]
    #
    # @!attribute [rw] aws_iot_job_arn
    #   The AWS IoT job ARN associated with the OTA update.
    #   @return [String]
    #
    # @!attribute [rw] error_info
    #   Error information associated with the OTA update.
    #   @return [Types::ErrorInfo]
    #
    # @!attribute [rw] additional_parameters
    #   A collection of name/value pairs
    #   @return [Hash<String,String>]
    #
    class OTAUpdateInfo < Struct.new(
      :ota_update_id,
      :ota_update_arn,
      :creation_date,
      :last_modified_date,
      :description,
      :targets,
      :protocols,
      :aws_job_executions_rollout_config,
      :aws_job_presigned_url_config,
      :target_selection,
      :ota_update_files,
      :ota_update_status,
      :aws_iot_job_id,
      :aws_iot_job_arn,
      :error_info,
      :additional_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # An OTA update summary.
    #
    # @!attribute [rw] ota_update_id
    #   The OTA update ID.
    #   @return [String]
    #
    # @!attribute [rw] ota_update_arn
    #   The OTA update ARN.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date when the OTA update was created.
    #   @return [Time]
    #
    class OTAUpdateSummary < Struct.new(
      :ota_update_id,
      :ota_update_arn,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # A certificate that has been transferred but not yet accepted.
    #
    # @!attribute [rw] certificate_arn
    #   The certificate ARN.
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The certificate ID.
    #   @return [String]
    #
    # @!attribute [rw] transferred_to
    #   The AWS account to which the transfer was made.
    #   @return [String]
    #
    # @!attribute [rw] transfer_date
    #   The date the transfer was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] transfer_message
    #   The transfer message.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The certificate creation date.
    #   @return [Time]
    #
    class OutgoingCertificate < Struct.new(
      :certificate_arn,
      :certificate_id,
      :transferred_to,
      :transfer_date,
      :transfer_message,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the percentile and percentile value.
    #
    # @!attribute [rw] percent
    #   The percentile.
    #   @return [Float]
    #
    # @!attribute [rw] value
    #   The value of the percentile.
    #   @return [Float]
    #
    class PercentPair < Struct.new(
      :percent,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an AWS IoT policy.
    #
    # @!attribute [rw] policy_name
    #   The policy name.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The policy ARN.
    #   @return [String]
    #
    class Policy < Struct.new(
      :policy_name,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a policy version.
    #
    # @!attribute [rw] version_id
    #   The policy version ID.
    #   @return [String]
    #
    # @!attribute [rw] is_default_version
    #   Specifies whether the policy version is the default.
    #   @return [Boolean]
    #
    # @!attribute [rw] create_date
    #   The date and time the policy was created.
    #   @return [Time]
    #
    class PolicyVersion < Struct.new(
      :version_id,
      :is_default_version,
      :create_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the version of the policy associated with the
    # resource.
    #
    # @note When making an API call, you may pass PolicyVersionIdentifier
    #   data as a hash:
    #
    #       {
    #         policy_name: "PolicyName",
    #         policy_version_id: "PolicyVersionId",
    #       }
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_version_id
    #   The ID of the version of the policy associated with the resource.
    #   @return [String]
    #
    class PolicyVersionIdentifier < Struct.new(
      :policy_name,
      :policy_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for pre-signed S3 URLs.
    #
    # @note When making an API call, you may pass PresignedUrlConfig
    #   data as a hash:
    #
    #       {
    #         role_arn: "RoleArn",
    #         expires_in_sec: 1,
    #       }
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM role that grants grants permission to download
    #   files from the S3 bucket where the job data/updates are stored. The
    #   role must also grant permission for IoT to download the files.
    #   @return [String]
    #
    # @!attribute [rw] expires_in_sec
    #   How long (in seconds) pre-signed URLs are valid. Valid values are 60
    #   - 3600, the default value is 3600 seconds. Pre-signed URLs are
    #   generated when Jobs receives an MQTT request for the job document.
    #   @return [Integer]
    #
    class PresignedUrlConfig < Struct.new(
      :role_arn,
      :expires_in_sec)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure that contains `payloadVersion` and `targetArn`.
    #
    # @note When making an API call, you may pass ProvisioningHook
    #   data as a hash:
    #
    #       {
    #         payload_version: "PayloadVersion",
    #         target_arn: "TargetArn", # required
    #       }
    #
    # @!attribute [rw] payload_version
    #   The payload that was sent to the target function.
    #
    #   *Note:* Only Lambda functions are currently supported.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The ARN of the target function.
    #
    #   *Note:* Only Lambda functions are currently supported.
    #   @return [String]
    #
    class ProvisioningHook < Struct.new(
      :payload_version,
      :target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of information about a fleet provisioning template.
    #
    # @!attribute [rw] template_arn
    #   The ARN of the fleet provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the fleet provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the fleet provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date when the fleet provisioning template summary was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date when the fleet provisioning template summary was last
    #   modified.
    #   @return [Time]
    #
    # @!attribute [rw] enabled
    #   True if the fleet provision template is enabled, otherwise false.
    #   @return [Boolean]
    #
    class ProvisioningTemplateSummary < Struct.new(
      :template_arn,
      :template_name,
      :description,
      :creation_date,
      :last_modified_date,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of information about a fleet provision template version.
    #
    # @!attribute [rw] version_id
    #   The ID of the fleet privisioning template version.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_date
    #   The date when the fleet provisioning template version was created
    #   @return [Time]
    #
    # @!attribute [rw] is_default_version
    #   True if the fleet provisioning template version is the default
    #   version, otherwise false.
    #   @return [Boolean]
    #
    class ProvisioningTemplateVersionSummary < Struct.new(
      :version_id,
      :creation_date,
      :is_default_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters to define a mitigation action that publishes findings to
    # Amazon SNS. You can implement your own custom actions in response to
    # the Amazon SNS messages.
    #
    # @note When making an API call, you may pass PublishFindingToSnsParams
    #   data as a hash:
    #
    #       {
    #         topic_arn: "SnsTopicArn", # required
    #       }
    #
    # @!attribute [rw] topic_arn
    #   The ARN of the topic to which you want to publish the findings.
    #   @return [String]
    #
    class PublishFindingToSnsParams < Struct.new(
      :topic_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An asset property value entry containing the following information.
    #
    # @note When making an API call, you may pass PutAssetPropertyValueEntry
    #   data as a hash:
    #
    #       {
    #         entry_id: "AssetPropertyEntryId",
    #         asset_id: "AssetId",
    #         property_id: "AssetPropertyId",
    #         property_alias: "AssetPropertyAlias",
    #         property_values: [ # required
    #           {
    #             value: { # required
    #               string_value: "AssetPropertyStringValue",
    #               integer_value: "AssetPropertyIntegerValue",
    #               double_value: "AssetPropertyDoubleValue",
    #               boolean_value: "AssetPropertyBooleanValue",
    #             },
    #             timestamp: { # required
    #               time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #               offset_in_nanos: "AssetPropertyOffsetInNanos",
    #             },
    #             quality: "AssetPropertyQuality",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] entry_id
    #   Optional. A unique identifier for this entry that you can define to
    #   better track which message caused an error in case of failure.
    #   Accepts substitution templates. Defaults to a new UUID.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The ID of the AWS IoT SiteWise asset. You must specify either a
    #   `propertyAlias` or both an `aliasId` and a `propertyId`. Accepts
    #   substitution templates.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset's property. You must specify either a
    #   `propertyAlias` or both an `aliasId` and a `propertyId`. Accepts
    #   substitution templates.
    #   @return [String]
    #
    # @!attribute [rw] property_alias
    #   The name of the property alias associated with your asset property.
    #   You must specify either a `propertyAlias` or both an `aliasId` and a
    #   `propertyId`. Accepts substitution templates.
    #   @return [String]
    #
    # @!attribute [rw] property_values
    #   A list of property values to insert that each contain timestamp,
    #   quality, and value (TQV) information.
    #   @return [Array<Types::AssetPropertyValue>]
    #
    class PutAssetPropertyValueEntry < Struct.new(
      :entry_id,
      :asset_id,
      :property_id,
      :property_alias,
      :property_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the DynamoActionVS action that specifies the DynamoDB
    # table to which the message data will be written.
    #
    # @note When making an API call, you may pass PutItemInput
    #   data as a hash:
    #
    #       {
    #         table_name: "TableName", # required
    #       }
    #
    # @!attribute [rw] table_name
    #   The table where the message data will be written.
    #   @return [String]
    #
    class PutItemInput < Struct.new(
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows you to define a criteria to initiate the increase in rate of
    # rollout for a job.
    #
    # @note When making an API call, you may pass RateIncreaseCriteria
    #   data as a hash:
    #
    #       {
    #         number_of_notified_things: 1,
    #         number_of_succeeded_things: 1,
    #       }
    #
    # @!attribute [rw] number_of_notified_things
    #   The threshold for number of notified things that will initiate the
    #   increase in rate of rollout.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_succeeded_things
    #   The threshold for number of succeeded things that will initiate the
    #   increase in rate of rollout.
    #   @return [Integer]
    #
    class RateIncreaseCriteria < Struct.new(
      :number_of_notified_things,
      :number_of_succeeded_things)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input to the RegisterCACertificate operation.
    #
    # @note When making an API call, you may pass RegisterCACertificateRequest
    #   data as a hash:
    #
    #       {
    #         ca_certificate: "CertificatePem", # required
    #         verification_certificate: "CertificatePem", # required
    #         set_as_active: false,
    #         allow_auto_registration: false,
    #         registration_config: {
    #           template_body: "TemplateBody",
    #           role_arn: "RoleArn",
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] ca_certificate
    #   The CA certificate.
    #   @return [String]
    #
    # @!attribute [rw] verification_certificate
    #   The private key verification certificate.
    #   @return [String]
    #
    # @!attribute [rw] set_as_active
    #   A boolean value that specifies if the CA certificate is set to
    #   active.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_auto_registration
    #   Allows this CA certificate to be used for auto registration of
    #   device certificates.
    #   @return [Boolean]
    #
    # @!attribute [rw] registration_config
    #   Information about the registration configuration.
    #   @return [Types::RegistrationConfig]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage the CA certificate.
    #
    #   <note markdown="1"> For URI Request parameters use format:
    #   ...key1=value1&amp;key2=value2...
    #
    #    For the CLI command-line parameter use format: &amp;&amp;tags
    #   "key1=value1&amp;key2=value2..."
    #
    #    For the cli-input-json file use format: "tags":
    #   "key1=value1&amp;key2=value2..."
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    class RegisterCACertificateRequest < Struct.new(
      :ca_certificate,
      :verification_certificate,
      :set_as_active,
      :allow_auto_registration,
      :registration_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the RegisterCACertificateResponse operation.
    #
    # @!attribute [rw] certificate_arn
    #   The CA certificate ARN.
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The CA certificate identifier.
    #   @return [String]
    #
    class RegisterCACertificateResponse < Struct.new(
      :certificate_arn,
      :certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input to the RegisterCertificate operation.
    #
    # @note When making an API call, you may pass RegisterCertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_pem: "CertificatePem", # required
    #         ca_certificate_pem: "CertificatePem",
    #         set_as_active: false,
    #         status: "ACTIVE", # accepts ACTIVE, INACTIVE, REVOKED, PENDING_TRANSFER, REGISTER_INACTIVE, PENDING_ACTIVATION
    #       }
    #
    # @!attribute [rw] certificate_pem
    #   The certificate data, in PEM format.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate_pem
    #   The CA certificate used to sign the device certificate being
    #   registered.
    #   @return [String]
    #
    # @!attribute [rw] set_as_active
    #   A boolean value that specifies if the certificate is set to active.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The status of the register certificate request.
    #   @return [String]
    #
    class RegisterCertificateRequest < Struct.new(
      :certificate_pem,
      :ca_certificate_pem,
      :set_as_active,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the RegisterCertificate operation.
    #
    # @!attribute [rw] certificate_arn
    #   The certificate ARN.
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The certificate identifier.
    #   @return [String]
    #
    class RegisterCertificateResponse < Struct.new(
      :certificate_arn,
      :certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterCertificateWithoutCARequest
    #   data as a hash:
    #
    #       {
    #         certificate_pem: "CertificatePem", # required
    #         status: "ACTIVE", # accepts ACTIVE, INACTIVE, REVOKED, PENDING_TRANSFER, REGISTER_INACTIVE, PENDING_ACTIVATION
    #       }
    #
    # @!attribute [rw] certificate_pem
    #   The certificate data, in PEM format.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the register certificate request.
    #   @return [String]
    #
    class RegisterCertificateWithoutCARequest < Struct.new(
      :certificate_pem,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the registered certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The ID of the registered certificate. (The last part of the
    #   certificate ARN contains the certificate ID.
    #   @return [String]
    #
    class RegisterCertificateWithoutCAResponse < Struct.new(
      :certificate_arn,
      :certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterThingRequest
    #   data as a hash:
    #
    #       {
    #         template_body: "TemplateBody", # required
    #         parameters: {
    #           "Parameter" => "Value",
    #         },
    #       }
    #
    # @!attribute [rw] template_body
    #   The provisioning template. See [Provisioning Devices That Have
    #   Device Certificates][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot/latest/developerguide/provision-w-cert.html
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for provisioning a thing. See [Provisioning
    #   Templates][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot/latest/developerguide/provision-template.html
    #   @return [Hash<String,String>]
    #
    class RegisterThingRequest < Struct.new(
      :template_body,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_pem
    #   The certificate data, in PEM format.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   ARNs for the generated resources.
    #   @return [Hash<String,String>]
    #
    class RegisterThingResponse < Struct.new(
      :certificate_pem,
      :resource_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # The registration code is invalid.
    #
    # @!attribute [rw] message
    #   Additional information about the exception.
    #   @return [String]
    #
    class RegistrationCodeValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The registration configuration.
    #
    # @note When making an API call, you may pass RegistrationConfig
    #   data as a hash:
    #
    #       {
    #         template_body: "TemplateBody",
    #         role_arn: "RoleArn",
    #       }
    #
    # @!attribute [rw] template_body
    #   The template body.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role.
    #   @return [String]
    #
    class RegistrationConfig < Struct.new(
      :template_body,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the RejectCertificateTransfer operation.
    #
    # @note When making an API call, you may pass RejectCertificateTransferRequest
    #   data as a hash:
    #
    #       {
    #         certificate_id: "CertificateId", # required
    #         reject_reason: "Message",
    #       }
    #
    # @!attribute [rw] certificate_id
    #   The ID of the certificate. (The last part of the certificate ARN
    #   contains the certificate ID.)
    #   @return [String]
    #
    # @!attribute [rw] reject_reason
    #   The reason the certificate transfer was rejected.
    #   @return [String]
    #
    class RejectCertificateTransferRequest < Struct.new(
      :certificate_id,
      :reject_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a related resource.
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   Information that identifies the resource.
    #   @return [Types::ResourceIdentifier]
    #
    # @!attribute [rw] additional_info
    #   Other information about the resource.
    #   @return [Hash<String,String>]
    #
    class RelatedResource < Struct.new(
      :resource_type,
      :resource_identifier,
      :additional_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveThingFromBillingGroupRequest
    #   data as a hash:
    #
    #       {
    #         billing_group_name: "BillingGroupName",
    #         billing_group_arn: "BillingGroupArn",
    #         thing_name: "ThingName",
    #         thing_arn: "ThingArn",
    #       }
    #
    # @!attribute [rw] billing_group_name
    #   The name of the billing group.
    #   @return [String]
    #
    # @!attribute [rw] billing_group_arn
    #   The ARN of the billing group.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The name of the thing to be removed from the billing group.
    #   @return [String]
    #
    # @!attribute [rw] thing_arn
    #   The ARN of the thing to be removed from the billing group.
    #   @return [String]
    #
    class RemoveThingFromBillingGroupRequest < Struct.new(
      :billing_group_name,
      :billing_group_arn,
      :thing_name,
      :thing_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    class RemoveThingFromBillingGroupResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass RemoveThingFromThingGroupRequest
    #   data as a hash:
    #
    #       {
    #         thing_group_name: "ThingGroupName",
    #         thing_group_arn: "ThingGroupArn",
    #         thing_name: "ThingName",
    #         thing_arn: "ThingArn",
    #       }
    #
    # @!attribute [rw] thing_group_name
    #   The group name.
    #   @return [String]
    #
    # @!attribute [rw] thing_group_arn
    #   The group ARN.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The name of the thing to remove from the group.
    #   @return [String]
    #
    # @!attribute [rw] thing_arn
    #   The ARN of the thing to remove from the group.
    #   @return [String]
    #
    class RemoveThingFromThingGroupRequest < Struct.new(
      :thing_group_name,
      :thing_group_arn,
      :thing_name,
      :thing_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    class RemoveThingFromThingGroupResponse < Aws::EmptyStructure; end

    # Parameters to define a mitigation action that adds a blank policy to
    # restrict permissions.
    #
    # @note When making an API call, you may pass ReplaceDefaultPolicyVersionParams
    #   data as a hash:
    #
    #       {
    #         template_name: "BLANK_POLICY", # required, accepts BLANK_POLICY
    #       }
    #
    # @!attribute [rw] template_name
    #   The name of the template to be applied. The only supported value is
    #   `BLANK_POLICY`.
    #   @return [String]
    #
    class ReplaceDefaultPolicyVersionParams < Struct.new(
      :template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the ReplaceTopicRule operation.
    #
    # @note When making an API call, you may pass ReplaceTopicRuleRequest
    #   data as a hash:
    #
    #       {
    #         rule_name: "RuleName", # required
    #         topic_rule_payload: { # required
    #           sql: "SQL", # required
    #           description: "Description",
    #           actions: [ # required
    #             {
    #               dynamo_db: {
    #                 table_name: "TableName", # required
    #                 role_arn: "AwsArn", # required
    #                 operation: "DynamoOperation",
    #                 hash_key_field: "HashKeyField", # required
    #                 hash_key_value: "HashKeyValue", # required
    #                 hash_key_type: "STRING", # accepts STRING, NUMBER
    #                 range_key_field: "RangeKeyField",
    #                 range_key_value: "RangeKeyValue",
    #                 range_key_type: "STRING", # accepts STRING, NUMBER
    #                 payload_field: "PayloadField",
    #               },
    #               dynamo_d_bv_2: {
    #                 role_arn: "AwsArn", # required
    #                 put_item: { # required
    #                   table_name: "TableName", # required
    #                 },
    #               },
    #               lambda: {
    #                 function_arn: "FunctionArn", # required
    #               },
    #               sns: {
    #                 target_arn: "AwsArn", # required
    #                 role_arn: "AwsArn", # required
    #                 message_format: "RAW", # accepts RAW, JSON
    #               },
    #               sqs: {
    #                 role_arn: "AwsArn", # required
    #                 queue_url: "QueueUrl", # required
    #                 use_base_64: false,
    #               },
    #               kinesis: {
    #                 role_arn: "AwsArn", # required
    #                 stream_name: "StreamName", # required
    #                 partition_key: "PartitionKey",
    #               },
    #               republish: {
    #                 role_arn: "AwsArn", # required
    #                 topic: "TopicPattern", # required
    #                 qos: 1,
    #               },
    #               s3: {
    #                 role_arn: "AwsArn", # required
    #                 bucket_name: "BucketName", # required
    #                 key: "Key", # required
    #                 canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write
    #               },
    #               firehose: {
    #                 role_arn: "AwsArn", # required
    #                 delivery_stream_name: "DeliveryStreamName", # required
    #                 separator: "FirehoseSeparator",
    #               },
    #               cloudwatch_metric: {
    #                 role_arn: "AwsArn", # required
    #                 metric_namespace: "String", # required
    #                 metric_name: "String", # required
    #                 metric_value: "String", # required
    #                 metric_unit: "String", # required
    #                 metric_timestamp: "String",
    #               },
    #               cloudwatch_alarm: {
    #                 role_arn: "AwsArn", # required
    #                 alarm_name: "AlarmName", # required
    #                 state_reason: "StateReason", # required
    #                 state_value: "StateValue", # required
    #               },
    #               cloudwatch_logs: {
    #                 role_arn: "AwsArn", # required
    #                 log_group_name: "LogGroupName", # required
    #               },
    #               elasticsearch: {
    #                 role_arn: "AwsArn", # required
    #                 endpoint: "ElasticsearchEndpoint", # required
    #                 index: "ElasticsearchIndex", # required
    #                 type: "ElasticsearchType", # required
    #                 id: "ElasticsearchId", # required
    #               },
    #               salesforce: {
    #                 token: "SalesforceToken", # required
    #                 url: "SalesforceEndpoint", # required
    #               },
    #               iot_analytics: {
    #                 channel_arn: "AwsArn",
    #                 channel_name: "ChannelName",
    #                 role_arn: "AwsArn",
    #               },
    #               iot_events: {
    #                 input_name: "InputName", # required
    #                 message_id: "MessageId",
    #                 role_arn: "AwsArn", # required
    #               },
    #               iot_site_wise: {
    #                 put_asset_property_value_entries: [ # required
    #                   {
    #                     entry_id: "AssetPropertyEntryId",
    #                     asset_id: "AssetId",
    #                     property_id: "AssetPropertyId",
    #                     property_alias: "AssetPropertyAlias",
    #                     property_values: [ # required
    #                       {
    #                         value: { # required
    #                           string_value: "AssetPropertyStringValue",
    #                           integer_value: "AssetPropertyIntegerValue",
    #                           double_value: "AssetPropertyDoubleValue",
    #                           boolean_value: "AssetPropertyBooleanValue",
    #                         },
    #                         timestamp: { # required
    #                           time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                           offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                         },
    #                         quality: "AssetPropertyQuality",
    #                       },
    #                     ],
    #                   },
    #                 ],
    #                 role_arn: "AwsArn", # required
    #               },
    #               step_functions: {
    #                 execution_name_prefix: "ExecutionNamePrefix",
    #                 state_machine_name: "StateMachineName", # required
    #                 role_arn: "AwsArn", # required
    #               },
    #               timestream: {
    #                 role_arn: "AwsArn", # required
    #                 database_name: "TimestreamDatabaseName", # required
    #                 table_name: "TimestreamTableName", # required
    #                 dimensions: [ # required
    #                   {
    #                     name: "TimestreamDimensionName", # required
    #                     value: "TimestreamDimensionValue", # required
    #                   },
    #                 ],
    #                 timestamp: {
    #                   value: "TimestreamTimestampValue", # required
    #                   unit: "TimestreamTimestampUnit", # required
    #                 },
    #               },
    #               http: {
    #                 url: "Url", # required
    #                 confirmation_url: "Url",
    #                 headers: [
    #                   {
    #                     key: "HeaderKey", # required
    #                     value: "HeaderValue", # required
    #                   },
    #                 ],
    #                 auth: {
    #                   sigv4: {
    #                     signing_region: "SigningRegion", # required
    #                     service_name: "ServiceName", # required
    #                     role_arn: "AwsArn", # required
    #                   },
    #                 },
    #               },
    #             },
    #           ],
    #           rule_disabled: false,
    #           aws_iot_sql_version: "AwsIotSqlVersion",
    #           error_action: {
    #             dynamo_db: {
    #               table_name: "TableName", # required
    #               role_arn: "AwsArn", # required
    #               operation: "DynamoOperation",
    #               hash_key_field: "HashKeyField", # required
    #               hash_key_value: "HashKeyValue", # required
    #               hash_key_type: "STRING", # accepts STRING, NUMBER
    #               range_key_field: "RangeKeyField",
    #               range_key_value: "RangeKeyValue",
    #               range_key_type: "STRING", # accepts STRING, NUMBER
    #               payload_field: "PayloadField",
    #             },
    #             dynamo_d_bv_2: {
    #               role_arn: "AwsArn", # required
    #               put_item: { # required
    #                 table_name: "TableName", # required
    #               },
    #             },
    #             lambda: {
    #               function_arn: "FunctionArn", # required
    #             },
    #             sns: {
    #               target_arn: "AwsArn", # required
    #               role_arn: "AwsArn", # required
    #               message_format: "RAW", # accepts RAW, JSON
    #             },
    #             sqs: {
    #               role_arn: "AwsArn", # required
    #               queue_url: "QueueUrl", # required
    #               use_base_64: false,
    #             },
    #             kinesis: {
    #               role_arn: "AwsArn", # required
    #               stream_name: "StreamName", # required
    #               partition_key: "PartitionKey",
    #             },
    #             republish: {
    #               role_arn: "AwsArn", # required
    #               topic: "TopicPattern", # required
    #               qos: 1,
    #             },
    #             s3: {
    #               role_arn: "AwsArn", # required
    #               bucket_name: "BucketName", # required
    #               key: "Key", # required
    #               canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write
    #             },
    #             firehose: {
    #               role_arn: "AwsArn", # required
    #               delivery_stream_name: "DeliveryStreamName", # required
    #               separator: "FirehoseSeparator",
    #             },
    #             cloudwatch_metric: {
    #               role_arn: "AwsArn", # required
    #               metric_namespace: "String", # required
    #               metric_name: "String", # required
    #               metric_value: "String", # required
    #               metric_unit: "String", # required
    #               metric_timestamp: "String",
    #             },
    #             cloudwatch_alarm: {
    #               role_arn: "AwsArn", # required
    #               alarm_name: "AlarmName", # required
    #               state_reason: "StateReason", # required
    #               state_value: "StateValue", # required
    #             },
    #             cloudwatch_logs: {
    #               role_arn: "AwsArn", # required
    #               log_group_name: "LogGroupName", # required
    #             },
    #             elasticsearch: {
    #               role_arn: "AwsArn", # required
    #               endpoint: "ElasticsearchEndpoint", # required
    #               index: "ElasticsearchIndex", # required
    #               type: "ElasticsearchType", # required
    #               id: "ElasticsearchId", # required
    #             },
    #             salesforce: {
    #               token: "SalesforceToken", # required
    #               url: "SalesforceEndpoint", # required
    #             },
    #             iot_analytics: {
    #               channel_arn: "AwsArn",
    #               channel_name: "ChannelName",
    #               role_arn: "AwsArn",
    #             },
    #             iot_events: {
    #               input_name: "InputName", # required
    #               message_id: "MessageId",
    #               role_arn: "AwsArn", # required
    #             },
    #             iot_site_wise: {
    #               put_asset_property_value_entries: [ # required
    #                 {
    #                   entry_id: "AssetPropertyEntryId",
    #                   asset_id: "AssetId",
    #                   property_id: "AssetPropertyId",
    #                   property_alias: "AssetPropertyAlias",
    #                   property_values: [ # required
    #                     {
    #                       value: { # required
    #                         string_value: "AssetPropertyStringValue",
    #                         integer_value: "AssetPropertyIntegerValue",
    #                         double_value: "AssetPropertyDoubleValue",
    #                         boolean_value: "AssetPropertyBooleanValue",
    #                       },
    #                       timestamp: { # required
    #                         time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                         offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                       },
    #                       quality: "AssetPropertyQuality",
    #                     },
    #                   ],
    #                 },
    #               ],
    #               role_arn: "AwsArn", # required
    #             },
    #             step_functions: {
    #               execution_name_prefix: "ExecutionNamePrefix",
    #               state_machine_name: "StateMachineName", # required
    #               role_arn: "AwsArn", # required
    #             },
    #             timestream: {
    #               role_arn: "AwsArn", # required
    #               database_name: "TimestreamDatabaseName", # required
    #               table_name: "TimestreamTableName", # required
    #               dimensions: [ # required
    #                 {
    #                   name: "TimestreamDimensionName", # required
    #                   value: "TimestreamDimensionValue", # required
    #                 },
    #               ],
    #               timestamp: {
    #                 value: "TimestreamTimestampValue", # required
    #                 unit: "TimestreamTimestampUnit", # required
    #               },
    #             },
    #             http: {
    #               url: "Url", # required
    #               confirmation_url: "Url",
    #               headers: [
    #                 {
    #                   key: "HeaderKey", # required
    #                   value: "HeaderValue", # required
    #                 },
    #               ],
    #               auth: {
    #                 sigv4: {
    #                   signing_region: "SigningRegion", # required
    #                   service_name: "ServiceName", # required
    #                   role_arn: "AwsArn", # required
    #                 },
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] rule_name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] topic_rule_payload
    #   The rule payload.
    #   @return [Types::TopicRulePayload]
    #
    class ReplaceTopicRuleRequest < Struct.new(
      :rule_name,
      :topic_rule_payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an action to republish to another topic.
    #
    # @note When making an API call, you may pass RepublishAction
    #   data as a hash:
    #
    #       {
    #         role_arn: "AwsArn", # required
    #         topic: "TopicPattern", # required
    #         qos: 1,
    #       }
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that grants access.
    #   @return [String]
    #
    # @!attribute [rw] topic
    #   The name of the MQTT topic.
    #   @return [String]
    #
    # @!attribute [rw] qos
    #   The Quality of Service (QoS) level to use when republishing
    #   messages. The default value is 0.
    #   @return [Integer]
    #
    class RepublishAction < Struct.new(
      :role_arn,
      :topic,
      :qos)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource already exists.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that caused the exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource that caused the exception.
    #   @return [String]
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message,
      :resource_id,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information that identifies the noncompliant resource.
    #
    # @note When making an API call, you may pass ResourceIdentifier
    #   data as a hash:
    #
    #       {
    #         device_certificate_id: "CertificateId",
    #         ca_certificate_id: "CertificateId",
    #         cognito_identity_pool_id: "CognitoIdentityPoolId",
    #         client_id: "ClientId",
    #         policy_version_identifier: {
    #           policy_name: "PolicyName",
    #           policy_version_id: "PolicyVersionId",
    #         },
    #         account: "AwsAccountId",
    #         iam_role_arn: "RoleArn",
    #         role_alias_arn: "RoleAliasArn",
    #       }
    #
    # @!attribute [rw] device_certificate_id
    #   The ID of the certificate attached to the resource.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate_id
    #   The ID of the CA certificate used to authorize the certificate.
    #   @return [String]
    #
    # @!attribute [rw] cognito_identity_pool_id
    #   The ID of the Amazon Cognito identity pool.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The client ID.
    #   @return [String]
    #
    # @!attribute [rw] policy_version_identifier
    #   The version of the policy associated with the resource.
    #   @return [Types::PolicyVersionIdentifier]
    #
    # @!attribute [rw] account
    #   The account with which the resource is associated.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role that has overly permissive actions.
    #   @return [String]
    #
    # @!attribute [rw] role_alias_arn
    #   The ARN of the role alias that has overly permissive actions.
    #   @return [String]
    #
    class ResourceIdentifier < Struct.new(
      :device_certificate_id,
      :ca_certificate_id,
      :cognito_identity_pool_id,
      :client_id,
      :policy_version_identifier,
      :account,
      :iam_role_arn,
      :role_alias_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource registration failed.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class ResourceRegistrationFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Role alias description.
    #
    # @!attribute [rw] role_alias
    #   The role alias.
    #   @return [String]
    #
    # @!attribute [rw] role_alias_arn
    #   The ARN of the role alias.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The role ARN.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The role alias owner.
    #   @return [String]
    #
    # @!attribute [rw] credential_duration_seconds
    #   The number of seconds for which the credential is valid.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_date
    #   The UNIX timestamp of when the role alias was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The UNIX timestamp of when the role alias was last modified.
    #   @return [Time]
    #
    class RoleAliasDescription < Struct.new(
      :role_alias,
      :role_alias_arn,
      :role_arn,
      :owner,
      :credential_duration_seconds,
      :creation_date,
      :last_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an action to write data to an Amazon S3 bucket.
    #
    # @note When making an API call, you may pass S3Action
    #   data as a hash:
    #
    #       {
    #         role_arn: "AwsArn", # required
    #         bucket_name: "BucketName", # required
    #         key: "Key", # required
    #         canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write
    #       }
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that grants access.
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   The Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The object key.
    #   @return [String]
    #
    # @!attribute [rw] canned_acl
    #   The Amazon S3 canned ACL that controls access to the object
    #   identified by the object key. For more information, see [S3 canned
    #   ACLs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl
    #   @return [String]
    #
    class S3Action < Struct.new(
      :role_arn,
      :bucket_name,
      :key,
      :canned_acl)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the location of updated firmware in S3.
    #
    # @note When making an API call, you may pass S3Destination
    #   data as a hash:
    #
    #       {
    #         bucket: "S3Bucket",
    #         prefix: "Prefix",
    #       }
    #
    # @!attribute [rw] bucket
    #   The S3 bucket that contains the updated firmware.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The S3 prefix.
    #   @return [String]
    #
    class S3Destination < Struct.new(
      :bucket,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 location.
    #
    # @note When making an API call, you may pass S3Location
    #   data as a hash:
    #
    #       {
    #         bucket: "S3Bucket",
    #         key: "S3Key",
    #         version: "S3Version",
    #       }
    #
    # @!attribute [rw] bucket
    #   The S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The S3 key.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The S3 bucket version.
    #   @return [String]
    #
    class S3Location < Struct.new(
      :bucket,
      :key,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an action to write a message to a Salesforce IoT Cloud Input
    # Stream.
    #
    # @note When making an API call, you may pass SalesforceAction
    #   data as a hash:
    #
    #       {
    #         token: "SalesforceToken", # required
    #         url: "SalesforceEndpoint", # required
    #       }
    #
    # @!attribute [rw] token
    #   The token used to authenticate access to the Salesforce IoT Cloud
    #   Input Stream. The token is available from the Salesforce IoT Cloud
    #   platform after creation of the Input Stream.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL exposed by the Salesforce IoT Cloud Input Stream. The URL is
    #   available from the Salesforce IoT Cloud platform after creation of
    #   the Input Stream.
    #   @return [String]
    #
    class SalesforceAction < Struct.new(
      :token,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the scheduled audit.
    #
    # @!attribute [rw] scheduled_audit_name
    #   The name of the scheduled audit.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_audit_arn
    #   The ARN of the scheduled audit.
    #   @return [String]
    #
    # @!attribute [rw] frequency
    #   How often the scheduled audit occurs.
    #   @return [String]
    #
    # @!attribute [rw] day_of_month
    #   The day of the month on which the scheduled audit is run (if the
    #   `frequency` is "MONTHLY"). If days 29-31 are specified, and the
    #   month does not have that many days, the audit takes place on the
    #   "LAST" day of the month.
    #   @return [String]
    #
    # @!attribute [rw] day_of_week
    #   The day of the week on which the scheduled audit is run (if the
    #   `frequency` is "WEEKLY" or "BIWEEKLY").
    #   @return [String]
    #
    class ScheduledAuditMetadata < Struct.new(
      :scheduled_audit_name,
      :scheduled_audit_arn,
      :frequency,
      :day_of_month,
      :day_of_week)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchIndexRequest
    #   data as a hash:
    #
    #       {
    #         index_name: "IndexName",
    #         query_string: "QueryString", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #         query_version: "QueryVersion",
    #       }
    #
    # @!attribute [rw] index_name
    #   The search index name.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The search query string.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token used to get the next set of results, or `null` if there
    #   are no additional results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    # @!attribute [rw] query_version
    #   The query version.
    #   @return [String]
    #
    class SearchIndexRequest < Struct.new(
      :index_name,
      :query_string,
      :next_token,
      :max_results,
      :query_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token used to get the next set of results, or `null` if there
    #   are no additional results.
    #   @return [String]
    #
    # @!attribute [rw] things
    #   The things that match the search query.
    #   @return [Array<Types::ThingDocument>]
    #
    # @!attribute [rw] thing_groups
    #   The thing groups that match the search query.
    #   @return [Array<Types::ThingGroupDocument>]
    #
    class SearchIndexResponse < Struct.new(
      :next_token,
      :things,
      :thing_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifying information for a Device Defender security profile.
    #
    # @!attribute [rw] name
    #   The name you have given to the security profile.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the security profile.
    #   @return [String]
    #
    class SecurityProfileIdentifier < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A target to which an alert is sent when a security profile behavior is
    # violated.
    #
    # @!attribute [rw] arn
    #   The ARN of the security profile.
    #   @return [String]
    #
    class SecurityProfileTarget < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a security profile and the target associated with
    # it.
    #
    # @!attribute [rw] security_profile_identifier
    #   Information that identifies the security profile.
    #   @return [Types::SecurityProfileIdentifier]
    #
    # @!attribute [rw] target
    #   Information about the target (thing group) associated with the
    #   security profile.
    #   @return [Types::SecurityProfileTarget]
    #
    class SecurityProfileTargetMapping < Struct.new(
      :security_profile_identifier,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about a server certificate.
    #
    # @!attribute [rw] server_certificate_arn
    #   The ARN of the server certificate.
    #   @return [String]
    #
    # @!attribute [rw] server_certificate_status
    #   The status of the server certificate.
    #   @return [String]
    #
    # @!attribute [rw] server_certificate_status_detail
    #   Details that explain the status of the server certificate.
    #   @return [String]
    #
    class ServerCertificateSummary < Struct.new(
      :server_certificate_arn,
      :server_certificate_status,
      :server_certificate_status_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is temporarily unavailable.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SetDefaultAuthorizerRequest
    #   data as a hash:
    #
    #       {
    #         authorizer_name: "AuthorizerName", # required
    #       }
    #
    # @!attribute [rw] authorizer_name
    #   The authorizer name.
    #   @return [String]
    #
    class SetDefaultAuthorizerRequest < Struct.new(
      :authorizer_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorizer_name
    #   The authorizer name.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_arn
    #   The authorizer ARN.
    #   @return [String]
    #
    class SetDefaultAuthorizerResponse < Struct.new(
      :authorizer_name,
      :authorizer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the SetDefaultPolicyVersion operation.
    #
    # @note When making an API call, you may pass SetDefaultPolicyVersionRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "PolicyName", # required
    #         policy_version_id: "PolicyVersionId", # required
    #       }
    #
    # @!attribute [rw] policy_name
    #   The policy name.
    #   @return [String]
    #
    # @!attribute [rw] policy_version_id
    #   The policy version ID.
    #   @return [String]
    #
    class SetDefaultPolicyVersionRequest < Struct.new(
      :policy_name,
      :policy_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the SetLoggingOptions operation.
    #
    # @note When making an API call, you may pass SetLoggingOptionsRequest
    #   data as a hash:
    #
    #       {
    #         logging_options_payload: { # required
    #           role_arn: "AwsArn", # required
    #           log_level: "DEBUG", # accepts DEBUG, INFO, ERROR, WARN, DISABLED
    #         },
    #       }
    #
    # @!attribute [rw] logging_options_payload
    #   The logging options payload.
    #   @return [Types::LoggingOptionsPayload]
    #
    class SetLoggingOptionsRequest < Struct.new(
      :logging_options_payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SetV2LoggingLevelRequest
    #   data as a hash:
    #
    #       {
    #         log_target: { # required
    #           target_type: "DEFAULT", # required, accepts DEFAULT, THING_GROUP
    #           target_name: "LogTargetName",
    #         },
    #         log_level: "DEBUG", # required, accepts DEBUG, INFO, ERROR, WARN, DISABLED
    #       }
    #
    # @!attribute [rw] log_target
    #   The log target.
    #   @return [Types::LogTarget]
    #
    # @!attribute [rw] log_level
    #   The log level.
    #   @return [String]
    #
    class SetV2LoggingLevelRequest < Struct.new(
      :log_target,
      :log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SetV2LoggingOptionsRequest
    #   data as a hash:
    #
    #       {
    #         role_arn: "AwsArn",
    #         default_log_level: "DEBUG", # accepts DEBUG, INFO, ERROR, WARN, DISABLED
    #         disable_all_logs: false,
    #       }
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that allows IoT to write to Cloudwatch logs.
    #   @return [String]
    #
    # @!attribute [rw] default_log_level
    #   The default logging level.
    #   @return [String]
    #
    # @!attribute [rw] disable_all_logs
    #   If true all logs are disabled. The default is false.
    #   @return [Boolean]
    #
    class SetV2LoggingOptionsRequest < Struct.new(
      :role_arn,
      :default_log_level,
      :disable_all_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use Sig V4 authorization.
    #
    # @note When making an API call, you may pass SigV4Authorization
    #   data as a hash:
    #
    #       {
    #         signing_region: "SigningRegion", # required
    #         service_name: "ServiceName", # required
    #         role_arn: "AwsArn", # required
    #       }
    #
    # @!attribute [rw] signing_region
    #   The signing region.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The service name to use while signing with Sig V4.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the signing role.
    #   @return [String]
    #
    class SigV4Authorization < Struct.new(
      :signing_region,
      :service_name,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the code-signing profile.
    #
    # @note When making an API call, you may pass SigningProfileParameter
    #   data as a hash:
    #
    #       {
    #         certificate_arn: "CertificateArn",
    #         platform: "Platform",
    #         certificate_path_on_device: "CertificatePathOnDevice",
    #       }
    #
    # @!attribute [rw] certificate_arn
    #   Certificate ARN.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The hardware platform of your device.
    #   @return [String]
    #
    # @!attribute [rw] certificate_path_on_device
    #   The location of the code-signing certificate on your device.
    #   @return [String]
    #
    class SigningProfileParameter < Struct.new(
      :certificate_arn,
      :platform,
      :certificate_path_on_device)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an action to publish to an Amazon SNS topic.
    #
    # @note When making an API call, you may pass SnsAction
    #   data as a hash:
    #
    #       {
    #         target_arn: "AwsArn", # required
    #         role_arn: "AwsArn", # required
    #         message_format: "RAW", # accepts RAW, JSON
    #       }
    #
    # @!attribute [rw] target_arn
    #   The ARN of the SNS topic.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that grants access.
    #   @return [String]
    #
    # @!attribute [rw] message_format
    #   (Optional) The message format of the message to publish. Accepted
    #   values are "JSON" and "RAW". The default value of the attribute
    #   is "RAW". SNS uses this setting to determine if the payload should
    #   be parsed and relevant platform-specific bits of the payload should
    #   be extracted. To read more about SNS message formats, see
    #   [https://docs.aws.amazon.com/sns/latest/dg/json-formats.html][1]
    #   refer to their official documentation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sns/latest/dg/json-formats.html
    #   @return [String]
    #
    class SnsAction < Struct.new(
      :target_arn,
      :role_arn,
      :message_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Rule-SQL expression can't be parsed correctly.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class SqlParseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an action to publish data to an Amazon SQS queue.
    #
    # @note When making an API call, you may pass SqsAction
    #   data as a hash:
    #
    #       {
    #         role_arn: "AwsArn", # required
    #         queue_url: "QueueUrl", # required
    #         use_base_64: false,
    #       }
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that grants access.
    #   @return [String]
    #
    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue.
    #   @return [String]
    #
    # @!attribute [rw] use_base_64
    #   Specifies whether to use Base64 encoding.
    #   @return [Boolean]
    #
    class SqsAction < Struct.new(
      :role_arn,
      :queue_url,
      :use_base_64)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartAuditMitigationActionsTaskRequest
    #   data as a hash:
    #
    #       {
    #         task_id: "AuditMitigationActionsTaskId", # required
    #         target: { # required
    #           audit_task_id: "AuditTaskId",
    #           finding_ids: ["FindingId"],
    #           audit_check_to_reason_code_filter: {
    #             "AuditCheckName" => ["ReasonForNonComplianceCode"],
    #           },
    #         },
    #         audit_check_to_actions_mapping: { # required
    #           "AuditCheckName" => ["MitigationActionName"],
    #         },
    #         client_request_token: "ClientRequestToken", # required
    #       }
    #
    # @!attribute [rw] task_id
    #   A unique identifier for the task. You can use this identifier to
    #   check the status of the task or to cancel it.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   Specifies the audit findings to which the mitigation actions are
    #   applied. You can apply them to a type of audit check, to all
    #   findings from an audit, or to a speecific set of findings.
    #   @return [Types::AuditMitigationActionsTaskTarget]
    #
    # @!attribute [rw] audit_check_to_actions_mapping
    #   For an audit check, specifies which mitigation actions to apply.
    #   Those actions must be defined in your AWS account.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] client_request_token
    #   Each audit mitigation task must have a unique client request token.
    #   If you try to start a new task with the same token as a task that
    #   already exists, an exception occurs. If you omit this value, a
    #   unique client request token is generated automatically.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class StartAuditMitigationActionsTaskRequest < Struct.new(
      :task_id,
      :target,
      :audit_check_to_actions_mapping,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The unique identifier for the audit mitigation task. This matches
    #   the `taskId` that you specified in the request.
    #   @return [String]
    #
    class StartAuditMitigationActionsTaskResponse < Struct.new(
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartOnDemandAuditTaskRequest
    #   data as a hash:
    #
    #       {
    #         target_check_names: ["AuditCheckName"], # required
    #       }
    #
    # @!attribute [rw] target_check_names
    #   Which checks are performed during the audit. The checks you specify
    #   must be enabled for your account or an exception occurs. Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks,
    #   including those that are enabled or
    #   `UpdateAccountAuditConfiguration` to select which checks are
    #   enabled.
    #   @return [Array<String>]
    #
    class StartOnDemandAuditTaskRequest < Struct.new(
      :target_check_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The ID of the on-demand audit you started.
    #   @return [String]
    #
    class StartOnDemandAuditTaskResponse < Struct.new(
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information required to start a signing job.
    #
    # @note When making an API call, you may pass StartSigningJobParameter
    #   data as a hash:
    #
    #       {
    #         signing_profile_parameter: {
    #           certificate_arn: "CertificateArn",
    #           platform: "Platform",
    #           certificate_path_on_device: "CertificatePathOnDevice",
    #         },
    #         signing_profile_name: "SigningProfileName",
    #         destination: {
    #           s3_destination: {
    #             bucket: "S3Bucket",
    #             prefix: "Prefix",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] signing_profile_parameter
    #   Describes the code-signing profile.
    #   @return [Types::SigningProfileParameter]
    #
    # @!attribute [rw] signing_profile_name
    #   The code-signing profile name.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The location to write the code-signed file.
    #   @return [Types::Destination]
    #
    class StartSigningJobParameter < Struct.new(
      :signing_profile_parameter,
      :signing_profile_name,
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartThingRegistrationTaskRequest
    #   data as a hash:
    #
    #       {
    #         template_body: "TemplateBody", # required
    #         input_file_bucket: "RegistryS3BucketName", # required
    #         input_file_key: "RegistryS3KeyName", # required
    #         role_arn: "RoleArn", # required
    #       }
    #
    # @!attribute [rw] template_body
    #   The provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] input_file_bucket
    #   The S3 bucket that contains the input file.
    #   @return [String]
    #
    # @!attribute [rw] input_file_key
    #   The name of input file within the S3 bucket. This file contains a
    #   newline delimited JSON file. Each line contains the parameter values
    #   to provision one device (thing).
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM role ARN that grants permission the input file.
    #   @return [String]
    #
    class StartThingRegistrationTaskRequest < Struct.new(
      :template_body,
      :input_file_bucket,
      :input_file_key,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The bulk thing provisioning task ID.
    #   @return [String]
    #
    class StartThingRegistrationTaskResponse < Struct.new(
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A statistical ranking (percentile) which indicates a threshold value
    # by which a behavior is determined to be in compliance or in violation
    # of the behavior.
    #
    # @note When making an API call, you may pass StatisticalThreshold
    #   data as a hash:
    #
    #       {
    #         statistic: "EvaluationStatistic",
    #       }
    #
    # @!attribute [rw] statistic
    #   The percentile which resolves to a threshold value by which
    #   compliance with a behavior is determined. Metrics are collected over
    #   the specified period (`durationSeconds`) from all reporting devices
    #   in your account and statistical ranks are calculated. Then, the
    #   measurements from a device are collected over the same period. If
    #   the accumulated measurements from the device fall above or below
    #   (`comparisonOperator`) the value associated with the percentile
    #   specified, then the device is considered to be in compliance with
    #   the behavior, otherwise a violation occurs.
    #   @return [String]
    #
    class StatisticalThreshold < Struct.new(
      :statistic)
      SENSITIVE = []
      include Aws::Structure
    end

    # A map of key-value pairs for all supported statistics. Currently, only
    # count is supported.
    #
    # @!attribute [rw] count
    #   The count of things that match the query.
    #   @return [Integer]
    #
    # @!attribute [rw] average
    #   The average of the aggregated field values.
    #   @return [Float]
    #
    # @!attribute [rw] sum
    #   The sum of the aggregated field values.
    #   @return [Float]
    #
    # @!attribute [rw] minimum
    #   The minimum aggregated field value.
    #   @return [Float]
    #
    # @!attribute [rw] maximum
    #   The maximum aggregated field value.
    #   @return [Float]
    #
    # @!attribute [rw] sum_of_squares
    #   The sum of the squares of the aggregated field values.
    #   @return [Float]
    #
    # @!attribute [rw] variance
    #   The variance of the aggregated field values.
    #   @return [Float]
    #
    # @!attribute [rw] std_deviation
    #   The standard deviation of the aggregated field values.
    #   @return [Float]
    #
    class Statistics < Struct.new(
      :count,
      :average,
      :sum,
      :minimum,
      :maximum,
      :sum_of_squares,
      :variance,
      :std_deviation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Starts execution of a Step Functions state machine.
    #
    # @note When making an API call, you may pass StepFunctionsAction
    #   data as a hash:
    #
    #       {
    #         execution_name_prefix: "ExecutionNamePrefix",
    #         state_machine_name: "StateMachineName", # required
    #         role_arn: "AwsArn", # required
    #       }
    #
    # @!attribute [rw] execution_name_prefix
    #   (Optional) A name will be given to the state machine execution
    #   consisting of this prefix followed by a UUID. Step Functions
    #   automatically creates a unique name for each state machine execution
    #   if one is not provided.
    #   @return [String]
    #
    # @!attribute [rw] state_machine_name
    #   The name of the Step Functions state machine whose execution will be
    #   started.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants IoT permission to start execution of
    #   a state machine ("Action":"states:StartExecution").
    #   @return [String]
    #
    class StepFunctionsAction < Struct.new(
      :execution_name_prefix,
      :state_machine_name,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopThingRegistrationTaskRequest
    #   data as a hash:
    #
    #       {
    #         task_id: "TaskId", # required
    #       }
    #
    # @!attribute [rw] task_id
    #   The bulk thing provisioning task ID.
    #   @return [String]
    #
    class StopThingRegistrationTaskRequest < Struct.new(
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class StopThingRegistrationTaskResponse < Aws::EmptyStructure; end

    # Describes a group of files that can be streamed.
    #
    # @note When making an API call, you may pass Stream
    #   data as a hash:
    #
    #       {
    #         stream_id: "StreamId",
    #         file_id: 1,
    #       }
    #
    # @!attribute [rw] stream_id
    #   The stream ID.
    #   @return [String]
    #
    # @!attribute [rw] file_id
    #   The ID of a file associated with a stream.
    #   @return [Integer]
    #
    class Stream < Struct.new(
      :stream_id,
      :file_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a file to stream.
    #
    # @note When making an API call, you may pass StreamFile
    #   data as a hash:
    #
    #       {
    #         file_id: 1,
    #         s3_location: {
    #           bucket: "S3Bucket",
    #           key: "S3Key",
    #           version: "S3Version",
    #         },
    #       }
    #
    # @!attribute [rw] file_id
    #   The file ID.
    #   @return [Integer]
    #
    # @!attribute [rw] s3_location
    #   The location of the file in S3.
    #   @return [Types::S3Location]
    #
    class StreamFile < Struct.new(
      :file_id,
      :s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a stream.
    #
    # @!attribute [rw] stream_id
    #   The stream ID.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The stream ARN.
    #   @return [String]
    #
    # @!attribute [rw] stream_version
    #   The stream version.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description of the stream.
    #   @return [String]
    #
    # @!attribute [rw] files
    #   The files to stream.
    #   @return [Array<Types::StreamFile>]
    #
    # @!attribute [rw] created_at
    #   The date when the stream was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The date when the stream was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] role_arn
    #   An IAM role AWS IoT assumes to access your S3 files.
    #   @return [String]
    #
    class StreamInfo < Struct.new(
      :stream_id,
      :stream_arn,
      :stream_version,
      :description,
      :files,
      :created_at,
      :last_updated_at,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a stream.
    #
    # @!attribute [rw] stream_id
    #   The stream ID.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The stream ARN.
    #   @return [String]
    #
    # @!attribute [rw] stream_version
    #   The stream version.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description of the stream.
    #   @return [String]
    #
    class StreamSummary < Struct.new(
      :stream_id,
      :stream_arn,
      :stream_version,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of key/value pairs that are used to manage the resource.
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
    #   The tag's key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag's value.
    #   @return [String]
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The new or modified tags for the resource.
    #   @return [Array<Types::Tag>]
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    class TagResourceResponse < Aws::EmptyStructure; end

    # This exception occurs if you attempt to start a task with the same
    # task-id as an existing task but with a different clientRequestToken.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class TaskAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Statistics for the checks performed during the audit.
    #
    # @!attribute [rw] total_checks
    #   The number of checks in this audit.
    #   @return [Integer]
    #
    # @!attribute [rw] in_progress_checks
    #   The number of checks in progress.
    #   @return [Integer]
    #
    # @!attribute [rw] waiting_for_data_collection_checks
    #   The number of checks waiting for data collection.
    #   @return [Integer]
    #
    # @!attribute [rw] compliant_checks
    #   The number of checks that found compliant resources.
    #   @return [Integer]
    #
    # @!attribute [rw] non_compliant_checks
    #   The number of checks that found noncompliant resources.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_checks
    #   The number of checks.
    #   @return [Integer]
    #
    # @!attribute [rw] canceled_checks
    #   The number of checks that did not run because the audit was
    #   canceled.
    #   @return [Integer]
    #
    class TaskStatistics < Struct.new(
      :total_checks,
      :in_progress_checks,
      :waiting_for_data_collection_checks,
      :compliant_checks,
      :non_compliant_checks,
      :failed_checks,
      :canceled_checks)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary counts of how many tasks for findings are in a
    # particular state. This information is included in the response from
    # DescribeAuditMitigationActionsTask.
    #
    # @!attribute [rw] total_findings_count
    #   The total number of findings to which a task is being applied.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_findings_count
    #   The number of findings for which at least one of the actions failed
    #   when applied.
    #   @return [Integer]
    #
    # @!attribute [rw] succeeded_findings_count
    #   The number of findings for which all mitigation actions succeeded
    #   when applied.
    #   @return [Integer]
    #
    # @!attribute [rw] skipped_findings_count
    #   The number of findings skipped because of filter conditions provided
    #   in the parameters to the command.
    #   @return [Integer]
    #
    # @!attribute [rw] canceled_findings_count
    #   The number of findings to which the mitigation action task was
    #   canceled when applied.
    #   @return [Integer]
    #
    class TaskStatisticsForAuditCheck < Struct.new(
      :total_findings_count,
      :failed_findings_count,
      :succeeded_findings_count,
      :skipped_findings_count,
      :canceled_findings_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TestAuthorizationRequest
    #   data as a hash:
    #
    #       {
    #         principal: "Principal",
    #         cognito_identity_pool_id: "CognitoIdentityPoolId",
    #         auth_infos: [ # required
    #           {
    #             action_type: "PUBLISH", # accepts PUBLISH, SUBSCRIBE, RECEIVE, CONNECT
    #             resources: ["Resource"], # required
    #           },
    #         ],
    #         client_id: "ClientId",
    #         policy_names_to_add: ["PolicyName"],
    #         policy_names_to_skip: ["PolicyName"],
    #       }
    #
    # @!attribute [rw] principal
    #   The principal. Valid principals are CertificateArn
    #   (arn:aws:iot:*region*\:*accountId*\:cert/*certificateId*),
    #   thingGroupArn
    #   (arn:aws:iot:*region*\:*accountId*\:thinggroup/*groupName*) and
    #   CognitoId (*region*\:*id*).
    #   @return [String]
    #
    # @!attribute [rw] cognito_identity_pool_id
    #   The Cognito identity pool ID.
    #   @return [String]
    #
    # @!attribute [rw] auth_infos
    #   A list of authorization info objects. Simulating authorization will
    #   create a response for each `authInfo` object in the list.
    #   @return [Array<Types::AuthInfo>]
    #
    # @!attribute [rw] client_id
    #   The MQTT client ID.
    #   @return [String]
    #
    # @!attribute [rw] policy_names_to_add
    #   When testing custom authorization, the policies specified here are
    #   treated as if they are attached to the principal being authorized.
    #   @return [Array<String>]
    #
    # @!attribute [rw] policy_names_to_skip
    #   When testing custom authorization, the policies specified here are
    #   treated as if they are not attached to the principal being
    #   authorized.
    #   @return [Array<String>]
    #
    class TestAuthorizationRequest < Struct.new(
      :principal,
      :cognito_identity_pool_id,
      :auth_infos,
      :client_id,
      :policy_names_to_add,
      :policy_names_to_skip)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auth_results
    #   The authentication results.
    #   @return [Array<Types::AuthResult>]
    #
    class TestAuthorizationResponse < Struct.new(
      :auth_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TestInvokeAuthorizerRequest
    #   data as a hash:
    #
    #       {
    #         authorizer_name: "AuthorizerName", # required
    #         token: "Token",
    #         token_signature: "TokenSignature",
    #         http_context: {
    #           headers: {
    #             "HttpHeaderName" => "HttpHeaderValue",
    #           },
    #           query_string: "HttpQueryString",
    #         },
    #         mqtt_context: {
    #           username: "MqttUsername",
    #           password: "data",
    #           client_id: "MqttClientId",
    #         },
    #         tls_context: {
    #           server_name: "ServerName",
    #         },
    #       }
    #
    # @!attribute [rw] authorizer_name
    #   The custom authorizer name.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   The token returned by your custom authentication service.
    #   @return [String]
    #
    # @!attribute [rw] token_signature
    #   The signature made with the token and your custom authentication
    #   service's private key. This value must be Base-64-encoded.
    #   @return [String]
    #
    # @!attribute [rw] http_context
    #   Specifies a test HTTP authorization request.
    #   @return [Types::HttpContext]
    #
    # @!attribute [rw] mqtt_context
    #   Specifies a test MQTT authorization request.
    #   @return [Types::MqttContext]
    #
    # @!attribute [rw] tls_context
    #   Specifies a test TLS authorization request.
    #   @return [Types::TlsContext]
    #
    class TestInvokeAuthorizerRequest < Struct.new(
      :authorizer_name,
      :token,
      :token_signature,
      :http_context,
      :mqtt_context,
      :tls_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] is_authenticated
    #   True if the token is authenticated, otherwise false.
    #   @return [Boolean]
    #
    # @!attribute [rw] principal_id
    #   The principal ID.
    #   @return [String]
    #
    # @!attribute [rw] policy_documents
    #   IAM policy documents.
    #   @return [Array<String>]
    #
    # @!attribute [rw] refresh_after_in_seconds
    #   The number of seconds after which the temporary credentials are
    #   refreshed.
    #   @return [Integer]
    #
    # @!attribute [rw] disconnect_after_in_seconds
    #   The number of seconds after which the connection is terminated.
    #   @return [Integer]
    #
    class TestInvokeAuthorizerResponse < Struct.new(
      :is_authenticated,
      :principal_id,
      :policy_documents,
      :refresh_after_in_seconds,
      :disconnect_after_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of the thing, including thing name, thing type name,
    # and a list of thing attributes.
    #
    # @!attribute [rw] thing_name
    #   The name of the thing.
    #   @return [String]
    #
    # @!attribute [rw] thing_type_name
    #   The name of the thing type, if the thing has been associated with a
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] thing_arn
    #   The thing ARN.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A list of thing attributes which are name-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] version
    #   The version of the thing record in the registry.
    #   @return [Integer]
    #
    class ThingAttribute < Struct.new(
      :thing_name,
      :thing_type_name,
      :thing_arn,
      :attributes,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connectivity status of the thing.
    #
    # @!attribute [rw] connected
    #   True if the thing is connected to the AWS IoT service; false if it
    #   is not connected.
    #   @return [Boolean]
    #
    # @!attribute [rw] timestamp
    #   The epoch time (in milliseconds) when the thing last connected or
    #   disconnected. If the thing has been disconnected for more than a few
    #   weeks, the time value might be missing.
    #   @return [Integer]
    #
    class ThingConnectivity < Struct.new(
      :connected,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The thing search index document.
    #
    # @!attribute [rw] thing_name
    #   The thing name.
    #   @return [String]
    #
    # @!attribute [rw] thing_id
    #   The thing ID.
    #   @return [String]
    #
    # @!attribute [rw] thing_type_name
    #   The thing type name.
    #   @return [String]
    #
    # @!attribute [rw] thing_group_names
    #   Thing group names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] attributes
    #   The attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] shadow
    #   The shadow.
    #   @return [String]
    #
    # @!attribute [rw] connectivity
    #   Indicates whether the thing is connected to the AWS IoT service.
    #   @return [Types::ThingConnectivity]
    #
    class ThingDocument < Struct.new(
      :thing_name,
      :thing_id,
      :thing_type_name,
      :thing_group_names,
      :attributes,
      :shadow,
      :connectivity)
      SENSITIVE = []
      include Aws::Structure
    end

    # The thing group search index document.
    #
    # @!attribute [rw] thing_group_name
    #   The thing group name.
    #   @return [String]
    #
    # @!attribute [rw] thing_group_id
    #   The thing group ID.
    #   @return [String]
    #
    # @!attribute [rw] thing_group_description
    #   The thing group description.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The thing group attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] parent_group_names
    #   Parent group names.
    #   @return [Array<String>]
    #
    class ThingGroupDocument < Struct.new(
      :thing_group_name,
      :thing_group_id,
      :thing_group_description,
      :attributes,
      :parent_group_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Thing group indexing configuration.
    #
    # @note When making an API call, you may pass ThingGroupIndexingConfiguration
    #   data as a hash:
    #
    #       {
    #         thing_group_indexing_mode: "OFF", # required, accepts OFF, ON
    #         managed_fields: [
    #           {
    #             name: "FieldName",
    #             type: "Number", # accepts Number, String, Boolean
    #           },
    #         ],
    #         custom_fields: [
    #           {
    #             name: "FieldName",
    #             type: "Number", # accepts Number, String, Boolean
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] thing_group_indexing_mode
    #   Thing group indexing mode.
    #   @return [String]
    #
    # @!attribute [rw] managed_fields
    #   Contains fields that are indexed and whose types are already known
    #   by the Fleet Indexing service.
    #   @return [Array<Types::Field>]
    #
    # @!attribute [rw] custom_fields
    #   A list of thing group fields to index. This list cannot contain any
    #   managed fields. Use the GetIndexingConfiguration API to get a list
    #   of managed fields.
    #
    #   Contains custom field names and their data type.
    #   @return [Array<Types::Field>]
    #
    class ThingGroupIndexingConfiguration < Struct.new(
      :thing_group_indexing_mode,
      :managed_fields,
      :custom_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Thing group metadata.
    #
    # @!attribute [rw] parent_group_name
    #   The parent thing group name.
    #   @return [String]
    #
    # @!attribute [rw] root_to_parent_thing_groups
    #   The root parent thing group.
    #   @return [Array<Types::GroupNameAndArn>]
    #
    # @!attribute [rw] creation_date
    #   The UNIX timestamp of when the thing group was created.
    #   @return [Time]
    #
    class ThingGroupMetadata < Struct.new(
      :parent_group_name,
      :root_to_parent_thing_groups,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Thing group properties.
    #
    # @note When making an API call, you may pass ThingGroupProperties
    #   data as a hash:
    #
    #       {
    #         thing_group_description: "ThingGroupDescription",
    #         attribute_payload: {
    #           attributes: {
    #             "AttributeName" => "AttributeValue",
    #           },
    #           merge: false,
    #         },
    #       }
    #
    # @!attribute [rw] thing_group_description
    #   The thing group description.
    #   @return [String]
    #
    # @!attribute [rw] attribute_payload
    #   The thing group attributes in JSON format.
    #   @return [Types::AttributePayload]
    #
    class ThingGroupProperties < Struct.new(
      :thing_group_description,
      :attribute_payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # The thing indexing configuration. For more information, see [Managing
    # Thing Indexing][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot/latest/developerguide/managing-index.html
    #
    # @note When making an API call, you may pass ThingIndexingConfiguration
    #   data as a hash:
    #
    #       {
    #         thing_indexing_mode: "OFF", # required, accepts OFF, REGISTRY, REGISTRY_AND_SHADOW
    #         thing_connectivity_indexing_mode: "OFF", # accepts OFF, STATUS
    #         managed_fields: [
    #           {
    #             name: "FieldName",
    #             type: "Number", # accepts Number, String, Boolean
    #           },
    #         ],
    #         custom_fields: [
    #           {
    #             name: "FieldName",
    #             type: "Number", # accepts Number, String, Boolean
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] thing_indexing_mode
    #   Thing indexing mode. Valid values are:
    #
    #   * REGISTRY – Your thing index contains registry data only.
    #
    #   * REGISTRY\_AND\_SHADOW - Your thing index contains registry and
    #     shadow data.
    #
    #   * OFF - Thing indexing is disabled.
    #   @return [String]
    #
    # @!attribute [rw] thing_connectivity_indexing_mode
    #   Thing connectivity indexing mode. Valid values are:
    #
    #   * STATUS – Your thing index contains connectivity status. To enable
    #     thing connectivity indexing, thingIndexMode must not be set to
    #     OFF.
    #
    #   * OFF - Thing connectivity status indexing is disabled.
    #   @return [String]
    #
    # @!attribute [rw] managed_fields
    #   Contains fields that are indexed and whose types are already known
    #   by the Fleet Indexing service.
    #   @return [Array<Types::Field>]
    #
    # @!attribute [rw] custom_fields
    #   Contains custom field names and their data type.
    #   @return [Array<Types::Field>]
    #
    class ThingIndexingConfiguration < Struct.new(
      :thing_indexing_mode,
      :thing_connectivity_indexing_mode,
      :managed_fields,
      :custom_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # The definition of the thing type, including thing type name and
    # description.
    #
    # @!attribute [rw] thing_type_name
    #   The name of the thing type.
    #   @return [String]
    #
    # @!attribute [rw] thing_type_arn
    #   The thing type ARN.
    #   @return [String]
    #
    # @!attribute [rw] thing_type_properties
    #   The ThingTypeProperties for the thing type.
    #   @return [Types::ThingTypeProperties]
    #
    # @!attribute [rw] thing_type_metadata
    #   The ThingTypeMetadata contains additional information about the
    #   thing type including: creation date and time, a value indicating
    #   whether the thing type is deprecated, and a date and time when it
    #   was deprecated.
    #   @return [Types::ThingTypeMetadata]
    #
    class ThingTypeDefinition < Struct.new(
      :thing_type_name,
      :thing_type_arn,
      :thing_type_properties,
      :thing_type_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ThingTypeMetadata contains additional information about the thing
    # type including: creation date and time, a value indicating whether the
    # thing type is deprecated, and a date and time when time was
    # deprecated.
    #
    # @!attribute [rw] deprecated
    #   Whether the thing type is deprecated. If **true**, no new things
    #   could be associated with this type.
    #   @return [Boolean]
    #
    # @!attribute [rw] deprecation_date
    #   The date and time when the thing type was deprecated.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the thing type was created.
    #   @return [Time]
    #
    class ThingTypeMetadata < Struct.new(
      :deprecated,
      :deprecation_date,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ThingTypeProperties contains information about the thing type
    # including: a thing type description, and a list of searchable thing
    # attribute names.
    #
    # @note When making an API call, you may pass ThingTypeProperties
    #   data as a hash:
    #
    #       {
    #         thing_type_description: "ThingTypeDescription",
    #         searchable_attributes: ["AttributeName"],
    #       }
    #
    # @!attribute [rw] thing_type_description
    #   The description of the thing type.
    #   @return [String]
    #
    # @!attribute [rw] searchable_attributes
    #   A list of searchable thing attribute names.
    #   @return [Array<String>]
    #
    class ThingTypeProperties < Struct.new(
      :thing_type_description,
      :searchable_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The rate exceeds the limit.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the amount of time each device has to finish its execution
    # of the job. A timer is started when the job execution status is set to
    # `IN_PROGRESS`. If the job execution status is not set to another
    # terminal state before the timer expires, it will be automatically set
    # to `TIMED_OUT`.
    #
    # @note When making an API call, you may pass TimeoutConfig
    #   data as a hash:
    #
    #       {
    #         in_progress_timeout_in_minutes: 1,
    #       }
    #
    # @!attribute [rw] in_progress_timeout_in_minutes
    #   Specifies the amount of time, in minutes, this device has to finish
    #   execution of this job. The timeout interval can be anywhere between
    #   1 minute and 7 days (1 to 10080 minutes). The in progress timer
    #   can't be updated and will apply to all job executions for the job.
    #   Whenever a job execution remains in the IN\_PROGRESS status for
    #   longer than this interval, the job execution will fail and switch to
    #   the terminal `TIMED_OUT` status.
    #   @return [Integer]
    #
    class TimeoutConfig < Struct.new(
      :in_progress_timeout_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Timestream rule action writes attributes (measures) from an MQTT
    # message into an Amazon Timestream table. For more information, see the
    # [Timestream][1] topic rule action documentation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot/latest/developerguide/timestream-rule-action.html
    #
    # @note When making an API call, you may pass TimestreamAction
    #   data as a hash:
    #
    #       {
    #         role_arn: "AwsArn", # required
    #         database_name: "TimestreamDatabaseName", # required
    #         table_name: "TimestreamTableName", # required
    #         dimensions: [ # required
    #           {
    #             name: "TimestreamDimensionName", # required
    #             value: "TimestreamDimensionValue", # required
    #           },
    #         ],
    #         timestamp: {
    #           value: "TimestreamTimestampValue", # required
    #           unit: "TimestreamTimestampUnit", # required
    #         },
    #       }
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants permission to write to the Amazon
    #   Timestream database table.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of an Amazon Timestream database.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the database table into which to write the measure
    #   records.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   Metadata attributes of the time series that are written in each
    #   measure record.
    #   @return [Array<Types::TimestreamDimension>]
    #
    # @!attribute [rw] timestamp
    #   Specifies an application-defined value to replace the default value
    #   assigned to the Timestream record's timestamp in the `time` column.
    #
    #   You can use this property to specify the value and the precision of
    #   the Timestream record's timestamp. You can specify a value from the
    #   message payload or a value computed by a substitution template.
    #
    #   If omitted, the topic rule action assigns the timestamp, in
    #   milliseconds, at the time it processed the rule.
    #   @return [Types::TimestreamTimestamp]
    #
    class TimestreamAction < Struct.new(
      :role_arn,
      :database_name,
      :table_name,
      :dimensions,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata attributes of the time series that are written in each
    # measure record.
    #
    # @note When making an API call, you may pass TimestreamDimension
    #   data as a hash:
    #
    #       {
    #         name: "TimestreamDimensionName", # required
    #         value: "TimestreamDimensionValue", # required
    #       }
    #
    # @!attribute [rw] name
    #   The metadata dimension name. This is the name of the column in the
    #   Amazon Timestream database table record.
    #
    #   Dimensions cannot be named: `measure_name`, `measure_value`, or
    #   `time`. These names are reserved. Dimension names cannot start with
    #   `ts_` or `measure_value` and they cannot contain the colon (`:`)
    #   character.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value to write in this column of the database record.
    #   @return [String]
    #
    class TimestreamDimension < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes how to interpret an application-defined timestamp value from
    # an MQTT message payload and the precision of that value.
    #
    # @note When making an API call, you may pass TimestreamTimestamp
    #   data as a hash:
    #
    #       {
    #         value: "TimestreamTimestampValue", # required
    #         unit: "TimestreamTimestampUnit", # required
    #       }
    #
    # @!attribute [rw] value
    #   An expression that returns a long epoch time value.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The precision of the timestamp value that results from the
    #   expression described in `value`.
    #
    #   Valid values: `SECONDS` \| `MILLISECONDS` \| `MICROSECONDS` \|
    #   `NANOSECONDS`. The default is `MILLISECONDS`.
    #   @return [String]
    #
    class TimestreamTimestamp < Struct.new(
      :value,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the TLS context to use for the test authorizer request.
    #
    # @note When making an API call, you may pass TlsContext
    #   data as a hash:
    #
    #       {
    #         server_name: "ServerName",
    #       }
    #
    # @!attribute [rw] server_name
    #   The value of the `serverName` key in a TLS authorization request.
    #   @return [String]
    #
    class TlsContext < Struct.new(
      :server_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a rule.
    #
    # @!attribute [rw] rule_name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] sql
    #   The SQL statement used to query the topic. When using a SQL query
    #   with multiple lines, be sure to escape the newline characters.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] actions
    #   The actions associated with the rule.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] rule_disabled
    #   Specifies whether the rule is disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] aws_iot_sql_version
    #   The version of the SQL rules engine to use when evaluating the rule.
    #   @return [String]
    #
    # @!attribute [rw] error_action
    #   The action to perform when an error occurs.
    #   @return [Types::Action]
    #
    class TopicRule < Struct.new(
      :rule_name,
      :sql,
      :description,
      :created_at,
      :actions,
      :rule_disabled,
      :aws_iot_sql_version,
      :error_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # A topic rule destination.
    #
    # @!attribute [rw] arn
    #   The topic rule destination URL.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the topic rule destination. Valid values are:
    #
    #   IN\_PROGRESS
    #
    #   : A topic rule destination was created but has not been confirmed.
    #     You can set `status` to `IN_PROGRESS` by calling
    #     `UpdateTopicRuleDestination`. Calling `UpdateTopicRuleDestination`
    #     causes a new confirmation challenge to be sent to your
    #     confirmation endpoint.
    #
    #   ENABLED
    #
    #   : Confirmation was completed, and traffic to this destination is
    #     allowed. You can set `status` to `DISABLED` by calling
    #     `UpdateTopicRuleDestination`.
    #
    #   DISABLED
    #
    #   : Confirmation was completed, and traffic to this destination is not
    #     allowed. You can set `status` to `ENABLED` by calling
    #     `UpdateTopicRuleDestination`.
    #
    #   ERROR
    #
    #   : Confirmation could not be completed, for example if the
    #     confirmation timed out. You can call `GetTopicRuleDestination` for
    #     details about the error. You can set `status` to `IN_PROGRESS` by
    #     calling `UpdateTopicRuleDestination`. Calling
    #     `UpdateTopicRuleDestination` causes a new confirmation challenge
    #     to be sent to your confirmation endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Additional details or reason why the topic rule destination is in
    #   the current status.
    #   @return [String]
    #
    # @!attribute [rw] http_url_properties
    #   Properties of the HTTP URL.
    #   @return [Types::HttpUrlDestinationProperties]
    #
    class TopicRuleDestination < Struct.new(
      :arn,
      :status,
      :status_reason,
      :http_url_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration of the topic rule destination.
    #
    # @note When making an API call, you may pass TopicRuleDestinationConfiguration
    #   data as a hash:
    #
    #       {
    #         http_url_configuration: {
    #           confirmation_url: "Url", # required
    #         },
    #       }
    #
    # @!attribute [rw] http_url_configuration
    #   Configuration of the HTTP URL.
    #   @return [Types::HttpUrlDestinationConfiguration]
    #
    class TopicRuleDestinationConfiguration < Struct.new(
      :http_url_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the topic rule destination.
    #
    # @!attribute [rw] arn
    #   The topic rule destination ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the topic rule destination. Valid values are:
    #
    #   IN\_PROGRESS
    #
    #   : A topic rule destination was created but has not been confirmed.
    #     You can set `status` to `IN_PROGRESS` by calling
    #     `UpdateTopicRuleDestination`. Calling `UpdateTopicRuleDestination`
    #     causes a new confirmation challenge to be sent to your
    #     confirmation endpoint.
    #
    #   ENABLED
    #
    #   : Confirmation was completed, and traffic to this destination is
    #     allowed. You can set `status` to `DISABLED` by calling
    #     `UpdateTopicRuleDestination`.
    #
    #   DISABLED
    #
    #   : Confirmation was completed, and traffic to this destination is not
    #     allowed. You can set `status` to `ENABLED` by calling
    #     `UpdateTopicRuleDestination`.
    #
    #   ERROR
    #
    #   : Confirmation could not be completed, for example if the
    #     confirmation timed out. You can call `GetTopicRuleDestination` for
    #     details about the error. You can set `status` to `IN_PROGRESS` by
    #     calling `UpdateTopicRuleDestination`. Calling
    #     `UpdateTopicRuleDestination` causes a new confirmation challenge
    #     to be sent to your confirmation endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason the topic rule destination is in the current status.
    #   @return [String]
    #
    # @!attribute [rw] http_url_summary
    #   Information about the HTTP URL.
    #   @return [Types::HttpUrlDestinationSummary]
    #
    class TopicRuleDestinationSummary < Struct.new(
      :arn,
      :status,
      :status_reason,
      :http_url_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a rule.
    #
    # @!attribute [rw] rule_arn
    #   The rule ARN.
    #   @return [String]
    #
    # @!attribute [rw] rule_name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] topic_pattern
    #   The pattern for the topic names that apply.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] rule_disabled
    #   Specifies whether the rule is disabled.
    #   @return [Boolean]
    #
    class TopicRuleListItem < Struct.new(
      :rule_arn,
      :rule_name,
      :topic_pattern,
      :created_at,
      :rule_disabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a rule.
    #
    # @note When making an API call, you may pass TopicRulePayload
    #   data as a hash:
    #
    #       {
    #         sql: "SQL", # required
    #         description: "Description",
    #         actions: [ # required
    #           {
    #             dynamo_db: {
    #               table_name: "TableName", # required
    #               role_arn: "AwsArn", # required
    #               operation: "DynamoOperation",
    #               hash_key_field: "HashKeyField", # required
    #               hash_key_value: "HashKeyValue", # required
    #               hash_key_type: "STRING", # accepts STRING, NUMBER
    #               range_key_field: "RangeKeyField",
    #               range_key_value: "RangeKeyValue",
    #               range_key_type: "STRING", # accepts STRING, NUMBER
    #               payload_field: "PayloadField",
    #             },
    #             dynamo_d_bv_2: {
    #               role_arn: "AwsArn", # required
    #               put_item: { # required
    #                 table_name: "TableName", # required
    #               },
    #             },
    #             lambda: {
    #               function_arn: "FunctionArn", # required
    #             },
    #             sns: {
    #               target_arn: "AwsArn", # required
    #               role_arn: "AwsArn", # required
    #               message_format: "RAW", # accepts RAW, JSON
    #             },
    #             sqs: {
    #               role_arn: "AwsArn", # required
    #               queue_url: "QueueUrl", # required
    #               use_base_64: false,
    #             },
    #             kinesis: {
    #               role_arn: "AwsArn", # required
    #               stream_name: "StreamName", # required
    #               partition_key: "PartitionKey",
    #             },
    #             republish: {
    #               role_arn: "AwsArn", # required
    #               topic: "TopicPattern", # required
    #               qos: 1,
    #             },
    #             s3: {
    #               role_arn: "AwsArn", # required
    #               bucket_name: "BucketName", # required
    #               key: "Key", # required
    #               canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write
    #             },
    #             firehose: {
    #               role_arn: "AwsArn", # required
    #               delivery_stream_name: "DeliveryStreamName", # required
    #               separator: "FirehoseSeparator",
    #             },
    #             cloudwatch_metric: {
    #               role_arn: "AwsArn", # required
    #               metric_namespace: "String", # required
    #               metric_name: "String", # required
    #               metric_value: "String", # required
    #               metric_unit: "String", # required
    #               metric_timestamp: "String",
    #             },
    #             cloudwatch_alarm: {
    #               role_arn: "AwsArn", # required
    #               alarm_name: "AlarmName", # required
    #               state_reason: "StateReason", # required
    #               state_value: "StateValue", # required
    #             },
    #             cloudwatch_logs: {
    #               role_arn: "AwsArn", # required
    #               log_group_name: "LogGroupName", # required
    #             },
    #             elasticsearch: {
    #               role_arn: "AwsArn", # required
    #               endpoint: "ElasticsearchEndpoint", # required
    #               index: "ElasticsearchIndex", # required
    #               type: "ElasticsearchType", # required
    #               id: "ElasticsearchId", # required
    #             },
    #             salesforce: {
    #               token: "SalesforceToken", # required
    #               url: "SalesforceEndpoint", # required
    #             },
    #             iot_analytics: {
    #               channel_arn: "AwsArn",
    #               channel_name: "ChannelName",
    #               role_arn: "AwsArn",
    #             },
    #             iot_events: {
    #               input_name: "InputName", # required
    #               message_id: "MessageId",
    #               role_arn: "AwsArn", # required
    #             },
    #             iot_site_wise: {
    #               put_asset_property_value_entries: [ # required
    #                 {
    #                   entry_id: "AssetPropertyEntryId",
    #                   asset_id: "AssetId",
    #                   property_id: "AssetPropertyId",
    #                   property_alias: "AssetPropertyAlias",
    #                   property_values: [ # required
    #                     {
    #                       value: { # required
    #                         string_value: "AssetPropertyStringValue",
    #                         integer_value: "AssetPropertyIntegerValue",
    #                         double_value: "AssetPropertyDoubleValue",
    #                         boolean_value: "AssetPropertyBooleanValue",
    #                       },
    #                       timestamp: { # required
    #                         time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                         offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                       },
    #                       quality: "AssetPropertyQuality",
    #                     },
    #                   ],
    #                 },
    #               ],
    #               role_arn: "AwsArn", # required
    #             },
    #             step_functions: {
    #               execution_name_prefix: "ExecutionNamePrefix",
    #               state_machine_name: "StateMachineName", # required
    #               role_arn: "AwsArn", # required
    #             },
    #             timestream: {
    #               role_arn: "AwsArn", # required
    #               database_name: "TimestreamDatabaseName", # required
    #               table_name: "TimestreamTableName", # required
    #               dimensions: [ # required
    #                 {
    #                   name: "TimestreamDimensionName", # required
    #                   value: "TimestreamDimensionValue", # required
    #                 },
    #               ],
    #               timestamp: {
    #                 value: "TimestreamTimestampValue", # required
    #                 unit: "TimestreamTimestampUnit", # required
    #               },
    #             },
    #             http: {
    #               url: "Url", # required
    #               confirmation_url: "Url",
    #               headers: [
    #                 {
    #                   key: "HeaderKey", # required
    #                   value: "HeaderValue", # required
    #                 },
    #               ],
    #               auth: {
    #                 sigv4: {
    #                   signing_region: "SigningRegion", # required
    #                   service_name: "ServiceName", # required
    #                   role_arn: "AwsArn", # required
    #                 },
    #               },
    #             },
    #           },
    #         ],
    #         rule_disabled: false,
    #         aws_iot_sql_version: "AwsIotSqlVersion",
    #         error_action: {
    #           dynamo_db: {
    #             table_name: "TableName", # required
    #             role_arn: "AwsArn", # required
    #             operation: "DynamoOperation",
    #             hash_key_field: "HashKeyField", # required
    #             hash_key_value: "HashKeyValue", # required
    #             hash_key_type: "STRING", # accepts STRING, NUMBER
    #             range_key_field: "RangeKeyField",
    #             range_key_value: "RangeKeyValue",
    #             range_key_type: "STRING", # accepts STRING, NUMBER
    #             payload_field: "PayloadField",
    #           },
    #           dynamo_d_bv_2: {
    #             role_arn: "AwsArn", # required
    #             put_item: { # required
    #               table_name: "TableName", # required
    #             },
    #           },
    #           lambda: {
    #             function_arn: "FunctionArn", # required
    #           },
    #           sns: {
    #             target_arn: "AwsArn", # required
    #             role_arn: "AwsArn", # required
    #             message_format: "RAW", # accepts RAW, JSON
    #           },
    #           sqs: {
    #             role_arn: "AwsArn", # required
    #             queue_url: "QueueUrl", # required
    #             use_base_64: false,
    #           },
    #           kinesis: {
    #             role_arn: "AwsArn", # required
    #             stream_name: "StreamName", # required
    #             partition_key: "PartitionKey",
    #           },
    #           republish: {
    #             role_arn: "AwsArn", # required
    #             topic: "TopicPattern", # required
    #             qos: 1,
    #           },
    #           s3: {
    #             role_arn: "AwsArn", # required
    #             bucket_name: "BucketName", # required
    #             key: "Key", # required
    #             canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write
    #           },
    #           firehose: {
    #             role_arn: "AwsArn", # required
    #             delivery_stream_name: "DeliveryStreamName", # required
    #             separator: "FirehoseSeparator",
    #           },
    #           cloudwatch_metric: {
    #             role_arn: "AwsArn", # required
    #             metric_namespace: "String", # required
    #             metric_name: "String", # required
    #             metric_value: "String", # required
    #             metric_unit: "String", # required
    #             metric_timestamp: "String",
    #           },
    #           cloudwatch_alarm: {
    #             role_arn: "AwsArn", # required
    #             alarm_name: "AlarmName", # required
    #             state_reason: "StateReason", # required
    #             state_value: "StateValue", # required
    #           },
    #           cloudwatch_logs: {
    #             role_arn: "AwsArn", # required
    #             log_group_name: "LogGroupName", # required
    #           },
    #           elasticsearch: {
    #             role_arn: "AwsArn", # required
    #             endpoint: "ElasticsearchEndpoint", # required
    #             index: "ElasticsearchIndex", # required
    #             type: "ElasticsearchType", # required
    #             id: "ElasticsearchId", # required
    #           },
    #           salesforce: {
    #             token: "SalesforceToken", # required
    #             url: "SalesforceEndpoint", # required
    #           },
    #           iot_analytics: {
    #             channel_arn: "AwsArn",
    #             channel_name: "ChannelName",
    #             role_arn: "AwsArn",
    #           },
    #           iot_events: {
    #             input_name: "InputName", # required
    #             message_id: "MessageId",
    #             role_arn: "AwsArn", # required
    #           },
    #           iot_site_wise: {
    #             put_asset_property_value_entries: [ # required
    #               {
    #                 entry_id: "AssetPropertyEntryId",
    #                 asset_id: "AssetId",
    #                 property_id: "AssetPropertyId",
    #                 property_alias: "AssetPropertyAlias",
    #                 property_values: [ # required
    #                   {
    #                     value: { # required
    #                       string_value: "AssetPropertyStringValue",
    #                       integer_value: "AssetPropertyIntegerValue",
    #                       double_value: "AssetPropertyDoubleValue",
    #                       boolean_value: "AssetPropertyBooleanValue",
    #                     },
    #                     timestamp: { # required
    #                       time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                       offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                     },
    #                     quality: "AssetPropertyQuality",
    #                   },
    #                 ],
    #               },
    #             ],
    #             role_arn: "AwsArn", # required
    #           },
    #           step_functions: {
    #             execution_name_prefix: "ExecutionNamePrefix",
    #             state_machine_name: "StateMachineName", # required
    #             role_arn: "AwsArn", # required
    #           },
    #           timestream: {
    #             role_arn: "AwsArn", # required
    #             database_name: "TimestreamDatabaseName", # required
    #             table_name: "TimestreamTableName", # required
    #             dimensions: [ # required
    #               {
    #                 name: "TimestreamDimensionName", # required
    #                 value: "TimestreamDimensionValue", # required
    #               },
    #             ],
    #             timestamp: {
    #               value: "TimestreamTimestampValue", # required
    #               unit: "TimestreamTimestampUnit", # required
    #             },
    #           },
    #           http: {
    #             url: "Url", # required
    #             confirmation_url: "Url",
    #             headers: [
    #               {
    #                 key: "HeaderKey", # required
    #                 value: "HeaderValue", # required
    #               },
    #             ],
    #             auth: {
    #               sigv4: {
    #                 signing_region: "SigningRegion", # required
    #                 service_name: "ServiceName", # required
    #                 role_arn: "AwsArn", # required
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] sql
    #   The SQL statement used to query the topic. For more information, see
    #   [AWS IoT SQL Reference][1] in the *AWS IoT Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot/latest/developerguide/iot-sql-reference.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The actions associated with the rule.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] rule_disabled
    #   Specifies whether the rule is disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] aws_iot_sql_version
    #   The version of the SQL rules engine to use when evaluating the rule.
    #   @return [String]
    #
    # @!attribute [rw] error_action
    #   The action to take when an error occurs.
    #   @return [Types::Action]
    #
    class TopicRulePayload < Struct.new(
      :sql,
      :description,
      :actions,
      :rule_disabled,
      :aws_iot_sql_version,
      :error_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can't revert the certificate transfer because the transfer is
    # already complete.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class TransferAlreadyCompletedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the TransferCertificate operation.
    #
    # @note When making an API call, you may pass TransferCertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_id: "CertificateId", # required
    #         target_aws_account: "AwsAccountId", # required
    #         transfer_message: "Message",
    #       }
    #
    # @!attribute [rw] certificate_id
    #   The ID of the certificate. (The last part of the certificate ARN
    #   contains the certificate ID.)
    #   @return [String]
    #
    # @!attribute [rw] target_aws_account
    #   The AWS account.
    #   @return [String]
    #
    # @!attribute [rw] transfer_message
    #   The transfer message.
    #   @return [String]
    #
    class TransferCertificateRequest < Struct.new(
      :certificate_id,
      :target_aws_account,
      :transfer_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the TransferCertificate operation.
    #
    # @!attribute [rw] transferred_certificate_arn
    #   The ARN of the certificate.
    #   @return [String]
    #
    class TransferCertificateResponse < Struct.new(
      :transferred_certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can't transfer the certificate because authorization policies are
    # still attached.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class TransferConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data used to transfer a certificate to an AWS account.
    #
    # @!attribute [rw] transfer_message
    #   The transfer message.
    #   @return [String]
    #
    # @!attribute [rw] reject_reason
    #   The reason why the transfer was rejected.
    #   @return [String]
    #
    # @!attribute [rw] transfer_date
    #   The date the transfer took place.
    #   @return [Time]
    #
    # @!attribute [rw] accept_date
    #   The date the transfer was accepted.
    #   @return [Time]
    #
    # @!attribute [rw] reject_date
    #   The date the transfer was rejected.
    #   @return [Time]
    #
    class TransferData < Struct.new(
      :transfer_message,
      :reject_reason,
      :transfer_date,
      :accept_date,
      :reject_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # You are not authorized to perform this operation.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of the keys of the tags to be removed from the resource.
    #   @return [Array<String>]
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateAccountAuditConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         role_arn: "RoleArn",
    #         audit_notification_target_configurations: {
    #           "SNS" => {
    #             target_arn: "TargetArn",
    #             role_arn: "RoleArn",
    #             enabled: false,
    #           },
    #         },
    #         audit_check_configurations: {
    #           "AuditCheckName" => {
    #             enabled: false,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants permission to AWS IoT to access
    #   information about your devices, policies, certificates and other
    #   items as required when performing an audit.
    #   @return [String]
    #
    # @!attribute [rw] audit_notification_target_configurations
    #   Information about the targets to which audit notifications are sent.
    #   @return [Hash<String,Types::AuditNotificationTarget>]
    #
    # @!attribute [rw] audit_check_configurations
    #   Specifies which audit checks are enabled and disabled for this
    #   account. Use `DescribeAccountAuditConfiguration` to see the list of
    #   all checks, including those that are currently enabled.
    #
    #   Some data collection might start immediately when certain checks are
    #   enabled. When a check is disabled, any data collected so far in
    #   relation to the check is deleted.
    #
    #   You cannot disable a check if it is used by any scheduled audit. You
    #   must first delete the check from the scheduled audit or delete the
    #   scheduled audit itself.
    #
    #   On the first call to `UpdateAccountAuditConfiguration`, this
    #   parameter is required and must specify at least one enabled check.
    #   @return [Hash<String,Types::AuditCheckConfiguration>]
    #
    class UpdateAccountAuditConfigurationRequest < Struct.new(
      :role_arn,
      :audit_notification_target_configurations,
      :audit_check_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateAccountAuditConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateAuditSuppressionRequest
    #   data as a hash:
    #
    #       {
    #         check_name: "AuditCheckName", # required
    #         resource_identifier: { # required
    #           device_certificate_id: "CertificateId",
    #           ca_certificate_id: "CertificateId",
    #           cognito_identity_pool_id: "CognitoIdentityPoolId",
    #           client_id: "ClientId",
    #           policy_version_identifier: {
    #             policy_name: "PolicyName",
    #             policy_version_id: "PolicyVersionId",
    #           },
    #           account: "AwsAccountId",
    #           iam_role_arn: "RoleArn",
    #           role_alias_arn: "RoleAliasArn",
    #         },
    #         expiration_date: Time.now,
    #         suppress_indefinitely: false,
    #         description: "AuditDescription",
    #       }
    #
    # @!attribute [rw] check_name
    #   An audit check name. Checks must be enabled for your account. (Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks,
    #   including those that are enabled or use
    #   `UpdateAccountAuditConfiguration` to select which checks are
    #   enabled.)
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   Information that identifies the noncompliant resource.
    #   @return [Types::ResourceIdentifier]
    #
    # @!attribute [rw] expiration_date
    #   The expiration date (epoch timestamp in seconds) that you want the
    #   suppression to adhere to.
    #   @return [Time]
    #
    # @!attribute [rw] suppress_indefinitely
    #   Indicates whether a suppression should exist indefinitely or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description of the audit suppression.
    #   @return [String]
    #
    class UpdateAuditSuppressionRequest < Struct.new(
      :check_name,
      :resource_identifier,
      :expiration_date,
      :suppress_indefinitely,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateAuditSuppressionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateAuthorizerRequest
    #   data as a hash:
    #
    #       {
    #         authorizer_name: "AuthorizerName", # required
    #         authorizer_function_arn: "AuthorizerFunctionArn",
    #         token_key_name: "TokenKeyName",
    #         token_signing_public_keys: {
    #           "KeyName" => "KeyValue",
    #         },
    #         status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #       }
    #
    # @!attribute [rw] authorizer_name
    #   The authorizer name.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_function_arn
    #   The ARN of the authorizer's Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] token_key_name
    #   The key used to extract the token from the HTTP headers.
    #   @return [String]
    #
    # @!attribute [rw] token_signing_public_keys
    #   The public keys used to verify the token signature.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of the update authorizer request.
    #   @return [String]
    #
    class UpdateAuthorizerRequest < Struct.new(
      :authorizer_name,
      :authorizer_function_arn,
      :token_key_name,
      :token_signing_public_keys,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorizer_name
    #   The authorizer name.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_arn
    #   The authorizer ARN.
    #   @return [String]
    #
    class UpdateAuthorizerResponse < Struct.new(
      :authorizer_name,
      :authorizer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateBillingGroupRequest
    #   data as a hash:
    #
    #       {
    #         billing_group_name: "BillingGroupName", # required
    #         billing_group_properties: { # required
    #           billing_group_description: "BillingGroupDescription",
    #         },
    #         expected_version: 1,
    #       }
    #
    # @!attribute [rw] billing_group_name
    #   The name of the billing group.
    #   @return [String]
    #
    # @!attribute [rw] billing_group_properties
    #   The properties of the billing group.
    #   @return [Types::BillingGroupProperties]
    #
    # @!attribute [rw] expected_version
    #   The expected version of the billing group. If the version of the
    #   billing group does not match the expected version specified in the
    #   request, the `UpdateBillingGroup` request is rejected with a
    #   `VersionConflictException`.
    #   @return [Integer]
    #
    class UpdateBillingGroupRequest < Struct.new(
      :billing_group_name,
      :billing_group_properties,
      :expected_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] version
    #   The latest version of the billing group.
    #   @return [Integer]
    #
    class UpdateBillingGroupResponse < Struct.new(
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters to define a mitigation action that changes the state of the
    # CA certificate to inactive.
    #
    # @note When making an API call, you may pass UpdateCACertificateParams
    #   data as a hash:
    #
    #       {
    #         action: "DEACTIVATE", # required, accepts DEACTIVATE
    #       }
    #
    # @!attribute [rw] action
    #   The action that you want to apply to the CA cerrtificate. The only
    #   supported value is `DEACTIVATE`.
    #   @return [String]
    #
    class UpdateCACertificateParams < Struct.new(
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input to the UpdateCACertificate operation.
    #
    # @note When making an API call, you may pass UpdateCACertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_id: "CertificateId", # required
    #         new_status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #         new_auto_registration_status: "ENABLE", # accepts ENABLE, DISABLE
    #         registration_config: {
    #           template_body: "TemplateBody",
    #           role_arn: "RoleArn",
    #         },
    #         remove_auto_registration: false,
    #       }
    #
    # @!attribute [rw] certificate_id
    #   The CA certificate identifier.
    #   @return [String]
    #
    # @!attribute [rw] new_status
    #   The updated status of the CA certificate.
    #
    #   **Note:** The status value REGISTER\_INACTIVE is deprecated and
    #   should not be used.
    #   @return [String]
    #
    # @!attribute [rw] new_auto_registration_status
    #   The new value for the auto registration status. Valid values are:
    #   "ENABLE" or "DISABLE".
    #   @return [String]
    #
    # @!attribute [rw] registration_config
    #   Information about the registration configuration.
    #   @return [Types::RegistrationConfig]
    #
    # @!attribute [rw] remove_auto_registration
    #   If true, removes auto registration.
    #   @return [Boolean]
    #
    class UpdateCACertificateRequest < Struct.new(
      :certificate_id,
      :new_status,
      :new_auto_registration_status,
      :registration_config,
      :remove_auto_registration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the UpdateCertificate operation.
    #
    # @note When making an API call, you may pass UpdateCertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_id: "CertificateId", # required
    #         new_status: "ACTIVE", # required, accepts ACTIVE, INACTIVE, REVOKED, PENDING_TRANSFER, REGISTER_INACTIVE, PENDING_ACTIVATION
    #       }
    #
    # @!attribute [rw] certificate_id
    #   The ID of the certificate. (The last part of the certificate ARN
    #   contains the certificate ID.)
    #   @return [String]
    #
    # @!attribute [rw] new_status
    #   The new status.
    #
    #   **Note:** Setting the status to PENDING\_TRANSFER or
    #   PENDING\_ACTIVATION will result in an exception being thrown.
    #   PENDING\_TRANSFER and PENDING\_ACTIVATION are statuses used
    #   internally by AWS IoT. They are not intended for developer use.
    #
    #   **Note:** The status value REGISTER\_INACTIVE is deprecated and
    #   should not be used.
    #   @return [String]
    #
    class UpdateCertificateRequest < Struct.new(
      :certificate_id,
      :new_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters to define a mitigation action that changes the state of the
    # device certificate to inactive.
    #
    # @note When making an API call, you may pass UpdateDeviceCertificateParams
    #   data as a hash:
    #
    #       {
    #         action: "DEACTIVATE", # required, accepts DEACTIVATE
    #       }
    #
    # @!attribute [rw] action
    #   The action that you want to apply to the device cerrtificate. The
    #   only supported value is `DEACTIVATE`.
    #   @return [String]
    #
    class UpdateDeviceCertificateParams < Struct.new(
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDimensionRequest
    #   data as a hash:
    #
    #       {
    #         name: "DimensionName", # required
    #         string_values: ["DimensionStringValue"], # required
    #       }
    #
    # @!attribute [rw] name
    #   A unique identifier for the dimension. Choose something that
    #   describes the type and value to make it easy to remember what it
    #   does.
    #   @return [String]
    #
    # @!attribute [rw] string_values
    #   Specifies the value or list of values for the dimension. For
    #   `TOPIC_FILTER` dimensions, this is a pattern used to match the MQTT
    #   topic (for example, "admin/#").
    #   @return [Array<String>]
    #
    class UpdateDimensionRequest < Struct.new(
      :name,
      :string_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A unique identifier for the dimension.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon resource name) of the created dimension.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the dimension.
    #   @return [String]
    #
    # @!attribute [rw] string_values
    #   The value or list of values used to scope the dimension. For
    #   example, for topic filters, this is the pattern used to match the
    #   MQTT topic name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_date
    #   The date and time, in milliseconds since epoch, when the dimension
    #   was initially created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time, in milliseconds since epoch, when the dimension
    #   was most recently updated.
    #   @return [Time]
    #
    class UpdateDimensionResponse < Struct.new(
      :name,
      :arn,
      :type,
      :string_values,
      :creation_date,
      :last_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDomainConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         domain_configuration_name: "ReservedDomainConfigurationName", # required
    #         authorizer_config: {
    #           default_authorizer_name: "AuthorizerName",
    #           allow_authorizer_override: false,
    #         },
    #         domain_configuration_status: "ENABLED", # accepts ENABLED, DISABLED
    #         remove_authorizer_config: false,
    #       }
    #
    # @!attribute [rw] domain_configuration_name
    #   The name of the domain configuration to be updated.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_config
    #   An object that specifies the authorization service for a domain.
    #   @return [Types::AuthorizerConfig]
    #
    # @!attribute [rw] domain_configuration_status
    #   The status to which the domain configuration should be updated.
    #   @return [String]
    #
    # @!attribute [rw] remove_authorizer_config
    #   Removes the authorization configuration from a domain.
    #   @return [Boolean]
    #
    class UpdateDomainConfigurationRequest < Struct.new(
      :domain_configuration_name,
      :authorizer_config,
      :domain_configuration_status,
      :remove_authorizer_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_configuration_name
    #   The name of the domain configuration that was updated.
    #   @return [String]
    #
    # @!attribute [rw] domain_configuration_arn
    #   The ARN of the domain configuration that was updated.
    #   @return [String]
    #
    class UpdateDomainConfigurationResponse < Struct.new(
      :domain_configuration_name,
      :domain_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDynamicThingGroupRequest
    #   data as a hash:
    #
    #       {
    #         thing_group_name: "ThingGroupName", # required
    #         thing_group_properties: { # required
    #           thing_group_description: "ThingGroupDescription",
    #           attribute_payload: {
    #             attributes: {
    #               "AttributeName" => "AttributeValue",
    #             },
    #             merge: false,
    #           },
    #         },
    #         expected_version: 1,
    #         index_name: "IndexName",
    #         query_string: "QueryString",
    #         query_version: "QueryVersion",
    #       }
    #
    # @!attribute [rw] thing_group_name
    #   The name of the dynamic thing group to update.
    #   @return [String]
    #
    # @!attribute [rw] thing_group_properties
    #   The dynamic thing group properties to update.
    #   @return [Types::ThingGroupProperties]
    #
    # @!attribute [rw] expected_version
    #   The expected version of the dynamic thing group to update.
    #   @return [Integer]
    #
    # @!attribute [rw] index_name
    #   The dynamic thing group index to update.
    #
    #   <note markdown="1"> Currently one index is supported: 'AWS\_Things'.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The dynamic thing group search query string to update.
    #   @return [String]
    #
    # @!attribute [rw] query_version
    #   The dynamic thing group query version to update.
    #
    #   <note markdown="1"> Currently one query version is supported: "2017-09-30". If not
    #   specified, the query version defaults to this value.
    #
    #    </note>
    #   @return [String]
    #
    class UpdateDynamicThingGroupRequest < Struct.new(
      :thing_group_name,
      :thing_group_properties,
      :expected_version,
      :index_name,
      :query_string,
      :query_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] version
    #   The dynamic thing group version.
    #   @return [Integer]
    #
    class UpdateDynamicThingGroupResponse < Struct.new(
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEventConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         event_configurations: {
    #           "THING" => {
    #             enabled: false,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] event_configurations
    #   The new event configuration values.
    #   @return [Hash<String,Types::Configuration>]
    #
    class UpdateEventConfigurationsRequest < Struct.new(
      :event_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateEventConfigurationsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateIndexingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         thing_indexing_configuration: {
    #           thing_indexing_mode: "OFF", # required, accepts OFF, REGISTRY, REGISTRY_AND_SHADOW
    #           thing_connectivity_indexing_mode: "OFF", # accepts OFF, STATUS
    #           managed_fields: [
    #             {
    #               name: "FieldName",
    #               type: "Number", # accepts Number, String, Boolean
    #             },
    #           ],
    #           custom_fields: [
    #             {
    #               name: "FieldName",
    #               type: "Number", # accepts Number, String, Boolean
    #             },
    #           ],
    #         },
    #         thing_group_indexing_configuration: {
    #           thing_group_indexing_mode: "OFF", # required, accepts OFF, ON
    #           managed_fields: [
    #             {
    #               name: "FieldName",
    #               type: "Number", # accepts Number, String, Boolean
    #             },
    #           ],
    #           custom_fields: [
    #             {
    #               name: "FieldName",
    #               type: "Number", # accepts Number, String, Boolean
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] thing_indexing_configuration
    #   Thing indexing configuration.
    #   @return [Types::ThingIndexingConfiguration]
    #
    # @!attribute [rw] thing_group_indexing_configuration
    #   Thing group indexing configuration.
    #   @return [Types::ThingGroupIndexingConfiguration]
    #
    class UpdateIndexingConfigurationRequest < Struct.new(
      :thing_indexing_configuration,
      :thing_group_indexing_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateIndexingConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         description: "JobDescription",
    #         presigned_url_config: {
    #           role_arn: "RoleArn",
    #           expires_in_sec: 1,
    #         },
    #         job_executions_rollout_config: {
    #           maximum_per_minute: 1,
    #           exponential_rate: {
    #             base_rate_per_minute: 1, # required
    #             increment_factor: 1.0, # required
    #             rate_increase_criteria: { # required
    #               number_of_notified_things: 1,
    #               number_of_succeeded_things: 1,
    #             },
    #           },
    #         },
    #         abort_config: {
    #           criteria_list: [ # required
    #             {
    #               failure_type: "FAILED", # required, accepts FAILED, REJECTED, TIMED_OUT, ALL
    #               action: "CANCEL", # required, accepts CANCEL
    #               threshold_percentage: 1.0, # required
    #               min_number_of_executed_things: 1, # required
    #             },
    #           ],
    #         },
    #         timeout_config: {
    #           in_progress_timeout_in_minutes: 1,
    #         },
    #       }
    #
    # @!attribute [rw] job_id
    #   The ID of the job to be updated.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A short text description of the job.
    #   @return [String]
    #
    # @!attribute [rw] presigned_url_config
    #   Configuration information for pre-signed S3 URLs.
    #   @return [Types::PresignedUrlConfig]
    #
    # @!attribute [rw] job_executions_rollout_config
    #   Allows you to create a staged rollout of the job.
    #   @return [Types::JobExecutionsRolloutConfig]
    #
    # @!attribute [rw] abort_config
    #   Allows you to create criteria to abort a job.
    #   @return [Types::AbortConfig]
    #
    # @!attribute [rw] timeout_config
    #   Specifies the amount of time each device has to finish its execution
    #   of the job. The timer is started when the job execution status is
    #   set to `IN_PROGRESS`. If the job execution status is not set to
    #   another terminal state before the time expires, it will be
    #   automatically set to `TIMED_OUT`.
    #   @return [Types::TimeoutConfig]
    #
    class UpdateJobRequest < Struct.new(
      :job_id,
      :description,
      :presigned_url_config,
      :job_executions_rollout_config,
      :abort_config,
      :timeout_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateMitigationActionRequest
    #   data as a hash:
    #
    #       {
    #         action_name: "MitigationActionName", # required
    #         role_arn: "RoleArn",
    #         action_params: {
    #           update_device_certificate_params: {
    #             action: "DEACTIVATE", # required, accepts DEACTIVATE
    #           },
    #           update_ca_certificate_params: {
    #             action: "DEACTIVATE", # required, accepts DEACTIVATE
    #           },
    #           add_things_to_thing_group_params: {
    #             thing_group_names: ["ThingGroupName"], # required
    #             override_dynamic_groups: false,
    #           },
    #           replace_default_policy_version_params: {
    #             template_name: "BLANK_POLICY", # required, accepts BLANK_POLICY
    #           },
    #           enable_io_t_logging_params: {
    #             role_arn_for_logging: "RoleArn", # required
    #             log_level: "DEBUG", # required, accepts DEBUG, INFO, ERROR, WARN, DISABLED
    #           },
    #           publish_finding_to_sns_params: {
    #             topic_arn: "SnsTopicArn", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] action_name
    #   The friendly name for the mitigation action. You can't change the
    #   name by using `UpdateMitigationAction`. Instead, you must delete and
    #   re-create the mitigation action with the new name.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that is used to apply the mitigation action.
    #   @return [String]
    #
    # @!attribute [rw] action_params
    #   Defines the type of action and the parameters for that action.
    #   @return [Types::MitigationActionParams]
    #
    class UpdateMitigationActionRequest < Struct.new(
      :action_name,
      :role_arn,
      :action_params)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_arn
    #   The ARN for the new mitigation action.
    #   @return [String]
    #
    # @!attribute [rw] action_id
    #   A unique identifier for the mitigation action.
    #   @return [String]
    #
    class UpdateMitigationActionResponse < Struct.new(
      :action_arn,
      :action_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateProvisioningTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "TemplateName", # required
    #         description: "TemplateDescription",
    #         enabled: false,
    #         default_version_id: 1,
    #         provisioning_role_arn: "RoleArn",
    #         pre_provisioning_hook: {
    #           payload_version: "PayloadVersion",
    #           target_arn: "TargetArn", # required
    #         },
    #         remove_pre_provisioning_hook: false,
    #       }
    #
    # @!attribute [rw] template_name
    #   The name of the fleet provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the fleet provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   True to enable the fleet provisioning template, otherwise false.
    #   @return [Boolean]
    #
    # @!attribute [rw] default_version_id
    #   The ID of the default provisioning template version.
    #   @return [Integer]
    #
    # @!attribute [rw] provisioning_role_arn
    #   The ARN of the role associated with the provisioning template. This
    #   IoT role grants permission to provision a device.
    #   @return [String]
    #
    # @!attribute [rw] pre_provisioning_hook
    #   Updates the pre-provisioning hook template.
    #   @return [Types::ProvisioningHook]
    #
    # @!attribute [rw] remove_pre_provisioning_hook
    #   Removes pre-provisioning hook template.
    #   @return [Boolean]
    #
    class UpdateProvisioningTemplateRequest < Struct.new(
      :template_name,
      :description,
      :enabled,
      :default_version_id,
      :provisioning_role_arn,
      :pre_provisioning_hook,
      :remove_pre_provisioning_hook)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateProvisioningTemplateResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateRoleAliasRequest
    #   data as a hash:
    #
    #       {
    #         role_alias: "RoleAlias", # required
    #         role_arn: "RoleArn",
    #         credential_duration_seconds: 1,
    #       }
    #
    # @!attribute [rw] role_alias
    #   The role alias to update.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The role ARN.
    #   @return [String]
    #
    # @!attribute [rw] credential_duration_seconds
    #   The number of seconds the credential will be valid.
    #   @return [Integer]
    #
    class UpdateRoleAliasRequest < Struct.new(
      :role_alias,
      :role_arn,
      :credential_duration_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_alias
    #   The role alias.
    #   @return [String]
    #
    # @!attribute [rw] role_alias_arn
    #   The role alias ARN.
    #   @return [String]
    #
    class UpdateRoleAliasResponse < Struct.new(
      :role_alias,
      :role_alias_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateScheduledAuditRequest
    #   data as a hash:
    #
    #       {
    #         frequency: "DAILY", # accepts DAILY, WEEKLY, BIWEEKLY, MONTHLY
    #         day_of_month: "DayOfMonth",
    #         day_of_week: "SUN", # accepts SUN, MON, TUE, WED, THU, FRI, SAT
    #         target_check_names: ["AuditCheckName"],
    #         scheduled_audit_name: "ScheduledAuditName", # required
    #       }
    #
    # @!attribute [rw] frequency
    #   How often the scheduled audit takes place. Can be one of "DAILY",
    #   "WEEKLY", "BIWEEKLY", or "MONTHLY". The start time of each
    #   audit is determined by the system.
    #   @return [String]
    #
    # @!attribute [rw] day_of_month
    #   The day of the month on which the scheduled audit takes place. Can
    #   be "1" through "31" or "LAST". This field is required if the
    #   "frequency" parameter is set to "MONTHLY". If days 29-31 are
    #   specified, and the month does not have that many days, the audit
    #   takes place on the "LAST" day of the month.
    #   @return [String]
    #
    # @!attribute [rw] day_of_week
    #   The day of the week on which the scheduled audit takes place. Can be
    #   one of "SUN", "MON", "TUE", "WED", "THU", "FRI", or
    #   "SAT". This field is required if the "frequency" parameter is
    #   set to "WEEKLY" or "BIWEEKLY".
    #   @return [String]
    #
    # @!attribute [rw] target_check_names
    #   Which checks are performed during the scheduled audit. Checks must
    #   be enabled for your account. (Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks,
    #   including those that are enabled or use
    #   `UpdateAccountAuditConfiguration` to select which checks are
    #   enabled.)
    #   @return [Array<String>]
    #
    # @!attribute [rw] scheduled_audit_name
    #   The name of the scheduled audit. (Max. 128 chars)
    #   @return [String]
    #
    class UpdateScheduledAuditRequest < Struct.new(
      :frequency,
      :day_of_month,
      :day_of_week,
      :target_check_names,
      :scheduled_audit_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_audit_arn
    #   The ARN of the scheduled audit.
    #   @return [String]
    #
    class UpdateScheduledAuditResponse < Struct.new(
      :scheduled_audit_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSecurityProfileRequest
    #   data as a hash:
    #
    #       {
    #         security_profile_name: "SecurityProfileName", # required
    #         security_profile_description: "SecurityProfileDescription",
    #         behaviors: [
    #           {
    #             name: "BehaviorName", # required
    #             metric: "BehaviorMetric",
    #             metric_dimension: {
    #               dimension_name: "DimensionName", # required
    #               operator: "IN", # accepts IN, NOT_IN
    #             },
    #             criteria: {
    #               comparison_operator: "less-than", # accepts less-than, less-than-equals, greater-than, greater-than-equals, in-cidr-set, not-in-cidr-set, in-port-set, not-in-port-set
    #               value: {
    #                 count: 1,
    #                 cidrs: ["Cidr"],
    #                 ports: [1],
    #               },
    #               duration_seconds: 1,
    #               consecutive_datapoints_to_alarm: 1,
    #               consecutive_datapoints_to_clear: 1,
    #               statistical_threshold: {
    #                 statistic: "EvaluationStatistic",
    #               },
    #             },
    #           },
    #         ],
    #         alert_targets: {
    #           "SNS" => {
    #             alert_target_arn: "AlertTargetArn", # required
    #             role_arn: "RoleArn", # required
    #           },
    #         },
    #         additional_metrics_to_retain: ["BehaviorMetric"],
    #         additional_metrics_to_retain_v2: [
    #           {
    #             metric: "BehaviorMetric", # required
    #             metric_dimension: {
    #               dimension_name: "DimensionName", # required
    #               operator: "IN", # accepts IN, NOT_IN
    #             },
    #           },
    #         ],
    #         delete_behaviors: false,
    #         delete_alert_targets: false,
    #         delete_additional_metrics_to_retain: false,
    #         expected_version: 1,
    #       }
    #
    # @!attribute [rw] security_profile_name
    #   The name of the security profile you want to update.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_description
    #   A description of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] behaviors
    #   Specifies the behaviors that, when violated by a device (thing),
    #   cause an alert.
    #   @return [Array<Types::Behavior>]
    #
    # @!attribute [rw] alert_targets
    #   Where the alerts are sent. (Alerts are always sent to the console.)
    #   @return [Hash<String,Types::AlertTarget>]
    #
    # @!attribute [rw] additional_metrics_to_retain
    #   *Please use UpdateSecurityProfileRequest$additionalMetricsToRetainV2
    #   instead.*
    #
    #   A list of metrics whose data is retained (stored). By default, data
    #   is retained for any metric used in the profile's `behaviors`, but
    #   it is also retained for any metric specified here.
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_metrics_to_retain_v2
    #   A list of metrics whose data is retained (stored). By default, data
    #   is retained for any metric used in the profile's behaviors, but it
    #   is also retained for any metric specified here.
    #   @return [Array<Types::MetricToRetain>]
    #
    # @!attribute [rw] delete_behaviors
    #   If true, delete all `behaviors` defined for this security profile.
    #   If any `behaviors` are defined in the current invocation, an
    #   exception occurs.
    #   @return [Boolean]
    #
    # @!attribute [rw] delete_alert_targets
    #   If true, delete all `alertTargets` defined for this security
    #   profile. If any `alertTargets` are defined in the current
    #   invocation, an exception occurs.
    #   @return [Boolean]
    #
    # @!attribute [rw] delete_additional_metrics_to_retain
    #   If true, delete all `additionalMetricsToRetain` defined for this
    #   security profile. If any `additionalMetricsToRetain` are defined in
    #   the current invocation, an exception occurs.
    #   @return [Boolean]
    #
    # @!attribute [rw] expected_version
    #   The expected version of the security profile. A new version is
    #   generated whenever the security profile is updated. If you specify a
    #   value that is different from the actual version, a
    #   `VersionConflictException` is thrown.
    #   @return [Integer]
    #
    class UpdateSecurityProfileRequest < Struct.new(
      :security_profile_name,
      :security_profile_description,
      :behaviors,
      :alert_targets,
      :additional_metrics_to_retain,
      :additional_metrics_to_retain_v2,
      :delete_behaviors,
      :delete_alert_targets,
      :delete_additional_metrics_to_retain,
      :expected_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_profile_name
    #   The name of the security profile that was updated.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_arn
    #   The ARN of the security profile that was updated.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_description
    #   The description of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] behaviors
    #   Specifies the behaviors that, when violated by a device (thing),
    #   cause an alert.
    #   @return [Array<Types::Behavior>]
    #
    # @!attribute [rw] alert_targets
    #   Where the alerts are sent. (Alerts are always sent to the console.)
    #   @return [Hash<String,Types::AlertTarget>]
    #
    # @!attribute [rw] additional_metrics_to_retain
    #   *Please use
    #   UpdateSecurityProfileResponse$additionalMetricsToRetainV2 instead.*
    #
    #   A list of metrics whose data is retained (stored). By default, data
    #   is retained for any metric used in the security profile's
    #   `behaviors`, but it is also retained for any metric specified here.
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_metrics_to_retain_v2
    #   A list of metrics whose data is retained (stored). By default, data
    #   is retained for any metric used in the profile's behaviors, but it
    #   is also retained for any metric specified here.
    #   @return [Array<Types::MetricToRetain>]
    #
    # @!attribute [rw] version
    #   The updated version of the security profile.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_date
    #   The time the security profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The time the security profile was last modified.
    #   @return [Time]
    #
    class UpdateSecurityProfileResponse < Struct.new(
      :security_profile_name,
      :security_profile_arn,
      :security_profile_description,
      :behaviors,
      :alert_targets,
      :additional_metrics_to_retain,
      :additional_metrics_to_retain_v2,
      :version,
      :creation_date,
      :last_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateStreamRequest
    #   data as a hash:
    #
    #       {
    #         stream_id: "StreamId", # required
    #         description: "StreamDescription",
    #         files: [
    #           {
    #             file_id: 1,
    #             s3_location: {
    #               bucket: "S3Bucket",
    #               key: "S3Key",
    #               version: "S3Version",
    #             },
    #           },
    #         ],
    #         role_arn: "RoleArn",
    #       }
    #
    # @!attribute [rw] stream_id
    #   The stream ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the stream.
    #   @return [String]
    #
    # @!attribute [rw] files
    #   The files associated with the stream.
    #   @return [Array<Types::StreamFile>]
    #
    # @!attribute [rw] role_arn
    #   An IAM role that allows the IoT service principal assumes to access
    #   your S3 files.
    #   @return [String]
    #
    class UpdateStreamRequest < Struct.new(
      :stream_id,
      :description,
      :files,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_id
    #   The stream ID.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The stream ARN.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the stream.
    #   @return [String]
    #
    # @!attribute [rw] stream_version
    #   The stream version.
    #   @return [Integer]
    #
    class UpdateStreamResponse < Struct.new(
      :stream_id,
      :stream_arn,
      :description,
      :stream_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateThingGroupRequest
    #   data as a hash:
    #
    #       {
    #         thing_group_name: "ThingGroupName", # required
    #         thing_group_properties: { # required
    #           thing_group_description: "ThingGroupDescription",
    #           attribute_payload: {
    #             attributes: {
    #               "AttributeName" => "AttributeValue",
    #             },
    #             merge: false,
    #           },
    #         },
    #         expected_version: 1,
    #       }
    #
    # @!attribute [rw] thing_group_name
    #   The thing group to update.
    #   @return [String]
    #
    # @!attribute [rw] thing_group_properties
    #   The thing group properties.
    #   @return [Types::ThingGroupProperties]
    #
    # @!attribute [rw] expected_version
    #   The expected version of the thing group. If this does not match the
    #   version of the thing group being updated, the update will fail.
    #   @return [Integer]
    #
    class UpdateThingGroupRequest < Struct.new(
      :thing_group_name,
      :thing_group_properties,
      :expected_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] version
    #   The version of the updated thing group.
    #   @return [Integer]
    #
    class UpdateThingGroupResponse < Struct.new(
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateThingGroupsForThingRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName",
    #         thing_groups_to_add: ["ThingGroupName"],
    #         thing_groups_to_remove: ["ThingGroupName"],
    #         override_dynamic_groups: false,
    #       }
    #
    # @!attribute [rw] thing_name
    #   The thing whose group memberships will be updated.
    #   @return [String]
    #
    # @!attribute [rw] thing_groups_to_add
    #   The groups to which the thing will be added.
    #   @return [Array<String>]
    #
    # @!attribute [rw] thing_groups_to_remove
    #   The groups from which the thing will be removed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] override_dynamic_groups
    #   Override dynamic thing groups with static thing groups when 10-group
    #   limit is reached. If a thing belongs to 10 thing groups, and one or
    #   more of those groups are dynamic thing groups, adding a thing to a
    #   static group removes the thing from the last dynamic group.
    #   @return [Boolean]
    #
    class UpdateThingGroupsForThingRequest < Struct.new(
      :thing_name,
      :thing_groups_to_add,
      :thing_groups_to_remove,
      :override_dynamic_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateThingGroupsForThingResponse < Aws::EmptyStructure; end

    # The input for the UpdateThing operation.
    #
    # @note When making an API call, you may pass UpdateThingRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #         thing_type_name: "ThingTypeName",
    #         attribute_payload: {
    #           attributes: {
    #             "AttributeName" => "AttributeValue",
    #           },
    #           merge: false,
    #         },
    #         expected_version: 1,
    #         remove_thing_type: false,
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing to update.
    #
    #   You can't change a thing's name. To change a thing's name, you
    #   must create a new thing, give it the new name, and then delete the
    #   old thing.
    #   @return [String]
    #
    # @!attribute [rw] thing_type_name
    #   The name of the thing type.
    #   @return [String]
    #
    # @!attribute [rw] attribute_payload
    #   A list of thing attributes, a JSON string containing name-value
    #   pairs. For example:
    #
    #   `\{"attributes":\{"name1":"value2"\}\}`
    #
    #   This data is used to add new attributes or update existing
    #   attributes.
    #   @return [Types::AttributePayload]
    #
    # @!attribute [rw] expected_version
    #   The expected version of the thing record in the registry. If the
    #   version of the record in the registry does not match the expected
    #   version specified in the request, the `UpdateThing` request is
    #   rejected with a `VersionConflictException`.
    #   @return [Integer]
    #
    # @!attribute [rw] remove_thing_type
    #   Remove a thing type association. If **true**, the association is
    #   removed.
    #   @return [Boolean]
    #
    class UpdateThingRequest < Struct.new(
      :thing_name,
      :thing_type_name,
      :attribute_payload,
      :expected_version,
      :remove_thing_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the UpdateThing operation.
    #
    class UpdateThingResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateTopicRuleDestinationRequest
    #   data as a hash:
    #
    #       {
    #         arn: "AwsArn", # required
    #         status: "ENABLED", # required, accepts ENABLED, IN_PROGRESS, DISABLED, ERROR
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the topic rule destination.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the topic rule destination. Valid values are:
    #
    #   IN\_PROGRESS
    #
    #   : A topic rule destination was created but has not been confirmed.
    #     You can set `status` to `IN_PROGRESS` by calling
    #     `UpdateTopicRuleDestination`. Calling `UpdateTopicRuleDestination`
    #     causes a new confirmation challenge to be sent to your
    #     confirmation endpoint.
    #
    #   ENABLED
    #
    #   : Confirmation was completed, and traffic to this destination is
    #     allowed. You can set `status` to `DISABLED` by calling
    #     `UpdateTopicRuleDestination`.
    #
    #   DISABLED
    #
    #   : Confirmation was completed, and traffic to this destination is not
    #     allowed. You can set `status` to `ENABLED` by calling
    #     `UpdateTopicRuleDestination`.
    #
    #   ERROR
    #
    #   : Confirmation could not be completed, for example if the
    #     confirmation timed out. You can call `GetTopicRuleDestination` for
    #     details about the error. You can set `status` to `IN_PROGRESS` by
    #     calling `UpdateTopicRuleDestination`. Calling
    #     `UpdateTopicRuleDestination` causes a new confirmation challenge
    #     to be sent to your confirmation endpoint.
    #   @return [String]
    #
    class UpdateTopicRuleDestinationRequest < Struct.new(
      :arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateTopicRuleDestinationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ValidateSecurityProfileBehaviorsRequest
    #   data as a hash:
    #
    #       {
    #         behaviors: [ # required
    #           {
    #             name: "BehaviorName", # required
    #             metric: "BehaviorMetric",
    #             metric_dimension: {
    #               dimension_name: "DimensionName", # required
    #               operator: "IN", # accepts IN, NOT_IN
    #             },
    #             criteria: {
    #               comparison_operator: "less-than", # accepts less-than, less-than-equals, greater-than, greater-than-equals, in-cidr-set, not-in-cidr-set, in-port-set, not-in-port-set
    #               value: {
    #                 count: 1,
    #                 cidrs: ["Cidr"],
    #                 ports: [1],
    #               },
    #               duration_seconds: 1,
    #               consecutive_datapoints_to_alarm: 1,
    #               consecutive_datapoints_to_clear: 1,
    #               statistical_threshold: {
    #                 statistic: "EvaluationStatistic",
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] behaviors
    #   Specifies the behaviors that, when violated by a device (thing),
    #   cause an alert.
    #   @return [Array<Types::Behavior>]
    #
    class ValidateSecurityProfileBehaviorsRequest < Struct.new(
      :behaviors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] valid
    #   True if the behaviors were valid.
    #   @return [Boolean]
    #
    # @!attribute [rw] validation_errors
    #   The list of any errors found in the behaviors.
    #   @return [Array<Types::ValidationError>]
    #
    class ValidateSecurityProfileBehaviorsResponse < Struct.new(
      :valid,
      :validation_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an error found in a behavior specification.
    #
    # @!attribute [rw] error_message
    #   The description of an error found in the behaviors.
    #   @return [String]
    #
    class ValidationError < Struct.new(
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception thrown when the version of an entity specified with the
    # `expectedVersion` parameter does not match the latest version in the
    # system.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class VersionConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of policy versions exceeds the limit.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class VersionsLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a Device Defender security profile behavior
    # violation.
    #
    # @!attribute [rw] violation_id
    #   The ID of the violation event.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The name of the thing responsible for the violation event.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_name
    #   The name of the security profile whose behavior was violated.
    #   @return [String]
    #
    # @!attribute [rw] behavior
    #   The behavior which was violated.
    #   @return [Types::Behavior]
    #
    # @!attribute [rw] metric_value
    #   The value of the metric (the measurement).
    #   @return [Types::MetricValue]
    #
    # @!attribute [rw] violation_event_type
    #   The type of violation event.
    #   @return [String]
    #
    # @!attribute [rw] violation_event_time
    #   The time the violation event occurred.
    #   @return [Time]
    #
    class ViolationEvent < Struct.new(
      :violation_id,
      :thing_name,
      :security_profile_name,
      :behavior,
      :metric_value,
      :violation_event_type,
      :violation_event_time)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
