# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoT
  module Types

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
    #           role_arn: "AwsArn",
    #           put_item: {
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
    #         step_functions: {
    #           execution_name_prefix: "ExecutionNamePrefix",
    #           state_machine_name: "StateMachineName", # required
    #           role_arn: "AwsArn", # required
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
    # @!attribute [rw] step_functions
    #   Starts execution of a Step Functions state machine.
    #   @return [Types::StepFunctionsAction]
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
      :elasticsearch,
      :salesforce,
      :iot_analytics,
      :step_functions)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddThingToThingGroupRequest
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
    class AddThingToThingGroupRequest < Struct.new(
      :thing_group_name,
      :thing_group_arn,
      :thing_name,
      :thing_arn)
      include Aws::Structure
    end

    class AddThingToThingGroupResponse < Aws::EmptyStructure; end

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
    #   The identity to which the policy is attached.
    #   @return [String]
    #
    class AttachPolicyRequest < Struct.new(
      :policy_name,
      :target)
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
    #   The principal, such as a certificate or other credential.
    #   @return [String]
    #
    class AttachThingPrincipalRequest < Struct.new(
      :thing_name,
      :principal)
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
    #   <note markdown="1"> The `merge` attribute is only valid when calling `UpdateThing`.
    #
    #    </note>
    #   @return [Boolean]
    #
    class AttributePayload < Struct.new(
      :attributes,
      :merge)
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
      include Aws::Structure
    end

    # Information about the audit check.
    #
    # @!attribute [rw] check_run_status
    #   The completion status of this check, one of "IN\_PROGRESS",
    #   "WAITING\_FOR\_DATA\_COLLECTION", "CANCELED",
    #   "COMPLETED\_COMPLIANT", "COMPLETED\_NON\_COMPLIANT", or
    #   "FAILED".
    #   @return [String]
    #
    # @!attribute [rw] check_compliant
    #   True if the check completed and found all resources compliant.
    #   @return [Boolean]
    #
    # @!attribute [rw] total_resources_count
    #   The number of resources on which the check was performed.
    #   @return [Integer]
    #
    # @!attribute [rw] non_compliant_resources_count
    #   The number of resources that the check found non-compliant.
    #   @return [Integer]
    #
    # @!attribute [rw] error_code
    #   The code of any error encountered when performing this check during
    #   this audit. One of "INSUFFICIENT\_PERMISSIONS", or
    #   "AUDIT\_CHECK\_DISABLED".
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message associated with any error encountered when performing
    #   this check during this audit.
    #   @return [String]
    #
    class AuditCheckDetails < Struct.new(
      :check_run_status,
      :check_compliant,
      :total_resources_count,
      :non_compliant_resources_count,
      :error_code,
      :message)
      include Aws::Structure
    end

    # The findings (results) of the audit.
    #
    # @!attribute [rw] task_id
    #   The ID of the audit that generated this result (finding)
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
    #   The resource that was found to be non-compliant with the audit
    #   check.
    #   @return [Types::NonCompliantResource]
    #
    # @!attribute [rw] related_resources
    #   The list of related resources.
    #   @return [Array<Types::RelatedResource>]
    #
    # @!attribute [rw] reason_for_non_compliance
    #   The reason the resource was non-compliant.
    #   @return [String]
    #
    # @!attribute [rw] reason_for_non_compliance_code
    #   A code which indicates the reason that the resource was
    #   non-compliant.
    #   @return [String]
    #
    class AuditFinding < Struct.new(
      :task_id,
      :check_name,
      :task_start_time,
      :finding_time,
      :severity,
      :non_compliant_resource,
      :related_resources,
      :reason_for_non_compliance,
      :reason_for_non_compliance_code)
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
      include Aws::Structure
    end

    # The audits that were performed.
    #
    # @!attribute [rw] task_id
    #   The ID of this audit.
    #   @return [String]
    #
    # @!attribute [rw] task_status
    #   The status of this audit: one of "IN\_PROGRESS", "COMPLETED",
    #   "FAILED" or "CANCELED".
    #   @return [String]
    #
    # @!attribute [rw] task_type
    #   The type of this audit: one of "ON\_DEMAND\_AUDIT\_TASK" or
    #   "SCHEDULED\_AUDIT\_TASK".
    #   @return [String]
    #
    class AuditTaskMetadata < Struct.new(
      :task_id,
      :task_status,
      :task_type)
      include Aws::Structure
    end

    # A collection of authorization information.
    #
    # @note When making an API call, you may pass AuthInfo
    #   data as a hash:
    #
    #       {
    #         action_type: "PUBLISH", # accepts PUBLISH, SUBSCRIBE, RECEIVE, CONNECT
    #         resources: ["Resource"],
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
    class AuthorizerDescription < Struct.new(
      :authorizer_name,
      :authorizer_arn,
      :authorizer_function_arn,
      :token_key_name,
      :token_signing_public_keys,
      :status,
      :creation_date,
      :last_modified_date)
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
      include Aws::Structure
    end

    # Configuration for the rollout of OTA updates.
    #
    # @note When making an API call, you may pass AwsJobExecutionsRolloutConfig
    #   data as a hash:
    #
    #       {
    #         maximum_per_minute: 1,
    #       }
    #
    # @!attribute [rw] maximum_per_minute
    #   The maximum number of OTA update job executions started per minute.
    #   @return [Integer]
    #
    class AwsJobExecutionsRolloutConfig < Struct.new(
      :maximum_per_minute)
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
    #         criteria: {
    #           comparison_operator: "less-than", # accepts less-than, less-than-equals, greater-than, greater-than-equals, in-cidr-set, not-in-cidr-set, in-port-set, not-in-port-set
    #           value: {
    #             count: 1,
    #             cidrs: ["Cidr"],
    #             ports: [1],
    #           },
    #           duration_seconds: 1,
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
    # @!attribute [rw] criteria
    #   The criteria that determine if a device is behaving normally in
    #   regard to the `metric`.
    #   @return [Types::BehaviorCriteria]
    #
    class Behavior < Struct.new(
      :name,
      :metric,
      :criteria)
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
    #       }
    #
    # @!attribute [rw] comparison_operator
    #   The operator that relates the thing measured (`metric`) to the
    #   criteria (`value`).
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value to be compared with the `metric`.
    #   @return [Types::MetricValue]
    #
    # @!attribute [rw] duration_seconds
    #   Use this to specify the period of time over which the behavior is
    #   evaluated, for those criteria which have a time dimension (for
    #   example, `NUM_MESSAGES_SENT`).
    #   @return [Integer]
    #
    class BehaviorCriteria < Struct.new(
      :comparison_operator,
      :value,
      :duration_seconds)
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
      include Aws::Structure
    end

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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         comment: "Comment",
    #         force: false,
    #       }
    #
    # @!attribute [rw] job_id
    #   The unique identifier you assigned to this job when it was created.
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
      :comment,
      :force)
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
    # @!attribute [rw] creation_date
    #   The date and time the certificate was created.
    #   @return [Time]
    #
    class Certificate < Struct.new(
      :certificate_arn,
      :certificate_id,
      :status,
      :creation_date)
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
      :validity)
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
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#Unit
    #   @return [String]
    #
    # @!attribute [rw] metric_timestamp
    #   An optional [Unix timestamp][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#about_timestamp
    #   @return [String]
    #
    class CloudwatchMetricAction < Struct.new(
      :role_arn,
      :metric_namespace,
      :metric_name,
      :metric_value,
      :metric_unit,
      :metric_timestamp)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAuthorizerRequest
    #   data as a hash:
    #
    #       {
    #         authorizer_name: "AuthorizerName", # required
    #         authorizer_function_arn: "AuthorizerFunctionArn", # required
    #         token_key_name: "TokenKeyName", # required
    #         token_signing_public_keys: { # required
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
    class CreateAuthorizerRequest < Struct.new(
      :authorizer_name,
      :authorizer_function_arn,
      :token_key_name,
      :token_signing_public_keys,
      :status)
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
    #         },
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
    class CreateJobRequest < Struct.new(
      :job_id,
      :targets,
      :document_source,
      :document,
      :description,
      :presigned_url_config,
      :target_selection,
      :job_executions_rollout_config)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateOTAUpdateRequest
    #   data as a hash:
    #
    #       {
    #         ota_update_id: "OTAUpdateId", # required
    #         description: "OTAUpdateDescription",
    #         targets: ["Target"], # required
    #         target_selection: "CONTINUOUS", # accepts CONTINUOUS, SNAPSHOT
    #         aws_job_executions_rollout_config: {
    #           maximum_per_minute: 1,
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
    #   The targeted devices to receive OTA updates.
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
    # @!attribute [rw] files
    #   The files to be streamed by the OTA update.
    #   @return [Array<Types::OTAUpdateFile>]
    #
    # @!attribute [rw] role_arn
    #   The IAM role that allows access to the AWS IoT Jobs service.
    #   @return [String]
    #
    # @!attribute [rw] additional_parameters
    #   A list of additional OTA update parameters which are name-value
    #   pairs.
    #   @return [Hash<String,String>]
    #
    class CreateOTAUpdateRequest < Struct.new(
      :ota_update_id,
      :description,
      :targets,
      :target_selection,
      :aws_job_executions_rollout_config,
      :files,
      :role_arn,
      :additional_parameters)
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
    class CreatePolicyRequest < Struct.new(
      :policy_name,
      :policy_document)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRoleAliasRequest
    #   data as a hash:
    #
    #       {
    #         role_alias: "RoleAlias", # required
    #         role_arn: "RoleArn", # required
    #         credential_duration_seconds: 1,
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
    class CreateRoleAliasRequest < Struct.new(
      :role_alias,
      :role_arn,
      :credential_duration_seconds)
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
    #       }
    #
    # @!attribute [rw] frequency
    #   How often the scheduled audit takes place. Can be one of "DAILY",
    #   "WEEKLY", "BIWEEKLY" or "MONTHLY". The actual start time of
    #   each audit is determined by the system.
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
    #   one of "SUN", "MON", "TUE", "WED", "THU", "FRI" or
    #   "SAT". This field is required if the "frequency" parameter is
    #   set to "WEEKLY" or "BIWEEKLY".
    #   @return [String]
    #
    # @!attribute [rw] target_check_names
    #   Which checks are performed during the scheduled audit. Checks must
    #   be enabled for your account. (Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks
    #   including those that are enabled or
    #   `UpdateAccountAuditConfiguration` to select which checks are
    #   enabled.)
    #   @return [Array<String>]
    #
    # @!attribute [rw] scheduled_audit_name
    #   The name you want to give to the scheduled audit. (Max. 128 chars)
    #   @return [String]
    #
    class CreateScheduledAuditRequest < Struct.new(
      :frequency,
      :day_of_month,
      :day_of_week,
      :target_check_names,
      :scheduled_audit_name)
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_audit_arn
    #   The ARN of the scheduled audit.
    #   @return [String]
    #
    class CreateScheduledAuditResponse < Struct.new(
      :scheduled_audit_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSecurityProfileRequest
    #   data as a hash:
    #
    #       {
    #         security_profile_name: "SecurityProfileName", # required
    #         security_profile_description: "SecurityProfileDescription",
    #         behaviors: [ # required
    #           {
    #             name: "BehaviorName", # required
    #             metric: "BehaviorMetric",
    #             criteria: {
    #               comparison_operator: "less-than", # accepts less-than, less-than-equals, greater-than, greater-than-equals, in-cidr-set, not-in-cidr-set, in-port-set, not-in-port-set
    #               value: {
    #                 count: 1,
    #                 cidrs: ["Cidr"],
    #                 ports: [1],
    #               },
    #               duration_seconds: 1,
    #             },
    #           },
    #         ],
    #         alert_targets: {
    #           "SNS" => {
    #             alert_target_arn: "AlertTargetArn", # required
    #             role_arn: "RoleArn", # required
    #           },
    #         },
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
    class CreateSecurityProfileRequest < Struct.new(
      :security_profile_name,
      :security_profile_description,
      :behaviors,
      :alert_targets)
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
    class CreateStreamRequest < Struct.new(
      :stream_id,
      :description,
      :files,
      :role_arn)
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
    class CreateThingGroupRequest < Struct.new(
      :thing_group_name,
      :parent_group_name,
      :thing_group_properties)
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
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing to create.
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
    class CreateThingRequest < Struct.new(
      :thing_name,
      :thing_type_name,
      :attribute_payload)
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
    class CreateThingTypeRequest < Struct.new(
      :thing_type_name,
      :thing_type_properties)
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
    #                 role_arn: "AwsArn",
    #                 put_item: {
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
    #               step_functions: {
    #                 execution_name_prefix: "ExecutionNamePrefix",
    #                 state_machine_name: "StateMachineName", # required
    #                 role_arn: "AwsArn", # required
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
    #               role_arn: "AwsArn",
    #               put_item: {
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
    #             step_functions: {
    #               execution_name_prefix: "ExecutionNamePrefix",
    #               state_machine_name: "StateMachineName", # required
    #               role_arn: "AwsArn", # required
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
    class CreateTopicRuleRequest < Struct.new(
      :rule_name,
      :topic_rule_payload)
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
      include Aws::Structure
    end

    class DeleteAccountAuditConfigurationResponse < Aws::EmptyStructure; end

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
      include Aws::Structure
    end

    class DeleteAuthorizerResponse < Aws::EmptyStructure; end

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
    #   Forces a certificate request to be deleted.
    #   @return [Boolean]
    #
    class DeleteCertificateRequest < Struct.new(
      :certificate_id,
      :force_delete)
      include Aws::Structure
    end

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
      include Aws::Structure
    end

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
    #   The OTA update ID to delete.
    #   @return [String]
    #
    # @!attribute [rw] delete_stream
    #   Specifies if the stream associated with an OTA update should be
    #   deleted when the OTA update is deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] force_delete_aws_job
    #   Specifies if the AWS Job associated with the OTA update should be
    #   deleted with the OTA update is deleted.
    #   @return [Boolean]
    #
    class DeleteOTAUpdateRequest < Struct.new(
      :ota_update_id,
      :delete_stream,
      :force_delete_aws_job)
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
      include Aws::Structure
    end

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
    #   value that is different than the actual version, a
    #   `VersionConflictException` is thrown.
    #   @return [Integer]
    #
    class DeleteSecurityProfileRequest < Struct.new(
      :security_profile_name,
      :expected_version)
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
      include Aws::Structure
    end

    # The output for the DeleteThingType operation.
    #
    class DeleteThingTypeResponse < Aws::EmptyStructure; end

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
    #   information about your devices, policies, certificates and other
    #   items as necessary when performing an audit.
    #
    #   On the first call to `UpdateAccountAuditConfiguration` this
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
      include Aws::Structure
    end

    # @!attribute [rw] authorizer_description
    #   The authorizer description.
    #   @return [Types::AuthorizerDescription]
    #
    class DescribeAuthorizerResponse < Struct.new(
      :authorizer_description)
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
    #   The endpoint type (such as `iot:Data`, `iot:CredentialProvider` and
    #   `iot:Jobs`).
    #   @return [String]
    #
    class DescribeEndpointRequest < Struct.new(
      :endpoint_type)
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
    #   1.  REGISTRY – Your thing index will contain only registry data.
    #
    #   2.  REGISTRY\_AND\_SHADOW - Your thing index will contain registry
    #       and shadow data.
    #   @return [String]
    #
    class DescribeIndexResponse < Struct.new(
      :index_name,
      :index_status,
      :schema)
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
      include Aws::Structure
    end

    # @!attribute [rw] execution
    #   Information about the job execution.
    #   @return [Types::JobExecution]
    #
    class DescribeJobExecutionResponse < Struct.new(
      :execution)
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
      include Aws::Structure
    end

    # @!attribute [rw] role_alias_description
    #   The role alias description.
    #   @return [Types::RoleAliasDescription]
    #
    class DescribeRoleAliasResponse < Struct.new(
      :role_alias_description)
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
      include Aws::Structure
    end

    # @!attribute [rw] frequency
    #   How often the scheduled audit takes place. One of "DAILY",
    #   "WEEKLY", "BIWEEKLY" or "MONTHLY". The actual start time of
    #   each audit is determined by the system.
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
    #   "SUN", "MON", "TUE", "WED", "THU", "FRI" or "SAT".
    #   @return [String]
    #
    # @!attribute [rw] target_check_names
    #   Which checks are performed during the scheduled audit. (Note that
    #   checks must be enabled for your account. (Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks
    #   including those that are enabled or
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
      :version,
      :creation_date,
      :last_modified_date)
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
      include Aws::Structure
    end

    # @!attribute [rw] stream_info
    #   Information about the stream.
    #   @return [Types::StreamInfo]
    #
    class DescribeStreamResponse < Struct.new(
      :stream_info)
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
    class DescribeThingGroupResponse < Struct.new(
      :thing_group_name,
      :thing_group_id,
      :thing_group_arn,
      :version,
      :thing_group_properties,
      :thing_group_metadata)
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
      include Aws::Structure
    end

    # The output from the DescribeThing operation.
    #
    # @!attribute [rw] default_client_id
    #   The default client ID.
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
    class DescribeThingResponse < Struct.new(
      :default_client_id,
      :thing_name,
      :thing_id,
      :thing_arn,
      :thing_type_name,
      :attributes,
      :version)
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
    #   If the principal is a certificate, specify the certificate ARN. If
    #   the principal is an Amazon Cognito identity, specify the identity
    #   ID.
    #   @return [String]
    #
    class DetachPrincipalPolicyRequest < Struct.new(
      :policy_name,
      :principal)
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
    #         role_arn: "AwsArn",
    #         put_item: {
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
    #   The principal.
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
      include Aws::Structure
    end

    # @!attribute [rw] effective_policies
    #   The effective policies.
    #   @return [Array<Types::EffectivePolicy>]
    #
    class GetEffectivePoliciesResponse < Struct.new(
      :effective_policies)
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
      include Aws::Structure
    end

    # @!attribute [rw] document
    #   The job document content.
    #   @return [String]
    #
    class GetJobDocumentResponse < Struct.new(
      :document)
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
      include Aws::Structure
    end

    # @!attribute [rw] ota_update_info
    #   The OTA update info.
    #   @return [Types::OTAUpdateInfo]
    #
    class GetOTAUpdateResponse < Struct.new(
      :ota_update_info)
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
    #   The date the policy version was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date the policy version was last modified.
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
      include Aws::Structure
    end

    # Sends messge data to an AWS IoT Analytics channel.
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
    #   The status of the job, one of `IN_PROGRESS`, `CANCELED`, or
    #   `COMPLETED`.
    #   @return [String]
    #
    # @!attribute [rw] force_canceled
    #   Will be `true` if the job was canceled with the optional `force`
    #   parameter set to `true`.
    #   @return [Boolean]
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
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the job was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] completed_at
    #   The time, in milliseconds since the epoch, when the job was
    #   completed.
    #   @return [Time]
    #
    # @!attribute [rw] job_process_details
    #   Details about the job process.
    #   @return [Types::JobProcessDetails]
    #
    class Job < Struct.new(
      :job_arn,
      :job_id,
      :target_selection,
      :status,
      :force_canceled,
      :comment,
      :targets,
      :description,
      :presigned_url_config,
      :job_executions_rollout_config,
      :created_at,
      :last_updated_at,
      :completed_at,
      :job_process_details)
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
    #   SUCCESS, CANCELED, or REJECTED).
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
    #   The time, in milliseconds since the epoch, when the job execution
    #   was queued.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The time, in milliseconds since the epoch, when the job execution
    #   started.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the job execution
    #   was last updated.
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
      :version_number)
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
      include Aws::Structure
    end

    # The job execution summary.
    #
    # @!attribute [rw] status
    #   The status of the job execution.
    #   @return [String]
    #
    # @!attribute [rw] queued_at
    #   The time, in milliseconds since the epoch, when the job execution
    #   was queued.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The time, in milliseconds since the epoch, when the job execution
    #   started.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the job execution
    #   was last updated.
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
      include Aws::Structure
    end

    # Allows you to create a staged rollout of a job.
    #
    # @note When making an API call, you may pass JobExecutionsRolloutConfig
    #   data as a hash:
    #
    #       {
    #         maximum_per_minute: 1,
    #       }
    #
    # @!attribute [rw] maximum_per_minute
    #   The maximum number of things that will be notified of a pending job,
    #   per minute. This parameter allows you to create a staged rollout.
    #   @return [Integer]
    #
    class JobExecutionsRolloutConfig < Struct.new(
      :maximum_per_minute)
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
    class JobProcessDetails < Struct.new(
      :processing_targets,
      :number_of_canceled_things,
      :number_of_succeeded_things,
      :number_of_failed_things,
      :number_of_rejected_things,
      :number_of_queued_things,
      :number_of_in_progress_things,
      :number_of_removed_things)
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
    #   The time, in milliseconds since the epoch, when the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the job was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] completed_at
    #   The time, in milliseconds since the epoch, when the job completed.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListActiveViolationsRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName",
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
    #   The group for which the policies will be listed.
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
    #         },
    #         max_results: 1,
    #         next_token: "NextToken",
    #         start_time: Time.now,
    #         end_time: Time.now,
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
    #   Information identifying the non-compliant resource.
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
    class ListAuditFindingsRequest < Struct.new(
      :task_id,
      :check_name,
      :resource_identifier,
      :max_results,
      :next_token,
      :start_time,
      :end_time)
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
    #   The beginning of the time period. Note that audit information is
    #   retained for a limited time (180 days). Requesting a start time
    #   prior to what is retained results in an "InvalidRequestException".
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
    #   status: can be one of "IN\_PROGRESS", "COMPLETED", "FAILED" or
    #   "CANCELED".
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
    #   The token used to get the next set of results, or **null** if there
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
      include Aws::Structure
    end

    # @!attribute [rw] index_names
    #   The index names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
    #   @return [String]
    #
    class ListIndicesResponse < Struct.new(
      :index_names,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListJobExecutionsForJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         status: "QUEUED", # accepts QUEUED, IN_PROGRESS, SUCCEEDED, FAILED, REJECTED, REMOVED, CANCELED
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListJobExecutionsForThingRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #         status: "QUEUED", # accepts QUEUED, IN_PROGRESS, SUCCEEDED, FAILED, REJECTED, REMOVED, CANCELED
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
    #   The principal.
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
    #   If true, return child groups as well.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSecurityProfilesRequest
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
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListSecurityProfilesRequest < Struct.new(
      :next_token,
      :max_results)
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
    class ListThingGroupsResponse < Struct.new(
      :thing_groups,
      :next_token)
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
      include Aws::Structure
    end

    # The output for the ListThingTypes operation.
    #
    # @!attribute [rw] thing_types
    #   The thing types.
    #   @return [Array<Types::ThingTypeDefinition>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or **null** if there are no
    #   additional results.
    #   @return [String]
    #
    class ListThingTypesResponse < Struct.new(
      :thing_types,
      :next_token)
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
      include Aws::Structure
    end

    # The output from the ListThings operation.
    #
    # @!attribute [rw] things
    #   The things.
    #   @return [Array<Types::ThingAttribute>]
    #
    # @!attribute [rw] next_token
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
    #   @return [String]
    #
    class ListThingsResponse < Struct.new(
      :things,
      :next_token)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListViolationEventsRequest
    #   data as a hash:
    #
    #       {
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         thing_name: "ThingName",
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
      include Aws::Structure
    end

    # @!attribute [rw] violation_events
    #   The security profile violation alerts issued for this account during
    #   the given time frame, potentially filtered by security profile,
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
      include Aws::Structure
    end

    # Information about the resource that was non-compliant with the audit
    # check.
    #
    # @!attribute [rw] resource_type
    #   The type of the non-compliant resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   Information identifying the non-compliant resource.
    #   @return [Types::ResourceIdentifier]
    #
    # @!attribute [rw] additional_info
    #   Additional information about the non-compliant resource.
    #   @return [Hash<String,String>]
    #
    class NonCompliantResource < Struct.new(
      :resource_type,
      :resource_identifier,
      :additional_info)
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
    # @!attribute [rw] aws_job_executions_rollout_config
    #   Configuration for the rollout of OTA updates.
    #   @return [Types::AwsJobExecutionsRolloutConfig]
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
      :aws_job_executions_rollout_config,
      :target_selection,
      :ota_update_files,
      :ota_update_status,
      :aws_iot_job_id,
      :aws_iot_job_arn,
      :error_info,
      :additional_parameters)
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
    #   The table where the message data will be written
    #   @return [String]
    #
    class PutItemInput < Struct.new(
      :table_name)
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
    class RegisterCACertificateRequest < Struct.new(
      :ca_certificate,
      :verification_certificate,
      :set_as_active,
      :allow_auto_registration,
      :registration_config)
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
    #   A boolean value that specifies if the CA certificate is set to
    #   active.
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
    #   The provisioning template. See [Programmatic Provisioning][1] for
    #   more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/iot/latest/developerguide/programmatic-provisioning.html
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for provisioning a thing. See [Programmatic
    #   Provisioning][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/iot/latest/developerguide/programmatic-provisioning.html
    #   @return [Hash<String,String>]
    #
    class RegisterThingRequest < Struct.new(
      :template_body,
      :parameters)
      include Aws::Structure
    end

    # @!attribute [rw] certificate_pem
    #   .
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   ARNs for the generated resources.
    #   @return [Hash<String,String>]
    #
    class RegisterThingResponse < Struct.new(
      :certificate_pem,
      :resource_arns)
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
      include Aws::Structure
    end

    # Information about a related resource.
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   Information identifying the resource.
    #   @return [Types::ResourceIdentifier]
    #
    # @!attribute [rw] additional_info
    #   Additional information about the resource.
    #   @return [Hash<String,String>]
    #
    class RelatedResource < Struct.new(
      :resource_type,
      :resource_identifier,
      :additional_info)
      include Aws::Structure
    end

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
      include Aws::Structure
    end

    class RemoveThingFromThingGroupResponse < Aws::EmptyStructure; end

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
    #                 role_arn: "AwsArn",
    #                 put_item: {
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
    #               step_functions: {
    #                 execution_name_prefix: "ExecutionNamePrefix",
    #                 state_machine_name: "StateMachineName", # required
    #                 role_arn: "AwsArn", # required
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
    #               role_arn: "AwsArn",
    #               put_item: {
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
    #             step_functions: {
    #               execution_name_prefix: "ExecutionNamePrefix",
    #               state_machine_name: "StateMachineName", # required
    #               role_arn: "AwsArn", # required
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
    class RepublishAction < Struct.new(
      :role_arn,
      :topic)
      include Aws::Structure
    end

    # Information identifying the non-compliant resource.
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
    #   The ID of the Cognito Identity Pool.
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
    class ResourceIdentifier < Struct.new(
      :device_certificate_id,
      :ca_certificate_id,
      :cognito_identity_pool_id,
      :client_id,
      :policy_version_identifier,
      :account)
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
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl
    #   @return [String]
    #
    class S3Action < Struct.new(
      :role_arn,
      :bucket_name,
      :key,
      :canned_acl)
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
    #   How often the scheduled audit takes place.
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
    #   The token used to get the next set of results, or **null** if there
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
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token used to get the next set of results, or **null** if there
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
    #   [http://docs.aws.amazon.com/sns/latest/dg/json-formats.html][1]
    #   refer to their official documentation.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sns/latest/dg/json-formats.html
    #   @return [String]
    #
    class SnsAction < Struct.new(
      :target_arn,
      :role_arn,
      :message_format)
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
    #   `DescribeAccountAuditConfiguration` to see the list of all checks
    #   including those that are enabled or
    #   `UpdateAccountAuditConfiguration` to select which checks are
    #   enabled.
    #   @return [Array<String>]
    #
    class StartOnDemandAuditTaskRequest < Struct.new(
      :target_check_names)
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The ID of the on-demand audit you started.
    #   @return [String]
    #
    class StartOnDemandAuditTaskResponse < Struct.new(
      :task_id)
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
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The bulk thing provisioning task ID.
    #   @return [String]
    #
    class StartThingRegistrationTaskResponse < Struct.new(
      :task_id)
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
    #   The number of checks that found non-compliant resources.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_checks
    #   The number of checks
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
    #             resources: ["Resource"],
    #           },
    #         ],
    #         client_id: "ClientId",
    #         policy_names_to_add: ["PolicyName"],
    #         policy_names_to_skip: ["PolicyName"],
    #       }
    #
    # @!attribute [rw] principal
    #   The principal.
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
      include Aws::Structure
    end

    # @!attribute [rw] auth_results
    #   The authentication results.
    #   @return [Array<Types::AuthResult>]
    #
    class TestAuthorizationResponse < Struct.new(
      :auth_results)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TestInvokeAuthorizerRequest
    #   data as a hash:
    #
    #       {
    #         authorizer_name: "AuthorizerName", # required
    #         token: "Token", # required
    #         token_signature: "TokenSignature", # required
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
    #   service's private key.
    #   @return [String]
    #
    class TestInvokeAuthorizerRequest < Struct.new(
      :authorizer_name,
      :token,
      :token_signature)
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
    class ThingDocument < Struct.new(
      :thing_name,
      :thing_id,
      :thing_type_name,
      :thing_group_names,
      :attributes,
      :shadow)
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
      include Aws::Structure
    end

    # Thing group indexing configuration.
    #
    # @note When making an API call, you may pass ThingGroupIndexingConfiguration
    #   data as a hash:
    #
    #       {
    #         thing_group_indexing_mode: "OFF", # required, accepts OFF, ON
    #       }
    #
    # @!attribute [rw] thing_group_indexing_mode
    #   Thing group indexing mode.
    #   @return [String]
    #
    class ThingGroupIndexingConfiguration < Struct.new(
      :thing_group_indexing_mode)
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
      include Aws::Structure
    end

    # Thing indexing configuration.
    #
    # @note When making an API call, you may pass ThingIndexingConfiguration
    #   data as a hash:
    #
    #       {
    #         thing_indexing_mode: "OFF", # required, accepts OFF, REGISTRY, REGISTRY_AND_SHADOW
    #       }
    #
    # @!attribute [rw] thing_indexing_mode
    #   Thing indexing mode. Valid values are:
    #
    #   * REGISTRY – Your thing index will contain only registry data.
    #
    #   * REGISTRY\_AND\_SHADOW - Your thing index will contain registry and
    #     shadow data.
    #
    #   * OFF - Thing indexing is disabled.
    #   @return [String]
    #
    class ThingIndexingConfiguration < Struct.new(
      :thing_indexing_mode)
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
    #               role_arn: "AwsArn",
    #               put_item: {
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
    #             step_functions: {
    #               execution_name_prefix: "ExecutionNamePrefix",
    #               state_machine_name: "StateMachineName", # required
    #               role_arn: "AwsArn", # required
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
    #             role_arn: "AwsArn",
    #             put_item: {
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
    #           step_functions: {
    #             execution_name_prefix: "ExecutionNamePrefix",
    #             state_machine_name: "StateMachineName", # required
    #             role_arn: "AwsArn", # required
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
    #   [1]: http://docs.aws.amazon.com/iot/latest/developerguide/iot-rules.html#aws-iot-sql-reference
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
      include Aws::Structure
    end

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
    #   items as necessary when performing an audit.
    #   @return [String]
    #
    # @!attribute [rw] audit_notification_target_configurations
    #   Information about the targets to which audit notifications are sent.
    #   @return [Hash<String,Types::AuditNotificationTarget>]
    #
    # @!attribute [rw] audit_check_configurations
    #   Specifies which audit checks are enabled and disabled for this
    #   account. Use `DescribeAccountAuditConfiguration` to see the list of
    #   all checks including those that are currently enabled.
    #
    #   Note that some data collection may begin immediately when certain
    #   checks are enabled. When a check is disabled, any data collected so
    #   far in relation to the check is deleted.
    #
    #   You cannot disable a check if it is used by any scheduled audit. You
    #   must first delete the check from the scheduled audit or delete the
    #   scheduled audit itself.
    #
    #   On the first call to `UpdateAccountAuditConfiguration` this
    #   parameter is required and must specify at least one enabled check.
    #   @return [Hash<String,Types::AuditCheckConfiguration>]
    #
    class UpdateAccountAuditConfigurationRequest < Struct.new(
      :role_arn,
      :audit_notification_target_configurations,
      :audit_check_configurations)
      include Aws::Structure
    end

    class UpdateAccountAuditConfigurationResponse < Aws::EmptyStructure; end

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
    #   If true, remove auto registration.
    #   @return [Boolean]
    #
    class UpdateCACertificateRequest < Struct.new(
      :certificate_id,
      :new_status,
      :new_auto_registration_status,
      :registration_config,
      :remove_auto_registration)
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
    #   **Note:** Setting the status to PENDING\_TRANSFER will result in an
    #   exception being thrown. PENDING\_TRANSFER is a status used
    #   internally by AWS IoT. It is not intended for developer use.
    #
    #   **Note:** The status value REGISTER\_INACTIVE is deprecated and
    #   should not be used.
    #   @return [String]
    #
    class UpdateCertificateRequest < Struct.new(
      :certificate_id,
      :new_status)
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
      include Aws::Structure
    end

    class UpdateEventConfigurationsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateIndexingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         thing_indexing_configuration: {
    #           thing_indexing_mode: "OFF", # required, accepts OFF, REGISTRY, REGISTRY_AND_SHADOW
    #         },
    #         thing_group_indexing_configuration: {
    #           thing_group_indexing_mode: "OFF", # required, accepts OFF, ON
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
      include Aws::Structure
    end

    class UpdateIndexingConfigurationResponse < Aws::EmptyStructure; end

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
    #   "WEEKLY", "BIWEEKLY" or "MONTHLY". The actual start time of
    #   each audit is determined by the system.
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
    #   one of "SUN", "MON", "TUE", "WED", "THU", "FRI" or
    #   "SAT". This field is required if the "frequency" parameter is
    #   set to "WEEKLY" or "BIWEEKLY".
    #   @return [String]
    #
    # @!attribute [rw] target_check_names
    #   Which checks are performed during the scheduled audit. Checks must
    #   be enabled for your account. (Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks
    #   including those that are enabled or
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
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_audit_arn
    #   The ARN of the scheduled audit.
    #   @return [String]
    #
    class UpdateScheduledAuditResponse < Struct.new(
      :scheduled_audit_arn)
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
    #             criteria: {
    #               comparison_operator: "less-than", # accepts less-than, less-than-equals, greater-than, greater-than-equals, in-cidr-set, not-in-cidr-set, in-port-set, not-in-port-set
    #               value: {
    #                 count: 1,
    #                 cidrs: ["Cidr"],
    #                 ports: [1],
    #               },
    #               duration_seconds: 1,
    #             },
    #           },
    #         ],
    #         alert_targets: {
    #           "SNS" => {
    #             alert_target_arn: "AlertTargetArn", # required
    #             role_arn: "RoleArn", # required
    #           },
    #         },
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
    # @!attribute [rw] expected_version
    #   The expected version of the security profile. A new version is
    #   generated whenever the security profile is updated. If you specify a
    #   value that is different than the actual version, a
    #   `VersionConflictException` is thrown.
    #   @return [Integer]
    #
    class UpdateSecurityProfileRequest < Struct.new(
      :security_profile_name,
      :security_profile_description,
      :behaviors,
      :alert_targets,
      :expected_version)
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
      :version,
      :creation_date,
      :last_modified_date)
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
      include Aws::Structure
    end

    # @!attribute [rw] version
    #   The version of the updated thing group.
    #   @return [Integer]
    #
    class UpdateThingGroupResponse < Struct.new(
      :version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateThingGroupsForThingRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName",
    #         thing_groups_to_add: ["ThingGroupName"],
    #         thing_groups_to_remove: ["ThingGroupName"],
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
    class UpdateThingGroupsForThingRequest < Struct.new(
      :thing_name,
      :thing_groups_to_add,
      :thing_groups_to_remove)
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
      include Aws::Structure
    end

    # The output from the UpdateThing operation.
    #
    class UpdateThingResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ValidateSecurityProfileBehaviorsRequest
    #   data as a hash:
    #
    #       {
    #         behaviors: [ # required
    #           {
    #             name: "BehaviorName", # required
    #             metric: "BehaviorMetric",
    #             criteria: {
    #               comparison_operator: "less-than", # accepts less-than, less-than-equals, greater-than, greater-than-equals, in-cidr-set, not-in-cidr-set, in-port-set, not-in-port-set
    #               value: {
    #                 count: 1,
    #                 cidrs: ["Cidr"],
    #                 ports: [1],
    #               },
    #               duration_seconds: 1,
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
      include Aws::Structure
    end

  end
end
