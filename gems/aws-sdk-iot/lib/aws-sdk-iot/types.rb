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
    class CACertificateDescription < Struct.new(
      :certificate_arn,
      :certificate_id,
      :status,
      :certificate_pem,
      :owned_by,
      :creation_date,
      :auto_registration_status)
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
    # @!attribute [rw] transfer_data
    #   The transfer data.
    #   @return [Types::TransferData]
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
      :transfer_data)
      include Aws::Structure
    end

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
    #   Maximum length of 2048, excluding whitespaces
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
    class CreateThingResponse < Struct.new(
      :thing_name,
      :thing_arn)
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
    class CreateThingTypeResponse < Struct.new(
      :thing_type_name,
      :thing_type_arn)
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
    #       }
    #
    # @!attribute [rw] certificate_id
    #   The ID of the certificate.
    #   @return [String]
    #
    class DeleteCertificateRequest < Struct.new(
      :certificate_id)
      include Aws::Structure
    end

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
    class DescribeCACertificateResponse < Struct.new(
      :certificate_description)
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

    # The input for the DescribeEndpoint operation.
    #
    # @api private
    #
    class DescribeEndpointRequest < Aws::EmptyStructure; end

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
      :thing_type_properties,
      :thing_type_metadata)
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
    #   The IAM role that grants access to the Amazon Kinesis Firehost
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
    class GetPolicyResponse < Struct.new(
      :policy_name,
      :policy_arn,
      :policy_document,
      :default_version_id)
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
    class GetPolicyVersionResponse < Struct.new(
      :policy_arn,
      :policy_name,
      :policy_document,
      :policy_version_id,
      :is_default_version)
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
    #   The certificates that are being transfered but not yet accepted.
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
    #   The token for the next set of results, or **null** if there are no
    #   additional results.
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
    #   The token for the next set of results, or **null** if there are no
    #   additional results.
    #   @return [String]
    #
    class ListPrincipalThingsResponse < Struct.new(
      :things,
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
    #   The token for the next set of results, or **null** if there are no
    #   additional results.
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
    #   The token for the next set of results, or **null** if there are no
    #   additional results.
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
    #   The logging level.
    #   @return [String]
    #
    class LoggingOptionsPayload < Struct.new(
      :role_arn,
      :log_level)
      include Aws::Structure
    end

    # A certificate that has been transfered but not yet accepted.
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
    class RegisterCACertificateRequest < Struct.new(
      :ca_certificate,
      :verification_certificate,
      :set_as_active,
      :allow_auto_registration)
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
      :attributes,
      :version)
      include Aws::Structure
    end

    # The definition of the thing type, including thing type name and
    # description.
    #
    # @!attribute [rw] thing_type_name
    #   The name of the thing type.
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
    class TopicRule < Struct.new(
      :rule_name,
      :sql,
      :description,
      :created_at,
      :actions,
      :rule_disabled,
      :aws_iot_sql_version)
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
    class TopicRulePayload < Struct.new(
      :sql,
      :description,
      :actions,
      :rule_disabled,
      :aws_iot_sql_version)
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

    # The input to the UpdateCACertificate operation.
    #
    # @note When making an API call, you may pass UpdateCACertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_id: "CertificateId", # required
    #         new_status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #         new_auto_registration_status: "ENABLE", # accepts ENABLE, DISABLE
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
    class UpdateCACertificateRequest < Struct.new(
      :certificate_id,
      :new_status,
      :new_auto_registration_status)
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
    #   Remove a thing type association. If **true**, the assocation is
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
