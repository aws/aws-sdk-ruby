# frozen_string_literal: true

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
    #   The ID of the certificate.
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
    #           metric_namespace: "MetricNamespace", # required
    #           metric_name: "MetricName", # required
    #           metric_value: "MetricValue", # required
    #           metric_unit: "MetricUnit", # required
    #           metric_timestamp: "MetricTimestamp",
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
      :salesforce)
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
    #   @return [Time]
    #
    # @!attribute [rw] customer_version
    #   @return [Integer]
    #
    # @!attribute [rw] generation_id
    #   @return [String]
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
      :generation_id)
      include Aws::Structure
    end

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
    #   The ID of the certificate.
    #   @return [String]
    #
    class CancelCertificateTransferRequest < Struct.new(
      :certificate_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         comment: "Comment",
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
    class CancelJobRequest < Struct.new(
      :job_id,
      :comment)
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
    #   The ID of the certificate.
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
    #   @return [Integer]
    #
    # @!attribute [rw] transfer_data
    #   The transfer data.
    #   @return [Types::TransferData]
    #
    # @!attribute [rw] generation_id
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
      :generation_id)
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
    #         metric_namespace: "MetricNamespace", # required
    #         metric_name: "MetricName", # required
    #         metric_value: "MetricValue", # required
    #         metric_unit: "MetricUnit", # required
    #         metric_timestamp: "MetricTimestamp",
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
    #         custom_code_signing: {
    #           signature: {
    #             stream: {
    #               stream_id: "StreamId",
    #               file_id: 1,
    #             },
    #             inline_document: "data",
    #           },
    #           certificate_chain: {
    #             stream: {
    #               stream_id: "StreamId",
    #               file_id: 1,
    #             },
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
    # @!attribute [rw] custom_code_signing
    #   A custom method for code signing a file.
    #   @return [Types::CustomCodeSigning]
    #
    class CodeSigning < Struct.new(
      :aws_signer_job_id,
      :custom_code_signing)
      include Aws::Structure
    end

    # Describes the certificate chain being used when code signing a file.
    #
    # @note When making an API call, you may pass CodeSigningCertificateChain
    #   data as a hash:
    #
    #       {
    #         stream: {
    #           stream_id: "StreamId",
    #           file_id: 1,
    #         },
    #         certificate_name: "CertificateName",
    #         inline_document: "InlineDocument",
    #       }
    #
    # @!attribute [rw] stream
    #   A stream of the certificate chain files.
    #   @return [Types::Stream]
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
      :stream,
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
    #         stream: {
    #           stream_id: "StreamId",
    #           file_id: 1,
    #         },
    #         inline_document: "data",
    #       }
    #
    # @!attribute [rw] stream
    #   A stream of the code signing signature.
    #   @return [Types::Stream]
    #
    # @!attribute [rw] inline_document
    #   A base64 encoded binary representation of the code signing
    #   signature.
    #   @return [String]
    #
    class CodeSigningSignature < Struct.new(
      :stream,
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
    #         document_parameters: {
    #           "ParameterKey" => "ParameterValue",
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
    # @!attribute [rw] document_parameters
    #   Parameters for the job document.
    #   @return [Hash<String,String>]
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
      :document_parameters)
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
    #         files: [ # required
    #           {
    #             file_name: "FileName",
    #             file_version: "OTAUpdateFileVersion",
    #             file_source: {
    #               stream_id: "StreamId",
    #               file_id: 1,
    #             },
    #             code_signing: {
    #               aws_signer_job_id: "SigningJobId",
    #               custom_code_signing: {
    #                 signature: {
    #                   stream: {
    #                     stream_id: "StreamId",
    #                     file_id: 1,
    #                   },
    #                   inline_document: "data",
    #                 },
    #                 certificate_chain: {
    #                   stream: {
    #                     stream_id: "StreamId",
    #                     file_id: 1,
    #                   },
    #                   certificate_name: "CertificateName",
    #                   inline_document: "InlineDocument",
    #                 },
    #                 hash_algorithm: "HashAlgorithm",
    #                 signature_algorithm: "SignatureAlgorithm",
    #               },
    #             },
    #             attributes: {
    #               "Key" => "Value",
    #             },
    #           },
    #         ],
    #         role_arn: "RoleArn", # required
    #         additional_parameters: {
    #           "Key" => "Value",
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
    #               bucket: "S3Bucket", # required
    #               key: "S3Key", # required
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
    #                 metric_namespace: "MetricNamespace", # required
    #                 metric_name: "MetricName", # required
    #                 metric_value: "MetricValue", # required
    #                 metric_unit: "MetricUnit", # required
    #                 metric_timestamp: "MetricTimestamp",
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
    #               metric_namespace: "MetricNamespace", # required
    #               metric_name: "MetricName", # required
    #               metric_value: "MetricValue", # required
    #               metric_unit: "MetricUnit", # required
    #               metric_timestamp: "MetricTimestamp",
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
    #           stream: {
    #             stream_id: "StreamId",
    #             file_id: 1,
    #           },
    #           inline_document: "data",
    #         },
    #         certificate_chain: {
    #           stream: {
    #             stream_id: "StreamId",
    #             file_id: 1,
    #           },
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
    #   The ID of the certificate to delete.
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
    #   The ID of the certificate.
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

    # @note When making an API call, you may pass DeleteOTAUpdateRequest
    #   data as a hash:
    #
    #       {
    #         ota_update_id: "OTAUpdateId", # required
    #       }
    #
    # @!attribute [rw] ota_update_id
    #   The OTA update ID to delete.
    #   @return [String]
    #
    class DeleteOTAUpdateRequest < Struct.new(
      :ota_update_id)
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
    #   The ID of the certificate.
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
    #   The endpoint type.
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
    class GetIndexingConfigurationResponse < Struct.new(
      :thing_indexing_configuration)
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
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   @return [Time]
    #
    # @!attribute [rw] generation_id
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
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   @return [Time]
    #
    # @!attribute [rw] generation_id
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
    # @!attribute [rw] document_parameters
    #   The parameters specified for the job document.
    #   @return [Hash<String,String>]
    #
    class Job < Struct.new(
      :job_arn,
      :job_id,
      :target_selection,
      :status,
      :comment,
      :targets,
      :description,
      :presigned_url_config,
      :job_executions_rollout_config,
      :created_at,
      :last_updated_at,
      :completed_at,
      :job_process_details,
      :document_parameters)
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
    class JobExecution < Struct.new(
      :job_id,
      :status,
      :status_details,
      :thing_arn,
      :queued_at,
      :started_at,
      :last_updated_at,
      :execution_number)
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
    #   The devices on which the job is executing.
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
    #         status: "IN_PROGRESS", # accepts IN_PROGRESS, CANCELED, COMPLETED
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
    #   A token used to retreive the next set of results.
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
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
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
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
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
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
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
    #   The token to retrieve the next set of results.
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
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
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
    #   The token for the next set of results, or **null** if there are no
    #   additional results.
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
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
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
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
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

    # Describes a file to be associated with an OTA update.
    #
    # @note When making an API call, you may pass OTAUpdateFile
    #   data as a hash:
    #
    #       {
    #         file_name: "FileName",
    #         file_version: "OTAUpdateFileVersion",
    #         file_source: {
    #           stream_id: "StreamId",
    #           file_id: 1,
    #         },
    #         code_signing: {
    #           aws_signer_job_id: "SigningJobId",
    #           custom_code_signing: {
    #             signature: {
    #               stream: {
    #                 stream_id: "StreamId",
    #                 file_id: 1,
    #               },
    #               inline_document: "data",
    #             },
    #             certificate_chain: {
    #               stream: {
    #                 stream_id: "StreamId",
    #                 file_id: 1,
    #               },
    #               certificate_name: "CertificateName",
    #               inline_document: "InlineDocument",
    #             },
    #             hash_algorithm: "HashAlgorithm",
    #             signature_algorithm: "SignatureAlgorithm",
    #           },
    #         },
    #         attributes: {
    #           "Key" => "Value",
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
    # @!attribute [rw] file_source
    #   The source of the file.
    #   @return [Types::Stream]
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
      :file_source,
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
    #   The provisioning template.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for provisioning a thing.
    #   @return [Hash<String,String>]
    #
    class RegisterThingRequest < Struct.new(
      :template_body,
      :parameters)
      include Aws::Structure
    end

    # @!attribute [rw] certificate_pem
    #   The PEM of a certificate.
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
    #   The ID of the certificate.
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
    #                 metric_namespace: "MetricNamespace", # required
    #                 metric_name: "MetricName", # required
    #                 metric_value: "MetricValue", # required
    #                 metric_unit: "MetricUnit", # required
    #                 metric_timestamp: "MetricTimestamp",
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
    #               metric_namespace: "MetricNamespace", # required
    #               metric_name: "MetricName", # required
    #               metric_value: "MetricValue", # required
    #               metric_unit: "MetricUnit", # required
    #               metric_timestamp: "MetricTimestamp",
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

    # Role alias description.
    #
    # @!attribute [rw] role_alias
    #   The role alias.
    #   @return [String]
    #
    # @!attribute [rw] role_alias_arn
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

    # The location in S3 the contains the files to stream.
    #
    # @note When making an API call, you may pass S3Location
    #   data as a hash:
    #
    #       {
    #         bucket: "S3Bucket", # required
    #         key: "S3Key", # required
    #         version: "S3Version",
    #       }
    #
    # @!attribute [rw] bucket
    #   The S3 bucket that contains the file to stream.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The name of the file within the S3 bucket to stream.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The file version.
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
    class SearchIndexResponse < Struct.new(
      :next_token,
      :things)
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
    #   The role ARN that allows IoT to write to Cloudwatch logs.
    #   @return [String]
    #
    # @!attribute [rw] default_log_level
    #   The default logging level.
    #   @return [String]
    #
    # @!attribute [rw] disable_all_logs
    #   Set to true to disable all logs, otherwise set to false.
    #   @return [Boolean]
    #
    class SetV2LoggingOptionsRequest < Struct.new(
      :role_arn,
      :default_log_level,
      :disable_all_logs)
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
    #   The message format of the message to publish. Optional. Accepted
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
    #           bucket: "S3Bucket", # required
    #           key: "S3Key", # required
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
    #   The thing shadow.
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
    #         thing_indexing_mode: "OFF", # accepts OFF, REGISTRY, REGISTRY_AND_SHADOW
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
    #               metric_namespace: "MetricNamespace", # required
    #               metric_name: "MetricName", # required
    #               metric_value: "MetricValue", # required
    #               metric_unit: "MetricUnit", # required
    #               metric_timestamp: "MetricTimestamp",
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
    #             metric_namespace: "MetricNamespace", # required
    #             metric_name: "MetricName", # required
    #             metric_value: "MetricValue", # required
    #             metric_unit: "MetricUnit", # required
    #             metric_timestamp: "MetricTimestamp",
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
    #   The ID of the certificate.
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
    #   The ID of the certificate.
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
    #           thing_indexing_mode: "OFF", # accepts OFF, REGISTRY, REGISTRY_AND_SHADOW
    #         },
    #       }
    #
    # @!attribute [rw] thing_indexing_configuration
    #   Thing indexing configuration.
    #   @return [Types::ThingIndexingConfiguration]
    #
    class UpdateIndexingConfigurationRequest < Struct.new(
      :thing_indexing_configuration)
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
    #               bucket: "S3Bucket", # required
    #               key: "S3Key", # required
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

  end
end
