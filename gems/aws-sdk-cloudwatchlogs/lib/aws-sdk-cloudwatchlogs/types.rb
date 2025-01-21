# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatchLogs
  module Types

    # You don't have sufficient permissions to perform this action.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Aws::EmptyStructure; end

    # A structure that contains information about one CloudWatch Logs
    # account policy.
    #
    # @!attribute [rw] policy_name
    #   The name of the account policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The policy document for this account policy.
    #
    #   The JSON specified in `policyDocument` can be up to 30,720
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time that this policy was most recently updated.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_type
    #   The type of policy for this account policy.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   The scope of the account policy.
    #   @return [String]
    #
    # @!attribute [rw] selection_criteria
    #   The log group selection criteria that is used for this policy.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID that the policy applies to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/AccountPolicy AWS API Documentation
    #
    class AccountPolicy < Struct.new(
      :policy_name,
      :policy_document,
      :last_updated_time,
      :policy_type,
      :scope,
      :selection_criteria,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # This object defines one key that will be added with the [ addKeys][1]
    # processor.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-addKey
    #
    # @!attribute [rw] key
    #   The key of the new entry to be added to the log event
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the new entry to be added to the log event
    #   @return [String]
    #
    # @!attribute [rw] overwrite_if_exists
    #   Specifies whether to overwrite the value if the key already exists
    #   in the log event. If you omit this, the default is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/AddKeyEntry AWS API Documentation
    #
    class AddKeyEntry < Struct.new(
      :key,
      :value,
      :overwrite_if_exists)
      SENSITIVE = []
      include Aws::Structure
    end

    # This processor adds new key-value pairs to the log event.
    #
    # For more information about this processor including examples, see [
    # addKeys][1] in the *CloudWatch Logs User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-addKeys
    #
    # @!attribute [rw] entries
    #   An array of objects, where each object contains the information
    #   about one key to add to the log event.
    #   @return [Array<Types::AddKeyEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/AddKeys AWS API Documentation
    #
    class AddKeys < Struct.new(
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure represents one anomaly that has been found by a logs
    # anomaly detector.
    #
    # For more information about patterns and anomalies, see
    # [CreateLogAnomalyDetector][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateLogAnomalyDetector.html
    #
    # @!attribute [rw] anomaly_id
    #   The unique ID that CloudWatch Logs assigned to this anomaly.
    #   @return [String]
    #
    # @!attribute [rw] pattern_id
    #   The ID of the pattern used to help identify this anomaly.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the anomaly detector that identified this anomaly.
    #   @return [String]
    #
    # @!attribute [rw] pattern_string
    #   The pattern used to help identify this anomaly, in string format.
    #   @return [String]
    #
    # @!attribute [rw] pattern_regex
    #   The pattern used to help identify this anomaly, in regular
    #   expression format.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority level of this anomaly, as determined by CloudWatch
    #   Logs. Priority is computed based on log severity labels such as
    #   `FATAL` and `ERROR` and the amount of deviation from the baseline.
    #   Possible values are `HIGH`, `MEDIUM`, and `LOW`.
    #   @return [String]
    #
    # @!attribute [rw] first_seen
    #   The date and time when the anomaly detector first saw this anomaly.
    #   It is specified as epoch time, which is the number of seconds since
    #   `January 1, 1970, 00:00:00 UTC`.
    #   @return [Integer]
    #
    # @!attribute [rw] last_seen
    #   The date and time when the anomaly detector most recently saw this
    #   anomaly. It is specified as epoch time, which is the number of
    #   seconds since `January 1, 1970, 00:00:00 UTC`.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A human-readable description of the anomaly. This description is
    #   generated by CloudWatch Logs.
    #   @return [String]
    #
    # @!attribute [rw] active
    #   Specifies whether this anomaly is still ongoing.
    #   @return [Boolean]
    #
    # @!attribute [rw] state
    #   Indicates the current state of this anomaly. If it is still being
    #   treated as an anomaly, the value is `Active`. If you have suppressed
    #   this anomaly by using the [UpdateAnomaly][1] operation, the value is
    #   `Suppressed`. If this behavior is now considered to be normal, the
    #   value is `Baseline`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateAnomaly.html
    #   @return [String]
    #
    # @!attribute [rw] histogram
    #   A map showing times when the anomaly detector ran, and the number of
    #   occurrences of this anomaly that were detected at each of those
    #   runs. The times are specified in epoch time, which is the number of
    #   seconds since `January 1, 1970, 00:00:00 UTC`.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] log_samples
    #   An array of sample log event messages that are considered to be part
    #   of this anomaly.
    #   @return [Array<Types::LogEvent>]
    #
    # @!attribute [rw] pattern_tokens
    #   An array of structures where each structure contains information
    #   about one token that makes up the pattern.
    #   @return [Array<Types::PatternToken>]
    #
    # @!attribute [rw] log_group_arn_list
    #   An array of ARNS of the log groups that contained log events
    #   considered to be part of this anomaly.
    #   @return [Array<String>]
    #
    # @!attribute [rw] suppressed
    #   Indicates whether this anomaly is currently suppressed. To suppress
    #   an anomaly, use [UpdateAnomaly][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateAnomaly.html
    #   @return [Boolean]
    #
    # @!attribute [rw] suppressed_date
    #   If the anomaly is suppressed, this indicates when it was suppressed.
    #   @return [Integer]
    #
    # @!attribute [rw] suppressed_until
    #   If the anomaly is suppressed, this indicates when the suppression
    #   will end. If this value is `0`, the anomaly was suppressed with no
    #   expiration, with the `INFINITE` value.
    #   @return [Integer]
    #
    # @!attribute [rw] is_pattern_level_suppression
    #   If this anomaly is suppressed, this field is `true` if the
    #   suppression is because the pattern is suppressed. If `false`, then
    #   only this particular anomaly is suppressed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/Anomaly AWS API Documentation
    #
    class Anomaly < Struct.new(
      :anomaly_id,
      :pattern_id,
      :anomaly_detector_arn,
      :pattern_string,
      :pattern_regex,
      :priority,
      :first_seen,
      :last_seen,
      :description,
      :active,
      :state,
      :histogram,
      :log_samples,
      :pattern_tokens,
      :log_group_arn_list,
      :suppressed,
      :suppressed_date,
      :suppressed_until,
      :is_pattern_level_suppression)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about one anomaly detector in the account.
    #
    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the anomaly detector.
    #   @return [String]
    #
    # @!attribute [rw] detector_name
    #   The name of the anomaly detector.
    #   @return [String]
    #
    # @!attribute [rw] log_group_arn_list
    #   A list of the ARNs of the log groups that this anomaly detector
    #   watches.
    #   @return [Array<String>]
    #
    # @!attribute [rw] evaluation_frequency
    #   Specifies how often the anomaly detector runs and look for
    #   anomalies.
    #   @return [String]
    #
    # @!attribute [rw] filter_pattern
    #   A symbolic description of how CloudWatch Logs should interpret the
    #   data in each log event. For example, a log event can contain
    #   timestamps, IP addresses, strings, and so on. You use the filter
    #   pattern to specify what to look for in the log event message.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_detector_status
    #   Specifies the current status of the anomaly detector. To pause an
    #   anomaly detector, use the `enabled` parameter in the
    #   [UpdateLogAnomalyDetector][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateLogAnomalyDetector.html
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key assigned to this anomaly detector, if any.
    #   @return [String]
    #
    # @!attribute [rw] creation_time_stamp
    #   The date and time when this anomaly detector was created.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_time_stamp
    #   The date and time when this anomaly detector was most recently
    #   modified.
    #   @return [Integer]
    #
    # @!attribute [rw] anomaly_visibility_time
    #   The number of days used as the life cycle of anomalies. After this
    #   time, anomalies are automatically baselined and the anomaly detector
    #   model will treat new occurrences of similar event as normal.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/AnomalyDetector AWS API Documentation
    #
    class AnomalyDetector < Struct.new(
      :anomaly_detector_arn,
      :detector_name,
      :log_group_arn_list,
      :evaluation_frequency,
      :filter_pattern,
      :anomaly_detector_status,
      :kms_key_id,
      :creation_time_stamp,
      :last_modified_time_stamp,
      :anomaly_visibility_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #
    #   In your `AssociateKmsKey` operation, you must specify either the
    #   `resourceIdentifier` parameter or the `logGroup` parameter, but you
    #   can't specify both.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) of the KMS key to use when encrypting
    #   log data. This must be a symmetric KMS key. For more information,
    #   see [Amazon Resource Names][1] and [Using Symmetric and Asymmetric
    #   Keys][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   Specifies the target for this operation. You must specify one of the
    #   following:
    #
    #   * Specify the following ARN to have future [GetQueryResults][1]
    #     operations in this account encrypt the results with the specified
    #     KMS key. Replace *REGION* and *ACCOUNT\_ID* with your Region and
    #     account ID.
    #
    #     `arn:aws:logs:REGION:ACCOUNT_ID:query-result:*`
    #
    #   * Specify the ARN of a log group to have CloudWatch Logs use the KMS
    #     key to encrypt log events that are ingested and stored by that log
    #     group. The log group ARN must be in the following format. Replace
    #     *REGION* and *ACCOUNT\_ID* with your Region and account ID.
    #
    #     `arn:aws:logs:REGION:ACCOUNT_ID:log-group:LOG_GROUP_NAME `
    #
    #   In your `AssociateKmsKey` operation, you must specify either the
    #   `resourceIdentifier` parameter or the `logGroup` parameter, but you
    #   can't specify both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetQueryResults.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/AssociateKmsKeyRequest AWS API Documentation
    #
    class AssociateKmsKeyRequest < Struct.new(
      :log_group_name,
      :kms_key_id,
      :resource_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `CSV` processor parses comma-separated values (CSV) from the log
    # events into columns.
    #
    # For more information about this processor including examples, see [
    # csv][1] in the *CloudWatch Logs User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-csv
    #
    # @!attribute [rw] quote_character
    #   The character used used as a text qualifier for a single column of
    #   data. If you omit this, the double quotation mark `"` character is
    #   used.
    #   @return [String]
    #
    # @!attribute [rw] delimiter
    #   The character used to separate each column in the original
    #   comma-separated value log event. If you omit this, the processor
    #   looks for the comma `,` character as the delimiter.
    #   @return [String]
    #
    # @!attribute [rw] columns
    #   An array of names to use for the columns in the transformed log
    #   event.
    #
    #   If you omit this, default column names (`[column_1, column_2 ...]`)
    #   are used.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source
    #   The path to the field in the log event that has the comma separated
    #   values to be parsed. If you omit this value, the whole log message
    #   is processed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CSV AWS API Documentation
    #
    class CSV < Struct.new(
      :quote_character,
      :delimiter,
      :columns,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The ID of the export task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CancelExportTaskRequest AWS API Documentation
    #
    class CancelExportTaskRequest < Struct.new(
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing information about the deafult settings and
    # available settings that you can use to configure a [delivery][1] or a
    # [delivery destination][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_Delivery.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DeliveryDestination.html
    #
    # @!attribute [rw] service
    #   A string specifying which service this configuration template
    #   applies to. For more information about supported services see
    #   [Enable logging from Amazon Web Services services.][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html
    #   @return [String]
    #
    # @!attribute [rw] log_type
    #   A string specifying which log type this configuration template
    #   applies to.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   A string specifying which resource type this configuration template
    #   applies to.
    #   @return [String]
    #
    # @!attribute [rw] delivery_destination_type
    #   A string specifying which destination type this configuration
    #   template applies to.
    #   @return [String]
    #
    # @!attribute [rw] default_delivery_config_values
    #   A mapping that displays the default value of each property within a
    #   delivery's configuration, if it is not specified in the request.
    #   @return [Types::ConfigurationTemplateDeliveryConfigValues]
    #
    # @!attribute [rw] allowed_fields
    #   The allowed fields that a caller can use in the `recordFields`
    #   parameter of a [CreateDelivery][1] or
    #   [UpdateDeliveryConfiguration][2] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateDeliveryConfiguration.html
    #   @return [Array<Types::RecordField>]
    #
    # @!attribute [rw] allowed_output_formats
    #   The list of delivery destination output formats that are supported
    #   by this log source.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_action_for_allow_vended_logs_delivery_for_resource
    #   The action permissions that a caller needs to have to be able to
    #   successfully create a delivery source on the desired resource type
    #   when calling [PutDeliverySource][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html
    #   @return [String]
    #
    # @!attribute [rw] allowed_field_delimiters
    #   The valid values that a caller can use as field delimiters when
    #   calling [CreateDelivery][1] or [UpdateDeliveryConfiguration][2] on a
    #   delivery that delivers in `Plain`, `W3C`, or `Raw` format.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateDeliveryConfiguration.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_suffix_path_fields
    #   The list of variable fields that can be used in the suffix path of a
    #   delivery that delivers to an S3 bucket.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ConfigurationTemplate AWS API Documentation
    #
    class ConfigurationTemplate < Struct.new(
      :service,
      :log_type,
      :resource_type,
      :delivery_destination_type,
      :default_delivery_config_values,
      :allowed_fields,
      :allowed_output_formats,
      :allowed_action_for_allow_vended_logs_delivery_for_resource,
      :allowed_field_delimiters,
      :allowed_suffix_path_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains the default values that are used for each
    # configuration parameter when you use [CreateDelivery][1] to create a
    # deliver under the current service type, resource type, and log type.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html
    #
    # @!attribute [rw] record_fields
    #   The default record fields that will be delivered when a list of
    #   record fields is not provided in a [CreateDelivery][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] field_delimiter
    #   The default field delimiter that is used in a [CreateDelivery][1]
    #   operation when the field delimiter is not specified in that
    #   operation. The field delimiter is used only when the final output
    #   delivery is in `Plain`, `W3C`, or `Raw` format.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html
    #   @return [String]
    #
    # @!attribute [rw] s3_delivery_configuration
    #   The delivery parameters that are used when you create a delivery to
    #   a delivery destination that is an S3 Bucket.
    #   @return [Types::S3DeliveryConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ConfigurationTemplateDeliveryConfigValues AWS API Documentation
    #
    class ConfigurationTemplateDeliveryConfigValues < Struct.new(
      :record_fields,
      :field_delimiter,
      :s3_delivery_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # This operation attempted to create a resource that already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ConflictException AWS API Documentation
    #
    class ConflictException < Aws::EmptyStructure; end

    # This processor copies values within a log event. You can also use this
    # processor to add metadata to log events by copying the values of the
    # following metadata keys into the log events: `@logGroupName`,
    # `@logGroupStream`, `@accountId`, `@regionName`.
    #
    # For more information about this processor including examples, see [
    # copyValue][1] in the *CloudWatch Logs User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-copyValue
    #
    # @!attribute [rw] entries
    #   An array of `CopyValueEntry` objects, where each object contains the
    #   information about one field value to copy.
    #   @return [Array<Types::CopyValueEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CopyValue AWS API Documentation
    #
    class CopyValue < Struct.new(
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # This object defines one value to be copied with the [ copyValue][1]
    # processor.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-copoyValue
    #
    # @!attribute [rw] source
    #   The key to copy.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The key of the field to copy the value to.
    #   @return [String]
    #
    # @!attribute [rw] overwrite_if_exists
    #   Specifies whether to overwrite the value if the destination key
    #   already exists. If you omit this, the default is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CopyValueEntry AWS API Documentation
    #
    class CopyValueEntry < Struct.new(
      :source,
      :target,
      :overwrite_if_exists)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_source_name
    #   The name of the delivery source to use for this delivery.
    #   @return [String]
    #
    # @!attribute [rw] delivery_destination_arn
    #   The ARN of the delivery destination to use for this delivery.
    #   @return [String]
    #
    # @!attribute [rw] record_fields
    #   The list of record fields to be delivered to the destination, in
    #   order. If the delivery's log source has mandatory fields, they must
    #   be included in this list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] field_delimiter
    #   The field delimiter to use between record fields when the final
    #   output format of a delivery is in `Plain`, `W3C`, or `Raw` format.
    #   @return [String]
    #
    # @!attribute [rw] s3_delivery_configuration
    #   This structure contains parameters that are valid only when the
    #   delivery's delivery destination is an S3 bucket.
    #   @return [Types::S3DeliveryConfiguration]
    #
    # @!attribute [rw] tags
    #   An optional list of key-value pairs to associate with the resource.
    #
    #   For more information about tagging, see [Tagging Amazon Web Services
    #   resources][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateDeliveryRequest AWS API Documentation
    #
    class CreateDeliveryRequest < Struct.new(
      :delivery_source_name,
      :delivery_destination_arn,
      :record_fields,
      :field_delimiter,
      :s3_delivery_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery
    #   A structure that contains information about the delivery that you
    #   just created.
    #   @return [Types::Delivery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateDeliveryResponse AWS API Documentation
    #
    class CreateDeliveryResponse < Struct.new(
      :delivery)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_name
    #   The name of the export task.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name_prefix
    #   Export only log streams that match the provided prefix. If you
    #   don't specify a value, no prefix filter is applied.
    #   @return [String]
    #
    # @!attribute [rw] from
    #   The start time of the range for the request, expressed as the number
    #   of milliseconds after `Jan 1, 1970 00:00:00 UTC`. Events with a
    #   timestamp earlier than this time are not exported.
    #   @return [Integer]
    #
    # @!attribute [rw] to
    #   The end time of the range for the request, expressed as the number
    #   of milliseconds after `Jan 1, 1970 00:00:00 UTC`. Events with a
    #   timestamp later than this time are not exported.
    #
    #   You must specify a time that is not earlier than when this log group
    #   was created.
    #   @return [Integer]
    #
    # @!attribute [rw] destination
    #   The name of S3 bucket for the exported log data. The bucket must be
    #   in the same Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] destination_prefix
    #   The prefix used as the start of the key for every object exported.
    #   If you don't specify a value, the default is `exportedlogs`.
    #
    #   The length of this parameter must comply with the S3 object key name
    #   length limits. The object key name is a sequence of Unicode
    #   characters with UTF-8 encoding, and can be up to 1,024 bytes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateExportTaskRequest AWS API Documentation
    #
    class CreateExportTaskRequest < Struct.new(
      :task_name,
      :log_group_name,
      :log_stream_name_prefix,
      :from,
      :to,
      :destination,
      :destination_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The ID of the export task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateExportTaskResponse AWS API Documentation
    #
    class CreateExportTaskResponse < Struct.new(
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_arn_list
    #   An array containing the ARN of the log group that this anomaly
    #   detector will watch. You can specify only one log group ARN.
    #   @return [Array<String>]
    #
    # @!attribute [rw] detector_name
    #   A name for this anomaly detector.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_frequency
    #   Specifies how often the anomaly detector is to run and look for
    #   anomalies. Set this value according to the frequency that the log
    #   group receives new logs. For example, if the log group receives new
    #   log events every 10 minutes, then 15 minutes might be a good setting
    #   for `evaluationFrequency` .
    #   @return [String]
    #
    # @!attribute [rw] filter_pattern
    #   You can use this parameter to limit the anomaly detection model to
    #   examine only log events that match the pattern you specify here. For
    #   more information, see [Filter and Pattern Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   Optionally assigns a KMS key to secure this anomaly detector and its
    #   findings. If a key is assigned, the anomalies found and the model
    #   used by this detector are encrypted at rest with the key. If a key
    #   is assigned to an anomaly detector, a user must have permissions for
    #   both this key and for the anomaly detector to retrieve information
    #   about the anomalies that it finds.
    #
    #   For more information about using a KMS key and to see the required
    #   IAM policy, see [Use a KMS key with an anomaly detector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/LogsAnomalyDetection-KMS.html
    #   @return [String]
    #
    # @!attribute [rw] anomaly_visibility_time
    #   The number of days to have visibility on an anomaly. After this time
    #   period has elapsed for an anomaly, it will be automatically
    #   baselined and the anomaly detector will treat new occurrences of a
    #   similar anomaly as normal. Therefore, if you do not correct the
    #   cause of an anomaly during the time period specified in
    #   `anomalyVisibilityTime`, it will be considered normal going forward
    #   and will not be detected as an anomaly.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   An optional list of key-value pairs to associate with the resource.
    #
    #   For more information about tagging, see [Tagging Amazon Web Services
    #   resources][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateLogAnomalyDetectorRequest AWS API Documentation
    #
    class CreateLogAnomalyDetectorRequest < Struct.new(
      :log_group_arn_list,
      :detector_name,
      :evaluation_frequency,
      :filter_pattern,
      :kms_key_id,
      :anomaly_visibility_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the log anomaly detector that you just created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateLogAnomalyDetectorResponse AWS API Documentation
    #
    class CreateLogAnomalyDetectorResponse < Struct.new(
      :anomaly_detector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   A name for the log group.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) of the KMS key to use when encrypting
    #   log data. For more information, see [Amazon Resource Names][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to use for the tags.
    #
    #   You can grant users access to certain log groups while preventing
    #   them from accessing other log groups. To do so, tag your groups and
    #   use IAM policies that refer to those tags. To assign tags when you
    #   create a log group, you must have either the `logs:TagResource` or
    #   `logs:TagLogGroup` permission. For more information about tagging,
    #   see [Tagging Amazon Web Services resources][1]. For more information
    #   about using tags to control access, see [Controlling access to
    #   Amazon Web Services resources using tags][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] log_group_class
    #   Use this parameter to specify the log group class for this log
    #   group. There are two classes:
    #
    #   * The `Standard` log class supports all CloudWatch Logs features.
    #
    #   * The `Infrequent Access` log class supports a subset of CloudWatch
    #     Logs features and incurs lower costs.
    #
    #   If you omit this parameter, the default of `STANDARD` is used.
    #
    #   The value of `logGroupClass` can't be changed after a log group is
    #   created.
    #
    #   For details about the features supported by each class, see [Log
    #   classes][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateLogGroupRequest AWS API Documentation
    #
    class CreateLogGroupRequest < Struct.new(
      :log_group_name,
      :kms_key_id,
      :tags,
      :log_group_class)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name
    #   The name of the log stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateLogStreamRequest AWS API Documentation
    #
    class CreateLogStreamRequest < Struct.new(
      :log_group_name,
      :log_stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The event was already logged.
    #
    # `PutLogEvents` actions are now always accepted and never return
    # `DataAlreadyAcceptedException` regardless of whether a given batch of
    # log events has already been accepted.
    #
    # @!attribute [rw] expected_sequence_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DataAlreadyAcceptedException AWS API Documentation
    #
    class DataAlreadyAcceptedException < Struct.new(
      :expected_sequence_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # This processor converts a datetime string into a format that you
    # specify.
    #
    # For more information about this processor including examples, see [
    # datetimeConverter][1] in the *CloudWatch Logs User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-datetimeConverter
    #
    # @!attribute [rw] source
    #   The key to apply the date conversion to.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The JSON field to store the result in.
    #   @return [String]
    #
    # @!attribute [rw] target_format
    #   The datetime format to use for the converted data in the target
    #   field.
    #
    #   If you omit this, the default of ` yyyy-MM-dd'T'HH:mm:ss.SSS'Z` is
    #   used.
    #   @return [String]
    #
    # @!attribute [rw] match_patterns
    #   A list of patterns to match against the `source` field.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_timezone
    #   The time zone of the source field. If you omit this, the default
    #   used is the UTC zone.
    #   @return [String]
    #
    # @!attribute [rw] target_timezone
    #   The time zone of the target field. If you omit this, the default
    #   used is the UTC zone.
    #   @return [String]
    #
    # @!attribute [rw] locale
    #   The locale of the source field. If you omit this, the default of
    #   `locale.ROOT` is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DateTimeConverter AWS API Documentation
    #
    class DateTimeConverter < Struct.new(
      :source,
      :target,
      :target_format,
      :match_patterns,
      :source_timezone,
      :target_timezone,
      :locale)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_name
    #   The name of the policy to delete.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The type of policy to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteAccountPolicyRequest AWS API Documentation
    #
    class DeleteAccountPolicyRequest < Struct.new(
      :policy_name,
      :policy_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_identifier
    #   The name or ARN of the log group that you want to delete the data
    #   protection policy for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteDataProtectionPolicyRequest AWS API Documentation
    #
    class DeleteDataProtectionPolicyRequest < Struct.new(
      :log_group_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_destination_name
    #   The name of the delivery destination that you want to delete the
    #   policy for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteDeliveryDestinationPolicyRequest AWS API Documentation
    #
    class DeleteDeliveryDestinationPolicyRequest < Struct.new(
      :delivery_destination_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the delivery destination that you want to delete. You
    #   can find a list of delivery destionation names by using the
    #   [DescribeDeliveryDestinations][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveryDestinations.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteDeliveryDestinationRequest AWS API Documentation
    #
    class DeleteDeliveryDestinationRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique ID of the delivery to delete. You can find the ID of a
    #   delivery with the [DescribeDeliveries][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveries.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteDeliveryRequest AWS API Documentation
    #
    class DeleteDeliveryRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the delivery source that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteDeliverySourceRequest AWS API Documentation
    #
    class DeleteDeliverySourceRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_name
    #   The name of the destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteDestinationRequest AWS API Documentation
    #
    class DeleteDestinationRequest < Struct.new(
      :destination_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_identifier
    #   The log group to delete the index policy for. You can specify either
    #   the name or the ARN of the log group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteIndexPolicyRequest AWS API Documentation
    #
    class DeleteIndexPolicyRequest < Struct.new(
      :log_group_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteIndexPolicyResponse AWS API Documentation
    #
    class DeleteIndexPolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] integration_name
    #   The name of the integration to delete. To find the name of your
    #   integration, use [ListIntegrations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListIntegrations.html
    #   @return [String]
    #
    # @!attribute [rw] force
    #   Specify `true` to force the deletion of the integration even if
    #   vended logs dashboards currently exist.
    #
    #   The default is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteIntegrationRequest AWS API Documentation
    #
    class DeleteIntegrationRequest < Struct.new(
      :integration_name,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteIntegrationResponse AWS API Documentation
    #
    class DeleteIntegrationResponse < Aws::EmptyStructure; end

    # This processor deletes entries from a log event. These entries are
    # key-value pairs.
    #
    # For more information about this processor including examples, see [
    # deleteKeys][1] in the *CloudWatch Logs User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-deleteKeys
    #
    # @!attribute [rw] with_keys
    #   The list of keys to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteKeys AWS API Documentation
    #
    class DeleteKeys < Struct.new(
      :with_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the anomaly detector to delete. You can find the ARNs of
    #   log anomaly detectors in your account by using the
    #   [ListLogAnomalyDetectors][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListLogAnomalyDetectors.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteLogAnomalyDetectorRequest AWS API Documentation
    #
    class DeleteLogAnomalyDetectorRequest < Struct.new(
      :anomaly_detector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteLogGroupRequest AWS API Documentation
    #
    class DeleteLogGroupRequest < Struct.new(
      :log_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name
    #   The name of the log stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteLogStreamRequest AWS API Documentation
    #
    class DeleteLogStreamRequest < Struct.new(
      :log_group_name,
      :log_stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] filter_name
    #   The name of the metric filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteMetricFilterRequest AWS API Documentation
    #
    class DeleteMetricFilterRequest < Struct.new(
      :log_group_name,
      :filter_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_definition_id
    #   The ID of the query definition that you want to delete. You can use
    #   [DescribeQueryDefinitions][1] to retrieve the IDs of your saved
    #   query definitions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteQueryDefinitionRequest AWS API Documentation
    #
    class DeleteQueryDefinitionRequest < Struct.new(
      :query_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] success
    #   A value of TRUE indicates that the operation succeeded. FALSE
    #   indicates that the operation failed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteQueryDefinitionResponse AWS API Documentation
    #
    class DeleteQueryDefinitionResponse < Struct.new(
      :success)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_name
    #   The name of the policy to be revoked. This parameter is required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteRetentionPolicyRequest AWS API Documentation
    #
    class DeleteRetentionPolicyRequest < Struct.new(
      :log_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] filter_name
    #   The name of the subscription filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteSubscriptionFilterRequest AWS API Documentation
    #
    class DeleteSubscriptionFilterRequest < Struct.new(
      :log_group_name,
      :filter_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_identifier
    #   Specify either the name or ARN of the log group to delete the
    #   transformer for. If the log group is in a source account and you are
    #   using a monitoring account, you must use the log group ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteTransformerRequest AWS API Documentation
    #
    class DeleteTransformerRequest < Struct.new(
      :log_group_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about one *delivery* in your
    # account.
    #
    # A delivery is a connection between a logical *delivery source* and a
    # logical *delivery destination*.
    #
    # For more information, see [CreateDelivery][1].
    #
    # To update an existing delivery configuration, use
    # [UpdateDeliveryConfiguration][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateDeliveryConfiguration.html
    #
    # @!attribute [rw] id
    #   The unique ID that identifies this delivery in your account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that uniquely identifies this
    #   delivery.
    #   @return [String]
    #
    # @!attribute [rw] delivery_source_name
    #   The name of the delivery source that is associated with this
    #   delivery.
    #   @return [String]
    #
    # @!attribute [rw] delivery_destination_arn
    #   The ARN of the delivery destination that is associated with this
    #   delivery.
    #   @return [String]
    #
    # @!attribute [rw] delivery_destination_type
    #   Displays whether the delivery destination associated with this
    #   delivery is CloudWatch Logs, Amazon S3, or Firehose.
    #   @return [String]
    #
    # @!attribute [rw] record_fields
    #   The record fields used in this delivery.
    #   @return [Array<String>]
    #
    # @!attribute [rw] field_delimiter
    #   The field delimiter that is used between record fields when the
    #   final output format of a delivery is in `Plain`, `W3C`, or `Raw`
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] s3_delivery_configuration
    #   This structure contains delivery configurations that apply only when
    #   the delivery destination resource is an S3 bucket.
    #   @return [Types::S3DeliveryConfiguration]
    #
    # @!attribute [rw] tags
    #   The tags that have been assigned to this delivery.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/Delivery AWS API Documentation
    #
    class Delivery < Struct.new(
      :id,
      :arn,
      :delivery_source_name,
      :delivery_destination_arn,
      :delivery_destination_type,
      :record_fields,
      :field_delimiter,
      :s3_delivery_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about one *delivery destination*
    # in your account. A delivery destination is an Amazon Web Services
    # resource that represents an Amazon Web Services service that logs can
    # be sent to. CloudWatch Logs, Amazon S3, are supported as Firehose
    # delivery destinations.
    #
    # To configure logs delivery between a supported Amazon Web Services
    # service and a destination, you must do the following:
    #
    # * Create a delivery source, which is a logical object that represents
    #   the resource that is actually sending the logs. For more
    #   information, see [PutDeliverySource][1].
    #
    # * Create a *delivery destination*, which is a logical object that
    #   represents the actual delivery destination.
    #
    # * If you are delivering logs cross-account, you must use
    #   [PutDeliveryDestinationPolicy][2] in the destination account to
    #   assign an IAM policy to the destination. This policy allows delivery
    #   to that destination.
    #
    # * Create a *delivery* by pairing exactly one delivery source and one
    #   delivery destination. For more information, see [CreateDelivery][3].
    #
    # You can configure a single delivery source to send logs to multiple
    # destinations by creating multiple deliveries. You can also create
    # multiple deliveries to configure multiple delivery sources to send
    # logs to the same delivery destination.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html
    #
    # @!attribute [rw] name
    #   The name of this delivery destination.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that uniquely identifies this
    #   delivery destination.
    #   @return [String]
    #
    # @!attribute [rw] delivery_destination_type
    #   Displays whether this delivery destination is CloudWatch Logs,
    #   Amazon S3, or Firehose.
    #   @return [String]
    #
    # @!attribute [rw] output_format
    #   The format of the logs that are sent to this delivery destination.
    #   @return [String]
    #
    # @!attribute [rw] delivery_destination_configuration
    #   A structure that contains the ARN of the Amazon Web Services
    #   resource that will receive the logs.
    #   @return [Types::DeliveryDestinationConfiguration]
    #
    # @!attribute [rw] tags
    #   The tags that have been assigned to this delivery destination.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeliveryDestination AWS API Documentation
    #
    class DeliveryDestination < Struct.new(
      :name,
      :arn,
      :delivery_destination_type,
      :output_format,
      :delivery_destination_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about one logs delivery
    # destination.
    #
    # @!attribute [rw] destination_resource_arn
    #   The ARN of the Amazon Web Services destination that this delivery
    #   destination represents. That Amazon Web Services destination can be
    #   a log group in CloudWatch Logs, an Amazon S3 bucket, or a delivery
    #   stream in Firehose.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeliveryDestinationConfiguration AWS API Documentation
    #
    class DeliveryDestinationConfiguration < Struct.new(
      :destination_resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about one *delivery source* in
    # your account. A delivery source is an Amazon Web Services resource
    # that sends logs to an Amazon Web Services destination. The destination
    # can be CloudWatch Logs, Amazon S3, or Firehose.
    #
    # Only some Amazon Web Services services support being configured as a
    # delivery source. These services are listed as **Supported \[V2
    # Permissions\]** in the table at [Enabling logging from Amazon Web
    # Services services.][1]
    #
    # To configure logs delivery between a supported Amazon Web Services
    # service and a destination, you must do the following:
    #
    # * Create a delivery source, which is a logical object that represents
    #   the resource that is actually sending the logs. For more
    #   information, see [PutDeliverySource][2].
    #
    # * Create a *delivery destination*, which is a logical object that
    #   represents the actual delivery destination. For more information,
    #   see [PutDeliveryDestination][3].
    #
    # * If you are delivering logs cross-account, you must use
    #   [PutDeliveryDestinationPolicy][4] in the destination account to
    #   assign an IAM policy to the destination. This policy allows delivery
    #   to that destination.
    #
    # * Create a *delivery* by pairing exactly one delivery source and one
    #   delivery destination. For more information, see [CreateDelivery][5].
    #
    # You can configure a single delivery source to send logs to multiple
    # destinations by creating multiple deliveries. You can also create
    # multiple deliveries to configure multiple delivery sources to send
    # logs to the same delivery destination.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html
    # [4]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html
    # [5]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html
    #
    # @!attribute [rw] name
    #   The unique name of the delivery source.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that uniquely identifies this
    #   delivery source.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   This array contains the ARN of the Amazon Web Services resource that
    #   sends logs and is represented by this delivery source. Currently,
    #   only one ARN can be in the array.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service
    #   The Amazon Web Services service that is sending logs.
    #   @return [String]
    #
    # @!attribute [rw] log_type
    #   The type of log that the source is sending. For valid values for
    #   this parameter, see the documentation for the source service.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that have been assigned to this delivery source.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeliverySource AWS API Documentation
    #
    class DeliverySource < Struct.new(
      :name,
      :arn,
      :resource_arns,
      :service,
      :log_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_type
    #   Use this parameter to limit the returned policies to only the
    #   policies that match the policy type that you specify.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   Use this parameter to limit the returned policies to only the policy
    #   with the name that you specify.
    #   @return [String]
    #
    # @!attribute [rw] account_identifiers
    #   If you are using an account that is set up as a monitoring account
    #   for CloudWatch unified cross-account observability, you can use this
    #   to specify the account ID of a source account. If you do, the
    #   operation returns the account policy for the specified account.
    #   Currently, you can specify only one account ID in this parameter.
    #
    #   If you omit this parameter, only the policy in the current account
    #   is returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeAccountPoliciesRequest AWS API Documentation
    #
    class DescribeAccountPoliciesRequest < Struct.new(
      :policy_type,
      :policy_name,
      :account_identifiers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_policies
    #   An array of structures that contain information about the CloudWatch
    #   Logs account policies that match the specified filters.
    #   @return [Array<Types::AccountPolicy>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. The token
    #   expires after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeAccountPoliciesResponse AWS API Documentation
    #
    class DescribeAccountPoliciesResponse < Struct.new(
      :account_policies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   Use this parameter to filter the response to include only the
    #   configuration templates that apply to the Amazon Web Services
    #   service that you specify here.
    #   @return [String]
    #
    # @!attribute [rw] log_types
    #   Use this parameter to filter the response to include only the
    #   configuration templates that apply to the log types that you specify
    #   here.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_types
    #   Use this parameter to filter the response to include only the
    #   configuration templates that apply to the resource types that you
    #   specify here.
    #   @return [Array<String>]
    #
    # @!attribute [rw] delivery_destination_types
    #   Use this parameter to filter the response to include only the
    #   configuration templates that apply to the delivery destination types
    #   that you specify here.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Use this parameter to limit the number of configuration templates
    #   that are returned in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeConfigurationTemplatesRequest AWS API Documentation
    #
    class DescribeConfigurationTemplatesRequest < Struct.new(
      :service,
      :log_types,
      :resource_types,
      :delivery_destination_types,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_templates
    #   An array of objects, where each object describes one configuration
    #   template that matches the filters that you specified in the request.
    #   @return [Array<Types::ConfigurationTemplate>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeConfigurationTemplatesResponse AWS API Documentation
    #
    class DescribeConfigurationTemplatesResponse < Struct.new(
      :configuration_templates,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Optionally specify the maximum number of deliveries to return in the
    #   response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeDeliveriesRequest AWS API Documentation
    #
    class DescribeDeliveriesRequest < Struct.new(
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deliveries
    #   An array of structures. Each structure contains information about
    #   one delivery in the account.
    #   @return [Array<Types::Delivery>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeDeliveriesResponse AWS API Documentation
    #
    class DescribeDeliveriesResponse < Struct.new(
      :deliveries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Optionally specify the maximum number of delivery destinations to
    #   return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeDeliveryDestinationsRequest AWS API Documentation
    #
    class DescribeDeliveryDestinationsRequest < Struct.new(
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_destinations
    #   An array of structures. Each structure contains information about
    #   one delivery destination in the account.
    #   @return [Array<Types::DeliveryDestination>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeDeliveryDestinationsResponse AWS API Documentation
    #
    class DescribeDeliveryDestinationsResponse < Struct.new(
      :delivery_destinations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Optionally specify the maximum number of delivery sources to return
    #   in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeDeliverySourcesRequest AWS API Documentation
    #
    class DescribeDeliverySourcesRequest < Struct.new(
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_sources
    #   An array of structures. Each structure contains information about
    #   one delivery source in the account.
    #   @return [Array<Types::DeliverySource>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeDeliverySourcesResponse AWS API Documentation
    #
    class DescribeDeliverySourcesResponse < Struct.new(
      :delivery_sources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_name_prefix
    #   The prefix to match. If you don't specify a value, no prefix filter
    #   is applied.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default maximum value of 50 items is used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeDestinationsRequest AWS API Documentation
    #
    class DescribeDestinationsRequest < Struct.new(
      :destination_name_prefix,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destinations
    #   The destinations.
    #   @return [Array<Types::Destination>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeDestinationsResponse AWS API Documentation
    #
    class DescribeDestinationsResponse < Struct.new(
      :destinations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The ID of the export task. Specifying a task ID filters the results
    #   to one or zero export tasks.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code of the export task. Specifying a status code filters
    #   the results to zero or more export tasks.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeExportTasksRequest AWS API Documentation
    #
    class DescribeExportTasksRequest < Struct.new(
      :task_id,
      :status_code,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_tasks
    #   The export tasks.
    #   @return [Array<Types::ExportTask>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeExportTasksResponse AWS API Documentation
    #
    class DescribeExportTasksResponse < Struct.new(
      :export_tasks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_identifiers
    #   An array containing the names or ARNs of the log groups that you
    #   want to retrieve field indexes for.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeFieldIndexesRequest AWS API Documentation
    #
    class DescribeFieldIndexesRequest < Struct.new(
      :log_group_identifiers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] field_indexes
    #   An array containing the field index information.
    #   @return [Array<Types::FieldIndex>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeFieldIndexesResponse AWS API Documentation
    #
    class DescribeFieldIndexesResponse < Struct.new(
      :field_indexes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_identifiers
    #   An array containing the name or ARN of the log group that you want
    #   to retrieve field index policies for.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeIndexPoliciesRequest AWS API Documentation
    #
    class DescribeIndexPoliciesRequest < Struct.new(
      :log_group_identifiers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] index_policies
    #   An array containing the field index policies.
    #   @return [Array<Types::IndexPolicy>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeIndexPoliciesResponse AWS API Documentation
    #
    class DescribeIndexPoliciesResponse < Struct.new(
      :index_policies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_identifiers
    #   When `includeLinkedAccounts` is set to `True`, use this parameter to
    #   specify the list of accounts to search. You can specify as many as
    #   20 account IDs in the array.
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_group_name_prefix
    #   The prefix to match.
    #
    #   <note markdown="1"> `logGroupNamePrefix` and `logGroupNamePattern` are mutually
    #   exclusive. Only one of these parameters can be passed.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] log_group_name_pattern
    #   If you specify a string for this parameter, the operation returns
    #   only log groups that have names that match the string based on a
    #   case-sensitive substring search. For example, if you specify `Foo`,
    #   log groups named `FooBar`, `aws/Foo`, and `GroupFoo` would match,
    #   but `foo`, `F/o/o` and `Froo` would not match.
    #
    #   If you specify `logGroupNamePattern` in your request, then only
    #   `arn`, `creationTime`, and `logGroupName` are included in the
    #   response.
    #
    #   <note markdown="1"> `logGroupNamePattern` and `logGroupNamePrefix` are mutually
    #   exclusive. Only one of these parameters can be passed.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #   @return [Integer]
    #
    # @!attribute [rw] include_linked_accounts
    #   If you are using a monitoring account, set this to `True` to have
    #   the operation return log groups in the accounts listed in
    #   `accountIdentifiers`.
    #
    #   If this parameter is set to `true` and `accountIdentifiers` contains
    #   a null value, the operation returns all log groups in the monitoring
    #   account and all log groups in all source accounts that are linked to
    #   the monitoring account.
    #   @return [Boolean]
    #
    # @!attribute [rw] log_group_class
    #   Specifies the log group class for this log group. There are two
    #   classes:
    #
    #   * The `Standard` log class supports all CloudWatch Logs features.
    #
    #   * The `Infrequent Access` log class supports a subset of CloudWatch
    #     Logs features and incurs lower costs.
    #
    #   For details about the features supported by each class, see [Log
    #   classes][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeLogGroupsRequest AWS API Documentation
    #
    class DescribeLogGroupsRequest < Struct.new(
      :account_identifiers,
      :log_group_name_prefix,
      :log_group_name_pattern,
      :next_token,
      :limit,
      :include_linked_accounts,
      :log_group_class)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_groups
    #   The log groups.
    #
    #   If the `retentionInDays` value is not included for a log group, then
    #   that log group's events do not expire.
    #   @return [Array<Types::LogGroup>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeLogGroupsResponse AWS API Documentation
    #
    class DescribeLogGroupsResponse < Struct.new(
      :log_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] log_group_identifier
    #   Specify either the name or ARN of the log group to view. If the log
    #   group is in a source account and you are using a monitoring account,
    #   you must use the log group ARN.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name_prefix
    #   The prefix to match.
    #
    #   If `orderBy` is `LastEventTime`, you cannot specify this parameter.
    #   @return [String]
    #
    # @!attribute [rw] order_by
    #   If the value is `LogStreamName`, the results are ordered by log
    #   stream name. If the value is `LastEventTime`, the results are
    #   ordered by the event time. The default value is `LogStreamName`.
    #
    #   If you order the results by event time, you cannot specify the
    #   `logStreamNamePrefix` parameter.
    #
    #   `lastEventTimestamp` represents the time of the most recent log
    #   event in the log stream in CloudWatch Logs. This number is expressed
    #   as the number of milliseconds after `Jan 1, 1970 00:00:00 UTC`.
    #   `lastEventTimestamp` updates on an eventual consistency basis. It
    #   typically updates in less than an hour from ingestion, but in rare
    #   situations might take longer.
    #   @return [String]
    #
    # @!attribute [rw] descending
    #   If the value is true, results are returned in descending order. If
    #   the value is to false, results are returned in ascending order. The
    #   default value is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeLogStreamsRequest AWS API Documentation
    #
    class DescribeLogStreamsRequest < Struct.new(
      :log_group_name,
      :log_group_identifier,
      :log_stream_name_prefix,
      :order_by,
      :descending,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_streams
    #   The log streams.
    #   @return [Array<Types::LogStream>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeLogStreamsResponse AWS API Documentation
    #
    class DescribeLogStreamsResponse < Struct.new(
      :log_streams,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] filter_name_prefix
    #   The prefix to match. CloudWatch Logs uses the value that you set
    #   here only if you also include the `logGroupName` parameter in your
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #   @return [Integer]
    #
    # @!attribute [rw] metric_name
    #   Filters results to include only those with the specified metric
    #   name. If you include this parameter in your request, you must also
    #   include the `metricNamespace` parameter.
    #   @return [String]
    #
    # @!attribute [rw] metric_namespace
    #   Filters results to include only those in the specified namespace. If
    #   you include this parameter in your request, you must also include
    #   the `metricName` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeMetricFiltersRequest AWS API Documentation
    #
    class DescribeMetricFiltersRequest < Struct.new(
      :log_group_name,
      :filter_name_prefix,
      :next_token,
      :limit,
      :metric_name,
      :metric_namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_filters
    #   The metric filters.
    #   @return [Array<Types::MetricFilter>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeMetricFiltersResponse AWS API Documentation
    #
    class DescribeMetricFiltersResponse < Struct.new(
      :metric_filters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   Limits the returned queries to only those for the specified log
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Limits the returned queries to only those that have the specified
    #   status. Valid values are `Cancelled`, `Complete`, `Failed`,
    #   `Running`, and `Scheduled`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Limits the number of returned queries to the specified number.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] query_language
    #   Limits the returned queries to only the queries that use the
    #   specified query language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeQueriesRequest AWS API Documentation
    #
    class DescribeQueriesRequest < Struct.new(
      :log_group_name,
      :status,
      :max_results,
      :next_token,
      :query_language)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queries
    #   The list of queries that match the request.
    #   @return [Array<Types::QueryInfo>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeQueriesResponse AWS API Documentation
    #
    class DescribeQueriesResponse < Struct.new(
      :queries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_language
    #   The query language used for this query. For more information about
    #   the query languages that CloudWatch Logs supports, see [Supported
    #   query languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html
    #   @return [String]
    #
    # @!attribute [rw] query_definition_name_prefix
    #   Use this parameter to filter your results to only the query
    #   definitions that have names that start with the prefix you specify.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Limits the number of returned query definitions to the specified
    #   number.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeQueryDefinitionsRequest AWS API Documentation
    #
    class DescribeQueryDefinitionsRequest < Struct.new(
      :query_language,
      :query_definition_name_prefix,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_definitions
    #   The list of query definitions that match your request.
    #   @return [Array<Types::QueryDefinition>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeQueryDefinitionsResponse AWS API Documentation
    #
    class DescribeQueryDefinitionsResponse < Struct.new(
      :query_definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of resource policies to be displayed with one
    #   call of this API.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeResourcePoliciesRequest AWS API Documentation
    #
    class DescribeResourcePoliciesRequest < Struct.new(
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_policies
    #   The resource policies that exist in this account.
    #   @return [Array<Types::ResourcePolicy>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeResourcePoliciesResponse AWS API Documentation
    #
    class DescribeResourcePoliciesResponse < Struct.new(
      :resource_policies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] filter_name_prefix
    #   The prefix to match. If you don't specify a value, no prefix filter
    #   is applied.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeSubscriptionFiltersRequest AWS API Documentation
    #
    class DescribeSubscriptionFiltersRequest < Struct.new(
      :log_group_name,
      :filter_name_prefix,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_filters
    #   The subscription filters.
    #   @return [Array<Types::SubscriptionFilter>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeSubscriptionFiltersResponse AWS API Documentation
    #
    class DescribeSubscriptionFiltersResponse < Struct.new(
      :subscription_filters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a cross-account destination that receives subscription log
    # events.
    #
    # @!attribute [rw] destination_name
    #   The name of the destination.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the physical target where the log
    #   events are delivered (for example, a Kinesis stream).
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   A role for impersonation, used when delivering log events to the
    #   target.
    #   @return [String]
    #
    # @!attribute [rw] access_policy
    #   An IAM policy document that governs which Amazon Web Services
    #   accounts can create subscription filters against this destination.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of this destination.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the destination, expressed as the number of
    #   milliseconds after Jan 1, 1970 00:00:00 UTC.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/Destination AWS API Documentation
    #
    class Destination < Struct.new(
      :destination_name,
      :target_arn,
      :role_arn,
      :access_policy,
      :arn,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #
    #   In your `DisassociateKmsKey` operation, you must specify either the
    #   `resourceIdentifier` parameter or the `logGroup` parameter, but you
    #   can't specify both.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   Specifies the target for this operation. You must specify one of the
    #   following:
    #
    #   * Specify the ARN of a log group to stop having CloudWatch Logs use
    #     the KMS key to encrypt log events that are ingested and stored by
    #     that log group. After you run this operation, CloudWatch Logs
    #     encrypts ingested log events with the default CloudWatch Logs
    #     method. The log group ARN must be in the following format. Replace
    #     *REGION* and *ACCOUNT\_ID* with your Region and account ID.
    #
    #     `arn:aws:logs:REGION:ACCOUNT_ID:log-group:LOG_GROUP_NAME `
    #
    #   * Specify the following ARN to stop using this key to encrypt the
    #     results of future [StartQuery][1] operations in this account.
    #     Replace *REGION* and *ACCOUNT\_ID* with your Region and account
    #     ID.
    #
    #     `arn:aws:logs:REGION:ACCOUNT_ID:query-result:*`
    #
    #   In your `DisssociateKmsKey` operation, you must specify either the
    #   `resourceIdentifier` parameter or the `logGroup` parameter, but you
    #   can't specify both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DisassociateKmsKeyRequest AWS API Documentation
    #
    class DisassociateKmsKeyRequest < Struct.new(
      :log_group_name,
      :resource_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The entity associated with the log events in a `PutLogEvents` call.
    #
    # @!attribute [rw] key_attributes
    #   The attributes of the entity which identify the specific entity, as
    #   a list of key-value pairs. Entities with the same `keyAttributes`
    #   are considered to be the same entity.
    #
    #   There are five allowed attributes (key names): `Type`,
    #   `ResourceType`, `Identifier` `Name`, and `Environment`.
    #
    #   For details about how to use the key attributes, see [How to add
    #   related information to telemetry][1] in the *CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/adding-your-own-related-telemetry.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] attributes
    #   Additional attributes of the entity that are not used to specify the
    #   identity of the entity. A list of key-value pairs.
    #
    #   For details about how to use the attributes, see [How to add related
    #   information to telemetry][1] in the *CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/adding-your-own-related-telemetry.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/Entity AWS API Documentation
    #
    class Entity < Struct.new(
      :key_attributes,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an export task.
    #
    # @!attribute [rw] task_id
    #   The ID of the export task.
    #   @return [String]
    #
    # @!attribute [rw] task_name
    #   The name of the export task.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group from which logs data was exported.
    #   @return [String]
    #
    # @!attribute [rw] from
    #   The start time, expressed as the number of milliseconds after `Jan
    #   1, 1970 00:00:00 UTC`. Events with a timestamp before this time are
    #   not exported.
    #   @return [Integer]
    #
    # @!attribute [rw] to
    #   The end time, expressed as the number of milliseconds after `Jan 1,
    #   1970 00:00:00 UTC`. Events with a timestamp later than this time are
    #   not exported.
    #   @return [Integer]
    #
    # @!attribute [rw] destination
    #   The name of the S3 bucket to which the log data was exported.
    #   @return [String]
    #
    # @!attribute [rw] destination_prefix
    #   The prefix that was used as the start of Amazon S3 key for every
    #   object exported.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the export task.
    #   @return [Types::ExportTaskStatus]
    #
    # @!attribute [rw] execution_info
    #   Execution information about the export task.
    #   @return [Types::ExportTaskExecutionInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ExportTask AWS API Documentation
    #
    class ExportTask < Struct.new(
      :task_id,
      :task_name,
      :log_group_name,
      :from,
      :to,
      :destination,
      :destination_prefix,
      :status,
      :execution_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the status of an export task.
    #
    # @!attribute [rw] creation_time
    #   The creation time of the export task, expressed as the number of
    #   milliseconds after `Jan 1, 1970 00:00:00 UTC`.
    #   @return [Integer]
    #
    # @!attribute [rw] completion_time
    #   The completion time of the export task, expressed as the number of
    #   milliseconds after `Jan 1, 1970 00:00:00 UTC`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ExportTaskExecutionInfo AWS API Documentation
    #
    class ExportTaskExecutionInfo < Struct.new(
      :creation_time,
      :completion_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the status of an export task.
    #
    # @!attribute [rw] code
    #   The status code of the export task.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The status message related to the status code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ExportTaskStatus AWS API Documentation
    #
    class ExportTaskStatus < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure describes one log event field that is used as an index
    # in at least one index policy in this account.
    #
    # @!attribute [rw] log_group_identifier
    #   If this field index appears in an index policy that applies only to
    #   a single log group, the ARN of that log group is displayed here.
    #   @return [String]
    #
    # @!attribute [rw] field_index_name
    #   The string that this field index matches.
    #   @return [String]
    #
    # @!attribute [rw] last_scan_time
    #   The most recent time that CloudWatch Logs scanned ingested log
    #   events to search for this field index to improve the speed of future
    #   CloudWatch Logs Insights queries that search for this field index.
    #   @return [Integer]
    #
    # @!attribute [rw] first_event_time
    #   The time and date of the earliest log event that matches this field
    #   index, after the index policy that contains it was created.
    #   @return [Integer]
    #
    # @!attribute [rw] last_event_time
    #   The time and date of the most recent log event that matches this
    #   field index.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/FieldIndex AWS API Documentation
    #
    class FieldIndex < Struct.new(
      :log_group_identifier,
      :field_index_name,
      :last_scan_time,
      :first_event_time,
      :last_event_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group to search.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] log_group_identifier
    #   Specify either the name or ARN of the log group to view log events
    #   from. If the log group is in a source account and you are using a
    #   monitoring account, you must use the log group ARN.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] log_stream_names
    #   Filters the results to only logs from the log streams in this list.
    #
    #   If you specify a value for both `logStreamNames` and
    #   `logStreamNamePrefix`, the action returns an
    #   `InvalidParameterException` error.
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_stream_name_prefix
    #   Filters the results to include only events from log streams that
    #   have names starting with this prefix.
    #
    #   If you specify a value for both `logStreamNamePrefix` and
    #   `logStreamNames`, the action returns an `InvalidParameterException`
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start of the time range, expressed as the number of milliseconds
    #   after `Jan 1, 1970 00:00:00 UTC`. Events with a timestamp before
    #   this time are not returned.
    #   @return [Integer]
    #
    # @!attribute [rw] end_time
    #   The end of the time range, expressed as the number of milliseconds
    #   after `Jan 1, 1970 00:00:00 UTC`. Events with a timestamp later than
    #   this time are not returned.
    #   @return [Integer]
    #
    # @!attribute [rw] filter_pattern
    #   The filter pattern to use. For more information, see [Filter and
    #   Pattern Syntax][1].
    #
    #   If not provided, all the events are matched.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of events to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of events to return. The default is 10,000
    #   events.
    #   @return [Integer]
    #
    # @!attribute [rw] interleaved
    #   If the value is true, the operation attempts to provide responses
    #   that contain events from multiple log streams within the log group,
    #   interleaved in a single response. If the value is false, all the
    #   matched log events in the first log stream are searched first, then
    #   those in the next log stream, and so on.
    #
    #   **Important** As of June 17, 2019, this parameter is ignored and the
    #   value is assumed to be true. The response from this operation always
    #   interleaves events from multiple log streams within a log group.
    #   @return [Boolean]
    #
    # @!attribute [rw] unmask
    #   Specify `true` to display the log event fields with all sensitive
    #   data unmasked and visible. The default is `false`.
    #
    #   To use this operation with this parameter, you must be signed into
    #   an account with the `logs:Unmask` permission.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/FilterLogEventsRequest AWS API Documentation
    #
    class FilterLogEventsRequest < Struct.new(
      :log_group_name,
      :log_group_identifier,
      :log_stream_names,
      :log_stream_name_prefix,
      :start_time,
      :end_time,
      :filter_pattern,
      :next_token,
      :limit,
      :interleaved,
      :unmask)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   The matched events.
    #   @return [Array<Types::FilteredLogEvent>]
    #
    # @!attribute [rw] searched_log_streams
    #   **Important** As of May 15, 2020, this parameter is no longer
    #   supported. This parameter returns an empty list.
    #
    #   Indicates which log streams have been searched and whether each has
    #   been searched completely.
    #   @return [Array<Types::SearchedLogStream>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. The token
    #   expires after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/FilterLogEventsResponse AWS API Documentation
    #
    class FilterLogEventsResponse < Struct.new(
      :events,
      :searched_log_streams,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a matched event.
    #
    # @!attribute [rw] log_stream_name
    #   The name of the log stream to which this event belongs.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The time the event occurred, expressed as the number of milliseconds
    #   after `Jan 1, 1970 00:00:00 UTC`.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   The data contained in the log event.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_time
    #   The time the event was ingested, expressed as the number of
    #   milliseconds after `Jan 1, 1970 00:00:00 UTC`.
    #   @return [Integer]
    #
    # @!attribute [rw] event_id
    #   The ID of the event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/FilteredLogEvent AWS API Documentation
    #
    class FilteredLogEvent < Struct.new(
      :log_stream_name,
      :timestamp,
      :message,
      :ingestion_time,
      :event_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_identifier
    #   The name or ARN of the log group that contains the data protection
    #   policy that you want to see.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetDataProtectionPolicyRequest AWS API Documentation
    #
    class GetDataProtectionPolicyRequest < Struct.new(
      :log_group_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_identifier
    #   The log group name or ARN that you specified in your request.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The data protection policy document for this log group.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time that this policy was most recently updated.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetDataProtectionPolicyResponse AWS API Documentation
    #
    class GetDataProtectionPolicyResponse < Struct.new(
      :log_group_identifier,
      :policy_document,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_destination_name
    #   The name of the delivery destination that you want to retrieve the
    #   policy of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetDeliveryDestinationPolicyRequest AWS API Documentation
    #
    class GetDeliveryDestinationPolicyRequest < Struct.new(
      :delivery_destination_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The IAM policy for this delivery destination.
    #   @return [Types::Policy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetDeliveryDestinationPolicyResponse AWS API Documentation
    #
    class GetDeliveryDestinationPolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the delivery destination that you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetDeliveryDestinationRequest AWS API Documentation
    #
    class GetDeliveryDestinationRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_destination
    #   A structure containing information about the delivery destination.
    #   @return [Types::DeliveryDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetDeliveryDestinationResponse AWS API Documentation
    #
    class GetDeliveryDestinationResponse < Struct.new(
      :delivery_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the delivery that you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetDeliveryRequest AWS API Documentation
    #
    class GetDeliveryRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery
    #   A structure that contains information about the delivery.
    #   @return [Types::Delivery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetDeliveryResponse AWS API Documentation
    #
    class GetDeliveryResponse < Struct.new(
      :delivery)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the delivery source that you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetDeliverySourceRequest AWS API Documentation
    #
    class GetDeliverySourceRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_source
    #   A structure containing information about the delivery source.
    #   @return [Types::DeliverySource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetDeliverySourceResponse AWS API Documentation
    #
    class GetDeliverySourceResponse < Struct.new(
      :delivery_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_name
    #   The name of the integration that you want to find information about.
    #   To find the name of your integration, use [ListIntegrations][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListIntegrations.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetIntegrationRequest AWS API Documentation
    #
    class GetIntegrationRequest < Struct.new(
      :integration_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_name
    #   The name of the integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   The type of integration. Integrations with OpenSearch Service have
    #   the type `OPENSEARCH`.
    #   @return [String]
    #
    # @!attribute [rw] integration_status
    #   The current status of this integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_details
    #   A structure that contains information about the integration
    #   configuration. For an integration with OpenSearch Service, this
    #   includes information about OpenSearch Service resources such as the
    #   collection, the workspace, and policies.
    #   @return [Types::IntegrationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetIntegrationResponse AWS API Documentation
    #
    class GetIntegrationResponse < Struct.new(
      :integration_name,
      :integration_type,
      :integration_status,
      :integration_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the anomaly detector to retrieve information about. You
    #   can find the ARNs of log anomaly detectors in your account by using
    #   the [ListLogAnomalyDetectors][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListLogAnomalyDetectors.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogAnomalyDetectorRequest AWS API Documentation
    #
    class GetLogAnomalyDetectorRequest < Struct.new(
      :anomaly_detector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_name
    #   The name of the log anomaly detector
    #   @return [String]
    #
    # @!attribute [rw] log_group_arn_list
    #   An array of structures, where each structure contains the ARN of a
    #   log group associated with this anomaly detector.
    #   @return [Array<String>]
    #
    # @!attribute [rw] evaluation_frequency
    #   Specifies how often the anomaly detector runs and look for
    #   anomalies. Set this value according to the frequency that the log
    #   group receives new logs. For example, if the log group receives new
    #   log events every 10 minutes, then setting `evaluationFrequency` to
    #   `FIFTEEN_MIN` might be appropriate.
    #   @return [String]
    #
    # @!attribute [rw] filter_pattern
    #   A symbolic description of how CloudWatch Logs should interpret the
    #   data in each log event. For example, a log event can contain
    #   timestamps, IP addresses, strings, and so on. You use the filter
    #   pattern to specify what to look for in the log event message.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_detector_status
    #   Specifies whether the anomaly detector is currently active. To
    #   change its status, use the `enabled` parameter in the
    #   [UpdateLogAnomalyDetector][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateLogAnomalyDetector.html
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key assigned to this anomaly detector, if any.
    #   @return [String]
    #
    # @!attribute [rw] creation_time_stamp
    #   The date and time when this anomaly detector was created.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_time_stamp
    #   The date and time when this anomaly detector was most recently
    #   modified.
    #   @return [Integer]
    #
    # @!attribute [rw] anomaly_visibility_time
    #   The number of days used as the life cycle of anomalies. After this
    #   time, anomalies are automatically baselined and the anomaly detector
    #   model will treat new occurrences of similar event as normal.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogAnomalyDetectorResponse AWS API Documentation
    #
    class GetLogAnomalyDetectorResponse < Struct.new(
      :detector_name,
      :log_group_arn_list,
      :evaluation_frequency,
      :filter_pattern,
      :anomaly_detector_status,
      :kms_key_id,
      :creation_time_stamp,
      :last_modified_time_stamp,
      :anomaly_visibility_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] log_group_identifier
    #   Specify either the name or ARN of the log group to view events from.
    #   If the log group is in a source account and you are using a
    #   monitoring account, you must use the log group ARN.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name
    #   The name of the log stream.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start of the time range, expressed as the number of milliseconds
    #   after `Jan 1, 1970 00:00:00 UTC`. Events with a timestamp equal to
    #   this time or later than this time are included. Events with a
    #   timestamp earlier than this time are not included.
    #   @return [Integer]
    #
    # @!attribute [rw] end_time
    #   The end of the time range, expressed as the number of milliseconds
    #   after `Jan 1, 1970 00:00:00 UTC`. Events with a timestamp equal to
    #   or later than this time are not included.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of log events returned. If you don't specify a
    #   limit, the default is as many log events as can fit in a response
    #   size of 1 MB (up to 10,000 log events).
    #   @return [Integer]
    #
    # @!attribute [rw] start_from_head
    #   If the value is true, the earliest log events are returned first. If
    #   the value is false, the latest log events are returned first. The
    #   default value is false.
    #
    #   If you are using a previous `nextForwardToken` value as the
    #   `nextToken` in this operation, you must specify `true` for
    #   `startFromHead`.
    #   @return [Boolean]
    #
    # @!attribute [rw] unmask
    #   Specify `true` to display the log event fields with all sensitive
    #   data unmasked and visible. The default is `false`.
    #
    #   To use this operation with this parameter, you must be signed into
    #   an account with the `logs:Unmask` permission.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogEventsRequest AWS API Documentation
    #
    class GetLogEventsRequest < Struct.new(
      :log_group_name,
      :log_group_identifier,
      :log_stream_name,
      :start_time,
      :end_time,
      :next_token,
      :limit,
      :start_from_head,
      :unmask)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   The events.
    #   @return [Array<Types::OutputLogEvent>]
    #
    # @!attribute [rw] next_forward_token
    #   The token for the next set of items in the forward direction. The
    #   token expires after 24 hours. If you have reached the end of the
    #   stream, it returns the same token you passed in.
    #   @return [String]
    #
    # @!attribute [rw] next_backward_token
    #   The token for the next set of items in the backward direction. The
    #   token expires after 24 hours. This token is not null. If you have
    #   reached the end of the stream, it returns the same token you passed
    #   in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogEventsResponse AWS API Documentation
    #
    class GetLogEventsResponse < Struct.new(
      :events,
      :next_forward_token,
      :next_backward_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group to search.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] time
    #   The time to set as the center of the query. If you specify `time`,
    #   the 8 minutes before and 8 minutes after this time are searched. If
    #   you omit `time`, the most recent 15 minutes up to the current time
    #   are searched.
    #
    #   The `time` value is specified as epoch time, which is the number of
    #   seconds since `January 1, 1970, 00:00:00 UTC`.
    #   @return [Integer]
    #
    # @!attribute [rw] log_group_identifier
    #   Specify either the name or ARN of the log group to view. If the log
    #   group is in a source account and you are using a monitoring account,
    #   you must specify the ARN.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogGroupFieldsRequest AWS API Documentation
    #
    class GetLogGroupFieldsRequest < Struct.new(
      :log_group_name,
      :time,
      :log_group_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_fields
    #   The array of fields found in the query. Each object in the array
    #   contains the name of the field, along with the percentage of time it
    #   appeared in the log events that were queried.
    #   @return [Array<Types::LogGroupField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogGroupFieldsResponse AWS API Documentation
    #
    class GetLogGroupFieldsResponse < Struct.new(
      :log_group_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_record_pointer
    #   The pointer corresponding to the log event record you want to
    #   retrieve. You get this from the response of a `GetQueryResults`
    #   operation. In that response, the value of the `@ptr` field for a log
    #   event is the value to use as `logRecordPointer` to retrieve that
    #   complete log event record.
    #   @return [String]
    #
    # @!attribute [rw] unmask
    #   Specify `true` to display the log event fields with all sensitive
    #   data unmasked and visible. The default is `false`.
    #
    #   To use this operation with this parameter, you must be signed into
    #   an account with the `logs:Unmask` permission.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogRecordRequest AWS API Documentation
    #
    class GetLogRecordRequest < Struct.new(
      :log_record_pointer,
      :unmask)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_record
    #   The requested log event, as a JSON string.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogRecordResponse AWS API Documentation
    #
    class GetLogRecordResponse < Struct.new(
      :log_record)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The ID number of the query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetQueryResultsRequest AWS API Documentation
    #
    class GetQueryResultsRequest < Struct.new(
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_language
    #   The query language used for this query. For more information about
    #   the query languages that CloudWatch Logs supports, see [Supported
    #   query languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html
    #   @return [String]
    #
    # @!attribute [rw] results
    #   The log events that matched the query criteria during the most
    #   recent time it ran.
    #
    #   The `results` value is an array of arrays. Each log event is one
    #   object in the top-level array. Each of these log event objects is an
    #   array of `field`/`value` pairs.
    #   @return [Array<Array<Types::ResultField>>]
    #
    # @!attribute [rw] statistics
    #   Includes the number of log events scanned by the query, the number
    #   of log events that matched the query criteria, and the total number
    #   of bytes in the scanned log events. These values reflect the full
    #   raw results of the query.
    #   @return [Types::QueryStatistics]
    #
    # @!attribute [rw] status
    #   The status of the most recent running of the query. Possible values
    #   are `Cancelled`, `Complete`, `Failed`, `Running`, `Scheduled`,
    #   `Timeout`, and `Unknown`.
    #
    #   Queries time out after 60 minutes of runtime. To avoid having your
    #   queries time out, reduce the time range being searched or partition
    #   your query into a number of queries.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key
    #   If you associated an KMS key with the CloudWatch Logs Insights query
    #   results in this account, this field displays the ARN of the key
    #   that's used to encrypt the query results when [StartQuery][1]
    #   stores them.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetQueryResultsResponse AWS API Documentation
    #
    class GetQueryResultsResponse < Struct.new(
      :query_language,
      :results,
      :statistics,
      :status,
      :encryption_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_identifier
    #   Specify either the name or ARN of the log group to return
    #   transformer information for. If the log group is in a source account
    #   and you are using a monitoring account, you must use the log group
    #   ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetTransformerRequest AWS API Documentation
    #
    class GetTransformerRequest < Struct.new(
      :log_group_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_identifier
    #   The ARN of the log group that you specified in your request.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the transformer, expressed as the number of
    #   milliseconds after Jan 1, 1970 00:00:00 UTC.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time when this transformer was most recently modified,
    #   expressed as the number of milliseconds after Jan 1, 1970 00:00:00
    #   UTC.
    #   @return [Integer]
    #
    # @!attribute [rw] transformer_config
    #   This sructure contains the configuration of the requested
    #   transformer.
    #   @return [Array<Types::Processor>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetTransformerResponse AWS API Documentation
    #
    class GetTransformerResponse < Struct.new(
      :log_group_identifier,
      :creation_time,
      :last_modified_time,
      :transformer_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # This processor uses pattern matching to parse and structure
    # unstructured data. This processor can also extract fields from log
    # messages.
    #
    # For more information about this processor including examples, see [
    # grok][1] in the *CloudWatch Logs User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-Grok
    #
    # @!attribute [rw] source
    #   The path to the field in the log event that you want to parse. If
    #   you omit this value, the whole log message is parsed.
    #   @return [String]
    #
    # @!attribute [rw] match
    #   The grok pattern to match against the log event. For a list of
    #   supported grok patterns, see [Supported grok patterns][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#Grok-Patterns
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/Grok AWS API Documentation
    #
    class Grok < Struct.new(
      :source,
      :match)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about one field index policy in
    # this account.
    #
    # @!attribute [rw] log_group_identifier
    #   The ARN of the log group that this index policy applies to.
    #   @return [String]
    #
    # @!attribute [rw] last_update_time
    #   The date and time that this index policy was most recently updated.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_document
    #   The policy document for this index policy, in JSON format.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of this policy. Responses about log group-level field index
    #   policies don't have this field, because those policies don't have
    #   names.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   This field indicates whether this is an account-level index policy
    #   or an index policy that applies only to a single log group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/IndexPolicy AWS API Documentation
    #
    class IndexPolicy < Struct.new(
      :log_group_identifier,
      :last_update_time,
      :policy_document,
      :policy_name,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a log event, which is a record of activity that was
    # recorded by the application or resource being monitored.
    #
    # @!attribute [rw] timestamp
    #   The time the event occurred, expressed as the number of milliseconds
    #   after `Jan 1, 1970 00:00:00 UTC`.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   The raw event message. Each log event can be no larger than 256 KB.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/InputLogEvent AWS API Documentation
    #
    class InputLogEvent < Struct.new(
      :timestamp,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about the integration
    # configuration. For an integration with OpenSearch Service, this
    # includes information about OpenSearch Service resources such as the
    # collection, the workspace, and policies.
    #
    # This structure is returned by a [GetIntegration][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetIntegration.html
    #
    # @note IntegrationDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of IntegrationDetails corresponding to the set member.
    #
    # @!attribute [rw] open_search_integration_details
    #   This structure contains complete information about one integration
    #   between CloudWatch Logs and OpenSearch Service.
    #   @return [Types::OpenSearchIntegrationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/IntegrationDetails AWS API Documentation
    #
    class IntegrationDetails < Struct.new(
      :open_search_integration_details,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OpenSearchIntegrationDetails < IntegrationDetails; end
      class Unknown < IntegrationDetails; end
    end

    # This structure contains information about one CloudWatch Logs
    # integration. This structure is returned by a [ListIntegrations][1]
    # operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListIntegrations.html
    #
    # @!attribute [rw] integration_name
    #   The name of this integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   The type of integration. Integrations with OpenSearch Service have
    #   the type `OPENSEARCH`.
    #   @return [String]
    #
    # @!attribute [rw] integration_status
    #   The current status of this integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/IntegrationSummary AWS API Documentation
    #
    class IntegrationSummary < Struct.new(
      :integration_name,
      :integration_type,
      :integration_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation is not valid on the specified resource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/InvalidOperationException AWS API Documentation
    #
    class InvalidOperationException < Aws::EmptyStructure; end

    # A parameter is specified incorrectly.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Aws::EmptyStructure; end

    # The sequence token is not valid. You can get the correct sequence
    # token in the `expectedSequenceToken` field in the
    # `InvalidSequenceTokenException` message.
    #
    # `PutLogEvents` actions are now always accepted and never return
    # `InvalidSequenceTokenException` regardless of receiving an invalid
    # sequence token.
    #
    # @!attribute [rw] expected_sequence_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/InvalidSequenceTokenException AWS API Documentation
    #
    class InvalidSequenceTokenException < Struct.new(
      :expected_sequence_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have reached the maximum number of resources that can be created.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Aws::EmptyStructure; end

    # @!attribute [rw] anomaly_detector_arn
    #   Use this to optionally limit the results to only the anomalies found
    #   by a certain anomaly detector.
    #   @return [String]
    #
    # @!attribute [rw] suppression_state
    #   You can specify this parameter if you want to the operation to
    #   return only anomalies that are currently either suppressed or
    #   unsuppressed.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return. If you don't specify a
    #   value, the default maximum value of 50 items is used.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListAnomaliesRequest AWS API Documentation
    #
    class ListAnomaliesRequest < Struct.new(
      :anomaly_detector_arn,
      :suppression_state,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomalies
    #   An array of structures, where each structure contains information
    #   about one anomaly that a log anomaly detector has found.
    #   @return [Array<Types::Anomaly>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListAnomaliesResponse AWS API Documentation
    #
    class ListAnomaliesResponse < Struct.new(
      :anomalies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_name_prefix
    #   To limit the results to integrations that start with a certain name
    #   prefix, specify that name prefix here.
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   To limit the results to integrations of a certain type, specify that
    #   type here.
    #   @return [String]
    #
    # @!attribute [rw] integration_status
    #   To limit the results to integrations with a certain status, specify
    #   that status here.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListIntegrationsRequest AWS API Documentation
    #
    class ListIntegrationsRequest < Struct.new(
      :integration_name_prefix,
      :integration_type,
      :integration_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_summaries
    #   An array, where each object in the array contains information about
    #   one CloudWatch Logs integration in this account.
    #   @return [Array<Types::IntegrationSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListIntegrationsResponse AWS API Documentation
    #
    class ListIntegrationsResponse < Struct.new(
      :integration_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_log_group_arn
    #   Use this to optionally filter the results to only include anomaly
    #   detectors that are associated with the specified log group.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return. If you don't specify a
    #   value, the default maximum value of 50 items is used.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListLogAnomalyDetectorsRequest AWS API Documentation
    #
    class ListLogAnomalyDetectorsRequest < Struct.new(
      :filter_log_group_arn,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detectors
    #   An array of structures, where each structure in the array contains
    #   information about one anomaly detector.
    #   @return [Array<Types::AnomalyDetector>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListLogAnomalyDetectorsResponse AWS API Documentation
    #
    class ListLogAnomalyDetectorsResponse < Struct.new(
      :anomaly_detectors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The ID of the query to use. This query ID is from the response to
    #   your [StartQuery][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Limits the number of returned log groups to the specified number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListLogGroupsForQueryRequest AWS API Documentation
    #
    class ListLogGroupsForQueryRequest < Struct.new(
      :query_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_identifiers
    #   An array of the names and ARNs of the log groups that were processed
    #   in the query.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListLogGroupsForQueryResponse AWS API Documentation
    #
    class ListLogGroupsForQueryResponse < Struct.new(
      :log_group_identifiers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource that you want to view tags for.
    #
    #   The ARN format of a log group is
    #   `arn:aws:logs:Region:account-id:log-group:log-group-name `
    #
    #   The ARN format of a destination is
    #   `arn:aws:logs:Region:account-id:destination:destination-name `
    #
    #   For more information about ARN format, see [CloudWatch Logs
    #   resources and operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags associated with the requested resource.&gt;
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListTagsLogGroupRequest AWS API Documentation
    #
    class ListTagsLogGroupRequest < Struct.new(
      :log_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the log group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListTagsLogGroupResponse AWS API Documentation
    #
    class ListTagsLogGroupResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # This processor takes a list of objects that contain key fields, and
    # converts them into a map of target keys.
    #
    # For more information about this processor including examples, see [
    # listToMap][1] in the *CloudWatch Logs User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-listToMap
    #
    # @!attribute [rw] source
    #   The key in the log event that has a list of objects that will be
    #   converted to a map.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The key of the field to be extracted as keys in the generated map
    #   @return [String]
    #
    # @!attribute [rw] value_key
    #   If this is specified, the values that you specify in this parameter
    #   will be extracted from the `source` objects and put into the values
    #   of the generated map. Otherwise, original objects in the source list
    #   will be put into the values of the generated map.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The key of the field that will hold the generated map
    #   @return [String]
    #
    # @!attribute [rw] flatten
    #   A Boolean value to indicate whether the list will be flattened into
    #   single items. Specify `true` to flatten the list. The default is
    #   `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] flattened_element
    #   If you set `flatten` to `true`, use `flattenedElement` to specify
    #   which element, `first` or `last`, to keep.
    #
    #   You must specify this parameter if `flatten` is `true`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListToMap AWS API Documentation
    #
    class ListToMap < Struct.new(
      :source,
      :key,
      :value_key,
      :target,
      :flatten,
      :flattened_element)
      SENSITIVE = []
      include Aws::Structure
    end

    # This object contains the information for one log event returned in a
    # Live Tail stream.
    #
    # @!attribute [rw] log_stream_name
    #   The name of the log stream that ingested this log event.
    #   @return [String]
    #
    # @!attribute [rw] log_group_identifier
    #   The name or ARN of the log group that ingested this log event.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The log event message text.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp specifying when this log event was created.
    #   @return [Integer]
    #
    # @!attribute [rw] ingestion_time
    #   The timestamp specifying when this log event was ingested into the
    #   log group.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/LiveTailSessionLogEvent AWS API Documentation
    #
    class LiveTailSessionLogEvent < Struct.new(
      :log_stream_name,
      :log_group_identifier,
      :message,
      :timestamp,
      :ingestion_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # This object contains the metadata for one `LiveTailSessionUpdate`
    # structure. It indicates whether that update includes only a sample of
    # 500 log events out of a larger number of ingested log events, or if it
    # contains all of the matching log events ingested during that second of
    # time.
    #
    # @!attribute [rw] sampled
    #   If this is `true`, then more than 500 log events matched the request
    #   for this update, and the `sessionResults` includes a sample of 500
    #   of those events.
    #
    #   If this is `false`, then 500 or fewer log events matched the request
    #   for this update, so no sampling was necessary. In this case, the
    #   `sessionResults` array includes all log events that matched your
    #   request during this time.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/LiveTailSessionMetadata AWS API Documentation
    #
    class LiveTailSessionMetadata < Struct.new(
      :sampled)
      SENSITIVE = []
      include Aws::Structure
    end

    # This object contains information about this Live Tail session,
    # including the log groups included and the log stream filters, if any.
    #
    # @!attribute [rw] request_id
    #   The unique ID generated by CloudWatch Logs to identify this Live
    #   Tail session request.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique ID generated by CloudWatch Logs to identify this Live
    #   Tail session.
    #   @return [String]
    #
    # @!attribute [rw] log_group_identifiers
    #   An array of the names and ARNs of the log groups included in this
    #   Live Tail session.
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_stream_names
    #   If your StartLiveTail operation request included a `logStreamNames`
    #   parameter that filtered the session to only include certain log
    #   streams, these streams are listed here.
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_stream_name_prefixes
    #   If your StartLiveTail operation request included a
    #   `logStreamNamePrefixes` parameter that filtered the session to only
    #   include log streams that have names that start with certain
    #   prefixes, these prefixes are listed here.
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_event_filter_pattern
    #   An optional pattern to filter the results to include only log events
    #   that match the pattern. For example, a filter pattern of `error 404`
    #   displays only log events that include both `error` and `404`.
    #
    #   For more information about filter pattern syntax, see [Filter and
    #   Pattern Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/LiveTailSessionStart AWS API Documentation
    #
    class LiveTailSessionStart < Struct.new(
      :request_id,
      :session_id,
      :log_group_identifiers,
      :log_stream_names,
      :log_stream_name_prefixes,
      :log_event_filter_pattern,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This object contains the log events and metadata for a Live Tail
    # session.
    #
    # @!attribute [rw] session_metadata
    #   This object contains the session metadata for a Live Tail session.
    #   @return [Types::LiveTailSessionMetadata]
    #
    # @!attribute [rw] session_results
    #   An array, where each member of the array includes the information
    #   for one log event in the Live Tail session.
    #
    #   A `sessionResults` array can include as many as 500 log events. If
    #   the number of log events matching the request exceeds 500 per
    #   second, the log events are sampled down to 500 log events to be
    #   included in each `sessionUpdate` structure.
    #   @return [Array<Types::LiveTailSessionLogEvent>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/LiveTailSessionUpdate AWS API Documentation
    #
    class LiveTailSessionUpdate < Struct.new(
      :session_metadata,
      :session_results,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains the information for one sample log event that
    # is associated with an anomaly found by a log anomaly detector.
    #
    # @!attribute [rw] timestamp
    #   The time stamp of the log event.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   The message content of the log event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/LogEvent AWS API Documentation
    #
    class LogEvent < Struct.new(
      :timestamp,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a log group.
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the log group, expressed as the number of
    #   milliseconds after Jan 1, 1970 00:00:00 UTC.
    #   @return [Integer]
    #
    # @!attribute [rw] retention_in_days
    #   The number of days to retain the log events in the specified log
    #   group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150,
    #   180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, and
    #   3653.
    #
    #   To set a log group so that its log events do not expire, use
    #   [DeleteRetentionPolicy][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DeleteRetentionPolicy.html
    #   @return [Integer]
    #
    # @!attribute [rw] metric_filter_count
    #   The number of metric filters.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the log group. This version of the
    #   ARN includes a trailing `:*` after the log group name.
    #
    #   Use this version to refer to the ARN in IAM policies when specifying
    #   permissions for most API actions. The exception is when specifying
    #   permissions for [TagResource][1], [UntagResource][2], and
    #   [ListTagsForResource][3]. The permissions for those three actions
    #   require the ARN version that doesn't include a trailing `:*`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagResource.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagResource.html
    #   [3]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html
    #   @return [String]
    #
    # @!attribute [rw] stored_bytes
    #   The number of bytes stored.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) of the KMS key to use when encrypting
    #   log data.
    #   @return [String]
    #
    # @!attribute [rw] data_protection_status
    #   Displays whether this log group has a protection policy, or whether
    #   it had one in the past. For more information, see
    #   [PutDataProtectionPolicy][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDataProtectionPolicy.html
    #   @return [String]
    #
    # @!attribute [rw] inherited_properties
    #   Displays all the properties that this log group has inherited from
    #   account-level settings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_group_class
    #   This specifies the log group class for this log group. There are two
    #   classes:
    #
    #   * The `Standard` log class supports all CloudWatch Logs features.
    #
    #   * The `Infrequent Access` log class supports a subset of CloudWatch
    #     Logs features and incurs lower costs.
    #
    #   For details about the features supported by each class, see [Log
    #   classes][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html
    #   @return [String]
    #
    # @!attribute [rw] log_group_arn
    #   The Amazon Resource Name (ARN) of the log group. This version of the
    #   ARN doesn't include a trailing `:*` after the log group name.
    #
    #   Use this version to refer to the ARN in the following situations:
    #
    #   * In the `logGroupIdentifier` input field in many CloudWatch Logs
    #     APIs.
    #
    #   * In the `resourceArn` field in tagging APIs
    #
    #   * In IAM policies, when specifying permissions for [TagResource][1],
    #     [UntagResource][2], and [ListTagsForResource][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagResource.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagResource.html
    #   [3]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/LogGroup AWS API Documentation
    #
    class LogGroup < Struct.new(
      :log_group_name,
      :creation_time,
      :retention_in_days,
      :metric_filter_count,
      :arn,
      :stored_bytes,
      :kms_key_id,
      :data_protection_status,
      :inherited_properties,
      :log_group_class,
      :log_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The fields contained in log events found by a `GetLogGroupFields`
    # operation, along with the percentage of queried log events in which
    # each field appears.
    #
    # @!attribute [rw] name
    #   The name of a log field.
    #   @return [String]
    #
    # @!attribute [rw] percent
    #   The percentage of log events queried that contained the field.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/LogGroupField AWS API Documentation
    #
    class LogGroupField < Struct.new(
      :name,
      :percent)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a log stream, which is a sequence of log events from a
    # single emitter of logs.
    #
    # @!attribute [rw] log_stream_name
    #   The name of the log stream.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the stream, expressed as the number of
    #   milliseconds after `Jan 1, 1970 00:00:00 UTC`.
    #   @return [Integer]
    #
    # @!attribute [rw] first_event_timestamp
    #   The time of the first event, expressed as the number of milliseconds
    #   after `Jan 1, 1970 00:00:00 UTC`.
    #   @return [Integer]
    #
    # @!attribute [rw] last_event_timestamp
    #   The time of the most recent log event in the log stream in
    #   CloudWatch Logs. This number is expressed as the number of
    #   milliseconds after `Jan 1, 1970 00:00:00 UTC`. The `lastEventTime`
    #   value updates on an eventual consistency basis. It typically updates
    #   in less than an hour from ingestion, but in rare situations might
    #   take longer.
    #   @return [Integer]
    #
    # @!attribute [rw] last_ingestion_time
    #   The ingestion time, expressed as the number of milliseconds after
    #   `Jan 1, 1970 00:00:00 UTC` The `lastIngestionTime` value updates on
    #   an eventual consistency basis. It typically updates in less than an
    #   hour after ingestion, but in rare situations might take longer.
    #   @return [Integer]
    #
    # @!attribute [rw] upload_sequence_token
    #   The sequence token.
    #
    #   The sequence token is now ignored in `PutLogEvents` actions.
    #   `PutLogEvents` actions are always accepted regardless of receiving
    #   an invalid sequence token. You don't need to obtain
    #   `uploadSequenceToken` to use a `PutLogEvents` action.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the log stream.
    #   @return [String]
    #
    # @!attribute [rw] stored_bytes
    #   The number of bytes stored.
    #
    #   **Important:** As of June 17, 2019, this parameter is no longer
    #   supported for log streams, and is always reported as zero. This
    #   change applies only to log streams. The `storedBytes` parameter for
    #   log groups is not affected.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/LogStream AWS API Documentation
    #
    class LogStream < Struct.new(
      :log_stream_name,
      :creation_time,
      :first_event_timestamp,
      :last_event_timestamp,
      :last_ingestion_time,
      :upload_sequence_token,
      :arn,
      :stored_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # This processor converts a string to lowercase.
    #
    # For more information about this processor including examples, see [
    # lowerCaseString][1] in the *CloudWatch Logs User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-lowerCaseString
    #
    # @!attribute [rw] with_keys
    #   The array caontaining the keys of the fields to convert to
    #   lowercase.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/LowerCaseString AWS API Documentation
    #
    class LowerCaseString < Struct.new(
      :with_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # The query string is not valid. Details about this error are displayed
    # in a `QueryCompileError` object. For more information, see
    # [QueryCompileError][1].
    #
    # For more information about valid query syntax, see [CloudWatch Logs
    # Insights Query Syntax][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_QueryCompileError.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html
    #
    # @!attribute [rw] query_compile_error
    #   Reserved.
    #   @return [Types::QueryCompileError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/MalformedQueryException AWS API Documentation
    #
    class MalformedQueryException < Struct.new(
      :query_compile_error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metric filters express how CloudWatch Logs would extract metric
    # observations from ingested log events and transform them into metric
    # data in a CloudWatch metric.
    #
    # @!attribute [rw] filter_name
    #   The name of the metric filter.
    #   @return [String]
    #
    # @!attribute [rw] filter_pattern
    #   A symbolic description of how CloudWatch Logs should interpret the
    #   data in each log event. For example, a log event can contain
    #   timestamps, IP addresses, strings, and so on. You use the filter
    #   pattern to specify what to look for in the log event message.
    #   @return [String]
    #
    # @!attribute [rw] metric_transformations
    #   The metric transformations.
    #   @return [Array<Types::MetricTransformation>]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the metric filter, expressed as the number of
    #   milliseconds after `Jan 1, 1970 00:00:00 UTC`.
    #   @return [Integer]
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] apply_on_transformed_logs
    #   This parameter is valid only for log groups that have an active log
    #   transformer. For more information about log transformers, see
    #   [PutTransformer][1].
    #
    #   If this value is `true`, the metric filter is applied on the
    #   transformed version of the log events instead of the original
    #   ingested log events.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutTransformer.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/MetricFilter AWS API Documentation
    #
    class MetricFilter < Struct.new(
      :filter_name,
      :filter_pattern,
      :metric_transformations,
      :creation_time,
      :log_group_name,
      :apply_on_transformed_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a matched event.
    #
    # @!attribute [rw] event_number
    #   The event number.
    #   @return [Integer]
    #
    # @!attribute [rw] event_message
    #   The raw event data.
    #   @return [String]
    #
    # @!attribute [rw] extracted_values
    #   The values extracted from the event data by the filter.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/MetricFilterMatchRecord AWS API Documentation
    #
    class MetricFilterMatchRecord < Struct.new(
      :event_number,
      :event_message,
      :extracted_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates how to transform ingested log events to metric data in a
    # CloudWatch metric.
    #
    # @!attribute [rw] metric_name
    #   The name of the CloudWatch metric.
    #   @return [String]
    #
    # @!attribute [rw] metric_namespace
    #   A custom namespace to contain your metric in CloudWatch. Use
    #   namespaces to group together metrics that are similar. For more
    #   information, see [Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace
    #   @return [String]
    #
    # @!attribute [rw] metric_value
    #   The value to publish to the CloudWatch metric when a filter pattern
    #   matches a log event.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   (Optional) The value to emit when a filter pattern does not match a
    #   log event. This value can be null.
    #   @return [Float]
    #
    # @!attribute [rw] dimensions
    #   The fields to use as dimensions for the metric. One metric filter
    #   can include as many as three dimensions.
    #
    #   Metrics extracted from log events are charged as custom metrics. To
    #   prevent unexpected high charges, do not specify high-cardinality
    #   fields such as `IPAddress` or `requestID` as dimensions. Each
    #   different value found for a dimension is treated as a separate
    #   metric and accrues charges as a separate custom metric.
    #
    #    CloudWatch Logs disables a metric filter if it generates 1000
    #   different name/value pairs for your specified dimensions within a
    #   certain amount of time. This helps to prevent accidental high
    #   charges.
    #
    #    You can also set up a billing alarm to alert you if your charges
    #   are
    #   higher than expected. For more information, see [ Creating a Billing
    #   Alarm to Monitor Your Estimated Amazon Web Services Charges][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] unit
    #   The unit to assign to the metric. If you omit this, the unit is set
    #   as `None`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/MetricTransformation AWS API Documentation
    #
    class MetricTransformation < Struct.new(
      :metric_name,
      :metric_namespace,
      :metric_value,
      :default_value,
      :dimensions,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # This object defines one key that will be moved with the [ moveKey][1]
    # processor.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-moveKey
    #
    # @!attribute [rw] source
    #   The key to move.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The key to move to.
    #   @return [String]
    #
    # @!attribute [rw] overwrite_if_exists
    #   Specifies whether to overwrite the value if the destination key
    #   already exists. If you omit this, the default is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/MoveKeyEntry AWS API Documentation
    #
    class MoveKeyEntry < Struct.new(
      :source,
      :target,
      :overwrite_if_exists)
      SENSITIVE = []
      include Aws::Structure
    end

    # This processor moves a key from one field to another. The original key
    # is deleted.
    #
    # For more information about this processor including examples, see [
    # moveKeys][1] in the *CloudWatch Logs User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-moveKeys
    #
    # @!attribute [rw] entries
    #   An array of objects, where each object contains the information
    #   about one key to move.
    #   @return [Array<Types::MoveKeyEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/MoveKeys AWS API Documentation
    #
    class MoveKeys < Struct.new(
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about the OpenSearch Service
    # application used for this integration. An OpenSearch Service
    # application is the web application created by the integration with
    # CloudWatch Logs. It hosts the vended logs dashboards.
    #
    # @!attribute [rw] application_endpoint
    #   The endpoint of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_arn
    #   The Amazon Resource Name (ARN) of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   This structure contains information about the status of this
    #   OpenSearch Service resource.
    #   @return [Types::OpenSearchResourceStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/OpenSearchApplication AWS API Documentation
    #
    class OpenSearchApplication < Struct.new(
      :application_endpoint,
      :application_arn,
      :application_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about the OpenSearch Service
    # collection used for this integration. An OpenSearch Service collection
    # is a logical grouping of one or more indexes that represent an
    # analytics workload. For more information, see [Creating and managing
    # OpenSearch Service Serverless collections][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-collections.html
    #
    # @!attribute [rw] collection_endpoint
    #   The endpoint of the collection.
    #   @return [String]
    #
    # @!attribute [rw] collection_arn
    #   The ARN of the collection.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   This structure contains information about the status of this
    #   OpenSearch Service resource.
    #   @return [Types::OpenSearchResourceStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/OpenSearchCollection AWS API Documentation
    #
    class OpenSearchCollection < Struct.new(
      :collection_endpoint,
      :collection_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about the OpenSearch Service data
    # access policy used for this integration. The access policy defines the
    # access controls for the collection. This data access policy was
    # automatically created as part of the integration setup. For more
    # information about OpenSearch Service data access policies, see [Data
    # access control for Amazon OpenSearch Serverless][1] in the OpenSearch
    # Service Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html
    #
    # @!attribute [rw] policy_name
    #   The name of the data access policy.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   This structure contains information about the status of this
    #   OpenSearch Service resource.
    #   @return [Types::OpenSearchResourceStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/OpenSearchDataAccessPolicy AWS API Documentation
    #
    class OpenSearchDataAccessPolicy < Struct.new(
      :policy_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about the OpenSearch Service data
    # source used for this integration. This data source was created as part
    # of the integration setup. An OpenSearch Service data source defines
    # the source and destination for OpenSearch Service queries. It includes
    # the role required to execute queries and write to collections.
    #
    # For more information about OpenSearch Service data sources , see
    # [Creating OpenSearch Service data source integrations with Amazon
    # S3.][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-creating.html
    #
    # @!attribute [rw] data_source_name
    #   The name of the OpenSearch Service data source.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   This structure contains information about the status of this
    #   OpenSearch Service resource.
    #   @return [Types::OpenSearchResourceStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/OpenSearchDataSource AWS API Documentation
    #
    class OpenSearchDataSource < Struct.new(
      :data_source_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about the OpenSearch Service
    # encryption policy used for this integration. The encryption policy was
    # created automatically when you created the integration. For more
    # information, see [Encryption policies][1] in the OpenSearch Service
    # Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html#serverless-encryption-policies
    #
    # @!attribute [rw] policy_name
    #   The name of the encryption policy.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   This structure contains information about the status of this
    #   OpenSearch Service resource.
    #   @return [Types::OpenSearchResourceStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/OpenSearchEncryptionPolicy AWS API Documentation
    #
    class OpenSearchEncryptionPolicy < Struct.new(
      :policy_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains complete information about one CloudWatch Logs
    # integration. This structure is returned by a [GetIntegration][1]
    # operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetIntegration.html
    #
    # @!attribute [rw] data_source
    #   This structure contains information about the OpenSearch Service
    #   data source used for this integration. This data source was created
    #   as part of the integration setup. An OpenSearch Service data source
    #   defines the source and destination for OpenSearch Service queries.
    #   It includes the role required to execute queries and write to
    #   collections.
    #
    #   For more information about OpenSearch Service data sources , see
    #   [Creating OpenSearch Service data source integrations with Amazon
    #   S3.][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-creating.html
    #   @return [Types::OpenSearchDataSource]
    #
    # @!attribute [rw] application
    #   This structure contains information about the OpenSearch Service
    #   application used for this integration. An OpenSearch Service
    #   application is the web application that was created by the
    #   integration with CloudWatch Logs. It hosts the vended logs
    #   dashboards.
    #   @return [Types::OpenSearchApplication]
    #
    # @!attribute [rw] collection
    #   This structure contains information about the OpenSearch Service
    #   collection used for this integration. This collection was created as
    #   part of the integration setup. An OpenSearch Service collection is a
    #   logical grouping of one or more indexes that represent an analytics
    #   workload. For more information, see [Creating and managing
    #   OpenSearch Service Serverless collections][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-collections.html
    #   @return [Types::OpenSearchCollection]
    #
    # @!attribute [rw] workspace
    #   This structure contains information about the OpenSearch Service
    #   workspace used for this integration. An OpenSearch Service workspace
    #   is the collection of dashboards along with other OpenSearch Service
    #   tools. This workspace was created automatically as part of the
    #   integration setup. For more information, see [Centralized OpenSearch
    #   user interface (Dashboards) with OpenSearch Service][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/application.html
    #   @return [Types::OpenSearchWorkspace]
    #
    # @!attribute [rw] encryption_policy
    #   This structure contains information about the OpenSearch Service
    #   encryption policy used for this integration. The encryption policy
    #   was created automatically when you created the integration. For more
    #   information, see [Encryption policies][1] in the OpenSearch Service
    #   Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html#serverless-encryption-policies
    #   @return [Types::OpenSearchEncryptionPolicy]
    #
    # @!attribute [rw] network_policy
    #   This structure contains information about the OpenSearch Service
    #   network policy used for this integration. The network policy assigns
    #   network access settings to collections. For more information, see
    #   [Network policies][1] in the OpenSearch Service Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html#serverless-network-policies
    #   @return [Types::OpenSearchNetworkPolicy]
    #
    # @!attribute [rw] access_policy
    #   This structure contains information about the OpenSearch Service
    #   data access policy used for this integration. The access policy
    #   defines the access controls for the collection. This data access
    #   policy was automatically created as part of the integration setup.
    #   For more information about OpenSearch Service data access policies,
    #   see [Data access control for Amazon OpenSearch Serverless][1] in the
    #   OpenSearch Service Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html
    #   @return [Types::OpenSearchDataAccessPolicy]
    #
    # @!attribute [rw] lifecycle_policy
    #   This structure contains information about the OpenSearch Service
    #   data lifecycle policy used for this integration. The lifecycle
    #   policy determines the lifespan of the data in the collection. It was
    #   automatically created as part of the integration setup.
    #
    #   For more information, see [Using data lifecycle policies with
    #   OpenSearch Service Serverless][1] in the OpenSearch Service
    #   Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html
    #   @return [Types::OpenSearchLifecyclePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/OpenSearchIntegrationDetails AWS API Documentation
    #
    class OpenSearchIntegrationDetails < Struct.new(
      :data_source,
      :application,
      :collection,
      :workspace,
      :encryption_policy,
      :network_policy,
      :access_policy,
      :lifecycle_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about the OpenSearch Service data
    # lifecycle policy used for this integration. The lifecycle policy
    # determines the lifespan of the data in the collection. It was
    # automatically created as part of the integration setup.
    #
    # For more information, see [Using data lifecycle policies with
    # OpenSearch Service Serverless][1] in the OpenSearch Service Developer
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html
    #
    # @!attribute [rw] policy_name
    #   The name of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   This structure contains information about the status of this
    #   OpenSearch Service resource.
    #   @return [Types::OpenSearchResourceStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/OpenSearchLifecyclePolicy AWS API Documentation
    #
    class OpenSearchLifecyclePolicy < Struct.new(
      :policy_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about the OpenSearch Service
    # network policy used for this integration. The network policy assigns
    # network access settings to collections. For more information, see
    # [Network policies][1] in the OpenSearch Service Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html#serverless-network-policies
    #
    # @!attribute [rw] policy_name
    #   The name of the network policy.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   This structure contains information about the status of this
    #   OpenSearch Service resource.
    #   @return [Types::OpenSearchResourceStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/OpenSearchNetworkPolicy AWS API Documentation
    #
    class OpenSearchNetworkPolicy < Struct.new(
      :policy_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains configuration details about an integration
    # between CloudWatch Logs and OpenSearch Service.
    #
    # @!attribute [rw] kms_key_arn
    #   To have the vended dashboard data encrypted with KMS instead of the
    #   CloudWatch Logs default encryption method, specify the ARN of the
    #   KMS key that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] data_source_role_arn
    #   Specify the ARN of an IAM role that CloudWatch Logs will use to
    #   create the integration. This role must have the permissions
    #   necessary to access the OpenSearch Service collection to be able to
    #   create the dashboards. For more information about the permissions
    #   needed, see [Permissions that the integration needs][1] in the
    #   CloudWatch Logs User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/OpenSearch-Dashboards-CreateRole.html
    #   @return [String]
    #
    # @!attribute [rw] dashboard_viewer_principals
    #   Specify the ARNs of IAM roles and IAM users who you want to grant
    #   permission to for viewing the dashboards.
    #
    #   In addition to specifying these users here, you must also grant them
    #   the **CloudWatchOpenSearchDashboardAccess** IAM policy. For more
    #   information, see [IAM policies for users][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/OpenSearch-Dashboards-UserRoles.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] application_arn
    #   If you want to use an existing OpenSearch Service application for
    #   your integration with OpenSearch Service, specify it here. If you
    #   omit this, a new application will be created.
    #   @return [String]
    #
    # @!attribute [rw] retention_days
    #   Specify how many days that you want the data derived by OpenSearch
    #   Service to be retained in the index that the dashboard refers to.
    #   This also sets the maximum time period that you can choose when
    #   viewing data in the dashboard. Choosing a longer time frame will
    #   incur additional costs.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/OpenSearchResourceConfig AWS API Documentation
    #
    class OpenSearchResourceConfig < Struct.new(
      :kms_key_arn,
      :data_source_role_arn,
      :dashboard_viewer_principals,
      :application_arn,
      :retention_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about the status of an OpenSearch
    # Service resource.
    #
    # @!attribute [rw] status
    #   The current status of this resource.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message with additional information about the status of this
    #   resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/OpenSearchResourceStatus AWS API Documentation
    #
    class OpenSearchResourceStatus < Struct.new(
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about the OpenSearch Service
    # workspace used for this integration. An OpenSearch Service workspace
    # is the collection of dashboards along with other OpenSearch Service
    # tools. This workspace was created automatically as part of the
    # integration setup. For more information, see [Centralized OpenSearch
    # user interface (Dashboards) with OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/application.html
    #
    # @!attribute [rw] workspace_id
    #   The ID of this workspace.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   This structure contains information about the status of an
    #   OpenSearch Service resource.
    #   @return [Types::OpenSearchResourceStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/OpenSearchWorkspace AWS API Documentation
    #
    class OpenSearchWorkspace < Struct.new(
      :workspace_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Multiple concurrent requests to update the same resource were in
    # conflict.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/OperationAbortedException AWS API Documentation
    #
    class OperationAbortedException < Aws::EmptyStructure; end

    # Represents a log event.
    #
    # @!attribute [rw] timestamp
    #   The time the event occurred, expressed as the number of milliseconds
    #   after `Jan 1, 1970 00:00:00 UTC`.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   The data contained in the log event.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_time
    #   The time the event was ingested, expressed as the number of
    #   milliseconds after `Jan 1, 1970 00:00:00 UTC`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/OutputLogEvent AWS API Documentation
    #
    class OutputLogEvent < Struct.new(
      :timestamp,
      :message,
      :ingestion_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # This processor parses CloudFront vended logs, extract fields, and
    # convert them into JSON format. Encoded field values are decoded.
    # Values that are integers and doubles are treated as such. For more
    # information about this processor including examples, see [
    # parseCloudfront][1]
    #
    # For more information about CloudFront log format, see [ Configure and
    # use standard logs (access logs)][2].
    #
    # If you use this processor, it must be the first processor in your
    # transformer.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parseCloudfront
    # [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html
    #
    # @!attribute [rw] source
    #   Omit this parameter and the whole log message will be processed by
    #   this processor. No other value than `@message` is allowed for
    #   `source`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ParseCloudfront AWS API Documentation
    #
    class ParseCloudfront < Struct.new(
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # This processor parses log events that are in JSON format. It can
    # extract JSON key-value pairs and place them under a destination that
    # you specify.
    #
    # Additionally, because you must have at least one parse-type processor
    # in a transformer, you can use `ParseJSON` as that processor for
    # JSON-format logs, so that you can also apply other processors, such as
    # mutate processors, to these logs.
    #
    # For more information about this processor including examples, see [
    # parseJSON][1] in the *CloudWatch Logs User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parseJSON
    #
    # @!attribute [rw] source
    #   Path to the field in the log event that will be parsed. Use dot
    #   notation to access child fields. For example, `store.book`
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The location to put the parsed key value pair into. If you omit this
    #   parameter, it is placed under the root node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ParseJSON AWS API Documentation
    #
    class ParseJSON < Struct.new(
      :source,
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # This processor parses a specified field in the original log event into
    # key-value pairs.
    #
    # For more information about this processor including examples, see [
    # parseKeyValue][1] in the *CloudWatch Logs User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parseKeyValue
    #
    # @!attribute [rw] source
    #   Path to the field in the log event that will be parsed. Use dot
    #   notation to access child fields. For example, `store.book`
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The destination field to put the extracted key-value pairs into
    #   @return [String]
    #
    # @!attribute [rw] field_delimiter
    #   The field delimiter string that is used between key-value pairs in
    #   the original log events. If you omit this, the ampersand `&`
    #   character is used.
    #   @return [String]
    #
    # @!attribute [rw] key_value_delimiter
    #   The delimiter string to use between the key and value in each pair
    #   in the transformed log event.
    #
    #   If you omit this, the equal `=` character is used.
    #   @return [String]
    #
    # @!attribute [rw] key_prefix
    #   If you want to add a prefix to all transformed keys, specify it
    #   here.
    #   @return [String]
    #
    # @!attribute [rw] non_match_value
    #   A value to insert into the value field in the result, when a
    #   key-value pair is not successfully split.
    #   @return [String]
    #
    # @!attribute [rw] overwrite_if_exists
    #   Specifies whether to overwrite the value if the destination key
    #   already exists. If you omit this, the default is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ParseKeyValue AWS API Documentation
    #
    class ParseKeyValue < Struct.new(
      :source,
      :destination,
      :field_delimiter,
      :key_value_delimiter,
      :key_prefix,
      :non_match_value,
      :overwrite_if_exists)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this processor to parse RDS for PostgreSQL vended logs, extract
    # fields, and and convert them into a JSON format. This processor always
    # processes the entire log event message. For more information about
    # this processor including examples, see [ parsePostGres][1].
    #
    # For more information about RDS for PostgreSQL log format, see [ RDS
    # for PostgreSQL database log filesTCP flag sequence][2].
    #
    # If you use this processor, it must be the first processor in your
    # transformer.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parsePostGres
    # [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.Concepts.PostgreSQL.html#USER_LogAccess.Concepts.PostgreSQL.Log_Format.log-line-prefix
    #
    # @!attribute [rw] source
    #   Omit this parameter and the whole log message will be processed by
    #   this processor. No other value than `@message` is allowed for
    #   `source`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ParsePostgres AWS API Documentation
    #
    class ParsePostgres < Struct.new(
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this processor to parse Route 53 vended logs, extract fields, and
    # and convert them into a JSON format. This processor always processes
    # the entire log event message. For more information about this
    # processor including examples, see [ parseRoute53][1].
    #
    # If you use this processor, it must be the first processor in your
    # transformer.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parseRoute53
    #
    # @!attribute [rw] source
    #   Omit this parameter and the whole log message will be processed by
    #   this processor. No other value than `@message` is allowed for
    #   `source`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ParseRoute53 AWS API Documentation
    #
    class ParseRoute53 < Struct.new(
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this processor to parse Amazon VPC vended logs, extract fields,
    # and and convert them into a JSON format. This processor always
    # processes the entire log event message.
    #
    # This processor doesn't support custom log formats, such as NAT
    # gateway logs. For more information about custom log formats in Amazon
    # VPC, see [ parseVPC][1] For more information about this processor
    # including examples, see [ parseVPC][2].
    #
    # If you use this processor, it must be the first processor in your
    # transformer.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs-records-examples.html#flow-log-example-tcp-flag
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parseVPC
    #
    # @!attribute [rw] source
    #   Omit this parameter and the whole log message will be processed by
    #   this processor. No other value than `@message` is allowed for
    #   `source`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ParseVPC AWS API Documentation
    #
    class ParseVPC < Struct.new(
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this processor to parse WAF vended logs, extract fields, and and
    # convert them into a JSON format. This processor always processes the
    # entire log event message. For more information about this processor
    # including examples, see [ parseWAF][1].
    #
    # For more information about WAF log format, see [ Log examples for web
    # ACL traffic][2].
    #
    # If you use this processor, it must be the first processor in your
    # transformer.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parsePostGres
    # [2]: https://docs.aws.amazon.com/waf/latest/developerguide/logging-examples.html
    #
    # @!attribute [rw] source
    #   Omit this parameter and the whole log message will be processed by
    #   this processor. No other value than `@message` is allowed for
    #   `source`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ParseWAF AWS API Documentation
    #
    class ParseWAF < Struct.new(
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about one pattern token related
    # to an anomaly.
    #
    # For more information about patterns and tokens, see
    # [CreateLogAnomalyDetector][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateLogAnomalyDetector.html
    #
    # @!attribute [rw] dynamic_token_position
    #   For a dynamic token, this indicates where in the pattern that this
    #   token appears, related to other dynamic tokens. The dynamic token
    #   that appears first has a value of `1`, the one that appears second
    #   is `2`, and so on.
    #   @return [Integer]
    #
    # @!attribute [rw] is_dynamic
    #   Specifies whether this is a dynamic token.
    #   @return [Boolean]
    #
    # @!attribute [rw] token_string
    #   The string represented by this token. If this is a dynamic token,
    #   the value will be `<*>`
    #   @return [String]
    #
    # @!attribute [rw] enumerations
    #   Contains the values found for a dynamic token, and the number of
    #   times each value was found.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] inferred_token_name
    #   A name that CloudWatch Logs assigned to this dynamic token to make
    #   the pattern more readable. The string part of the
    #   `inferredTokenName` gives you a clearer idea of the content of this
    #   token. The number part of the `inferredTokenName` shows where in the
    #   pattern this token appears, compared to other dynamic tokens.
    #   CloudWatch Logs assigns the string part of the name based on
    #   analyzing the content of the log events that contain it.
    #
    #   For example, an inferred token name of `IPAddress-3` means that the
    #   token represents an IP address, and this token is the third dynamic
    #   token in the pattern.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PatternToken AWS API Documentation
    #
    class PatternToken < Struct.new(
      :dynamic_token_position,
      :is_dynamic,
      :token_string,
      :enumerations,
      :inferred_token_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about one delivery destination
    # policy.
    #
    # @!attribute [rw] delivery_destination_policy
    #   The contents of the delivery destination policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/Policy AWS API Documentation
    #
    class Policy < Struct.new(
      :delivery_destination_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains the information about one processor in a log
    # transformer.
    #
    # @!attribute [rw] add_keys
    #   Use this parameter to include the [ addKeys][1] processor in your
    #   transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-addKeys
    #   @return [Types::AddKeys]
    #
    # @!attribute [rw] copy_value
    #   Use this parameter to include the [ copyValue][1] processor in your
    #   transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-copyValue
    #   @return [Types::CopyValue]
    #
    # @!attribute [rw] csv
    #   Use this parameter to include the [ CSV][1] processor in your
    #   transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-CSV
    #   @return [Types::CSV]
    #
    # @!attribute [rw] date_time_converter
    #   Use this parameter to include the [ datetimeConverter][1] processor
    #   in your transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-datetimeConverter
    #   @return [Types::DateTimeConverter]
    #
    # @!attribute [rw] delete_keys
    #   Use this parameter to include the [ deleteKeys][1] processor in your
    #   transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-deleteKeys
    #   @return [Types::DeleteKeys]
    #
    # @!attribute [rw] grok
    #   Use this parameter to include the [ grok][1] processor in your
    #   transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-grok
    #   @return [Types::Grok]
    #
    # @!attribute [rw] list_to_map
    #   Use this parameter to include the [ listToMap][1] processor in your
    #   transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-listToMap
    #   @return [Types::ListToMap]
    #
    # @!attribute [rw] lower_case_string
    #   Use this parameter to include the [ lowerCaseString][1] processor in
    #   your transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-lowerCaseString
    #   @return [Types::LowerCaseString]
    #
    # @!attribute [rw] move_keys
    #   Use this parameter to include the [ moveKeys][1] processor in your
    #   transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-moveKeys
    #   @return [Types::MoveKeys]
    #
    # @!attribute [rw] parse_cloudfront
    #   Use this parameter to include the [ parseCloudfront][1] processor in
    #   your transformer.
    #
    #   If you use this processor, it must be the first processor in your
    #   transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parseCloudfront
    #   @return [Types::ParseCloudfront]
    #
    # @!attribute [rw] parse_json
    #   Use this parameter to include the [ parseJSON][1] processor in your
    #   transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parseJSON
    #   @return [Types::ParseJSON]
    #
    # @!attribute [rw] parse_key_value
    #   Use this parameter to include the [ parseKeyValue][1] processor in
    #   your transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parseKeyValue
    #   @return [Types::ParseKeyValue]
    #
    # @!attribute [rw] parse_route_53
    #   Use this parameter to include the [ parseRoute53][1] processor in
    #   your transformer.
    #
    #   If you use this processor, it must be the first processor in your
    #   transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parseRoute53
    #   @return [Types::ParseRoute53]
    #
    # @!attribute [rw] parse_postgres
    #   Use this parameter to include the [ parsePostGres][1] processor in
    #   your transformer.
    #
    #   If you use this processor, it must be the first processor in your
    #   transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parsePostGres
    #   @return [Types::ParsePostgres]
    #
    # @!attribute [rw] parse_vpc
    #   Use this parameter to include the [ parseVPC][1] processor in your
    #   transformer.
    #
    #   If you use this processor, it must be the first processor in your
    #   transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parseVPC
    #   @return [Types::ParseVPC]
    #
    # @!attribute [rw] parse_waf
    #   Use this parameter to include the [ parseWAF][1] processor in your
    #   transformer.
    #
    #   If you use this processor, it must be the first processor in your
    #   transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parseWAF
    #   @return [Types::ParseWAF]
    #
    # @!attribute [rw] rename_keys
    #   Use this parameter to include the [ renameKeys][1] processor in your
    #   transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-renameKeys
    #   @return [Types::RenameKeys]
    #
    # @!attribute [rw] split_string
    #   Use this parameter to include the [ splitString][1] processor in
    #   your transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-splitString
    #   @return [Types::SplitString]
    #
    # @!attribute [rw] substitute_string
    #   Use this parameter to include the [ substituteString][1] processor
    #   in your transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-substituteString
    #   @return [Types::SubstituteString]
    #
    # @!attribute [rw] trim_string
    #   Use this parameter to include the [ trimString][1] processor in your
    #   transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-trimString
    #   @return [Types::TrimString]
    #
    # @!attribute [rw] type_converter
    #   Use this parameter to include the [ typeConverter][1] processor in
    #   your transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-typeConverter
    #   @return [Types::TypeConverter]
    #
    # @!attribute [rw] upper_case_string
    #   Use this parameter to include the [ upperCaseString][1] processor in
    #   your transformer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-upperCaseString
    #   @return [Types::UpperCaseString]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/Processor AWS API Documentation
    #
    class Processor < Struct.new(
      :add_keys,
      :copy_value,
      :csv,
      :date_time_converter,
      :delete_keys,
      :grok,
      :list_to_map,
      :lower_case_string,
      :move_keys,
      :parse_cloudfront,
      :parse_json,
      :parse_key_value,
      :parse_route_53,
      :parse_postgres,
      :parse_vpc,
      :parse_waf,
      :rename_keys,
      :split_string,
      :substitute_string,
      :trim_string,
      :type_converter,
      :upper_case_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_name
    #   A name for the policy. This must be unique within the account.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   Specify the policy, in JSON.
    #
    #   **Data protection policy**
    #
    #   A data protection policy must include two JSON blocks:
    #
    #   * The first block must include both a `DataIdentifer` array and an
    #     `Operation` property with an `Audit` action. The `DataIdentifer`
    #     array lists the types of sensitive data that you want to mask. For
    #     more information about the available options, see [Types of data
    #     that you can mask][1].
    #
    #     The `Operation` property with an `Audit` action is required to
    #     find the sensitive data terms. This `Audit` action must contain a
    #     `FindingsDestination` object. You can optionally use that
    #     `FindingsDestination` object to list one or more destinations to
    #     send audit findings to. If you specify destinations such as log
    #     groups, Firehose streams, and S3 buckets, they must already exist.
    #
    #   * The second block must include both a `DataIdentifer` array and an
    #     `Operation` property with an `Deidentify` action. The
    #     `DataIdentifer` array must exactly match the `DataIdentifer` array
    #     in the first block of the policy.
    #
    #     The `Operation` property with the `Deidentify` action is what
    #     actually masks the data, and it must contain the ` "MaskConfig":
    #     {}` object. The ` "MaskConfig": {}` object must be empty.
    #
    #   For an example data protection policy, see the **Examples** section
    #   on this page.
    #
    #   The contents of the two `DataIdentifer` arrays must match exactly.
    #
    #   In addition to the two JSON blocks, the `policyDocument` can also
    #   include `Name`, `Description`, and `Version` fields. The `Name` is
    #   different than the operation's `policyName` parameter, and is used
    #   as a dimension when CloudWatch Logs reports audit findings metrics
    #   to CloudWatch.
    #
    #   The JSON specified in `policyDocument` can be up to 30,720
    #   characters long.
    #
    #   **Subscription filter policy**
    #
    #   A subscription filter policy can include the following attributes in
    #   a JSON block:
    #
    #   * **DestinationArn** The ARN of the destination to deliver log
    #     events to. Supported destinations are:
    #
    #     * An Kinesis Data Streams data stream in the same account as the
    #       subscription policy, for same-account delivery.
    #
    #     * An Firehose data stream in the same account as the subscription
    #       policy, for same-account delivery.
    #
    #     * A Lambda function in the same account as the subscription
    #       policy, for same-account delivery.
    #
    #     * A logical destination in a different account created with
    #       [PutDestination][2], for cross-account delivery. Kinesis Data
    #       Streams and Firehose are supported as logical destinations.
    #   * **RoleArn** The ARN of an IAM role that grants CloudWatch Logs
    #     permissions to deliver ingested log events to the destination
    #     stream. You don't need to provide the ARN when you are working
    #     with a logical destination for cross-account delivery.
    #
    #   * **FilterPattern** A filter pattern for subscribing to a filtered
    #     stream of log events.
    #
    #   * **Distribution** The method used to distribute log data to the
    #     destination. By default, log data is grouped by log stream, but
    #     the grouping can be set to `Random` for a more even distribution.
    #     This property is only applicable when the destination is an
    #     Kinesis Data Streams data stream.
    #
    #   **Transformer policy**
    #
    #   A transformer policy must include one JSON block with the array of
    #   processors and their configurations. For more information about
    #   available processors, see [ Processors that you can use][3].
    #
    #   **Field index policy**
    #
    #   A field index filter policy can include the following attribute in a
    #   JSON block:
    #
    #   * **Fields** The array of field indexes to create.
    #
    #   ^
    #
    #   It must contain at least one field index.
    #
    #   The following is an example of an index policy document that creates
    #   two indexes, `RequestId` and `TransactionId`.
    #
    #   `"policyDocument": "{ "Fields": [ "RequestId", "TransactionId"
    #   ] }"`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data-types.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestination.html
    #   [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-Processors
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The type of policy that you're creating or updating.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Currently the only valid value for this parameter is `ALL`, which
    #   specifies that the data protection policy applies to all log groups
    #   in the account. If you omit this parameter, the default of `ALL` is
    #   used.
    #   @return [String]
    #
    # @!attribute [rw] selection_criteria
    #   Use this parameter to apply the new policy to a subset of log groups
    #   in the account.
    #
    #   Specifing `selectionCriteria` is valid only when you specify
    #   `SUBSCRIPTION_FILTER_POLICY`, `FIELD_INDEX_POLICY` or
    #   `TRANSFORMER_POLICY`for `policyType`.
    #
    #   If `policyType` is `SUBSCRIPTION_FILTER_POLICY`, the only supported
    #   `selectionCriteria` filter is `LogGroupName NOT IN []`
    #
    #   If `policyType` is `FIELD_INDEX_POLICY` or `TRANSFORMER_POLICY`, the
    #   only supported `selectionCriteria` filter is `LogGroupNamePrefix`
    #
    #   The `selectionCriteria` string can be up to 25KB in length. The
    #   length is determined by using its UTF-8 bytes.
    #
    #   Using the `selectionCriteria` parameter with
    #   `SUBSCRIPTION_FILTER_POLICY` is useful to help prevent infinite
    #   loops. For more information, see [Log recursion prevention][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Subscriptions-recursion-prevention.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutAccountPolicyRequest AWS API Documentation
    #
    class PutAccountPolicyRequest < Struct.new(
      :policy_name,
      :policy_document,
      :policy_type,
      :scope,
      :selection_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_policy
    #   The account policy that you created.
    #   @return [Types::AccountPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutAccountPolicyResponse AWS API Documentation
    #
    class PutAccountPolicyResponse < Struct.new(
      :account_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_identifier
    #   Specify either the log group name or log group ARN.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   Specify the data protection policy, in JSON.
    #
    #   This policy must include two JSON blocks:
    #
    #   * The first block must include both a `DataIdentifer` array and an
    #     `Operation` property with an `Audit` action. The `DataIdentifer`
    #     array lists the types of sensitive data that you want to mask. For
    #     more information about the available options, see [Types of data
    #     that you can mask][1].
    #
    #     The `Operation` property with an `Audit` action is required to
    #     find the sensitive data terms. This `Audit` action must contain a
    #     `FindingsDestination` object. You can optionally use that
    #     `FindingsDestination` object to list one or more destinations to
    #     send audit findings to. If you specify destinations such as log
    #     groups, Firehose streams, and S3 buckets, they must already exist.
    #
    #   * The second block must include both a `DataIdentifer` array and an
    #     `Operation` property with an `Deidentify` action. The
    #     `DataIdentifer` array must exactly match the `DataIdentifer` array
    #     in the first block of the policy.
    #
    #     The `Operation` property with the `Deidentify` action is what
    #     actually masks the data, and it must contain the ` "MaskConfig":
    #     {}` object. The ` "MaskConfig": {}` object must be empty.
    #
    #   For an example data protection policy, see the **Examples** section
    #   on this page.
    #
    #   The contents of the two `DataIdentifer` arrays must match exactly.
    #
    #   In addition to the two JSON blocks, the `policyDocument` can also
    #   include `Name`, `Description`, and `Version` fields. The `Name` is
    #   used as a dimension when CloudWatch Logs reports audit findings
    #   metrics to CloudWatch.
    #
    #   The JSON specified in `policyDocument` can be up to 30,720
    #   characters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data-types.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDataProtectionPolicyRequest AWS API Documentation
    #
    class PutDataProtectionPolicyRequest < Struct.new(
      :log_group_identifier,
      :policy_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_identifier
    #   The log group name or ARN that you specified in your request.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The data protection policy used for this log group.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time that this policy was most recently updated.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDataProtectionPolicyResponse AWS API Documentation
    #
    class PutDataProtectionPolicyResponse < Struct.new(
      :log_group_identifier,
      :policy_document,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_destination_name
    #   The name of the delivery destination to assign this policy to.
    #   @return [String]
    #
    # @!attribute [rw] delivery_destination_policy
    #   The contents of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDeliveryDestinationPolicyRequest AWS API Documentation
    #
    class PutDeliveryDestinationPolicyRequest < Struct.new(
      :delivery_destination_name,
      :delivery_destination_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The contents of the policy that you just created.
    #   @return [Types::Policy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDeliveryDestinationPolicyResponse AWS API Documentation
    #
    class PutDeliveryDestinationPolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for this delivery destination. This name must be unique for
    #   all delivery destinations in your account.
    #   @return [String]
    #
    # @!attribute [rw] output_format
    #   The format for the logs that this delivery destination will receive.
    #   @return [String]
    #
    # @!attribute [rw] delivery_destination_configuration
    #   A structure that contains the ARN of the Amazon Web Services
    #   resource that will receive the logs.
    #   @return [Types::DeliveryDestinationConfiguration]
    #
    # @!attribute [rw] tags
    #   An optional list of key-value pairs to associate with the resource.
    #
    #   For more information about tagging, see [Tagging Amazon Web Services
    #   resources][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDeliveryDestinationRequest AWS API Documentation
    #
    class PutDeliveryDestinationRequest < Struct.new(
      :name,
      :output_format,
      :delivery_destination_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_destination
    #   A structure containing information about the delivery destination
    #   that you just created or updated.
    #   @return [Types::DeliveryDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDeliveryDestinationResponse AWS API Documentation
    #
    class PutDeliveryDestinationResponse < Struct.new(
      :delivery_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for this delivery source. This name must be unique for all
    #   delivery sources in your account.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the Amazon Web Services resource that is generating and
    #   sending logs. For example,
    #   `arn:aws:workmail:us-east-1:123456789012:organization/m-1234EXAMPLEabcd1234abcd1234abcd1234`
    #   @return [String]
    #
    # @!attribute [rw] log_type
    #   Defines the type of log that the source is sending.
    #
    #   * For Amazon Bedrock, the valid value is `APPLICATION_LOGS`.
    #
    #   * For CloudFront, the valid value is `ACCESS_LOGS`.
    #
    #   * For Amazon CodeWhisperer, the valid value is `EVENT_LOGS`.
    #
    #   * For Elemental MediaPackage, the valid values are
    #     `EGRESS_ACCESS_LOGS` and `INGRESS_ACCESS_LOGS`.
    #
    #   * For Elemental MediaTailor, the valid values are
    #     `AD_DECISION_SERVER_LOGS`, `MANIFEST_SERVICE_LOGS`, and
    #     `TRANSCODE_LOGS`.
    #
    #   * For IAM Identity Center, the valid value is `ERROR_LOGS`.
    #
    #   * For Amazon Q, the valid value is `EVENT_LOGS`.
    #
    #   * For Amazon SES mail manager, the valid value is `APPLICATION_LOG`.
    #
    #   * For Amazon WorkMail, the valid values are `ACCESS_CONTROL_LOGS`,
    #     `AUTHENTICATION_LOGS`, `WORKMAIL_AVAILABILITY_PROVIDER_LOGS`,
    #     `WORKMAIL_MAILBOX_ACCESS_LOGS`, and
    #     `WORKMAIL_PERSONAL_ACCESS_TOKEN_LOGS`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An optional list of key-value pairs to associate with the resource.
    #
    #   For more information about tagging, see [Tagging Amazon Web Services
    #   resources][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDeliverySourceRequest AWS API Documentation
    #
    class PutDeliverySourceRequest < Struct.new(
      :name,
      :resource_arn,
      :log_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_source
    #   A structure containing information about the delivery source that
    #   was just created or updated.
    #   @return [Types::DeliverySource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDeliverySourceResponse AWS API Documentation
    #
    class PutDeliverySourceResponse < Struct.new(
      :delivery_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_name
    #   A name for an existing destination.
    #   @return [String]
    #
    # @!attribute [rw] access_policy
    #   An IAM policy document that authorizes cross-account users to
    #   deliver their log events to the associated destination. This can be
    #   up to 5120 bytes.
    #   @return [String]
    #
    # @!attribute [rw] force_update
    #   Specify true if you are updating an existing destination policy to
    #   grant permission to an organization ID instead of granting
    #   permission to individual Amazon Web Services accounts. Before you
    #   update a destination policy this way, you must first update the
    #   subscription filters in the accounts that send logs to this
    #   destination. If you do not, the subscription filters might stop
    #   working. By specifying `true` for `forceUpdate`, you are affirming
    #   that you have already updated the subscription filters. For more
    #   information, see [ Updating an existing cross-account
    #   subscription][1]
    #
    #   If you omit this parameter, the default of `false` is used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Cross-Account-Log_Subscription-Update.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDestinationPolicyRequest AWS API Documentation
    #
    class PutDestinationPolicyRequest < Struct.new(
      :destination_name,
      :access_policy,
      :force_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_name
    #   A name for the destination.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The ARN of an Amazon Kinesis stream to which to deliver matching log
    #   events.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM role that grants CloudWatch Logs permissions to
    #   call the Amazon Kinesis `PutRecord` operation on the destination
    #   stream.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An optional list of key-value pairs to associate with the resource.
    #
    #   For more information about tagging, see [Tagging Amazon Web Services
    #   resources][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDestinationRequest AWS API Documentation
    #
    class PutDestinationRequest < Struct.new(
      :destination_name,
      :target_arn,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination
    #   The destination.
    #   @return [Types::Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDestinationResponse AWS API Documentation
    #
    class PutDestinationResponse < Struct.new(
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_identifier
    #   Specify either the log group name or log group ARN to apply this
    #   field index policy to. If you specify an ARN, use the format
    #   arn:aws:logs:*region*:*account-id*:log-group:*log\_group\_name*
    #   Don't include an * at the end.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The index policy document, in JSON format. The following is an
    #   example of an index policy document that creates two indexes,
    #   `RequestId` and `TransactionId`.
    #
    #   `"policyDocument": "{ "Fields": [ "RequestId", "TransactionId" ] }"`
    #
    #   The policy document must include at least one field index. For more
    #   information about the fields that can be included and other
    #   restrictions, see [Field index syntax and quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-Field-Indexing-Syntax.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutIndexPolicyRequest AWS API Documentation
    #
    class PutIndexPolicyRequest < Struct.new(
      :log_group_identifier,
      :policy_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] index_policy
    #   The index policy that you just created or updated.
    #   @return [Types::IndexPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutIndexPolicyResponse AWS API Documentation
    #
    class PutIndexPolicyResponse < Struct.new(
      :index_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_name
    #   A name for the integration.
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   A structure that contains configuration information for the
    #   integration that you are creating.
    #   @return [Types::ResourceConfig]
    #
    # @!attribute [rw] integration_type
    #   The type of integration. Currently, the only supported type is
    #   `OPENSEARCH`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutIntegrationRequest AWS API Documentation
    #
    class PutIntegrationRequest < Struct.new(
      :integration_name,
      :resource_config,
      :integration_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_name
    #   The name of the integration that you just created.
    #   @return [String]
    #
    # @!attribute [rw] integration_status
    #   The status of the integration that you just created.
    #
    #   After you create an integration, it takes a few minutes to complete.
    #   During this time, you'll see the status as `PROVISIONING`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutIntegrationResponse AWS API Documentation
    #
    class PutIntegrationResponse < Struct.new(
      :integration_name,
      :integration_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name
    #   The name of the log stream.
    #   @return [String]
    #
    # @!attribute [rw] log_events
    #   The log events.
    #   @return [Array<Types::InputLogEvent>]
    #
    # @!attribute [rw] sequence_token
    #   The sequence token obtained from the response of the previous
    #   `PutLogEvents` call.
    #
    #   The `sequenceToken` parameter is now ignored in `PutLogEvents`
    #   actions. `PutLogEvents` actions are now accepted and never return
    #   `InvalidSequenceTokenException` or `DataAlreadyAcceptedException`
    #   even if the sequence token is not valid.
    #   @return [String]
    #
    # @!attribute [rw] entity
    #   The entity associated with the log events.
    #   @return [Types::Entity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutLogEventsRequest AWS API Documentation
    #
    class PutLogEventsRequest < Struct.new(
      :log_group_name,
      :log_stream_name,
      :log_events,
      :sequence_token,
      :entity)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_sequence_token
    #   The next sequence token.
    #
    #   This field has been deprecated.
    #
    #    The sequence token is now ignored in `PutLogEvents` actions.
    #   `PutLogEvents` actions are always accepted even if the sequence
    #   token is not valid. You can use parallel `PutLogEvents` actions on
    #   the same log stream and you do not need to wait for the response of
    #   a previous `PutLogEvents` action to obtain the `nextSequenceToken`
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] rejected_log_events_info
    #   The rejected events.
    #   @return [Types::RejectedLogEventsInfo]
    #
    # @!attribute [rw] rejected_entity_info
    #   Information about why the entity is rejected when calling
    #   `PutLogEvents`. Only returned when the entity is rejected.
    #
    #   <note markdown="1"> When the entity is rejected, the events may still be accepted.
    #
    #    </note>
    #   @return [Types::RejectedEntityInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutLogEventsResponse AWS API Documentation
    #
    class PutLogEventsResponse < Struct.new(
      :next_sequence_token,
      :rejected_log_events_info,
      :rejected_entity_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] filter_name
    #   A name for the metric filter.
    #   @return [String]
    #
    # @!attribute [rw] filter_pattern
    #   A filter pattern for extracting metric data out of ingested log
    #   events.
    #   @return [String]
    #
    # @!attribute [rw] metric_transformations
    #   A collection of information that defines how metric data gets
    #   emitted.
    #   @return [Array<Types::MetricTransformation>]
    #
    # @!attribute [rw] apply_on_transformed_logs
    #   This parameter is valid only for log groups that have an active log
    #   transformer. For more information about log transformers, see
    #   [PutTransformer][1].
    #
    #   If the log group uses either a log-group level or account-level
    #   transformer, and you specify `true`, the metric filter will be
    #   applied on the transformed version of the log events instead of the
    #   original ingested log events.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutTransformer.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutMetricFilterRequest AWS API Documentation
    #
    class PutMetricFilterRequest < Struct.new(
      :log_group_name,
      :filter_name,
      :filter_pattern,
      :metric_transformations,
      :apply_on_transformed_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_language
    #   Specify the query language to use for this query. The options are
    #   Logs Insights QL, OpenSearch PPL, and OpenSearch SQL. For more
    #   information about the query languages that CloudWatch Logs supports,
    #   see [Supported query languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the query definition. If you are saving numerous query
    #   definitions, we recommend that you name them. This way, you can find
    #   the ones you want by using the first part of the name as a filter in
    #   the `queryDefinitionNamePrefix` parameter of
    #   [DescribeQueryDefinitions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html
    #   @return [String]
    #
    # @!attribute [rw] query_definition_id
    #   If you are updating a query definition, use this parameter to
    #   specify the ID of the query definition that you want to update. You
    #   can use [DescribeQueryDefinitions][1] to retrieve the IDs of your
    #   saved query definitions.
    #
    #   If you are creating a query definition, do not specify this
    #   parameter. CloudWatch generates a unique ID for the new query
    #   definition and include it in the response to this operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html
    #   @return [String]
    #
    # @!attribute [rw] log_group_names
    #   Use this parameter to include specific log groups as part of your
    #   query definition. If your query uses the OpenSearch Service query
    #   language, you specify the log group names inside the `querystring`
    #   instead of here.
    #
    #   If you are updating an existing query definition for the Logs
    #   Insights QL or OpenSearch Service PPL and you omit this parameter,
    #   then the updated definition will contain no log groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] query_string
    #   The query string to use for this definition. For more information,
    #   see [CloudWatch Logs Insights Query Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Used as an idempotency token, to avoid returning an exception if the
    #   service receives the same request twice because of a network error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutQueryDefinitionRequest AWS API Documentation
    #
    class PutQueryDefinitionRequest < Struct.new(
      :query_language,
      :name,
      :query_definition_id,
      :log_group_names,
      :query_string,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_definition_id
    #   The ID of the query definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutQueryDefinitionResponse AWS API Documentation
    #
    class PutQueryDefinitionResponse < Struct.new(
      :query_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_name
    #   Name of the new policy. This parameter is required.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   Details of the new policy, including the identity of the principal
    #   that is enabled to put logs to this account. This is formatted as a
    #   JSON string. This parameter is required.
    #
    #   The following example creates a resource policy enabling the Route
    #   53 service to put DNS query logs in to the specified log group.
    #   Replace `"logArn"` with the ARN of your CloudWatch Logs resource,
    #   such as a log group or log stream.
    #
    #   CloudWatch Logs also supports [aws:SourceArn][1] and
    #   [aws:SourceAccount][2] condition context keys.
    #
    #   In the example resource policy, you would replace the value of
    #   `SourceArn` with the resource making the call from Route 53 to
    #   CloudWatch Logs. You would also replace the value of `SourceAccount`
    #   with the Amazon Web Services account ID making that call.
    #
    #
    #
    #   `{ "Version": "2012-10-17", "Statement": [ { "Sid":
    #   "Route53LogsToCloudWatchLogs", "Effect": "Allow", "Principal": {
    #   "Service": [ "route53.amazonaws.com" ] }, "Action":
    #   "logs:PutLogEvents", "Resource": "logArn", "Condition": { "ArnLike":
    #   { "aws:SourceArn": "myRoute53ResourceArn" }, "StringEquals": {
    #   "aws:SourceAccount": "myAwsAccountId" } } } ] }`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourcearn
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourceaccount
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :policy_name,
      :policy_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_policy
    #   The new policy.
    #   @return [Types::ResourcePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Struct.new(
      :resource_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] retention_in_days
    #   The number of days to retain the log events in the specified log
    #   group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150,
    #   180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, and
    #   3653.
    #
    #   To set a log group so that its log events do not expire, use
    #   [DeleteRetentionPolicy][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DeleteRetentionPolicy.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutRetentionPolicyRequest AWS API Documentation
    #
    class PutRetentionPolicyRequest < Struct.new(
      :log_group_name,
      :retention_in_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] filter_name
    #   A name for the subscription filter. If you are updating an existing
    #   filter, you must specify the correct name in `filterName`. To find
    #   the name of the filter currently associated with a log group, use
    #   [DescribeSubscriptionFilters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeSubscriptionFilters.html
    #   @return [String]
    #
    # @!attribute [rw] filter_pattern
    #   A filter pattern for subscribing to a filtered stream of log events.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   The ARN of the destination to deliver matching log events to.
    #   Currently, the supported destinations are:
    #
    #   * An Amazon Kinesis stream belonging to the same account as the
    #     subscription filter, for same-account delivery.
    #
    #   * A logical destination (specified using an ARN) belonging to a
    #     different account, for cross-account delivery.
    #
    #     If you're setting up a cross-account subscription, the
    #     destination must have an IAM policy associated with it. The IAM
    #     policy must allow the sender to send logs to the destination. For
    #     more information, see [PutDestinationPolicy][1].
    #
    #   * A Kinesis Data Firehose delivery stream belonging to the same
    #     account as the subscription filter, for same-account delivery.
    #
    #   * A Lambda function belonging to the same account as the
    #     subscription filter, for same-account delivery.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM role that grants CloudWatch Logs permissions to
    #   deliver ingested log events to the destination stream. You don't
    #   need to provide the ARN when you are working with a logical
    #   destination for cross-account delivery.
    #   @return [String]
    #
    # @!attribute [rw] distribution
    #   The method used to distribute log data to the destination. By
    #   default, log data is grouped by log stream, but the grouping can be
    #   set to random for a more even distribution. This property is only
    #   applicable when the destination is an Amazon Kinesis data stream.
    #   @return [String]
    #
    # @!attribute [rw] apply_on_transformed_logs
    #   This parameter is valid only for log groups that have an active log
    #   transformer. For more information about log transformers, see
    #   [PutTransformer][1].
    #
    #   If the log group uses either a log-group level or account-level
    #   transformer, and you specify `true`, the subscription filter will be
    #   applied on the transformed version of the log events instead of the
    #   original ingested log events.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutTransformer.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutSubscriptionFilterRequest AWS API Documentation
    #
    class PutSubscriptionFilterRequest < Struct.new(
      :log_group_name,
      :filter_name,
      :filter_pattern,
      :destination_arn,
      :role_arn,
      :distribution,
      :apply_on_transformed_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_identifier
    #   Specify either the name or ARN of the log group to create the
    #   transformer for.
    #   @return [String]
    #
    # @!attribute [rw] transformer_config
    #   This structure contains the configuration of this log transformer. A
    #   log transformer is an array of processors, where each processor
    #   applies one type of transformation to the log events that are
    #   ingested.
    #   @return [Array<Types::Processor>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutTransformerRequest AWS API Documentation
    #
    class PutTransformerRequest < Struct.new(
      :log_group_identifier,
      :transformer_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Reserved.
    #
    # @!attribute [rw] location
    #   Reserved.
    #   @return [Types::QueryCompileErrorLocation]
    #
    # @!attribute [rw] message
    #   Reserved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/QueryCompileError AWS API Documentation
    #
    class QueryCompileError < Struct.new(
      :location,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Reserved.
    #
    # @!attribute [rw] start_char_offset
    #   Reserved.
    #   @return [Integer]
    #
    # @!attribute [rw] end_char_offset
    #   Reserved.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/QueryCompileErrorLocation AWS API Documentation
    #
    class QueryCompileErrorLocation < Struct.new(
      :start_char_offset,
      :end_char_offset)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains details about a saved CloudWatch Logs Insights
    # query definition.
    #
    # @!attribute [rw] query_language
    #   The query language used for this query. For more information about
    #   the query languages that CloudWatch Logs supports, see [Supported
    #   query languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html
    #   @return [String]
    #
    # @!attribute [rw] query_definition_id
    #   The unique ID of the query definition.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the query definition.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The query string to use for this definition. For more information,
    #   see [CloudWatch Logs Insights Query Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date that the query definition was most recently modified.
    #   @return [Integer]
    #
    # @!attribute [rw] log_group_names
    #   If this query definition contains a list of log groups that it is
    #   limited to, that list appears here.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/QueryDefinition AWS API Documentation
    #
    class QueryDefinition < Struct.new(
      :query_language,
      :query_definition_id,
      :name,
      :query_string,
      :last_modified,
      :log_group_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about one CloudWatch Logs Insights query that matches the
    # request in a `DescribeQueries` operation.
    #
    # @!attribute [rw] query_language
    #   The query language used for this query. For more information about
    #   the query languages that CloudWatch Logs supports, see [Supported
    #   query languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The unique ID number of this query.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The query string used in this query.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of this query. Possible values are `Cancelled`,
    #   `Complete`, `Failed`, `Running`, `Scheduled`, and `Unknown`.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The date and time that this query was created.
    #   @return [Integer]
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group scanned by this query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/QueryInfo AWS API Documentation
    #
    class QueryInfo < Struct.new(
      :query_language,
      :query_id,
      :query_string,
      :status,
      :create_time,
      :log_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the number of log events scanned by the query, the number of
    # log events that matched the query criteria, and the total number of
    # bytes in the log events that were scanned.
    #
    # If the query involved log groups that have field index policies, the
    # estimated number of skipped log events and the total bytes of those
    # skipped log events are included. Using field indexes to skip log
    # events in queries reduces scan volume and improves performance. For
    # more information, see [Create field indexes to improve query
    # performance and reduce scan volume][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-Field-Indexing.html
    #
    # @!attribute [rw] records_matched
    #   The number of log events that matched the query string.
    #   @return [Float]
    #
    # @!attribute [rw] records_scanned
    #   The total number of log events scanned during the query.
    #   @return [Float]
    #
    # @!attribute [rw] estimated_records_skipped
    #   An estimate of the number of log events that were skipped when
    #   processing this query, because the query contained an indexed field.
    #   Skipping these entries lowers query costs and improves the query
    #   performance time. For more information about field indexes, see
    #   [PutIndexPolicy][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutIndexPolicy.html
    #   @return [Float]
    #
    # @!attribute [rw] bytes_scanned
    #   The total number of bytes in the log events scanned during the
    #   query.
    #   @return [Float]
    #
    # @!attribute [rw] estimated_bytes_skipped
    #   An estimate of the number of bytes in the log events that were
    #   skipped when processing this query, because the query contained an
    #   indexed field. Skipping these entries lowers query costs and
    #   improves the query performance time. For more information about
    #   field indexes, see [PutIndexPolicy][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutIndexPolicy.html
    #   @return [Float]
    #
    # @!attribute [rw] log_groups_scanned
    #   The number of log groups that were scanned by this query.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/QueryStatistics AWS API Documentation
    #
    class QueryStatistics < Struct.new(
      :records_matched,
      :records_scanned,
      :estimated_records_skipped,
      :bytes_scanned,
      :estimated_bytes_skipped,
      :log_groups_scanned)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents a valid record field header and whether it
    # is mandatory.
    #
    # @!attribute [rw] name
    #   The name to use when specifying this record field in a
    #   [CreateDelivery][1] or [UpdateDeliveryConfiguration][2] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateDeliveryConfiguration.html
    #   @return [String]
    #
    # @!attribute [rw] mandatory
    #   If this is `true`, the record field must be present in the
    #   `recordFields` parameter provided to a [CreateDelivery][1] or
    #   [UpdateDeliveryConfiguration][2] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateDeliveryConfiguration.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/RecordField AWS API Documentation
    #
    class RecordField < Struct.new(
      :name,
      :mandatory)
      SENSITIVE = []
      include Aws::Structure
    end

    # If an entity is rejected when a `PutLogEvents` request was made, this
    # includes details about the reason for the rejection.
    #
    # @!attribute [rw] error_type
    #   The type of error that caused the rejection of the entity when
    #   calling `PutLogEvents`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/RejectedEntityInfo AWS API Documentation
    #
    class RejectedEntityInfo < Struct.new(
      :error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the rejected events.
    #
    # @!attribute [rw] too_new_log_event_start_index
    #   The index of the first log event that is too new. This field is
    #   inclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] too_old_log_event_end_index
    #   The index of the last log event that is too old. This field is
    #   exclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] expired_log_event_end_index
    #   The expired log events.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/RejectedLogEventsInfo AWS API Documentation
    #
    class RejectedLogEventsInfo < Struct.new(
      :too_new_log_event_start_index,
      :too_old_log_event_end_index,
      :expired_log_event_end_index)
      SENSITIVE = []
      include Aws::Structure
    end

    # This object defines one key that will be renamed with the [
    # renameKey][1] processor.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-renameKey
    #
    # @!attribute [rw] key
    #   The key to rename
    #   @return [String]
    #
    # @!attribute [rw] rename_to
    #   The string to use for the new key name
    #   @return [String]
    #
    # @!attribute [rw] overwrite_if_exists
    #   Specifies whether to overwrite the existing value if the destination
    #   key already exists. The default is `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/RenameKeyEntry AWS API Documentation
    #
    class RenameKeyEntry < Struct.new(
      :key,
      :rename_to,
      :overwrite_if_exists)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this processor to rename keys in a log event.
    #
    # For more information about this processor including examples, see [
    # renameKeys][1] in the *CloudWatch Logs User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-renameKeys
    #
    # @!attribute [rw] entries
    #   An array of `RenameKeyEntry` objects, where each object contains the
    #   information about a single key to rename.
    #   @return [Array<Types::RenameKeyEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/RenameKeys AWS API Documentation
    #
    class RenameKeys < Struct.new(
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Aws::EmptyStructure; end

    # This structure contains configuration details about an integration
    # between CloudWatch Logs and another entity.
    #
    # @note ResourceConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] open_search_resource_config
    #   This structure contains configuration details about an integration
    #   between CloudWatch Logs and OpenSearch Service.
    #   @return [Types::OpenSearchResourceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ResourceConfig AWS API Documentation
    #
    class ResourceConfig < Struct.new(
      :open_search_resource_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OpenSearchResourceConfig < ResourceConfig; end
      class Unknown < ResourceConfig; end
    end

    # The specified resource does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

    # A policy enabling one or more entities to put logs to a log group in
    # this account.
    #
    # @!attribute [rw] policy_name
    #   The name of the resource policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The details of the policy.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp showing when this policy was last updated, expressed as
    #   the number of milliseconds after `Jan 1, 1970 00:00:00 UTC`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ResourcePolicy AWS API Documentation
    #
    class ResourcePolicy < Struct.new(
      :policy_name,
      :policy_document,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains one field from one log event returned by a CloudWatch Logs
    # Insights query, along with the value of that field.
    #
    # For more information about the fields that are generated by CloudWatch
    # logs, see [Supported Logs and Discovered Fields][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData-discoverable-fields.html
    #
    # @!attribute [rw] field
    #   The log event field.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of this field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ResultField AWS API Documentation
    #
    class ResultField < Struct.new(
      :field,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains delivery configurations that apply only when
    # the delivery destination resource is an S3 bucket.
    #
    # @!attribute [rw] suffix_path
    #   This string allows re-configuring the S3 object prefix to contain
    #   either static or variable sections. The valid variables to use in
    #   the suffix path will vary by each log source. To find the values
    #   supported for the suffix path for each log source, use the
    #   [DescribeConfigurationTemplates][1] operation and check the
    #   `allowedSuffixPathFields` field in the response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeConfigurationTemplates.html
    #   @return [String]
    #
    # @!attribute [rw] enable_hive_compatible_path
    #   This parameter causes the S3 objects that contain delivered logs to
    #   use a prefix structure that allows for integration with Apache Hive.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/S3DeliveryConfiguration AWS API Documentation
    #
    class S3DeliveryConfiguration < Struct.new(
      :suffix_path,
      :enable_hive_compatible_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the search status of a log stream.
    #
    # @!attribute [rw] log_stream_name
    #   The name of the log stream.
    #   @return [String]
    #
    # @!attribute [rw] searched_completely
    #   Indicates whether all the events in this log stream were searched.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/SearchedLogStream AWS API Documentation
    #
    class SearchedLogStream < Struct.new(
      :log_stream_name,
      :searched_completely)
      SENSITIVE = []
      include Aws::Structure
    end

    # This request exceeds a service quota.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Aws::EmptyStructure; end

    # The service cannot complete the request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Aws::EmptyStructure; end

    # This exception is returned if an unknown error occurs during a Live
    # Tail session.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/SessionStreamingException AWS API Documentation
    #
    class SessionStreamingException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is returned in a Live Tail stream when the Live Tail
    # session times out. Live Tail sessions time out after three hours.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/SessionTimeoutException AWS API Documentation
    #
    class SessionTimeoutException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this processor to split a field into an array of strings using a
    # delimiting character.
    #
    # For more information about this processor including examples, see [
    # splitString][1] in the *CloudWatch Logs User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-splitString
    #
    # @!attribute [rw] entries
    #   An array of `SplitStringEntry` objects, where each object contains
    #   the information about one field to split.
    #   @return [Array<Types::SplitStringEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/SplitString AWS API Documentation
    #
    class SplitString < Struct.new(
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # This object defines one log field that will be split with the [
    # splitString][1] processor.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-splitString
    #
    # @!attribute [rw] source
    #   The key of the field to split.
    #   @return [String]
    #
    # @!attribute [rw] delimiter
    #   The separator characters to split the string entry on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/SplitStringEntry AWS API Documentation
    #
    class SplitStringEntry < Struct.new(
      :source,
      :delimiter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_identifiers
    #   An array where each item in the array is a log group to include in
    #   the Live Tail session.
    #
    #   Specify each log group by its ARN.
    #
    #   If you specify an ARN, the ARN can't end with an asterisk (*).
    #
    #   <note markdown="1"> You can include up to 10 log groups.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_stream_names
    #   If you specify this parameter, then only log events in the log
    #   streams that you specify here are included in the Live Tail session.
    #
    #   If you specify this field, you can't also specify the
    #   `logStreamNamePrefixes` field.
    #
    #   <note markdown="1"> You can specify this parameter only if you specify only one log
    #   group in `logGroupIdentifiers`.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_stream_name_prefixes
    #   If you specify this parameter, then only log events in the log
    #   streams that have names that start with the prefixes that you
    #   specify here are included in the Live Tail session.
    #
    #   If you specify this field, you can't also specify the
    #   `logStreamNames` field.
    #
    #   <note markdown="1"> You can specify this parameter only if you specify only one log
    #   group in `logGroupIdentifiers`.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_event_filter_pattern
    #   An optional pattern to use to filter the results to include only log
    #   events that match the pattern. For example, a filter pattern of
    #   `error 404` causes only log events that include both `error` and
    #   `404` to be included in the Live Tail stream.
    #
    #   Regular expression filter patterns are supported.
    #
    #   For more information about filter pattern syntax, see [Filter and
    #   Pattern Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/StartLiveTailRequest AWS API Documentation
    #
    class StartLiveTailRequest < Struct.new(
      :log_group_identifiers,
      :log_stream_names,
      :log_stream_name_prefixes,
      :log_event_filter_pattern)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] response_stream
    #   An object that includes the stream returned by your request. It can
    #   include both log events and exceptions.
    #   @return [Types::StartLiveTailResponseStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/StartLiveTailResponse AWS API Documentation
    #
    class StartLiveTailResponse < Struct.new(
      :response_stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_language
    #   Specify the query language to use for this query. The options are
    #   Logs Insights QL, OpenSearch PPL, and OpenSearch SQL. For more
    #   information about the query languages that CloudWatch Logs supports,
    #   see [Supported query languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The log group on which to perform the query.
    #
    #   <note markdown="1"> A `StartQuery` operation must include exactly one of the following
    #   parameters: `logGroupName`, `logGroupNames`, or
    #   `logGroupIdentifiers`. The exception is queries using the OpenSearch
    #   Service SQL query language, where you specify the log group names
    #   inside the `querystring` instead of here.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] log_group_names
    #   The list of log groups to be queried. You can include up to 50 log
    #   groups.
    #
    #   <note markdown="1"> A `StartQuery` operation must include exactly one of the following
    #   parameters: `logGroupName`, `logGroupNames`, or
    #   `logGroupIdentifiers`. The exception is queries using the OpenSearch
    #   Service SQL query language, where you specify the log group names
    #   inside the `querystring` instead of here.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_group_identifiers
    #   The list of log groups to query. You can include up to 50 log
    #   groups.
    #
    #   You can specify them by the log group name or ARN. If a log group
    #   that you're querying is in a source account and you're using a
    #   monitoring account, you must specify the ARN of the log group here.
    #   The query definition must also be defined in the monitoring account.
    #
    #   If you specify an ARN, use the format
    #   arn:aws:logs:*region*:*account-id*:log-group:*log\_group\_name*
    #   Don't include an * at the end.
    #
    #   A `StartQuery` operation must include exactly one of the following
    #   parameters: `logGroupName`, `logGroupNames`, or
    #   `logGroupIdentifiers`. The exception is queries using the OpenSearch
    #   Service SQL query language, where you specify the log group names
    #   inside the `querystring` instead of here.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The beginning of the time range to query. The range is inclusive, so
    #   the specified start time is included in the query. Specified as
    #   epoch time, the number of seconds since `January 1, 1970, 00:00:00
    #   UTC`.
    #   @return [Integer]
    #
    # @!attribute [rw] end_time
    #   The end of the time range to query. The range is inclusive, so the
    #   specified end time is included in the query. Specified as epoch
    #   time, the number of seconds since `January 1, 1970, 00:00:00 UTC`.
    #   @return [Integer]
    #
    # @!attribute [rw] query_string
    #   The query string to use. For more information, see [CloudWatch Logs
    #   Insights Query Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of log events to return in the query. If the
    #   query string uses the `fields` command, only the specified fields
    #   and their values are returned. The default is 10,000.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/StartQueryRequest AWS API Documentation
    #
    class StartQueryRequest < Struct.new(
      :query_language,
      :log_group_name,
      :log_group_names,
      :log_group_identifiers,
      :start_time,
      :end_time,
      :query_string,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The unique ID of the query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/StartQueryResponse AWS API Documentation
    #
    class StartQueryResponse < Struct.new(
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The ID number of the query to stop. To find this ID number, use
    #   `DescribeQueries`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/StopQueryRequest AWS API Documentation
    #
    class StopQueryRequest < Struct.new(
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] success
    #   This is true if the query was stopped by the `StopQuery` operation.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/StopQueryResponse AWS API Documentation
    #
    class StopQueryResponse < Struct.new(
      :success)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a subscription filter.
    #
    # @!attribute [rw] filter_name
    #   The name of the subscription filter.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] filter_pattern
    #   A symbolic description of how CloudWatch Logs should interpret the
    #   data in each log event. For example, a log event can contain
    #   timestamps, IP addresses, strings, and so on. You use the filter
    #   pattern to specify what to look for in the log event message.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   The Amazon Resource Name (ARN) of the destination.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @!attribute [rw] distribution
    #   The method used to distribute log data to the destination, which can
    #   be either random or grouped by log stream.
    #   @return [String]
    #
    # @!attribute [rw] apply_on_transformed_logs
    #   This parameter is valid only for log groups that have an active log
    #   transformer. For more information about log transformers, see
    #   [PutTransformer][1].
    #
    #   If this value is `true`, the subscription filter is applied on the
    #   transformed version of the log events instead of the original
    #   ingested log events.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutTransformer.html
    #   @return [Boolean]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the subscription filter, expressed as the
    #   number of milliseconds after `Jan 1, 1970 00:00:00 UTC`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/SubscriptionFilter AWS API Documentation
    #
    class SubscriptionFilter < Struct.new(
      :filter_name,
      :log_group_name,
      :filter_pattern,
      :destination_arn,
      :role_arn,
      :distribution,
      :apply_on_transformed_logs,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # This processor matches a key’s value against a regular expression and
    # replaces all matches with a replacement string.
    #
    # For more information about this processor including examples, see [
    # substituteString][1] in the *CloudWatch Logs User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-substituteString
    #
    # @!attribute [rw] entries
    #   An array of objects, where each object contains the information
    #   about one key to match and replace.
    #   @return [Array<Types::SubstituteStringEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/SubstituteString AWS API Documentation
    #
    class SubstituteString < Struct.new(
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # This object defines one log field key that will be replaced using the
    # [ substituteString][1] processor.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-substituteString
    #
    # @!attribute [rw] source
    #   The key to modify
    #   @return [String]
    #
    # @!attribute [rw] from
    #   The regular expression string to be replaced. Special regex
    #   characters such as \[ and \] must be escaped using \\\\ when using
    #   double quotes and with \\ when using single quotes. For more
    #   information, see [ Class Pattern][1] on the Oracle web site.
    #
    #
    #
    #   [1]: https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/regex/Pattern.html
    #   @return [String]
    #
    # @!attribute [rw] to
    #   The string to be substituted for each match of `from`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/SubstituteStringEntry AWS API Documentation
    #
    class SubstituteStringEntry < Struct.new(
      :source,
      :from,
      :to)
      SENSITIVE = []
      include Aws::Structure
    end

    # If you are suppressing an anomaly temporariliy, this structure defines
    # how long the suppression period is to be.
    #
    # @!attribute [rw] value
    #   Specifies the number of seconds, minutes or hours to suppress this
    #   anomaly. There is no maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] suppression_unit
    #   Specifies whether the value of `value` is in seconds, minutes, or
    #   hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/SuppressionPeriod AWS API Documentation
    #
    class SuppressionPeriod < Struct.new(
      :value,
      :suppression_unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to use for the tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TagLogGroupRequest AWS API Documentation
    #
    class TagLogGroupRequest < Struct.new(
      :log_group_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource that you're adding tags to.
    #
    #   The ARN format of a log group is
    #   `arn:aws:logs:Region:account-id:log-group:log-group-name `
    #
    #   The ARN format of a destination is
    #   `arn:aws:logs:Region:account-id:destination:destination-name `
    #
    #   For more information about ARN format, see [CloudWatch Logs
    #   resources and operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs to associate with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_pattern
    #   A symbolic description of how CloudWatch Logs should interpret the
    #   data in each log event. For example, a log event can contain
    #   timestamps, IP addresses, strings, and so on. You use the filter
    #   pattern to specify what to look for in the log event message.
    #   @return [String]
    #
    # @!attribute [rw] log_event_messages
    #   The log event messages to test.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TestMetricFilterRequest AWS API Documentation
    #
    class TestMetricFilterRequest < Struct.new(
      :filter_pattern,
      :log_event_messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] matches
    #   The matched events.
    #   @return [Array<Types::MetricFilterMatchRecord>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TestMetricFilterResponse AWS API Documentation
    #
    class TestMetricFilterResponse < Struct.new(
      :matches)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transformer_config
    #   This structure contains the configuration of this log transformer
    #   that you want to test. A log transformer is an array of processors,
    #   where each processor applies one type of transformation to the log
    #   events that are ingested.
    #   @return [Array<Types::Processor>]
    #
    # @!attribute [rw] log_event_messages
    #   An array of the raw log events that you want to use to test this
    #   transformer.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TestTransformerRequest AWS API Documentation
    #
    class TestTransformerRequest < Struct.new(
      :transformer_config,
      :log_event_messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transformed_logs
    #   An array where each member of the array includes both the original
    #   version and the transformed version of one of the log events that
    #   you input.
    #   @return [Array<Types::TransformedLogRecord>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TestTransformerResponse AWS API Documentation
    #
    class TestTransformerResponse < Struct.new(
      :transformed_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was throttled because of quota limits.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Aws::EmptyStructure; end

    # A resource can have no more than 50 tags.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information for one log event that has been
    # processed by a log transformer.
    #
    # @!attribute [rw] event_number
    #   The event number.
    #   @return [Integer]
    #
    # @!attribute [rw] event_message
    #   The original log event message before it was transformed.
    #   @return [String]
    #
    # @!attribute [rw] transformed_event_message
    #   The log event message after being transformed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TransformedLogRecord AWS API Documentation
    #
    class TransformedLogRecord < Struct.new(
      :event_number,
      :event_message,
      :transformed_event_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this processor to remove leading and trailing whitespace.
    #
    # For more information about this processor including examples, see [
    # trimString][1] in the *CloudWatch Logs User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-trimString
    #
    # @!attribute [rw] with_keys
    #   The array containing the keys of the fields to trim.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TrimString AWS API Documentation
    #
    class TrimString < Struct.new(
      :with_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this processor to convert a value type associated with the
    # specified key to the specified type. It's a casting processor that
    # changes the types of the specified fields. Values can be converted
    # into one of the following datatypes: `integer`, `double`, `string` and
    # `boolean`.
    #
    # For more information about this processor including examples, see [
    # trimString][1] in the *CloudWatch Logs User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-trimString
    #
    # @!attribute [rw] entries
    #   An array of `TypeConverterEntry` objects, where each object contains
    #   the information about one field to change the type of.
    #   @return [Array<Types::TypeConverterEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TypeConverter AWS API Documentation
    #
    class TypeConverter < Struct.new(
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # This object defines one value type that will be converted using the [
    # typeConverter][1] processor.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-typeConverter
    #
    # @!attribute [rw] key
    #   The key with the value that is to be converted to a different type.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type to convert the field value to. Valid values are `integer`,
    #   `double`, `string` and `boolean`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TypeConverterEntry AWS API Documentation
    #
    class TypeConverterEntry < Struct.new(
      :key,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The most likely cause is an Amazon Web Services access key ID or
    # secret key that's not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/UnrecognizedClientException AWS API Documentation
    #
    class UnrecognizedClientException < Aws::EmptyStructure; end

    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys. The corresponding tags are removed from the log group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/UntagLogGroupRequest AWS API Documentation
    #
    class UntagLogGroupRequest < Struct.new(
      :log_group_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the CloudWatch Logs resource that you're removing tags
    #   from.
    #
    #   The ARN format of a log group is
    #   `arn:aws:logs:Region:account-id:log-group:log-group-name `
    #
    #   The ARN format of a destination is
    #   `arn:aws:logs:Region:account-id:destination:destination-name `
    #
    #   For more information about ARN format, see [CloudWatch Logs
    #   resources and operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_id
    #   If you are suppressing or unsuppressing an anomaly, specify its
    #   unique ID here. You can find anomaly IDs by using the
    #   [ListAnomalies][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListAnomalies.html
    #   @return [String]
    #
    # @!attribute [rw] pattern_id
    #   If you are suppressing or unsuppressing an pattern, specify its
    #   unique ID here. You can find pattern IDs by using the
    #   [ListAnomalies][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListAnomalies.html
    #   @return [String]
    #
    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the anomaly detector that this operation is to act on.
    #   @return [String]
    #
    # @!attribute [rw] suppression_type
    #   Use this to specify whether the suppression to be temporary or
    #   infinite. If you specify `LIMITED`, you must also specify a
    #   `suppressionPeriod`. If you specify `INFINITE`, any value for
    #   `suppressionPeriod` is ignored.
    #   @return [String]
    #
    # @!attribute [rw] suppression_period
    #   If you are temporarily suppressing an anomaly or pattern, use this
    #   structure to specify how long the suppression is to last.
    #   @return [Types::SuppressionPeriod]
    #
    # @!attribute [rw] baseline
    #   Set this to `true` to prevent CloudWatch Logs from displaying this
    #   behavior as an anomaly in the future. The behavior is then treated
    #   as baseline behavior. However, if similar but more severe
    #   occurrences of this behavior occur in the future, those will still
    #   be reported as anomalies.
    #
    #   The default is `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/UpdateAnomalyRequest AWS API Documentation
    #
    class UpdateAnomalyRequest < Struct.new(
      :anomaly_id,
      :pattern_id,
      :anomaly_detector_arn,
      :suppression_type,
      :suppression_period,
      :baseline)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the delivery to be updated by this request.
    #   @return [String]
    #
    # @!attribute [rw] record_fields
    #   The list of record fields to be delivered to the destination, in
    #   order. If the delivery's log source has mandatory fields, they must
    #   be included in this list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] field_delimiter
    #   The field delimiter to use between record fields when the final
    #   output format of a delivery is in `Plain`, `W3C`, or `Raw` format.
    #   @return [String]
    #
    # @!attribute [rw] s3_delivery_configuration
    #   This structure contains parameters that are valid only when the
    #   delivery's delivery destination is an S3 bucket.
    #   @return [Types::S3DeliveryConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/UpdateDeliveryConfigurationRequest AWS API Documentation
    #
    class UpdateDeliveryConfigurationRequest < Struct.new(
      :id,
      :record_fields,
      :field_delimiter,
      :s3_delivery_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/UpdateDeliveryConfigurationResponse AWS API Documentation
    #
    class UpdateDeliveryConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the anomaly detector that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_frequency
    #   Specifies how often the anomaly detector runs and look for
    #   anomalies. Set this value according to the frequency that the log
    #   group receives new logs. For example, if the log group receives new
    #   log events every 10 minutes, then setting `evaluationFrequency` to
    #   `FIFTEEN_MIN` might be appropriate.
    #   @return [String]
    #
    # @!attribute [rw] filter_pattern
    #   A symbolic description of how CloudWatch Logs should interpret the
    #   data in each log event. For example, a log event can contain
    #   timestamps, IP addresses, strings, and so on. You use the filter
    #   pattern to specify what to look for in the log event message.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_visibility_time
    #   The number of days to use as the life cycle of anomalies. After this
    #   time, anomalies are automatically baselined and the anomaly detector
    #   model will treat new occurrences of similar event as normal.
    #   Therefore, if you do not correct the cause of an anomaly during this
    #   time, it will be considered normal going forward and will not be
    #   detected.
    #   @return [Integer]
    #
    # @!attribute [rw] enabled
    #   Use this parameter to pause or restart the anomaly detector.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/UpdateLogAnomalyDetectorRequest AWS API Documentation
    #
    class UpdateLogAnomalyDetectorRequest < Struct.new(
      :anomaly_detector_arn,
      :evaluation_frequency,
      :filter_pattern,
      :anomaly_visibility_time,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # This processor converts a string field to uppercase.
    #
    # For more information about this processor including examples, see [
    # upperCaseString][1] in the *CloudWatch Logs User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-upperCaseString
    #
    # @!attribute [rw] with_keys
    #   The array of containing the keys of the field to convert to
    #   uppercase.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/UpperCaseString AWS API Documentation
    #
    class UpperCaseString < Struct.new(
      :with_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the parameters for the request is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ValidationException AWS API Documentation
    #
    class ValidationException < Aws::EmptyStructure; end

    # This object includes the stream returned by your [StartLiveTail][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartLiveTail.html
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/StartLiveTailResponseStream AWS API Documentation
    #
    class StartLiveTailResponseStream < Enumerator

      def event_types
        [
          :session_start,
          :session_update,
          :session_timeout_exception,
          :session_streaming_exception
        ]
      end

    end

  end
end

