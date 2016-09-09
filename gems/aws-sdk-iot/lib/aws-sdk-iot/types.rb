# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module IoT
    module Types

      # The input for the AcceptCertificateTransfer operation.
      # @note When making an API call, pass AcceptCertificateTransferRequest
      #   data as a hash:
      #
      #       {
      #         certificate_id: "CertificateId", # required
      #         set_as_active: false,
      #       }
      class AcceptCertificateTransferRequest < Aws::Structure.new(
        :certificate_id,
        :set_as_active)

        # @!attribute [rw] certificate_id
        #   The ID of the certificate.
        #   @return [String]

        # @!attribute [rw] set_as_active
        #   Specifies whether the certificate is active.
        #   @return [Boolean]

      end

      # Describes the actions associated with a rule.
      # @note When making an API call, pass Action
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
      #       }
      class Action < Aws::Structure.new(
        :dynamo_db,
        :lambda,
        :sns,
        :sqs,
        :kinesis,
        :republish,
        :s3,
        :firehose,
        :cloudwatch_metric,
        :cloudwatch_alarm,
        :elasticsearch)

        # @!attribute [rw] dynamo_db
        #   Write to a DynamoDB table.
        #   @return [Types::DynamoDBAction]

        # @!attribute [rw] lambda
        #   Invoke a Lambda function.
        #   @return [Types::LambdaAction]

        # @!attribute [rw] sns
        #   Publish to an Amazon SNS topic.
        #   @return [Types::SnsAction]

        # @!attribute [rw] sqs
        #   Publish to an Amazon SQS queue.
        #   @return [Types::SqsAction]

        # @!attribute [rw] kinesis
        #   Write data to an Amazon Kinesis stream.
        #   @return [Types::KinesisAction]

        # @!attribute [rw] republish
        #   Publish to another MQTT topic.
        #   @return [Types::RepublishAction]

        # @!attribute [rw] s3
        #   Write to an Amazon S3 bucket.
        #   @return [Types::S3Action]

        # @!attribute [rw] firehose
        #   Write to an Amazon Kinesis Firehose stream.
        #   @return [Types::FirehoseAction]

        # @!attribute [rw] cloudwatch_metric
        #   Capture a CloudWatch metric.
        #   @return [Types::CloudwatchMetricAction]

        # @!attribute [rw] cloudwatch_alarm
        #   Change the state of a CloudWatch alarm.
        #   @return [Types::CloudwatchAlarmAction]

        # @!attribute [rw] elasticsearch
        #   Write data to an Amazon Elasticsearch Service; domain.
        #   @return [Types::ElasticsearchAction]

      end

      # The input for the AttachPrincipalPolicy operation.
      # @note When making an API call, pass AttachPrincipalPolicyRequest
      #   data as a hash:
      #
      #       {
      #         policy_name: "PolicyName", # required
      #         principal: "Principal", # required
      #       }
      class AttachPrincipalPolicyRequest < Aws::Structure.new(
        :policy_name,
        :principal)

        # @!attribute [rw] policy_name
        #   The policy name.
        #   @return [String]

        # @!attribute [rw] principal
        #   The principal, which can be a certificate ARN (as returned from the
        #   CreateCertificate operation) or an Amazon Cognito ID.
        #   @return [String]

      end

      # The input for the AttachThingPrincipal operation.
      # @note When making an API call, pass AttachThingPrincipalRequest
      #   data as a hash:
      #
      #       {
      #         thing_name: "ThingName", # required
      #         principal: "Principal", # required
      #       }
      class AttachThingPrincipalRequest < Aws::Structure.new(
        :thing_name,
        :principal)

        # @!attribute [rw] thing_name
        #   The name of the thing.
        #   @return [String]

        # @!attribute [rw] principal
        #   The principal, such as a certificate or other credential.
        #   @return [String]

      end

      # The output from the AttachThingPrincipal operation.
      class AttachThingPrincipalResponse < Aws::EmptyStructure; end

      # The attribute payload.
      # @note When making an API call, pass AttributePayload
      #   data as a hash:
      #
      #       {
      #         attributes: {
      #           "AttributeName" => "AttributeValue",
      #         },
      #         merge: false,
      #       }
      class AttributePayload < Aws::Structure.new(
        :attributes,
        :merge)

        # @!attribute [rw] attributes
        #   A JSON string containing up to three key-value pair in JSON format.
        #   For example:
        #
        #   `\{\"attributes\":\{\"string1\":\"string2\"\}\})`
        #   @return [Hash<String,String>]

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

      end

      # A CA certificate.
      class CACertificate < Aws::Structure.new(
        :certificate_arn,
        :certificate_id,
        :status,
        :creation_date)

        # @!attribute [rw] certificate_arn
        #   The ARN of the CA certificate.
        #   @return [String]

        # @!attribute [rw] certificate_id
        #   The ID of the CA certificate.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the CA certificate.
        #
        #   The status value REGISTER\_INACTIVE is deprecated and should not be
        #   used.
        #   @return [String]

        # @!attribute [rw] creation_date
        #   The date the CA certificate was created.
        #   @return [Time]

      end

      # Describes a CA certificate.
      class CACertificateDescription < Aws::Structure.new(
        :certificate_arn,
        :certificate_id,
        :status,
        :certificate_pem,
        :owned_by,
        :creation_date,
        :auto_registration_status)

        # @!attribute [rw] certificate_arn
        #   The CA certificate ARN.
        #   @return [String]

        # @!attribute [rw] certificate_id
        #   The CA certificate ID.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of a CA certificate.
        #   @return [String]

        # @!attribute [rw] certificate_pem
        #   The CA certificate data, in PEM format.
        #   @return [String]

        # @!attribute [rw] owned_by
        #   The owner of the CA certificate.
        #   @return [String]

        # @!attribute [rw] creation_date
        #   The date the CA certificate was created.
        #   @return [Time]

        # @!attribute [rw] auto_registration_status
        #   Whether the CA certificate configured for auto registration of
        #   device certificates. Valid values are \"ENABLE\" and \"DISABLE\"
        #   @return [String]

      end

      # The input for the CancelCertificateTransfer operation.
      # @note When making an API call, pass CancelCertificateTransferRequest
      #   data as a hash:
      #
      #       {
      #         certificate_id: "CertificateId", # required
      #       }
      class CancelCertificateTransferRequest < Aws::Structure.new(
        :certificate_id)

        # @!attribute [rw] certificate_id
        #   The ID of the certificate.
        #   @return [String]

      end

      # Information about a certificate.
      class Certificate < Aws::Structure.new(
        :certificate_arn,
        :certificate_id,
        :status,
        :creation_date)

        # @!attribute [rw] certificate_arn
        #   The ARN of the certificate.
        #   @return [String]

        # @!attribute [rw] certificate_id
        #   The ID of the certificate.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the certificate.
        #
        #   The status value REGISTER\_INACTIVE is deprecated and should not be
        #   used.
        #   @return [String]

        # @!attribute [rw] creation_date
        #   The date and time the certificate was created.
        #   @return [Time]

      end

      # Describes a certificate.
      class CertificateDescription < Aws::Structure.new(
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

        # @!attribute [rw] certificate_arn
        #   The ARN of the certificate.
        #   @return [String]

        # @!attribute [rw] certificate_id
        #   The ID of the certificate.
        #   @return [String]

        # @!attribute [rw] ca_certificate_id
        #   The certificate ID of the CA certificate used to sign this
        #   certificate.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the certificate.
        #   @return [String]

        # @!attribute [rw] certificate_pem
        #   The certificate data, in PEM format.
        #   @return [String]

        # @!attribute [rw] owned_by
        #   The ID of the AWS account that owns the certificate.
        #   @return [String]

        # @!attribute [rw] previous_owned_by
        #   The ID of the AWS account of the previous owner of the certificate.
        #   @return [String]

        # @!attribute [rw] creation_date
        #   The date and time the certificate was created.
        #   @return [Time]

        # @!attribute [rw] last_modified_date
        #   The date and time the certificate was last modified.
        #   @return [Time]

        # @!attribute [rw] transfer_data
        #   The transfer data.
        #   @return [Types::TransferData]

      end

      # Describes an action that updates a CloudWatch alarm.
      # @note When making an API call, pass CloudwatchAlarmAction
      #   data as a hash:
      #
      #       {
      #         role_arn: "AwsArn", # required
      #         alarm_name: "AlarmName", # required
      #         state_reason: "StateReason", # required
      #         state_value: "StateValue", # required
      #       }
      class CloudwatchAlarmAction < Aws::Structure.new(
        :role_arn,
        :alarm_name,
        :state_reason,
        :state_value)

        # @!attribute [rw] role_arn
        #   The IAM role that allows access to the CloudWatch alarm.
        #   @return [String]

        # @!attribute [rw] alarm_name
        #   The CloudWatch alarm name.
        #   @return [String]

        # @!attribute [rw] state_reason
        #   The reason for the alarm change.
        #   @return [String]

        # @!attribute [rw] state_value
        #   The value of the alarm state. Acceptable values are: OK, ALARM,
        #   INSUFFICIENT\_DATA.
        #   @return [String]

      end

      # Describes an action that captures a CloudWatch metric.
      # @note When making an API call, pass CloudwatchMetricAction
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
      class CloudwatchMetricAction < Aws::Structure.new(
        :role_arn,
        :metric_namespace,
        :metric_name,
        :metric_value,
        :metric_unit,
        :metric_timestamp)

        # @!attribute [rw] role_arn
        #   The IAM role that allows access to the CloudWatch metric.
        #   @return [String]

        # @!attribute [rw] metric_namespace
        #   The CloudWatch metric namespace name.
        #   @return [String]

        # @!attribute [rw] metric_name
        #   The CloudWatch metric name.
        #   @return [String]

        # @!attribute [rw] metric_value
        #   The CloudWatch metric value.
        #   @return [String]

        # @!attribute [rw] metric_unit
        #   The [metric unit][1] supported by CloudWatch.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#Unit
        #   @return [String]

        # @!attribute [rw] metric_timestamp
        #   An optional [Unix timestamp][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#about_timestamp
        #   @return [String]

      end

      # The input for the CreateCertificateFromCsr operation.
      # @note When making an API call, pass CreateCertificateFromCsrRequest
      #   data as a hash:
      #
      #       {
      #         certificate_signing_request: "CertificateSigningRequest", # required
      #         set_as_active: false,
      #       }
      class CreateCertificateFromCsrRequest < Aws::Structure.new(
        :certificate_signing_request,
        :set_as_active)

        # @!attribute [rw] certificate_signing_request
        #   The certificate signing request (CSR).
        #   @return [String]

        # @!attribute [rw] set_as_active
        #   Specifies whether the certificate is active.
        #   @return [Boolean]

      end

      # The output from the CreateCertificateFromCsr operation.
      class CreateCertificateFromCsrResponse < Aws::Structure.new(
        :certificate_arn,
        :certificate_id,
        :certificate_pem)

        # @!attribute [rw] certificate_arn
        #   The Amazon Resource Name (ARN) of the certificate. You can use the
        #   ARN as a principal for policy operations.
        #   @return [String]

        # @!attribute [rw] certificate_id
        #   The ID of the certificate. Certificate management operations only
        #   take a certificateId.
        #   @return [String]

        # @!attribute [rw] certificate_pem
        #   The certificate data, in PEM format.
        #   @return [String]

      end

      # The input for the CreateKeysAndCertificate operation.
      # @note When making an API call, pass CreateKeysAndCertificateRequest
      #   data as a hash:
      #
      #       {
      #         set_as_active: false,
      #       }
      class CreateKeysAndCertificateRequest < Aws::Structure.new(
        :set_as_active)

        # @!attribute [rw] set_as_active
        #   Specifies whether the certificate is active.
        #   @return [Boolean]

      end

      # The output of the CreateKeysAndCertificate operation.
      class CreateKeysAndCertificateResponse < Aws::Structure.new(
        :certificate_arn,
        :certificate_id,
        :certificate_pem,
        :key_pair)

        # @!attribute [rw] certificate_arn
        #   The ARN of the certificate.
        #   @return [String]

        # @!attribute [rw] certificate_id
        #   The ID of the certificate. AWS IoT issues a default subject name for
        #   the certificate (for example, AWS IoT Certificate).
        #   @return [String]

        # @!attribute [rw] certificate_pem
        #   The certificate data, in PEM format.
        #   @return [String]

        # @!attribute [rw] key_pair
        #   The generated key pair.
        #   @return [Types::KeyPair]

      end

      # The input for the CreatePolicy operation.
      # @note When making an API call, pass CreatePolicyRequest
      #   data as a hash:
      #
      #       {
      #         policy_name: "PolicyName", # required
      #         policy_document: "PolicyDocument", # required
      #       }
      class CreatePolicyRequest < Aws::Structure.new(
        :policy_name,
        :policy_document)

        # @!attribute [rw] policy_name
        #   The policy name.
        #   @return [String]

        # @!attribute [rw] policy_document
        #   The JSON document that describes the policy. **policyDocument** must
        #   have a minimum length of 1, with a maximum length of 2048, excluding
        #   whitespace.
        #   @return [String]

      end

      # The output from the CreatePolicy operation.
      class CreatePolicyResponse < Aws::Structure.new(
        :policy_name,
        :policy_arn,
        :policy_document,
        :policy_version_id)

        # @!attribute [rw] policy_name
        #   The policy name.
        #   @return [String]

        # @!attribute [rw] policy_arn
        #   The policy ARN.
        #   @return [String]

        # @!attribute [rw] policy_document
        #   The JSON document that describes the policy.
        #   @return [String]

        # @!attribute [rw] policy_version_id
        #   The policy version ID.
        #   @return [String]

      end

      # The input for the CreatePolicyVersion operation.
      # @note When making an API call, pass CreatePolicyVersionRequest
      #   data as a hash:
      #
      #       {
      #         policy_name: "PolicyName", # required
      #         policy_document: "PolicyDocument", # required
      #         set_as_default: false,
      #       }
      class CreatePolicyVersionRequest < Aws::Structure.new(
        :policy_name,
        :policy_document,
        :set_as_default)

        # @!attribute [rw] policy_name
        #   The policy name.
        #   @return [String]

        # @!attribute [rw] policy_document
        #   The JSON document that describes the policy. Minimum length of 1.
        #   Maximum length of 2048, excluding whitespaces
        #   @return [String]

        # @!attribute [rw] set_as_default
        #   Specifies whether the policy version is set as the default. When
        #   this parameter is true, the new policy version becomes the operative
        #   version (that is, the version that is in effect for the certificates
        #   to which the policy is attached).
        #   @return [Boolean]

      end

      # The output of the CreatePolicyVersion operation.
      class CreatePolicyVersionResponse < Aws::Structure.new(
        :policy_arn,
        :policy_document,
        :policy_version_id,
        :is_default_version)

        # @!attribute [rw] policy_arn
        #   The policy ARN.
        #   @return [String]

        # @!attribute [rw] policy_document
        #   The JSON document that describes the policy.
        #   @return [String]

        # @!attribute [rw] policy_version_id
        #   The policy version ID.
        #   @return [String]

        # @!attribute [rw] is_default_version
        #   Specifies whether the policy version is the default.
        #   @return [Boolean]

      end

      # The input for the CreateThing operation.
      # @note When making an API call, pass CreateThingRequest
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
      class CreateThingRequest < Aws::Structure.new(
        :thing_name,
        :thing_type_name,
        :attribute_payload)

        # @!attribute [rw] thing_name
        #   The name of the thing to create.
        #   @return [String]

        # @!attribute [rw] thing_type_name
        #   The name of the thing type associated with the new thing.
        #   @return [String]

        # @!attribute [rw] attribute_payload
        #   The attribute payload, which consists of up to three name/value
        #   pairs in a JSON document. For example:
        #
        #   `\{\"attributes\":\{\"string1\":\"string2\"\}\})`
        #   @return [Types::AttributePayload]

      end

      # The output of the CreateThing operation.
      class CreateThingResponse < Aws::Structure.new(
        :thing_name,
        :thing_arn)

        # @!attribute [rw] thing_name
        #   The name of the new thing.
        #   @return [String]

        # @!attribute [rw] thing_arn
        #   The ARN of the new thing.
        #   @return [String]

      end

      # The input for the CreateThingType operation.
      # @note When making an API call, pass CreateThingTypeRequest
      #   data as a hash:
      #
      #       {
      #         thing_type_name: "ThingTypeName", # required
      #         thing_type_properties: {
      #           thing_type_description: "ThingTypeDescription",
      #           searchable_attributes: ["AttributeName"],
      #         },
      #       }
      class CreateThingTypeRequest < Aws::Structure.new(
        :thing_type_name,
        :thing_type_properties)

        # @!attribute [rw] thing_type_name
        #   The name of the thing type.
        #   @return [String]

        # @!attribute [rw] thing_type_properties
        #   The ThingTypeProperties for the thing type to create. It contains
        #   information about the new thing type including a description, and a
        #   list of searchable thing attribute names.
        #   @return [Types::ThingTypeProperties]

      end

      # The output of the CreateThingType operation.
      class CreateThingTypeResponse < Aws::Structure.new(
        :thing_type_name,
        :thing_type_arn)

        # @!attribute [rw] thing_type_name
        #   The name of the thing type.
        #   @return [String]

        # @!attribute [rw] thing_type_arn
        #   The Amazon Resource Name (ARN) of the thing type.
        #   @return [String]

      end

      # The input for the CreateTopicRule operation.
      # @note When making an API call, pass CreateTopicRuleRequest
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
      #             },
      #           ],
      #           rule_disabled: false,
      #           aws_iot_sql_version: "AwsIotSqlVersion",
      #         },
      #       }
      class CreateTopicRuleRequest < Aws::Structure.new(
        :rule_name,
        :topic_rule_payload)

        # @!attribute [rw] rule_name
        #   The name of the rule.
        #   @return [String]

        # @!attribute [rw] topic_rule_payload
        #   The rule payload.
        #   @return [Types::TopicRulePayload]

      end

      # Input for the DeleteCACertificate operation.
      # @note When making an API call, pass DeleteCACertificateRequest
      #   data as a hash:
      #
      #       {
      #         certificate_id: "CertificateId", # required
      #       }
      class DeleteCACertificateRequest < Aws::Structure.new(
        :certificate_id)

        # @!attribute [rw] certificate_id
        #   The ID of the certificate to delete.
        #   @return [String]

      end

      # The output for the DeleteCACertificate operation.
      class DeleteCACertificateResponse < Aws::EmptyStructure; end

      # The input for the DeleteCertificate operation.
      # @note When making an API call, pass DeleteCertificateRequest
      #   data as a hash:
      #
      #       {
      #         certificate_id: "CertificateId", # required
      #       }
      class DeleteCertificateRequest < Aws::Structure.new(
        :certificate_id)

        # @!attribute [rw] certificate_id
        #   The ID of the certificate.
        #   @return [String]

      end

      # The input for the DeletePolicy operation.
      # @note When making an API call, pass DeletePolicyRequest
      #   data as a hash:
      #
      #       {
      #         policy_name: "PolicyName", # required
      #       }
      class DeletePolicyRequest < Aws::Structure.new(
        :policy_name)

        # @!attribute [rw] policy_name
        #   The name of the policy to delete.
        #   @return [String]

      end

      # The input for the DeletePolicyVersion operation.
      # @note When making an API call, pass DeletePolicyVersionRequest
      #   data as a hash:
      #
      #       {
      #         policy_name: "PolicyName", # required
      #         policy_version_id: "PolicyVersionId", # required
      #       }
      class DeletePolicyVersionRequest < Aws::Structure.new(
        :policy_name,
        :policy_version_id)

        # @!attribute [rw] policy_name
        #   The name of the policy.
        #   @return [String]

        # @!attribute [rw] policy_version_id
        #   The policy version ID.
        #   @return [String]

      end

      # The input for the DeleteRegistrationCode operation.
      # @api private
      class DeleteRegistrationCodeRequest < Aws::EmptyStructure; end

      # The output for the DeleteRegistrationCode operation.
      class DeleteRegistrationCodeResponse < Aws::EmptyStructure; end

      # The input for the DeleteThing operation.
      # @note When making an API call, pass DeleteThingRequest
      #   data as a hash:
      #
      #       {
      #         thing_name: "ThingName", # required
      #         expected_version: 1,
      #       }
      class DeleteThingRequest < Aws::Structure.new(
        :thing_name,
        :expected_version)

        # @!attribute [rw] thing_name
        #   The name of the thing to delete.
        #   @return [String]

        # @!attribute [rw] expected_version
        #   The expected version of the thing record in the registry. If the
        #   version of the record in the registry does not match the expected
        #   version specified in the request, the `DeleteThing` request is
        #   rejected with a `VersionConflictException`.
        #   @return [Integer]

      end

      # The output of the DeleteThing operation.
      class DeleteThingResponse < Aws::EmptyStructure; end

      # The input for the DeleteThingType operation.
      # @note When making an API call, pass DeleteThingTypeRequest
      #   data as a hash:
      #
      #       {
      #         thing_type_name: "ThingTypeName", # required
      #       }
      class DeleteThingTypeRequest < Aws::Structure.new(
        :thing_type_name)

        # @!attribute [rw] thing_type_name
        #   The name of the thing type.
        #   @return [String]

      end

      # The output for the DeleteThingType operation.
      class DeleteThingTypeResponse < Aws::EmptyStructure; end

      # The input for the DeleteTopicRule operation.
      # @note When making an API call, pass DeleteTopicRuleRequest
      #   data as a hash:
      #
      #       {
      #         rule_name: "RuleName", # required
      #       }
      class DeleteTopicRuleRequest < Aws::Structure.new(
        :rule_name)

        # @!attribute [rw] rule_name
        #   The name of the rule.
        #   @return [String]

      end

      # The input for the DeprecateThingType operation.
      # @note When making an API call, pass DeprecateThingTypeRequest
      #   data as a hash:
      #
      #       {
      #         thing_type_name: "ThingTypeName", # required
      #         undo_deprecate: false,
      #       }
      class DeprecateThingTypeRequest < Aws::Structure.new(
        :thing_type_name,
        :undo_deprecate)

        # @!attribute [rw] thing_type_name
        #   The name of the thing type to deprecate.
        #   @return [String]

        # @!attribute [rw] undo_deprecate
        #   Whether to undeprecate a deprecated thing type. If **true**, the
        #   thing type will not be deprecated anymore and you can associate it
        #   with things.
        #   @return [Boolean]

      end

      # The output for the DeprecateThingType operation.
      class DeprecateThingTypeResponse < Aws::EmptyStructure; end

      # The input for the DescribeCACertificate operation.
      # @note When making an API call, pass DescribeCACertificateRequest
      #   data as a hash:
      #
      #       {
      #         certificate_id: "CertificateId", # required
      #       }
      class DescribeCACertificateRequest < Aws::Structure.new(
        :certificate_id)

        # @!attribute [rw] certificate_id
        #   The CA certificate identifier.
        #   @return [String]

      end

      # The output from the DescribeCACertificate operation.
      class DescribeCACertificateResponse < Aws::Structure.new(
        :certificate_description)

        # @!attribute [rw] certificate_description
        #   The CA certificate description.
        #   @return [Types::CACertificateDescription]

      end

      # The input for the DescribeCertificate operation.
      # @note When making an API call, pass DescribeCertificateRequest
      #   data as a hash:
      #
      #       {
      #         certificate_id: "CertificateId", # required
      #       }
      class DescribeCertificateRequest < Aws::Structure.new(
        :certificate_id)

        # @!attribute [rw] certificate_id
        #   The ID of the certificate.
        #   @return [String]

      end

      # The output of the DescribeCertificate operation.
      class DescribeCertificateResponse < Aws::Structure.new(
        :certificate_description)

        # @!attribute [rw] certificate_description
        #   The description of the certificate.
        #   @return [Types::CertificateDescription]

      end

      # The input for the DescribeEndpoint operation.
      # @api private
      class DescribeEndpointRequest < Aws::EmptyStructure; end

      # The output from the DescribeEndpoint operation.
      class DescribeEndpointResponse < Aws::Structure.new(
        :endpoint_address)

        # @!attribute [rw] endpoint_address
        #   The endpoint. The format of the endpoint is as follows:
        #   *identifier*.iot.*region*.amazonaws.com.
        #   @return [String]

      end

      # The input for the DescribeThing operation.
      # @note When making an API call, pass DescribeThingRequest
      #   data as a hash:
      #
      #       {
      #         thing_name: "ThingName", # required
      #       }
      class DescribeThingRequest < Aws::Structure.new(
        :thing_name)

        # @!attribute [rw] thing_name
        #   The name of the thing.
        #   @return [String]

      end

      # The output from the DescribeThing operation.
      class DescribeThingResponse < Aws::Structure.new(
        :default_client_id,
        :thing_name,
        :thing_type_name,
        :attributes,
        :version)

        # @!attribute [rw] default_client_id
        #   The default client ID.
        #   @return [String]

        # @!attribute [rw] thing_name
        #   The name of the thing.
        #   @return [String]

        # @!attribute [rw] thing_type_name
        #   The thing type name.
        #   @return [String]

        # @!attribute [rw] attributes
        #   The thing attributes.
        #   @return [Hash<String,String>]

        # @!attribute [rw] version
        #   The current version of the thing record in the registry.
        #
        #   <note markdown="1"> To avoid unintentional changes to the information in the registry,
        #   you can pass the version information in the `expectedVersion`
        #   parameter of the `UpdateThing` and `DeleteThing` calls.
        #
        #    </note>
        #   @return [Integer]

      end

      # The input for the DescribeThingType operation.
      # @note When making an API call, pass DescribeThingTypeRequest
      #   data as a hash:
      #
      #       {
      #         thing_type_name: "ThingTypeName", # required
      #       }
      class DescribeThingTypeRequest < Aws::Structure.new(
        :thing_type_name)

        # @!attribute [rw] thing_type_name
        #   The name of the thing type.
        #   @return [String]

      end

      # The output for the DescribeThingType operation.
      class DescribeThingTypeResponse < Aws::Structure.new(
        :thing_type_name,
        :thing_type_properties,
        :thing_type_metadata)

        # @!attribute [rw] thing_type_name
        #   The name of the thing type.
        #   @return [String]

        # @!attribute [rw] thing_type_properties
        #   The ThingTypeProperties contains information about the thing type
        #   including description, and a list of searchable thing attribute
        #   names.
        #   @return [Types::ThingTypeProperties]

        # @!attribute [rw] thing_type_metadata
        #   The ThingTypeMetadata contains additional information about the
        #   thing type including: creation date and time, a value indicating
        #   whether the thing type is deprecated, and a date and time when time
        #   was deprecated.
        #   @return [Types::ThingTypeMetadata]

      end

      # The input for the DetachPrincipalPolicy operation.
      # @note When making an API call, pass DetachPrincipalPolicyRequest
      #   data as a hash:
      #
      #       {
      #         policy_name: "PolicyName", # required
      #         principal: "Principal", # required
      #       }
      class DetachPrincipalPolicyRequest < Aws::Structure.new(
        :policy_name,
        :principal)

        # @!attribute [rw] policy_name
        #   The name of the policy to detach.
        #   @return [String]

        # @!attribute [rw] principal
        #   The principal.
        #
        #   If the principal is a certificate, specify the certificate ARN. If
        #   the principal is an Amazon Cognito identity, specify the identity
        #   ID.
        #   @return [String]

      end

      # The input for the DetachThingPrincipal operation.
      # @note When making an API call, pass DetachThingPrincipalRequest
      #   data as a hash:
      #
      #       {
      #         thing_name: "ThingName", # required
      #         principal: "Principal", # required
      #       }
      class DetachThingPrincipalRequest < Aws::Structure.new(
        :thing_name,
        :principal)

        # @!attribute [rw] thing_name
        #   The name of the thing.
        #   @return [String]

        # @!attribute [rw] principal
        #   If the principal is a certificate, this value must be ARN of the
        #   certificate. If the principal is an Amazon Cognito identity, this
        #   value must be the ID of the Amazon Cognito identity.
        #   @return [String]

      end

      # The output from the DetachThingPrincipal operation.
      class DetachThingPrincipalResponse < Aws::EmptyStructure; end

      # The input for the DisableTopicRuleRequest operation.
      # @note When making an API call, pass DisableTopicRuleRequest
      #   data as a hash:
      #
      #       {
      #         rule_name: "RuleName", # required
      #       }
      class DisableTopicRuleRequest < Aws::Structure.new(
        :rule_name)

        # @!attribute [rw] rule_name
        #   The name of the rule to disable.
        #   @return [String]

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
      # @note When making an API call, pass DynamoDBAction
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
      class DynamoDBAction < Aws::Structure.new(
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

        # @!attribute [rw] table_name
        #   The name of the DynamoDB table.
        #   @return [String]

        # @!attribute [rw] role_arn
        #   The ARN of the IAM role that grants access to the DynamoDB table.
        #   @return [String]

        # @!attribute [rw] operation
        #   The type of operation to be performed. This follows the substitution
        #   template, so it can be `$\{operation\}`, but the substitution must
        #   result in one of the following: `INSERT`, `UPDATE`, or `DELETE`.
        #   @return [String]

        # @!attribute [rw] hash_key_field
        #   The hash key name.
        #   @return [String]

        # @!attribute [rw] hash_key_value
        #   The hash key value.
        #   @return [String]

        # @!attribute [rw] hash_key_type
        #   The hash key type. Valid values are \"STRING\" or \"NUMBER\"
        #   @return [String]

        # @!attribute [rw] range_key_field
        #   The range key name.
        #   @return [String]

        # @!attribute [rw] range_key_value
        #   The range key value.
        #   @return [String]

        # @!attribute [rw] range_key_type
        #   The range key type. Valid values are \"STRING\" or \"NUMBER\"
        #   @return [String]

        # @!attribute [rw] payload_field
        #   The action payload. This name can be customized.
        #   @return [String]

      end

      # Describes an action that writes data to an Amazon Elasticsearch
      # Service; domain.
      # @note When making an API call, pass ElasticsearchAction
      #   data as a hash:
      #
      #       {
      #         role_arn: "AwsArn", # required
      #         endpoint: "ElasticsearchEndpoint", # required
      #         index: "ElasticsearchIndex", # required
      #         type: "ElasticsearchType", # required
      #         id: "ElasticsearchId", # required
      #       }
      class ElasticsearchAction < Aws::Structure.new(
        :role_arn,
        :endpoint,
        :index,
        :type,
        :id)

        # @!attribute [rw] role_arn
        #   The IAM role ARN that has access to Elasticsearch.
        #   @return [String]

        # @!attribute [rw] endpoint
        #   The endpoint of your Elasticsearch domain.
        #   @return [String]

        # @!attribute [rw] index
        #   The Elasticsearch index where you want to store your data.
        #   @return [String]

        # @!attribute [rw] type
        #   The type of document you are storing.
        #   @return [String]

        # @!attribute [rw] id
        #   The unique identifier for the document you are storing.
        #   @return [String]

      end

      # The input for the EnableTopicRuleRequest operation.
      # @note When making an API call, pass EnableTopicRuleRequest
      #   data as a hash:
      #
      #       {
      #         rule_name: "RuleName", # required
      #       }
      class EnableTopicRuleRequest < Aws::Structure.new(
        :rule_name)

        # @!attribute [rw] rule_name
        #   The name of the topic rule to enable.
        #   @return [String]

      end

      # Describes an action that writes data to an Amazon Kinesis Firehose
      # stream.
      # @note When making an API call, pass FirehoseAction
      #   data as a hash:
      #
      #       {
      #         role_arn: "AwsArn", # required
      #         delivery_stream_name: "DeliveryStreamName", # required
      #         separator: "FirehoseSeparator",
      #       }
      class FirehoseAction < Aws::Structure.new(
        :role_arn,
        :delivery_stream_name,
        :separator)

        # @!attribute [rw] role_arn
        #   The IAM role that grants access to the Amazon Kinesis Firehost
        #   stream.
        #   @return [String]

        # @!attribute [rw] delivery_stream_name
        #   The delivery stream name.
        #   @return [String]

        # @!attribute [rw] separator
        #   A character separator that will be used to separate records written
        #   to the firehose stream. Valid values are: \'\\n\' (newline), \'\\t\'
        #   (tab), \'\\r\\n\' (Windows newline), \',\' (comma).
        #   @return [String]

      end

      # The input for the GetLoggingOptions operation.
      # @api private
      class GetLoggingOptionsRequest < Aws::EmptyStructure; end

      # The output from the GetLoggingOptions operation.
      class GetLoggingOptionsResponse < Aws::Structure.new(
        :role_arn,
        :log_level)

        # @!attribute [rw] role_arn
        #   The ARN of the IAM role that grants access.
        #   @return [String]

        # @!attribute [rw] log_level
        #   The logging level.
        #   @return [String]

      end

      # The input for the GetPolicy operation.
      # @note When making an API call, pass GetPolicyRequest
      #   data as a hash:
      #
      #       {
      #         policy_name: "PolicyName", # required
      #       }
      class GetPolicyRequest < Aws::Structure.new(
        :policy_name)

        # @!attribute [rw] policy_name
        #   The name of the policy.
        #   @return [String]

      end

      # The output from the GetPolicy operation.
      class GetPolicyResponse < Aws::Structure.new(
        :policy_name,
        :policy_arn,
        :policy_document,
        :default_version_id)

        # @!attribute [rw] policy_name
        #   The policy name.
        #   @return [String]

        # @!attribute [rw] policy_arn
        #   The policy ARN.
        #   @return [String]

        # @!attribute [rw] policy_document
        #   The JSON document that describes the policy.
        #   @return [String]

        # @!attribute [rw] default_version_id
        #   The default policy version ID.
        #   @return [String]

      end

      # The input for the GetPolicyVersion operation.
      # @note When making an API call, pass GetPolicyVersionRequest
      #   data as a hash:
      #
      #       {
      #         policy_name: "PolicyName", # required
      #         policy_version_id: "PolicyVersionId", # required
      #       }
      class GetPolicyVersionRequest < Aws::Structure.new(
        :policy_name,
        :policy_version_id)

        # @!attribute [rw] policy_name
        #   The name of the policy.
        #   @return [String]

        # @!attribute [rw] policy_version_id
        #   The policy version ID.
        #   @return [String]

      end

      # The output from the GetPolicyVersion operation.
      class GetPolicyVersionResponse < Aws::Structure.new(
        :policy_arn,
        :policy_name,
        :policy_document,
        :policy_version_id,
        :is_default_version)

        # @!attribute [rw] policy_arn
        #   The policy ARN.
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The policy name.
        #   @return [String]

        # @!attribute [rw] policy_document
        #   The JSON document that describes the policy.
        #   @return [String]

        # @!attribute [rw] policy_version_id
        #   The policy version ID.
        #   @return [String]

        # @!attribute [rw] is_default_version
        #   Specifies whether the policy version is the default.
        #   @return [Boolean]

      end

      # The input to the GetRegistrationCode operation.
      # @api private
      class GetRegistrationCodeRequest < Aws::EmptyStructure; end

      # The output from the GetRegistrationCode operation.
      class GetRegistrationCodeResponse < Aws::Structure.new(
        :registration_code)

        # @!attribute [rw] registration_code
        #   The CA certificate registration code.
        #   @return [String]

      end

      # The input for the GetTopicRule operation.
      # @note When making an API call, pass GetTopicRuleRequest
      #   data as a hash:
      #
      #       {
      #         rule_name: "RuleName", # required
      #       }
      class GetTopicRuleRequest < Aws::Structure.new(
        :rule_name)

        # @!attribute [rw] rule_name
        #   The name of the rule.
        #   @return [String]

      end

      # The output from the GetTopicRule operation.
      class GetTopicRuleResponse < Aws::Structure.new(
        :rule_arn,
        :rule)

        # @!attribute [rw] rule_arn
        #   The rule ARN.
        #   @return [String]

        # @!attribute [rw] rule
        #   The rule.
        #   @return [Types::TopicRule]

      end

      # Describes a key pair.
      class KeyPair < Aws::Structure.new(
        :public_key,
        :private_key)

        # @!attribute [rw] public_key
        #   The public key.
        #   @return [String]

        # @!attribute [rw] private_key
        #   The private key.
        #   @return [String]

      end

      # Describes an action to write data to an Amazon Kinesis stream.
      # @note When making an API call, pass KinesisAction
      #   data as a hash:
      #
      #       {
      #         role_arn: "AwsArn", # required
      #         stream_name: "StreamName", # required
      #         partition_key: "PartitionKey",
      #       }
      class KinesisAction < Aws::Structure.new(
        :role_arn,
        :stream_name,
        :partition_key)

        # @!attribute [rw] role_arn
        #   The ARN of the IAM role that grants access to the Amazon Kinesis
        #   stream.
        #   @return [String]

        # @!attribute [rw] stream_name
        #   The name of the Amazon Kinesis stream.
        #   @return [String]

        # @!attribute [rw] partition_key
        #   The partition key.
        #   @return [String]

      end

      # Describes an action to invoke a Lambda function.
      # @note When making an API call, pass LambdaAction
      #   data as a hash:
      #
      #       {
      #         function_arn: "FunctionArn", # required
      #       }
      class LambdaAction < Aws::Structure.new(
        :function_arn)

        # @!attribute [rw] function_arn
        #   The ARN of the Lambda function.
        #   @return [String]

      end

      # Input for the ListCACertificates operation.
      # @note When making an API call, pass ListCACertificatesRequest
      #   data as a hash:
      #
      #       {
      #         page_size: 1,
      #         marker: "Marker",
      #         ascending_order: false,
      #       }
      class ListCACertificatesRequest < Aws::Structure.new(
        :page_size,
        :marker,
        :ascending_order)

        # @!attribute [rw] page_size
        #   The result page size.
        #   @return [Integer]

        # @!attribute [rw] marker
        #   The marker for the next set of results.
        #   @return [String]

        # @!attribute [rw] ascending_order
        #   Determines the order of the results.
        #   @return [Boolean]

      end

      # The output from the ListCACertificates operation.
      class ListCACertificatesResponse < Aws::Structure.new(
        :certificates,
        :next_marker)

        # @!attribute [rw] certificates
        #   The CA certificates registered in your AWS account.
        #   @return [Array<Types::CACertificate>]

        # @!attribute [rw] next_marker
        #   The current position within the list of CA certificates.
        #   @return [String]

      end

      # The input to the ListCertificatesByCA operation.
      # @note When making an API call, pass ListCertificatesByCARequest
      #   data as a hash:
      #
      #       {
      #         ca_certificate_id: "CertificateId", # required
      #         page_size: 1,
      #         marker: "Marker",
      #         ascending_order: false,
      #       }
      class ListCertificatesByCARequest < Aws::Structure.new(
        :ca_certificate_id,
        :page_size,
        :marker,
        :ascending_order)

        # @!attribute [rw] ca_certificate_id
        #   The ID of the CA certificate. This operation will list all
        #   registered device certificate that were signed by this CA
        #   certificate.
        #   @return [String]

        # @!attribute [rw] page_size
        #   The result page size.
        #   @return [Integer]

        # @!attribute [rw] marker
        #   The marker for the next set of results.
        #   @return [String]

        # @!attribute [rw] ascending_order
        #   Specifies the order for results. If True, the results are returned
        #   in ascending order, based on the creation date.
        #   @return [Boolean]

      end

      # The output of the ListCertificatesByCA operation.
      class ListCertificatesByCAResponse < Aws::Structure.new(
        :certificates,
        :next_marker)

        # @!attribute [rw] certificates
        #   The device certificates signed by the specified CA certificate.
        #   @return [Array<Types::Certificate>]

        # @!attribute [rw] next_marker
        #   The marker for the next set of results, or null if there are no
        #   additional results.
        #   @return [String]

      end

      # The input for the ListCertificates operation.
      # @note When making an API call, pass ListCertificatesRequest
      #   data as a hash:
      #
      #       {
      #         page_size: 1,
      #         marker: "Marker",
      #         ascending_order: false,
      #       }
      class ListCertificatesRequest < Aws::Structure.new(
        :page_size,
        :marker,
        :ascending_order)

        # @!attribute [rw] page_size
        #   The result page size.
        #   @return [Integer]

        # @!attribute [rw] marker
        #   The marker for the next set of results.
        #   @return [String]

        # @!attribute [rw] ascending_order
        #   Specifies the order for results. If True, the results are returned
        #   in ascending order, based on the creation date.
        #   @return [Boolean]

      end

      # The output of the ListCertificates operation.
      class ListCertificatesResponse < Aws::Structure.new(
        :certificates,
        :next_marker)

        # @!attribute [rw] certificates
        #   The descriptions of the certificates.
        #   @return [Array<Types::Certificate>]

        # @!attribute [rw] next_marker
        #   The marker for the next set of results, or null if there are no
        #   additional results.
        #   @return [String]

      end

      # The input to the ListOutgoingCertificates operation.
      # @note When making an API call, pass ListOutgoingCertificatesRequest
      #   data as a hash:
      #
      #       {
      #         page_size: 1,
      #         marker: "Marker",
      #         ascending_order: false,
      #       }
      class ListOutgoingCertificatesRequest < Aws::Structure.new(
        :page_size,
        :marker,
        :ascending_order)

        # @!attribute [rw] page_size
        #   The result page size.
        #   @return [Integer]

        # @!attribute [rw] marker
        #   The marker for the next set of results.
        #   @return [String]

        # @!attribute [rw] ascending_order
        #   Specifies the order for results. If True, the results are returned
        #   in ascending order, based on the creation date.
        #   @return [Boolean]

      end

      # The output from the ListOutgoingCertificates operation.
      class ListOutgoingCertificatesResponse < Aws::Structure.new(
        :outgoing_certificates,
        :next_marker)

        # @!attribute [rw] outgoing_certificates
        #   The certificates that are being transfered but not yet accepted.
        #   @return [Array<Types::OutgoingCertificate>]

        # @!attribute [rw] next_marker
        #   The marker for the next set of results.
        #   @return [String]

      end

      # The input for the ListPolicies operation.
      # @note When making an API call, pass ListPoliciesRequest
      #   data as a hash:
      #
      #       {
      #         marker: "Marker",
      #         page_size: 1,
      #         ascending_order: false,
      #       }
      class ListPoliciesRequest < Aws::Structure.new(
        :marker,
        :page_size,
        :ascending_order)

        # @!attribute [rw] marker
        #   The marker for the next set of results.
        #   @return [String]

        # @!attribute [rw] page_size
        #   The result page size.
        #   @return [Integer]

        # @!attribute [rw] ascending_order
        #   Specifies the order for results. If true, the results are returned
        #   in ascending creation order.
        #   @return [Boolean]

      end

      # The output from the ListPolicies operation.
      class ListPoliciesResponse < Aws::Structure.new(
        :policies,
        :next_marker)

        # @!attribute [rw] policies
        #   The descriptions of the policies.
        #   @return [Array<Types::Policy>]

        # @!attribute [rw] next_marker
        #   The marker for the next set of results, or null if there are no
        #   additional results.
        #   @return [String]

      end

      # The input for the ListPolicyPrincipals operation.
      # @note When making an API call, pass ListPolicyPrincipalsRequest
      #   data as a hash:
      #
      #       {
      #         policy_name: "PolicyName", # required
      #         marker: "Marker",
      #         page_size: 1,
      #         ascending_order: false,
      #       }
      class ListPolicyPrincipalsRequest < Aws::Structure.new(
        :policy_name,
        :marker,
        :page_size,
        :ascending_order)

        # @!attribute [rw] policy_name
        #   The policy name.
        #   @return [String]

        # @!attribute [rw] marker
        #   The marker for the next set of results.
        #   @return [String]

        # @!attribute [rw] page_size
        #   The result page size.
        #   @return [Integer]

        # @!attribute [rw] ascending_order
        #   Specifies the order for results. If true, the results are returned
        #   in ascending creation order.
        #   @return [Boolean]

      end

      # The output from the ListPolicyPrincipals operation.
      class ListPolicyPrincipalsResponse < Aws::Structure.new(
        :principals,
        :next_marker)

        # @!attribute [rw] principals
        #   The descriptions of the principals.
        #   @return [Array<String>]

        # @!attribute [rw] next_marker
        #   The marker for the next set of results, or null if there are no
        #   additional results.
        #   @return [String]

      end

      # The input for the ListPolicyVersions operation.
      # @note When making an API call, pass ListPolicyVersionsRequest
      #   data as a hash:
      #
      #       {
      #         policy_name: "PolicyName", # required
      #       }
      class ListPolicyVersionsRequest < Aws::Structure.new(
        :policy_name)

        # @!attribute [rw] policy_name
        #   The policy name.
        #   @return [String]

      end

      # The output from the ListPolicyVersions operation.
      class ListPolicyVersionsResponse < Aws::Structure.new(
        :policy_versions)

        # @!attribute [rw] policy_versions
        #   The policy versions.
        #   @return [Array<Types::PolicyVersion>]

      end

      # The input for the ListPrincipalPolicies operation.
      # @note When making an API call, pass ListPrincipalPoliciesRequest
      #   data as a hash:
      #
      #       {
      #         principal: "Principal", # required
      #         marker: "Marker",
      #         page_size: 1,
      #         ascending_order: false,
      #       }
      class ListPrincipalPoliciesRequest < Aws::Structure.new(
        :principal,
        :marker,
        :page_size,
        :ascending_order)

        # @!attribute [rw] principal
        #   The principal.
        #   @return [String]

        # @!attribute [rw] marker
        #   The marker for the next set of results.
        #   @return [String]

        # @!attribute [rw] page_size
        #   The result page size.
        #   @return [Integer]

        # @!attribute [rw] ascending_order
        #   Specifies the order for results. If true, results are returned in
        #   ascending creation order.
        #   @return [Boolean]

      end

      # The output from the ListPrincipalPolicies operation.
      class ListPrincipalPoliciesResponse < Aws::Structure.new(
        :policies,
        :next_marker)

        # @!attribute [rw] policies
        #   The policies.
        #   @return [Array<Types::Policy>]

        # @!attribute [rw] next_marker
        #   The marker for the next set of results, or null if there are no
        #   additional results.
        #   @return [String]

      end

      # The input for the ListPrincipalThings operation.
      # @note When making an API call, pass ListPrincipalThingsRequest
      #   data as a hash:
      #
      #       {
      #         next_token: "NextToken",
      #         max_results: 1,
      #         principal: "Principal", # required
      #       }
      class ListPrincipalThingsRequest < Aws::Structure.new(
        :next_token,
        :max_results,
        :principal)

        # @!attribute [rw] next_token
        #   The token for the next set of results, or **null** if there are no
        #   additional results.
        #   @return [String]

        # @!attribute [rw] max_results
        #   The maximum number of results to return in this operation.
        #   @return [Integer]

        # @!attribute [rw] principal
        #   The principal.
        #   @return [String]

      end

      # The output from the ListPrincipalThings operation.
      class ListPrincipalThingsResponse < Aws::Structure.new(
        :things,
        :next_token)

        # @!attribute [rw] things
        #   The things.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   The token for the next set of results, or **null** if there are no
        #   additional results.
        #   @return [String]

      end

      # The input for the ListThingPrincipal operation.
      # @note When making an API call, pass ListThingPrincipalsRequest
      #   data as a hash:
      #
      #       {
      #         thing_name: "ThingName", # required
      #       }
      class ListThingPrincipalsRequest < Aws::Structure.new(
        :thing_name)

        # @!attribute [rw] thing_name
        #   The name of the thing.
        #   @return [String]

      end

      # The output from the ListThingPrincipals operation.
      class ListThingPrincipalsResponse < Aws::Structure.new(
        :principals)

        # @!attribute [rw] principals
        #   The principals associated with the thing.
        #   @return [Array<String>]

      end

      # The input for the ListThingTypes operation.
      # @note When making an API call, pass ListThingTypesRequest
      #   data as a hash:
      #
      #       {
      #         next_token: "NextToken",
      #         max_results: 1,
      #         thing_type_name: "ThingTypeName",
      #       }
      class ListThingTypesRequest < Aws::Structure.new(
        :next_token,
        :max_results,
        :thing_type_name)

        # @!attribute [rw] next_token
        #   The token for the next set of results, or **null** if there are no
        #   additional results.
        #   @return [String]

        # @!attribute [rw] max_results
        #   The maximum number of results to return in this operation.
        #   @return [Integer]

        # @!attribute [rw] thing_type_name
        #   The name of the thing type.
        #   @return [String]

      end

      # The output for the ListThingTypes operation.
      class ListThingTypesResponse < Aws::Structure.new(
        :thing_types,
        :next_token)

        # @!attribute [rw] thing_types
        #   The thing types.
        #   @return [Array<Types::ThingTypeDefinition>]

        # @!attribute [rw] next_token
        #   The token for the next set of results, or **null** if there are no
        #   additional results.
        #   @return [String]

      end

      # The input for the ListThings operation.
      # @note When making an API call, pass ListThingsRequest
      #   data as a hash:
      #
      #       {
      #         next_token: "NextToken",
      #         max_results: 1,
      #         attribute_name: "AttributeName",
      #         attribute_value: "AttributeValue",
      #         thing_type_name: "ThingTypeName",
      #       }
      class ListThingsRequest < Aws::Structure.new(
        :next_token,
        :max_results,
        :attribute_name,
        :attribute_value,
        :thing_type_name)

        # @!attribute [rw] next_token
        #   The token for the next set of results, or **null** if there are no
        #   additional results.
        #   @return [String]

        # @!attribute [rw] max_results
        #   The maximum number of results to return in this operation.
        #   @return [Integer]

        # @!attribute [rw] attribute_name
        #   The attribute name used to search for things.
        #   @return [String]

        # @!attribute [rw] attribute_value
        #   The attribute value used to search for things.
        #   @return [String]

        # @!attribute [rw] thing_type_name
        #   The name of the thing type used to search for things.
        #   @return [String]

      end

      # The output from the ListThings operation.
      class ListThingsResponse < Aws::Structure.new(
        :things,
        :next_token)

        # @!attribute [rw] things
        #   The things.
        #   @return [Array<Types::ThingAttribute>]

        # @!attribute [rw] next_token
        #   The token for the next set of results, or **null** if there are no
        #   additional results.
        #   @return [String]

      end

      # The input for the ListTopicRules operation.
      # @note When making an API call, pass ListTopicRulesRequest
      #   data as a hash:
      #
      #       {
      #         topic: "Topic",
      #         max_results: 1,
      #         next_token: "NextToken",
      #         rule_disabled: false,
      #       }
      class ListTopicRulesRequest < Aws::Structure.new(
        :topic,
        :max_results,
        :next_token,
        :rule_disabled)

        # @!attribute [rw] topic
        #   The topic.
        #   @return [String]

        # @!attribute [rw] max_results
        #   The maximum number of results to return.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   A token used to retrieve the next value.
        #   @return [String]

        # @!attribute [rw] rule_disabled
        #   Specifies whether the rule is disabled.
        #   @return [Boolean]

      end

      # The output from the ListTopicRules operation.
      class ListTopicRulesResponse < Aws::Structure.new(
        :rules,
        :next_token)

        # @!attribute [rw] rules
        #   The rules.
        #   @return [Array<Types::TopicRuleListItem>]

        # @!attribute [rw] next_token
        #   A token used to retrieve the next value.
        #   @return [String]

      end

      # Describes the logging options payload.
      # @note When making an API call, pass LoggingOptionsPayload
      #   data as a hash:
      #
      #       {
      #         role_arn: "AwsArn", # required
      #         log_level: "DEBUG", # accepts DEBUG, INFO, ERROR, WARN, DISABLED
      #       }
      class LoggingOptionsPayload < Aws::Structure.new(
        :role_arn,
        :log_level)

        # @!attribute [rw] role_arn
        #   The ARN of the IAM role that grants access.
        #   @return [String]

        # @!attribute [rw] log_level
        #   The logging level.
        #   @return [String]

      end

      # A certificate that has been transfered but not yet accepted.
      class OutgoingCertificate < Aws::Structure.new(
        :certificate_arn,
        :certificate_id,
        :transferred_to,
        :transfer_date,
        :transfer_message,
        :creation_date)

        # @!attribute [rw] certificate_arn
        #   The certificate ARN.
        #   @return [String]

        # @!attribute [rw] certificate_id
        #   The certificate ID.
        #   @return [String]

        # @!attribute [rw] transferred_to
        #   The AWS account to which the transfer was made.
        #   @return [String]

        # @!attribute [rw] transfer_date
        #   The date the transfer was initiated.
        #   @return [Time]

        # @!attribute [rw] transfer_message
        #   The transfer message.
        #   @return [String]

        # @!attribute [rw] creation_date
        #   The certificate creation date.
        #   @return [Time]

      end

      # Describes an AWS IoT policy.
      class Policy < Aws::Structure.new(
        :policy_name,
        :policy_arn)

        # @!attribute [rw] policy_name
        #   The policy name.
        #   @return [String]

        # @!attribute [rw] policy_arn
        #   The policy ARN.
        #   @return [String]

      end

      # Describes a policy version.
      class PolicyVersion < Aws::Structure.new(
        :version_id,
        :is_default_version,
        :create_date)

        # @!attribute [rw] version_id
        #   The policy version ID.
        #   @return [String]

        # @!attribute [rw] is_default_version
        #   Specifies whether the policy version is the default.
        #   @return [Boolean]

        # @!attribute [rw] create_date
        #   The date and time the policy was created.
        #   @return [Time]

      end

      # The input to the RegisterCACertificate operation.
      # @note When making an API call, pass RegisterCACertificateRequest
      #   data as a hash:
      #
      #       {
      #         ca_certificate: "CertificatePem", # required
      #         verification_certificate: "CertificatePem", # required
      #         set_as_active: false,
      #         allow_auto_registration: false,
      #       }
      class RegisterCACertificateRequest < Aws::Structure.new(
        :ca_certificate,
        :verification_certificate,
        :set_as_active,
        :allow_auto_registration)

        # @!attribute [rw] ca_certificate
        #   The CA certificate.
        #   @return [String]

        # @!attribute [rw] verification_certificate
        #   The private key verification certificate.
        #   @return [String]

        # @!attribute [rw] set_as_active
        #   A boolean value that specifies if the CA certificate is set to
        #   active.
        #   @return [Boolean]

        # @!attribute [rw] allow_auto_registration
        #   Allows this CA certificate to be used for auto registration of
        #   device certificates.
        #   @return [Boolean]

      end

      # The output from the RegisterCACertificateResponse operation.
      class RegisterCACertificateResponse < Aws::Structure.new(
        :certificate_arn,
        :certificate_id)

        # @!attribute [rw] certificate_arn
        #   The CA certificate ARN.
        #   @return [String]

        # @!attribute [rw] certificate_id
        #   The CA certificate identifier.
        #   @return [String]

      end

      # The input to the RegisterCertificate operation.
      # @note When making an API call, pass RegisterCertificateRequest
      #   data as a hash:
      #
      #       {
      #         certificate_pem: "CertificatePem", # required
      #         ca_certificate_pem: "CertificatePem",
      #         set_as_active: false,
      #       }
      class RegisterCertificateRequest < Aws::Structure.new(
        :certificate_pem,
        :ca_certificate_pem,
        :set_as_active)

        # @!attribute [rw] certificate_pem
        #   The certificate data, in PEM format.
        #   @return [String]

        # @!attribute [rw] ca_certificate_pem
        #   The CA certificate used to sign the device certificate being
        #   registered.
        #   @return [String]

        # @!attribute [rw] set_as_active
        #   A boolean value that specifies if the CA certificate is set to
        #   active.
        #   @return [Boolean]

      end

      # The output from the RegisterCertificate operation.
      class RegisterCertificateResponse < Aws::Structure.new(
        :certificate_arn,
        :certificate_id)

        # @!attribute [rw] certificate_arn
        #   The certificate ARN.
        #   @return [String]

        # @!attribute [rw] certificate_id
        #   The certificate identifier.
        #   @return [String]

      end

      # The input for the RejectCertificateTransfer operation.
      # @note When making an API call, pass RejectCertificateTransferRequest
      #   data as a hash:
      #
      #       {
      #         certificate_id: "CertificateId", # required
      #         reject_reason: "Message",
      #       }
      class RejectCertificateTransferRequest < Aws::Structure.new(
        :certificate_id,
        :reject_reason)

        # @!attribute [rw] certificate_id
        #   The ID of the certificate.
        #   @return [String]

        # @!attribute [rw] reject_reason
        #   The reason the certificate transfer was rejected.
        #   @return [String]

      end

      # The input for the ReplaceTopicRule operation.
      # @note When making an API call, pass ReplaceTopicRuleRequest
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
      #             },
      #           ],
      #           rule_disabled: false,
      #           aws_iot_sql_version: "AwsIotSqlVersion",
      #         },
      #       }
      class ReplaceTopicRuleRequest < Aws::Structure.new(
        :rule_name,
        :topic_rule_payload)

        # @!attribute [rw] rule_name
        #   The name of the rule.
        #   @return [String]

        # @!attribute [rw] topic_rule_payload
        #   The rule payload.
        #   @return [Types::TopicRulePayload]

      end

      # Describes an action to republish to another topic.
      # @note When making an API call, pass RepublishAction
      #   data as a hash:
      #
      #       {
      #         role_arn: "AwsArn", # required
      #         topic: "TopicPattern", # required
      #       }
      class RepublishAction < Aws::Structure.new(
        :role_arn,
        :topic)

        # @!attribute [rw] role_arn
        #   The ARN of the IAM role that grants access.
        #   @return [String]

        # @!attribute [rw] topic
        #   The name of the MQTT topic.
        #   @return [String]

      end

      # Describes an action to write data to an Amazon S3 bucket.
      # @note When making an API call, pass S3Action
      #   data as a hash:
      #
      #       {
      #         role_arn: "AwsArn", # required
      #         bucket_name: "BucketName", # required
      #         key: "Key", # required
      #       }
      class S3Action < Aws::Structure.new(
        :role_arn,
        :bucket_name,
        :key)

        # @!attribute [rw] role_arn
        #   The ARN of the IAM role that grants access.
        #   @return [String]

        # @!attribute [rw] bucket_name
        #   The Amazon S3 bucket.
        #   @return [String]

        # @!attribute [rw] key
        #   The object key.
        #   @return [String]

      end

      # The input for the SetDefaultPolicyVersion operation.
      # @note When making an API call, pass SetDefaultPolicyVersionRequest
      #   data as a hash:
      #
      #       {
      #         policy_name: "PolicyName", # required
      #         policy_version_id: "PolicyVersionId", # required
      #       }
      class SetDefaultPolicyVersionRequest < Aws::Structure.new(
        :policy_name,
        :policy_version_id)

        # @!attribute [rw] policy_name
        #   The policy name.
        #   @return [String]

        # @!attribute [rw] policy_version_id
        #   The policy version ID.
        #   @return [String]

      end

      # The input for the SetLoggingOptions operation.
      # @note When making an API call, pass SetLoggingOptionsRequest
      #   data as a hash:
      #
      #       {
      #         logging_options_payload: { # required
      #           role_arn: "AwsArn", # required
      #           log_level: "DEBUG", # accepts DEBUG, INFO, ERROR, WARN, DISABLED
      #         },
      #       }
      class SetLoggingOptionsRequest < Aws::Structure.new(
        :logging_options_payload)

        # @!attribute [rw] logging_options_payload
        #   The logging options payload.
        #   @return [Types::LoggingOptionsPayload]

      end

      # Describes an action to publish to an Amazon SNS topic.
      # @note When making an API call, pass SnsAction
      #   data as a hash:
      #
      #       {
      #         target_arn: "AwsArn", # required
      #         role_arn: "AwsArn", # required
      #         message_format: "RAW", # accepts RAW, JSON
      #       }
      class SnsAction < Aws::Structure.new(
        :target_arn,
        :role_arn,
        :message_format)

        # @!attribute [rw] target_arn
        #   The ARN of the SNS topic.
        #   @return [String]

        # @!attribute [rw] role_arn
        #   The ARN of the IAM role that grants access.
        #   @return [String]

        # @!attribute [rw] message_format
        #   The message format of the message to publish. Optional. Accepted
        #   values are \"JSON\" and \"RAW\". The default value of the attribute
        #   is \"RAW\". SNS uses this setting to determine if the payload should
        #   be parsed and relevant platform-specific bits of the payload should
        #   be extracted. To read more about SNS message formats, see [][1]
        #   refer to their official documentation.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/sns/latest/dg/json-formats.html
        #   @return [String]

      end

      # Describes an action to publish data to an Amazon SQS queue.
      # @note When making an API call, pass SqsAction
      #   data as a hash:
      #
      #       {
      #         role_arn: "AwsArn", # required
      #         queue_url: "QueueUrl", # required
      #         use_base_64: false,
      #       }
      class SqsAction < Aws::Structure.new(
        :role_arn,
        :queue_url,
        :use_base_64)

        # @!attribute [rw] role_arn
        #   The ARN of the IAM role that grants access.
        #   @return [String]

        # @!attribute [rw] queue_url
        #   The URL of the Amazon SQS queue.
        #   @return [String]

        # @!attribute [rw] use_base_64
        #   Specifies whether to use Base64 encoding.
        #   @return [Boolean]

      end

      # The properties of the thing, including thing name, thing type name,
      # and a list of thing attributes.
      class ThingAttribute < Aws::Structure.new(
        :thing_name,
        :thing_type_name,
        :attributes,
        :version)

        # @!attribute [rw] thing_name
        #   The name of the thing.
        #   @return [String]

        # @!attribute [rw] thing_type_name
        #   The name of the thing type, if the thing has been associated with a
        #   type.
        #   @return [String]

        # @!attribute [rw] attributes
        #   A list of thing attributes which are name-value pairs.
        #   @return [Hash<String,String>]

        # @!attribute [rw] version
        #   The version of the thing record in the registry.
        #   @return [Integer]

      end

      # The definition of the thing type, including thing type name and
      # description.
      class ThingTypeDefinition < Aws::Structure.new(
        :thing_type_name,
        :thing_type_properties,
        :thing_type_metadata)

        # @!attribute [rw] thing_type_name
        #   The name of the thing type.
        #   @return [String]

        # @!attribute [rw] thing_type_properties
        #   The ThingTypeProperties for the thing type.
        #   @return [Types::ThingTypeProperties]

        # @!attribute [rw] thing_type_metadata
        #   The ThingTypeMetadata contains additional information about the
        #   thing type including: creation date and time, a value indicating
        #   whether the thing type is deprecated, and a date and time when time
        #   was deprecated.
        #   @return [Types::ThingTypeMetadata]

      end

      # The ThingTypeMetadata contains additional information about the thing
      # type including: creation date and time, a value indicating whether the
      # thing type is deprecated, and a date and time when time was
      # deprecated.
      class ThingTypeMetadata < Aws::Structure.new(
        :deprecated,
        :deprecation_date,
        :creation_date)

        # @!attribute [rw] deprecated
        #   Whether the thing type is deprecated. If **true**, no new things
        #   could be associated with this type.
        #   @return [Boolean]

        # @!attribute [rw] deprecation_date
        #   The date and time when the thing type was deprecated.
        #   @return [Time]

        # @!attribute [rw] creation_date
        #   The date and time when the thing type was created.
        #   @return [Time]

      end

      # The ThingTypeProperties contains information about the thing type
      # including: a thing type description, and a list of searchable thing
      # attribute names.
      # @note When making an API call, pass ThingTypeProperties
      #   data as a hash:
      #
      #       {
      #         thing_type_description: "ThingTypeDescription",
      #         searchable_attributes: ["AttributeName"],
      #       }
      class ThingTypeProperties < Aws::Structure.new(
        :thing_type_description,
        :searchable_attributes)

        # @!attribute [rw] thing_type_description
        #   The description of the thing type.
        #   @return [String]

        # @!attribute [rw] searchable_attributes
        #   A list of searchable thing attribute names.
        #   @return [Array<String>]

      end

      # Describes a rule.
      class TopicRule < Aws::Structure.new(
        :rule_name,
        :sql,
        :description,
        :created_at,
        :actions,
        :rule_disabled,
        :aws_iot_sql_version)

        # @!attribute [rw] rule_name
        #   The name of the rule.
        #   @return [String]

        # @!attribute [rw] sql
        #   The SQL statement used to query the topic. When using a SQL query
        #   with multiple lines, be sure to escape the newline characters.
        #   @return [String]

        # @!attribute [rw] description
        #   The description of the rule.
        #   @return [String]

        # @!attribute [rw] created_at
        #   The date and time the rule was created.
        #   @return [Time]

        # @!attribute [rw] actions
        #   The actions associated with the rule.
        #   @return [Array<Types::Action>]

        # @!attribute [rw] rule_disabled
        #   Specifies whether the rule is disabled.
        #   @return [Boolean]

        # @!attribute [rw] aws_iot_sql_version
        #   The version of the SQL rules engine to use when evaluating the rule.
        #   @return [String]

      end

      # Describes a rule.
      class TopicRuleListItem < Aws::Structure.new(
        :rule_arn,
        :rule_name,
        :topic_pattern,
        :created_at,
        :rule_disabled)

        # @!attribute [rw] rule_arn
        #   The rule ARN.
        #   @return [String]

        # @!attribute [rw] rule_name
        #   The name of the rule.
        #   @return [String]

        # @!attribute [rw] topic_pattern
        #   The pattern for the topic names that apply.
        #   @return [String]

        # @!attribute [rw] created_at
        #   The date and time the rule was created.
        #   @return [Time]

        # @!attribute [rw] rule_disabled
        #   Specifies whether the rule is disabled.
        #   @return [Boolean]

      end

      # Describes a rule.
      # @note When making an API call, pass TopicRulePayload
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
      #           },
      #         ],
      #         rule_disabled: false,
      #         aws_iot_sql_version: "AwsIotSqlVersion",
      #       }
      class TopicRulePayload < Aws::Structure.new(
        :sql,
        :description,
        :actions,
        :rule_disabled,
        :aws_iot_sql_version)

        # @!attribute [rw] sql
        #   The SQL statement used to query the topic. For more information, see
        #   [AWS IoT SQL Reference][1] in the *AWS IoT Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/iot/latest/developerguide/iot-rules.html#aws-iot-sql-reference
        #   @return [String]

        # @!attribute [rw] description
        #   The description of the rule.
        #   @return [String]

        # @!attribute [rw] actions
        #   The actions associated with the rule.
        #   @return [Array<Types::Action>]

        # @!attribute [rw] rule_disabled
        #   Specifies whether the rule is disabled.
        #   @return [Boolean]

        # @!attribute [rw] aws_iot_sql_version
        #   The version of the SQL rules engine to use when evaluating the rule.
        #   @return [String]

      end

      # The input for the TransferCertificate operation.
      # @note When making an API call, pass TransferCertificateRequest
      #   data as a hash:
      #
      #       {
      #         certificate_id: "CertificateId", # required
      #         target_aws_account: "AwsAccountId", # required
      #         transfer_message: "Message",
      #       }
      class TransferCertificateRequest < Aws::Structure.new(
        :certificate_id,
        :target_aws_account,
        :transfer_message)

        # @!attribute [rw] certificate_id
        #   The ID of the certificate.
        #   @return [String]

        # @!attribute [rw] target_aws_account
        #   The AWS account.
        #   @return [String]

        # @!attribute [rw] transfer_message
        #   The transfer message.
        #   @return [String]

      end

      # The output from the TransferCertificate operation.
      class TransferCertificateResponse < Aws::Structure.new(
        :transferred_certificate_arn)

        # @!attribute [rw] transferred_certificate_arn
        #   The ARN of the certificate.
        #   @return [String]

      end

      # Data used to transfer a certificate to an AWS account.
      class TransferData < Aws::Structure.new(
        :transfer_message,
        :reject_reason,
        :transfer_date,
        :accept_date,
        :reject_date)

        # @!attribute [rw] transfer_message
        #   The transfer message.
        #   @return [String]

        # @!attribute [rw] reject_reason
        #   The reason why the transfer was rejected.
        #   @return [String]

        # @!attribute [rw] transfer_date
        #   The date the transfer took place.
        #   @return [Time]

        # @!attribute [rw] accept_date
        #   The date the transfer was accepted.
        #   @return [Time]

        # @!attribute [rw] reject_date
        #   The date the transfer was rejected.
        #   @return [Time]

      end

      # The input to the UpdateCACertificate operation.
      # @note When making an API call, pass UpdateCACertificateRequest
      #   data as a hash:
      #
      #       {
      #         certificate_id: "CertificateId", # required
      #         new_status: "ACTIVE", # accepts ACTIVE, INACTIVE
      #         new_auto_registration_status: "ENABLE", # accepts ENABLE, DISABLE
      #       }
      class UpdateCACertificateRequest < Aws::Structure.new(
        :certificate_id,
        :new_status,
        :new_auto_registration_status)

        # @!attribute [rw] certificate_id
        #   The CA certificate identifier.
        #   @return [String]

        # @!attribute [rw] new_status
        #   The updated status of the CA certificate.
        #
        #   **Note:** The status value REGISTER\_INACTIVE is deprecated and
        #   should not be used.
        #   @return [String]

        # @!attribute [rw] new_auto_registration_status
        #   The new value for the auto registration status. Valid values are:
        #   \"ENABLE\" or \"DISABLE\".
        #   @return [String]

      end

      # The input for the UpdateCertificate operation.
      # @note When making an API call, pass UpdateCertificateRequest
      #   data as a hash:
      #
      #       {
      #         certificate_id: "CertificateId", # required
      #         new_status: "ACTIVE", # required, accepts ACTIVE, INACTIVE, REVOKED, PENDING_TRANSFER, REGISTER_INACTIVE, PENDING_ACTIVATION
      #       }
      class UpdateCertificateRequest < Aws::Structure.new(
        :certificate_id,
        :new_status)

        # @!attribute [rw] certificate_id
        #   The ID of the certificate.
        #   @return [String]

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

      end

      # The input for the UpdateThing operation.
      # @note When making an API call, pass UpdateThingRequest
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
      class UpdateThingRequest < Aws::Structure.new(
        :thing_name,
        :thing_type_name,
        :attribute_payload,
        :expected_version,
        :remove_thing_type)

        # @!attribute [rw] thing_name
        #   The name of the thing to update.
        #   @return [String]

        # @!attribute [rw] thing_type_name
        #   The name of the thing type.
        #   @return [String]

        # @!attribute [rw] attribute_payload
        #   A list of thing attributes, a JSON string containing name-value
        #   pairs. For example:
        #
        #   `\{\"attributes\":\{\"name1\":\"value2\"\}\})`
        #
        #   This data is used to add new attributes or update existing
        #   attributes.
        #   @return [Types::AttributePayload]

        # @!attribute [rw] expected_version
        #   The expected version of the thing record in the registry. If the
        #   version of the record in the registry does not match the expected
        #   version specified in the request, the `UpdateThing` request is
        #   rejected with a `VersionConflictException`.
        #   @return [Integer]

        # @!attribute [rw] remove_thing_type
        #   Remove a thing type association. If **true**, the assocation is
        #   removed.
        #   @return [Boolean]

      end

      # The output from the UpdateThing operation.
      class UpdateThingResponse < Aws::EmptyStructure; end

    end
  end
end
