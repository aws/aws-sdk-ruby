# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTAnalytics
  module Types

    # An activity that adds other attributes based on existing attributes in
    # the message.
    #
    # @!attribute [rw] name
    #   The name of the addAttributes activity.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A list of 1-50 `AttributeNameMapping` objects that map an existing
    #   attribute to a new attribute.
    #
    #   <note markdown="1"> The existing attributes remain in the message, so if you want to
    #   remove the originals, use `RemoveAttributeActivity`.
    #
    #    </note>
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] next
    #   The next activity in the pipeline.
    #   @return [String]
    #
    class AddAttributesActivity < Struct.new(
      :name,
      :attributes,
      :next)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains informations about errors.
    #
    # @!attribute [rw] message_id
    #   The ID of the message that caused the error. See the value
    #   corresponding to the `messageId` key in the message object.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The code associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message associated with the error.
    #   @return [String]
    #
    class BatchPutMessageErrorEntry < Struct.new(
      :message_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_name
    #   The name of the channel where the messages are sent.
    #   @return [String]
    #
    # @!attribute [rw] messages
    #   The list of messages to be sent. Each message has the format: \\\{
    #   "messageId": "string", "payload": "string"\\}.
    #
    #   The field names of message payloads (data) that you send to IoT
    #   Analytics:
    #
    #   * Must contain only alphanumeric characters and undescores (\_). No
    #     other special characters are allowed.
    #
    #   * Must begin with an alphabetic character or single underscore (\_).
    #
    #   * Cannot contain hyphens (-).
    #
    #   * In regular expression terms:
    #     "^\[A-Za-z\_\](\[A-Za-z0-9\]*\|\[A-Za-z0-9\]\[A-Za-z0-9\_\]*)$".
    #
    #   * Cannot be more than 255 characters.
    #
    #   * Are case insensitive. (Fields named foo and FOO in the same
    #     payload are considered duplicates.)
    #
    #   For example, \\\{"temp\_01": 29\\} or \\\{"\_temp\_01": 29\\}
    #   are valid, but \\\{"temp-01": 29\\}, \\\{"01\_temp": 29\\} or
    #   \\\{"\_\_temp\_01": 29\\} are invalid in message payloads.
    #   @return [Array<Types::Message>]
    #
    class BatchPutMessageRequest < Struct.new(
      :channel_name,
      :messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_put_message_error_entries
    #   A list of any errors encountered when sending the messages to the
    #   channel.
    #   @return [Array<Types::BatchPutMessageErrorEntry>]
    #
    class BatchPutMessageResponse < Struct.new(
      :batch_put_message_error_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline_name
    #   The name of pipeline for which data reprocessing is canceled.
    #   @return [String]
    #
    # @!attribute [rw] reprocessing_id
    #   The ID of the reprocessing task (returned by
    #   `StartPipelineReprocessing`).
    #   @return [String]
    #
    class CancelPipelineReprocessingRequest < Struct.new(
      :pipeline_name,
      :reprocessing_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class CancelPipelineReprocessingResponse < Aws::EmptyStructure; end

    # A collection of data from an MQTT topic. Channels archive the raw,
    # unprocessed messages before publishing the data to a pipeline.
    #
    # @!attribute [rw] name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] storage
    #   Where channel data is stored. You can choose one of
    #   `serviceManagedS3` or `customerManagedS3` storage. If not specified,
    #   the default is `serviceManagedS3`. You can't change this storage
    #   option after the channel is created.
    #   @return [Types::ChannelStorage]
    #
    # @!attribute [rw] arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the channel.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   How long, in days, message data is kept for the channel.
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] creation_time
    #   When the channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   When the channel was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_message_arrival_time
    #   The last time when a new message arrived in the channel.
    #
    #   IoT Analytics updates this value at most once per minute for one
    #   channel. Hence, the `lastMessageArrivalTime` value is an
    #   approximation.
    #
    #   This feature only applies to messages that arrived in the data store
    #   after October 23, 2020.
    #   @return [Time]
    #
    class Channel < Struct.new(
      :name,
      :storage,
      :arn,
      :status,
      :retention_period,
      :creation_time,
      :last_update_time,
      :last_message_arrival_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The activity that determines the source of the messages to be
    # processed.
    #
    # @!attribute [rw] name
    #   The name of the channel activity.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel from which the messages are processed.
    #   @return [String]
    #
    # @!attribute [rw] next
    #   The next activity in the pipeline.
    #   @return [String]
    #
    class ChannelActivity < Struct.new(
      :name,
      :channel_name,
      :next)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies one or more sets of channel messages.
    #
    # @!attribute [rw] s3_paths
    #   Specifies one or more keys that identify the Amazon Simple Storage
    #   Service (Amazon S3) objects that save your channel messages.
    #
    #   You must use the full path for the key.
    #
    #   Example path: `channel/mychannel/__dt=2020-02-29
    #   00:00:00/1582940490000_1582940520000_123456789012_mychannel_0_2118.0.json.gz`
    #   @return [Array<String>]
    #
    class ChannelMessages < Struct.new(
      :s3_paths)
      SENSITIVE = []
      include Aws::Structure
    end

    # Statistics information about the channel.
    #
    # @!attribute [rw] size
    #   The estimated size of the channel.
    #   @return [Types::EstimatedResourceSize]
    #
    class ChannelStatistics < Struct.new(
      :size)
      SENSITIVE = []
      include Aws::Structure
    end

    # Where channel data is stored. You may choose one of
    # `serviceManagedS3`, `customerManagedS3` storage. If not specified, the
    # default is `serviceManagedS3`. This can't be changed after creation
    # of the channel.
    #
    # @!attribute [rw] service_managed_s3
    #   Used to store channel data in an S3 bucket managed by IoT Analytics.
    #   You can't change the choice of S3 storage after the data store is
    #   created.
    #   @return [Types::ServiceManagedChannelS3Storage]
    #
    # @!attribute [rw] customer_managed_s3
    #   Used to store channel data in an S3 bucket that you manage. If
    #   customer managed storage is selected, the `retentionPeriod`
    #   parameter is ignored. You can't change the choice of S3 storage
    #   after the data store is created.
    #   @return [Types::CustomerManagedChannelS3Storage]
    #
    class ChannelStorage < Struct.new(
      :service_managed_s3,
      :customer_managed_s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # Where channel data is stored.
    #
    # @!attribute [rw] service_managed_s3
    #   Used to store channel data in an S3 bucket managed by IoT Analytics.
    #   @return [Types::ServiceManagedChannelS3StorageSummary]
    #
    # @!attribute [rw] customer_managed_s3
    #   Used to store channel data in an S3 bucket that you manage.
    #   @return [Types::CustomerManagedChannelS3StorageSummary]
    #
    class ChannelStorageSummary < Struct.new(
      :service_managed_s3,
      :customer_managed_s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of information about a channel.
    #
    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_storage
    #   Where channel data is stored.
    #   @return [Types::ChannelStorageSummary]
    #
    # @!attribute [rw] status
    #   The status of the channel.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The last time the channel was updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_message_arrival_time
    #   The last time when a new message arrived in the channel.
    #
    #   IoT Analytics updates this value at most once per minute for one
    #   channel. Hence, the `lastMessageArrivalTime` value is an
    #   approximation.
    #
    #   This feature only applies to messages that arrived in the data store
    #   after October 23, 2020.
    #   @return [Time]
    #
    class ChannelSummary < Struct.new(
      :channel_name,
      :channel_storage,
      :status,
      :creation_time,
      :last_update_time,
      :last_message_arrival_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a column that stores your data.
    #
    # @!attribute [rw] name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of data. For more information about the supported data
    #   types, see [Common data types][1] in the *Glue Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html
    #   @return [String]
    #
    class Column < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information required to run the `containerAction` to produce dataset
    # contents.
    #
    # @!attribute [rw] image
    #   The ARN of the Docker container stored in your account. The Docker
    #   container contains an application and required support libraries and
    #   is used to generate dataset contents.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The ARN of the role that gives permission to the system to access
    #   required resources to run the `containerAction`. This includes, at
    #   minimum, permission to retrieve the dataset contents that are the
    #   input to the containerized application.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration
    #   Configuration of the resource that executes the `containerAction`.
    #   @return [Types::ResourceConfiguration]
    #
    # @!attribute [rw] variables
    #   The values of variables used in the context of the execution of the
    #   containerized application (basically, parameters passed to the
    #   application). Each variable must have a name and a value given by
    #   one of `stringValue`, `datasetContentVersionValue`, or
    #   `outputFileUriValue`.
    #   @return [Array<Types::Variable>]
    #
    class ContainerDatasetAction < Struct.new(
      :image,
      :execution_role_arn,
      :resource_configuration,
      :variables)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_storage
    #   Where channel data is stored. You can choose one of
    #   `serviceManagedS3` or `customerManagedS3` storage. If not specified,
    #   the default is `serviceManagedS3`. You can't change this storage
    #   option after the channel is created.
    #   @return [Types::ChannelStorage]
    #
    # @!attribute [rw] retention_period
    #   How long, in days, message data is kept for the channel. When
    #   `customerManagedS3` storage is selected, this parameter is ignored.
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage the channel.
    #   @return [Array<Types::Tag>]
    #
    class CreateChannelRequest < Struct.new(
      :channel_name,
      :channel_storage,
      :retention_period,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   How long, in days, message data is kept for the channel.
    #   @return [Types::RetentionPeriod]
    #
    class CreateChannelResponse < Struct.new(
      :channel_name,
      :channel_arn,
      :retention_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version ID of the dataset content. To specify `versionId` for a
    #   dataset content, the dataset must use a [DeltaTimer][1] filter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html
    #   @return [String]
    #
    class CreateDatasetContentRequest < Struct.new(
      :dataset_name,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] version_id
    #   The version ID of the dataset contents that are being created.
    #   @return [String]
    #
    class CreateDatasetContentResponse < Struct.new(
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   A list of actions that create the dataset contents.
    #   @return [Array<Types::DatasetAction>]
    #
    # @!attribute [rw] triggers
    #   A list of triggers. A trigger causes dataset contents to be
    #   populated at a specified time interval or when another dataset's
    #   contents are created. The list of triggers can be empty or contain
    #   up to five `DataSetTrigger` objects.
    #   @return [Array<Types::DatasetTrigger>]
    #
    # @!attribute [rw] content_delivery_rules
    #   When dataset contents are created, they are delivered to
    #   destinations specified here.
    #   @return [Array<Types::DatasetContentDeliveryRule>]
    #
    # @!attribute [rw] retention_period
    #   Optional. How long, in days, versions of dataset contents are kept
    #   for the dataset. If not specified or set to `null`, versions of
    #   dataset contents are retained for at most 90 days. The number of
    #   versions of dataset contents retained is determined by the
    #   `versioningConfiguration` parameter. For more information, see [
    #   Keeping Multiple Versions of IoT Analytics datasets][1] in the *IoT
    #   Analytics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] versioning_configuration
    #   Optional. How many versions of dataset contents are kept. If not
    #   specified or set to null, only the latest version plus the latest
    #   succeeded version (if they are different) are kept for the time
    #   period specified by the `retentionPeriod` parameter. For more
    #   information, see [Keeping Multiple Versions of IoT Analytics
    #   datasets][1] in the *IoT Analytics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions
    #   @return [Types::VersioningConfiguration]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage the dataset.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] late_data_rules
    #   A list of data rules that send notifications to CloudWatch, when
    #   data arrives late. To specify `lateDataRules`, the dataset must use
    #   a [DeltaTimer][1] filter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html
    #   @return [Array<Types::LateDataRule>]
    #
    class CreateDatasetRequest < Struct.new(
      :dataset_name,
      :actions,
      :triggers,
      :content_delivery_rules,
      :retention_period,
      :versioning_configuration,
      :tags,
      :late_data_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The ARN of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   How long, in days, dataset contents are kept for the dataset.
    #   @return [Types::RetentionPeriod]
    #
    class CreateDatasetResponse < Struct.new(
      :dataset_name,
      :dataset_arn,
      :retention_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_name
    #   The name of the data store.
    #   @return [String]
    #
    # @!attribute [rw] datastore_storage
    #   Where data in a data store is stored.. You can choose
    #   `serviceManagedS3` storage, `customerManagedS3` storage, or
    #   `iotSiteWiseMultiLayerStorage` storage. The default is
    #   `serviceManagedS3`. You can't change the choice of Amazon S3
    #   storage after your data store is created.
    #   @return [Types::DatastoreStorage]
    #
    # @!attribute [rw] retention_period
    #   How long, in days, message data is kept for the data store. When
    #   `customerManagedS3` storage is selected, this parameter is ignored.
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage the data store.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] file_format_configuration
    #   Contains the configuration information of file formats. IoT
    #   Analytics data stores support JSON and [Parquet][1].
    #
    #   The default file format is JSON. You can specify only one format.
    #
    #   You can't change the file format after you create the data store.
    #
    #
    #
    #   [1]: https://parquet.apache.org/
    #   @return [Types::FileFormatConfiguration]
    #
    # @!attribute [rw] datastore_partitions
    #   Contains information about the partition dimensions in a data store.
    #   @return [Types::DatastorePartitions]
    #
    class CreateDatastoreRequest < Struct.new(
      :datastore_name,
      :datastore_storage,
      :retention_period,
      :tags,
      :file_format_configuration,
      :datastore_partitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_name
    #   The name of the data store.
    #   @return [String]
    #
    # @!attribute [rw] datastore_arn
    #   The ARN of the data store.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   How long, in days, message data is kept for the data store.
    #   @return [Types::RetentionPeriod]
    #
    class CreateDatastoreResponse < Struct.new(
      :datastore_name,
      :datastore_arn,
      :retention_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline_name
    #   The name of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_activities
    #   A list of `PipelineActivity` objects. Activities perform
    #   transformations on your messages, such as removing, renaming or
    #   adding message attributes; filtering messages based on attribute
    #   values; invoking your Lambda unctions on messages for advanced
    #   processing; or performing mathematical transformations to normalize
    #   device data.
    #
    #   The list can be 2-25 `PipelineActivity` objects and must contain
    #   both a `channel` and a `datastore` activity. Each entry in the list
    #   must contain only one activity. For example:
    #
    #   `pipelineActivities = [ \{ "channel": \{ ... \} \}, \{ "lambda": \{
    #   ... \} \}, ... ]`
    #   @return [Array<Types::PipelineActivity>]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage the pipeline.
    #   @return [Array<Types::Tag>]
    #
    class CreatePipelineRequest < Struct.new(
      :pipeline_name,
      :pipeline_activities,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline_name
    #   The name of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_arn
    #   The ARN of the pipeline.
    #   @return [String]
    #
    class CreatePipelineResponse < Struct.new(
      :pipeline_name,
      :pipeline_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to store channel data in an S3 bucket that you manage. If
    # customer-managed storage is selected, the `retentionPeriod` parameter
    # is ignored. You can't change the choice of S3 storage after the data
    # store is created.
    #
    # @!attribute [rw] bucket
    #   The name of the S3 bucket in which channel data is stored.
    #   @return [String]
    #
    # @!attribute [rw] key_prefix
    #   (Optional) The prefix used to create the keys of the channel data
    #   objects. Each object in an S3 bucket has a key that is its unique
    #   identifier in the bucket. Each object in a bucket has exactly one
    #   key. The prefix must end with a forward slash (/).
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants IoT Analytics permission to interact
    #   with your Amazon S3 resources.
    #   @return [String]
    #
    class CustomerManagedChannelS3Storage < Struct.new(
      :bucket,
      :key_prefix,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to store channel data in an S3 bucket that you manage.
    #
    # @!attribute [rw] bucket
    #   The name of the S3 bucket in which channel data is stored.
    #   @return [String]
    #
    # @!attribute [rw] key_prefix
    #   (Optional) The prefix used to create the keys of the channel data
    #   objects. Each object in an S3 bucket has a key that is its unique
    #   identifier within the bucket (each object in a bucket has exactly
    #   one key). The prefix must end with a forward slash (/).
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants IoT Analytics permission to interact
    #   with your Amazon S3 resources.
    #   @return [String]
    #
    class CustomerManagedChannelS3StorageSummary < Struct.new(
      :bucket,
      :key_prefix,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # S3-customer-managed; When you choose customer-managed storage, the
    # `retentionPeriod` parameter is ignored. You can't change the choice
    # of Amazon S3 storage after your data store is created.
    #
    # @!attribute [rw] bucket
    #   The name of the Amazon S3 bucket where your data is stored.
    #   @return [String]
    #
    # @!attribute [rw] key_prefix
    #   (Optional) The prefix used to create the keys of the data store data
    #   objects. Each object in an Amazon S3 bucket has a key that is its
    #   unique identifier in the bucket. Each object in a bucket has exactly
    #   one key. The prefix must end with a forward slash (/).
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants IoT Analytics permission to interact
    #   with your Amazon S3 resources.
    #   @return [String]
    #
    class CustomerManagedDatastoreS3Storage < Struct.new(
      :bucket,
      :key_prefix,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the data store that you manage.
    #
    # @!attribute [rw] bucket
    #   The name of the Amazon S3 bucket where your data is stored.
    #   @return [String]
    #
    # @!attribute [rw] key_prefix
    #   (Optional) The prefix used to create the keys of the data store data
    #   objects. Each object in an Amazon S3 bucket has a key that is its
    #   unique identifier in the bucket. Each object in a bucket has exactly
    #   one key. The prefix must end with a forward slash (/).
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants IoT Analytics permission to interact
    #   with your Amazon S3 resources.
    #   @return [String]
    #
    class CustomerManagedDatastoreS3StorageSummary < Struct.new(
      :bucket,
      :key_prefix,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a dataset.
    #
    # @!attribute [rw] name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The `DatasetAction` objects that automatically create the dataset
    #   contents.
    #   @return [Array<Types::DatasetAction>]
    #
    # @!attribute [rw] triggers
    #   The `DatasetTrigger` objects that specify when the dataset is
    #   automatically updated.
    #   @return [Array<Types::DatasetTrigger>]
    #
    # @!attribute [rw] content_delivery_rules
    #   When dataset contents are created they are delivered to destinations
    #   specified here.
    #   @return [Array<Types::DatasetContentDeliveryRule>]
    #
    # @!attribute [rw] status
    #   The status of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The last time the dataset was updated.
    #   @return [Time]
    #
    # @!attribute [rw] retention_period
    #   Optional. How long, in days, message data is kept for the dataset.
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] versioning_configuration
    #   Optional. How many versions of dataset contents are kept. If not
    #   specified or set to null, only the latest version plus the latest
    #   succeeded version (if they are different) are kept for the time
    #   period specified by the `retentionPeriod` parameter. For more
    #   information, see [ Keeping Multiple Versions of IoT Analytics
    #   datasets][1] in the *IoT Analytics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions
    #   @return [Types::VersioningConfiguration]
    #
    # @!attribute [rw] late_data_rules
    #   A list of data rules that send notifications to CloudWatch, when
    #   data arrives late. To specify `lateDataRules`, the dataset must use
    #   a [DeltaTimer][1] filter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html
    #   @return [Array<Types::LateDataRule>]
    #
    class Dataset < Struct.new(
      :name,
      :arn,
      :actions,
      :triggers,
      :content_delivery_rules,
      :status,
      :creation_time,
      :last_update_time,
      :retention_period,
      :versioning_configuration,
      :late_data_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `DatasetAction` object that specifies how dataset contents are
    # automatically created.
    #
    # @!attribute [rw] action_name
    #   The name of the dataset action by which dataset contents are
    #   automatically created.
    #   @return [String]
    #
    # @!attribute [rw] query_action
    #   An `SqlQueryDatasetAction` object that uses an SQL query to
    #   automatically create dataset contents.
    #   @return [Types::SqlQueryDatasetAction]
    #
    # @!attribute [rw] container_action
    #   Information that allows the system to run a containerized
    #   application to create the dataset contents. The application must be
    #   in a Docker container along with any required support libraries.
    #   @return [Types::ContainerDatasetAction]
    #
    class DatasetAction < Struct.new(
      :action_name,
      :query_action,
      :container_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the action that automatically creates the dataset's
    # contents.
    #
    # @!attribute [rw] action_name
    #   The name of the action that automatically creates the dataset's
    #   contents.
    #   @return [String]
    #
    # @!attribute [rw] action_type
    #   The type of action by which the dataset's contents are
    #   automatically created.
    #   @return [String]
    #
    class DatasetActionSummary < Struct.new(
      :action_name,
      :action_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The destination to which dataset contents are delivered.
    #
    # @!attribute [rw] iot_events_destination_configuration
    #   Configuration information for delivery of dataset contents to IoT
    #   Events.
    #   @return [Types::IotEventsDestinationConfiguration]
    #
    # @!attribute [rw] s3_destination_configuration
    #   Configuration information for delivery of dataset contents to Amazon
    #   S3.
    #   @return [Types::S3DestinationConfiguration]
    #
    class DatasetContentDeliveryDestination < Struct.new(
      :iot_events_destination_configuration,
      :s3_destination_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # When dataset contents are created, they are delivered to destination
    # specified here.
    #
    # @!attribute [rw] entry_name
    #   The name of the dataset content delivery rules entry.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The destination to which dataset contents are delivered.
    #   @return [Types::DatasetContentDeliveryDestination]
    #
    class DatasetContentDeliveryRule < Struct.new(
      :entry_name,
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # The state of the dataset contents and the reason they are in this
    # state.
    #
    # @!attribute [rw] state
    #   The state of the dataset contents. Can be one of READY, CREATING,
    #   SUCCEEDED, or FAILED.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason the dataset contents are in this state.
    #   @return [String]
    #
    class DatasetContentStatus < Struct.new(
      :state,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about dataset contents.
    #
    # @!attribute [rw] version
    #   The version of the dataset contents.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the dataset contents.
    #   @return [Types::DatasetContentStatus]
    #
    # @!attribute [rw] creation_time
    #   The actual time the creation of the dataset contents was started.
    #   @return [Time]
    #
    # @!attribute [rw] schedule_time
    #   The time the creation of the dataset contents was scheduled to
    #   start.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   The time the dataset content status was updated to SUCCEEDED or
    #   FAILED.
    #   @return [Time]
    #
    class DatasetContentSummary < Struct.new(
      :version,
      :status,
      :creation_time,
      :schedule_time,
      :completion_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dataset whose latest contents are used as input to the notebook or
    # application.
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset whose latest contents are used as input to
    #   the notebook or application.
    #   @return [String]
    #
    class DatasetContentVersionValue < Struct.new(
      :dataset_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The reference to a dataset entry.
    #
    # @!attribute [rw] entry_name
    #   The name of the dataset item.
    #   @return [String]
    #
    # @!attribute [rw] data_uri
    #   The presigned URI of the dataset item.
    #   @return [String]
    #
    class DatasetEntry < Struct.new(
      :entry_name,
      :data_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of information about a dataset.
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The last time the dataset was updated.
    #   @return [Time]
    #
    # @!attribute [rw] triggers
    #   A list of triggers. A trigger causes dataset content to be populated
    #   at a specified time interval or when another dataset is populated.
    #   The list of triggers can be empty or contain up to five
    #   `DataSetTrigger` objects
    #   @return [Array<Types::DatasetTrigger>]
    #
    # @!attribute [rw] actions
    #   A list of `DataActionSummary` objects.
    #   @return [Array<Types::DatasetActionSummary>]
    #
    class DatasetSummary < Struct.new(
      :dataset_name,
      :status,
      :creation_time,
      :last_update_time,
      :triggers,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `DatasetTrigger` that specifies when the dataset is automatically
    # updated.
    #
    # @!attribute [rw] schedule
    #   The Schedule when the trigger is initiated.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] dataset
    #   The dataset whose content creation triggers the creation of this
    #   dataset's contents.
    #   @return [Types::TriggeringDataset]
    #
    class DatasetTrigger < Struct.new(
      :schedule,
      :dataset)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a data store.
    #
    # @!attribute [rw] name
    #   The name of the data store.
    #   @return [String]
    #
    # @!attribute [rw] storage
    #   Where data in a data store is stored.. You can choose
    #   `serviceManagedS3` storage, `customerManagedS3` storage, or
    #   `iotSiteWiseMultiLayerStorage` storage. The default is
    #   `serviceManagedS3`. You can't change the choice of Amazon S3
    #   storage after your data store is created.
    #   @return [Types::DatastoreStorage]
    #
    # @!attribute [rw] arn
    #   The ARN of the data store.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a data store:
    #
    #   CREATING
    #
    #   : The data store is being created.
    #
    #   ACTIVE
    #
    #   : The data store has been created and can be used.
    #
    #   DELETING
    #
    #   : The data store is being deleted.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   How long, in days, message data is kept for the data store. When
    #   `customerManagedS3` storage is selected, this parameter is ignored.
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] creation_time
    #   When the data store was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The last time the data store was updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_message_arrival_time
    #   The last time when a new message arrived in the data store.
    #
    #   IoT Analytics updates this value at most once per minute for Amazon
    #   Simple Storage Service one data store. Hence, the
    #   `lastMessageArrivalTime` value is an approximation.
    #
    #   This feature only applies to messages that arrived in the data store
    #   after October 23, 2020.
    #   @return [Time]
    #
    # @!attribute [rw] file_format_configuration
    #   Contains the configuration information of file formats. IoT
    #   Analytics data stores support JSON and [Parquet][1].
    #
    #   The default file format is JSON. You can specify only one format.
    #
    #   You can't change the file format after you create the data store.
    #
    #
    #
    #   [1]: https://parquet.apache.org/
    #   @return [Types::FileFormatConfiguration]
    #
    # @!attribute [rw] datastore_partitions
    #   Contains information about the partition dimensions in a data store.
    #   @return [Types::DatastorePartitions]
    #
    class Datastore < Struct.new(
      :name,
      :storage,
      :arn,
      :status,
      :retention_period,
      :creation_time,
      :last_update_time,
      :last_message_arrival_time,
      :file_format_configuration,
      :datastore_partitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The datastore activity that specifies where to store the processed
    # data.
    #
    # @!attribute [rw] name
    #   The name of the datastore activity.
    #   @return [String]
    #
    # @!attribute [rw] datastore_name
    #   The name of the data store where processed messages are stored.
    #   @return [String]
    #
    class DatastoreActivity < Struct.new(
      :name,
      :datastore_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to store data used by IoT SiteWise in an Amazon S3 bucket that
    # you manage. You can't change the choice of Amazon S3 storage after
    # your data store is created.
    #
    # @!attribute [rw] customer_managed_s3_storage
    #   Used to store data used by IoT SiteWise in an Amazon S3 bucket that
    #   you manage.
    #   @return [Types::IotSiteWiseCustomerManagedDatastoreS3Storage]
    #
    class DatastoreIotSiteWiseMultiLayerStorage < Struct.new(
      :customer_managed_s3_storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the data store that you manage, which
    # stores data used by IoT SiteWise.
    #
    # @!attribute [rw] customer_managed_s3_storage
    #   Used to store data used by IoT SiteWise in an Amazon S3 bucket that
    #   you manage.
    #   @return [Types::IotSiteWiseCustomerManagedDatastoreS3StorageSummary]
    #
    class DatastoreIotSiteWiseMultiLayerStorageSummary < Struct.new(
      :customer_managed_s3_storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single dimension to partition a data store. The dimension must be an
    # `AttributePartition` or a `TimestampPartition`.
    #
    # @!attribute [rw] attribute_partition
    #   A partition dimension defined by an `attributeName`.
    #   @return [Types::Partition]
    #
    # @!attribute [rw] timestamp_partition
    #   A partition dimension defined by a timestamp attribute.
    #   @return [Types::TimestampPartition]
    #
    class DatastorePartition < Struct.new(
      :attribute_partition,
      :timestamp_partition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the partition dimensions in a data store.
    #
    # @!attribute [rw] partitions
    #   A list of partition dimensions in a data store.
    #   @return [Array<Types::DatastorePartition>]
    #
    class DatastorePartitions < Struct.new(
      :partitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Statistical information about the data store.
    #
    # @!attribute [rw] size
    #   The estimated size of the data store.
    #   @return [Types::EstimatedResourceSize]
    #
    class DatastoreStatistics < Struct.new(
      :size)
      SENSITIVE = []
      include Aws::Structure
    end

    # Where data in a data store is stored.. You can choose
    # `serviceManagedS3` storage, `customerManagedS3` storage, or
    # `iotSiteWiseMultiLayerStorage` storage. The default is
    # `serviceManagedS3`. You can't change the choice of Amazon S3 storage
    # after your data store is created.
    #
    # @!attribute [rw] service_managed_s3
    #   Used to store data in an Amazon S3 bucket managed by IoT Analytics.
    #   You can't change the choice of Amazon S3 storage after your data
    #   store is created.
    #   @return [Types::ServiceManagedDatastoreS3Storage]
    #
    # @!attribute [rw] customer_managed_s3
    #   S3-customer-managed; When you choose customer-managed storage, the
    #   `retentionPeriod` parameter is ignored. You can't change the choice
    #   of Amazon S3 storage after your data store is created.
    #   @return [Types::CustomerManagedDatastoreS3Storage]
    #
    # @!attribute [rw] iot_site_wise_multi_layer_storage
    #   Used to store data used by IoT SiteWise in an Amazon S3 bucket that
    #   you manage. You can't change the choice of Amazon S3 storage after
    #   your data store is created.
    #   @return [Types::DatastoreIotSiteWiseMultiLayerStorage]
    #
    class DatastoreStorage < Struct.new(
      :service_managed_s3,
      :customer_managed_s3,
      :iot_site_wise_multi_layer_storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about your data store.
    #
    # @!attribute [rw] service_managed_s3
    #   Used to store data in an Amazon S3 bucket managed by IoT Analytics.
    #   @return [Types::ServiceManagedDatastoreS3StorageSummary]
    #
    # @!attribute [rw] customer_managed_s3
    #   Used to store data in an Amazon S3 bucket managed by IoT Analytics.
    #   @return [Types::CustomerManagedDatastoreS3StorageSummary]
    #
    # @!attribute [rw] iot_site_wise_multi_layer_storage
    #   Used to store data used by IoT SiteWise in an Amazon S3 bucket that
    #   you manage.
    #   @return [Types::DatastoreIotSiteWiseMultiLayerStorageSummary]
    #
    class DatastoreStorageSummary < Struct.new(
      :service_managed_s3,
      :customer_managed_s3,
      :iot_site_wise_multi_layer_storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of information about a data store.
    #
    # @!attribute [rw] datastore_name
    #   The name of the data store.
    #   @return [String]
    #
    # @!attribute [rw] datastore_storage
    #   Where data in a data store is stored.
    #   @return [Types::DatastoreStorageSummary]
    #
    # @!attribute [rw] status
    #   The status of the data store.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the data store was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The last time the data store was updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_message_arrival_time
    #   The last time when a new message arrived in the data store.
    #
    #   IoT Analytics updates this value at most once per minute for Amazon
    #   Simple Storage Service one data store. Hence, the
    #   `lastMessageArrivalTime` value is an approximation.
    #
    #   This feature only applies to messages that arrived in the data store
    #   after October 23, 2020.
    #   @return [Time]
    #
    # @!attribute [rw] file_format_type
    #   The file format of the data in the data store.
    #   @return [String]
    #
    # @!attribute [rw] datastore_partitions
    #   Contains information about the partition dimensions in a data store.
    #   @return [Types::DatastorePartitions]
    #
    class DatastoreSummary < Struct.new(
      :datastore_name,
      :datastore_storage,
      :status,
      :creation_time,
      :last_update_time,
      :last_message_arrival_time,
      :file_format_type,
      :datastore_partitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_name
    #   The name of the channel to delete.
    #   @return [String]
    #
    class DeleteChannelRequest < Struct.new(
      :channel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_name
    #   The name of the dataset whose content is deleted.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version of the dataset whose content is deleted. You can also
    #   use the strings "$LATEST" or "$LATEST\_SUCCEEDED" to delete the
    #   latest or latest successfully completed data set. If not specified,
    #   "$LATEST\_SUCCEEDED" is the default.
    #   @return [String]
    #
    class DeleteDatasetContentRequest < Struct.new(
      :dataset_name,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_name
    #   The name of the dataset to delete.
    #   @return [String]
    #
    class DeleteDatasetRequest < Struct.new(
      :dataset_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_name
    #   The name of the data store to delete.
    #   @return [String]
    #
    class DeleteDatastoreRequest < Struct.new(
      :datastore_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline_name
    #   The name of the pipeline to delete.
    #   @return [String]
    #
    class DeletePipelineRequest < Struct.new(
      :pipeline_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to limit data to that which has arrived since the last execution
    # of the action.
    #
    # @!attribute [rw] offset_seconds
    #   The number of seconds of estimated in-flight lag time of message
    #   data. When you create dataset contents using message data from a
    #   specified timeframe, some message data might still be in flight when
    #   processing begins, and so do not arrive in time to be processed. Use
    #   this field to make allowances for the in flight time of your message
    #   data, so that data not processed from a previous timeframe is
    #   included with the next timeframe. Otherwise, missed message data
    #   would be excluded from processing during the next timeframe too,
    #   because its timestamp places it within the previous timeframe.
    #   @return [Integer]
    #
    # @!attribute [rw] time_expression
    #   An expression by which the time of the message data might be
    #   determined. This can be the name of a timestamp field or a SQL
    #   expression that is used to derive the time the message data was
    #   generated.
    #   @return [String]
    #
    class DeltaTime < Struct.new(
      :offset_seconds,
      :time_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the configuration information of a delta
    # time session window.
    #
    # [ `DeltaTime` ][1] specifies a time interval. You can use `DeltaTime`
    # to create dataset contents with data that has arrived in the data
    # store since the last execution. For an example of `DeltaTime`, see [
    # Creating a SQL dataset with a delta window (CLI)][2] in the *IoT
    # Analytics User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html
    # [2]: https://docs.aws.amazon.com/iotanalytics/latest/userguide/automate-create-dataset.html#automate-example6
    #
    # @!attribute [rw] timeout_in_minutes
    #   A time interval. You can use `timeoutInMinutes` so that IoT
    #   Analytics can batch up late data notifications that have been
    #   generated since the last execution. IoT Analytics sends one batch of
    #   notifications to Amazon CloudWatch Events at one time.
    #
    #   For more information about how to write a timestamp expression, see
    #   [Date and Time Functions and Operators][1], in the *Presto 0.172
    #   Documentation*.
    #
    #
    #
    #   [1]: https://prestodb.io/docs/0.172/functions/datetime.html
    #   @return [Integer]
    #
    class DeltaTimeSessionWindowConfiguration < Struct.new(
      :timeout_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_name
    #   The name of the channel whose information is retrieved.
    #   @return [String]
    #
    # @!attribute [rw] include_statistics
    #   If true, additional statistical information about the channel is
    #   included in the response. This feature can't be used with a channel
    #   whose S3 storage is customer-managed.
    #   @return [Boolean]
    #
    class DescribeChannelRequest < Struct.new(
      :channel_name,
      :include_statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel
    #   An object that contains information about the channel.
    #   @return [Types::Channel]
    #
    # @!attribute [rw] statistics
    #   Statistics about the channel. Included if the `includeStatistics`
    #   parameter is set to `true` in the request.
    #   @return [Types::ChannelStatistics]
    #
    class DescribeChannelResponse < Struct.new(
      :channel,
      :statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_name
    #   The name of the dataset whose information is retrieved.
    #   @return [String]
    #
    class DescribeDatasetRequest < Struct.new(
      :dataset_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset
    #   An object that contains information about the dataset.
    #   @return [Types::Dataset]
    #
    class DescribeDatasetResponse < Struct.new(
      :dataset)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_name
    #   The name of the data store
    #   @return [String]
    #
    # @!attribute [rw] include_statistics
    #   If true, additional statistical information about the data store is
    #   included in the response. This feature can't be used with a data
    #   store whose S3 storage is customer-managed.
    #   @return [Boolean]
    #
    class DescribeDatastoreRequest < Struct.new(
      :datastore_name,
      :include_statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore
    #   Information about the data store.
    #   @return [Types::Datastore]
    #
    # @!attribute [rw] statistics
    #   Additional statistical information about the data store. Included if
    #   the `includeStatistics` parameter is set to `true` in the request.
    #   @return [Types::DatastoreStatistics]
    #
    class DescribeDatastoreResponse < Struct.new(
      :datastore,
      :statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    class DescribeLoggingOptionsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] logging_options
    #   The current settings of the IoT Analytics logging options.
    #   @return [Types::LoggingOptions]
    #
    class DescribeLoggingOptionsResponse < Struct.new(
      :logging_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline_name
    #   The name of the pipeline whose information is retrieved.
    #   @return [String]
    #
    class DescribePipelineRequest < Struct.new(
      :pipeline_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline
    #   A `Pipeline` object that contains information about the pipeline.
    #   @return [Types::Pipeline]
    #
    class DescribePipelineResponse < Struct.new(
      :pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # An activity that adds data from the IoT device registry to your
    # message.
    #
    # @!attribute [rw] name
    #   The name of the `deviceRegistryEnrich` activity.
    #   @return [String]
    #
    # @!attribute [rw] attribute
    #   The name of the attribute that is added to the message.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The name of the IoT device whose registry information is added to
    #   the message.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that allows access to the device's registry
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] next
    #   The next activity in the pipeline.
    #   @return [String]
    #
    class DeviceRegistryEnrichActivity < Struct.new(
      :name,
      :attribute,
      :thing_name,
      :role_arn,
      :next)
      SENSITIVE = []
      include Aws::Structure
    end

    # An activity that adds information from the IoT Device Shadow service
    # to a message.
    #
    # @!attribute [rw] name
    #   The name of the `deviceShadowEnrich` activity.
    #   @return [String]
    #
    # @!attribute [rw] attribute
    #   The name of the attribute that is added to the message.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The name of the IoT device whose shadow information is added to the
    #   message.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that allows access to the device's shadow.
    #   @return [String]
    #
    # @!attribute [rw] next
    #   The next activity in the pipeline.
    #   @return [String]
    #
    class DeviceShadowEnrichActivity < Struct.new(
      :name,
      :attribute,
      :thing_name,
      :role_arn,
      :next)
      SENSITIVE = []
      include Aws::Structure
    end

    # The estimated size of the resource.
    #
    # @!attribute [rw] estimated_size_in_bytes
    #   The estimated size of the resource, in bytes.
    #   @return [Float]
    #
    # @!attribute [rw] estimated_on
    #   The time when the estimate of the size of the resource was made.
    #   @return [Time]
    #
    class EstimatedResourceSize < Struct.new(
      :estimated_size_in_bytes,
      :estimated_on)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration information of file formats. IoT Analytics
    # data stores support JSON and [Parquet][1].
    #
    # The default file format is JSON. You can specify only one format.
    #
    # You can't change the file format after you create the data store.
    #
    #
    #
    # [1]: https://parquet.apache.org/
    #
    # @!attribute [rw] json_configuration
    #   Contains the configuration information of the JSON format.
    #   @return [Types::JsonConfiguration]
    #
    # @!attribute [rw] parquet_configuration
    #   Contains the configuration information of the Parquet format.
    #   @return [Types::ParquetConfiguration]
    #
    class FileFormatConfiguration < Struct.new(
      :json_configuration,
      :parquet_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # An activity that filters a message based on its attributes.
    #
    # @!attribute [rw] name
    #   The name of the filter activity.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   An expression that looks like a SQL WHERE clause that must return a
    #   Boolean value. Messages that satisfy the condition are passed to the
    #   next activity.
    #   @return [String]
    #
    # @!attribute [rw] next
    #   The next activity in the pipeline.
    #   @return [String]
    #
    class FilterActivity < Struct.new(
      :name,
      :filter,
      :next)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_name
    #   The name of the dataset whose contents are retrieved.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version of the dataset whose contents are retrieved. You can
    #   also use the strings "$LATEST" or "$LATEST\_SUCCEEDED" to
    #   retrieve the contents of the latest or latest successfully completed
    #   dataset. If not specified, "$LATEST\_SUCCEEDED" is the default.
    #   @return [String]
    #
    class GetDatasetContentRequest < Struct.new(
      :dataset_name,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entries
    #   A list of `DatasetEntry` objects.
    #   @return [Array<Types::DatasetEntry>]
    #
    # @!attribute [rw] timestamp
    #   The time when the request was made.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the dataset content.
    #   @return [Types::DatasetContentStatus]
    #
    class GetDatasetContentResponse < Struct.new(
      :entries,
      :timestamp,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for coordination with Glue, a fully managed
    # extract, transform and load (ETL) service.
    #
    # @!attribute [rw] table_name
    #   The name of the table in your Glue Data Catalog that is used to
    #   perform the ETL operations. An Glue Data Catalog table contains
    #   partitioned data and descriptions of data sources and targets.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database in your Glue Data Catalog in which the
    #   table is located. An Glue Data Catalog database contains metadata
    #   tables.
    #   @return [String]
    #
    class GlueConfiguration < Struct.new(
      :table_name,
      :database_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was an internal failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InternalFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for delivery of dataset contents to IoT
    # Events.
    #
    # @!attribute [rw] input_name
    #   The name of the IoT Events input to which dataset contents are
    #   delivered.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants IoT Analytics permission to deliver
    #   dataset contents to an IoT Events input.
    #   @return [String]
    #
    class IotEventsDestinationConfiguration < Struct.new(
      :input_name,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to store data used by IoT SiteWise in an Amazon S3 bucket that
    # you manage. You can't change the choice of Amazon S3 storage after
    # your data store is created.
    #
    # @!attribute [rw] bucket
    #   The name of the Amazon S3 bucket where your data is stored.
    #   @return [String]
    #
    # @!attribute [rw] key_prefix
    #   (Optional) The prefix used to create the keys of the data store data
    #   objects. Each object in an Amazon S3 bucket has a key that is its
    #   unique identifier in the bucket. Each object in a bucket has exactly
    #   one key. The prefix must end with a forward slash (/).
    #   @return [String]
    #
    class IotSiteWiseCustomerManagedDatastoreS3Storage < Struct.new(
      :bucket,
      :key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the data store that you manage, which
    # stores data used by IoT SiteWise.
    #
    # @!attribute [rw] bucket
    #   The name of the Amazon S3 bucket where your data is stored.
    #   @return [String]
    #
    # @!attribute [rw] key_prefix
    #   (Optional) The prefix used to create the keys of the data store data
    #   objects. Each object in an Amazon S3 bucket has a key that is its
    #   unique identifier in the bucket. Each object in a bucket has exactly
    #   one key. The prefix must end with a forward slash (/).
    #   @return [String]
    #
    class IotSiteWiseCustomerManagedDatastoreS3StorageSummary < Struct.new(
      :bucket,
      :key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration information of the JSON format.
    #
    # @api private
    #
    class JsonConfiguration < Aws::EmptyStructure; end

    # An activity that runs a Lambda function to modify the message.
    #
    # @!attribute [rw] name
    #   The name of the lambda activity.
    #   @return [String]
    #
    # @!attribute [rw] lambda_name
    #   The name of the Lambda function that is run on the message.
    #   @return [String]
    #
    # @!attribute [rw] batch_size
    #   The number of messages passed to the Lambda function for processing.
    #
    #   The Lambda function must be able to process all of these messages
    #   within five minutes, which is the maximum timeout duration for
    #   Lambda functions.
    #   @return [Integer]
    #
    # @!attribute [rw] next
    #   The next activity in the pipeline.
    #   @return [String]
    #
    class LambdaActivity < Struct.new(
      :name,
      :lambda_name,
      :batch_size,
      :next)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the name and configuration information of a
    # late data rule.
    #
    # @!attribute [rw] rule_name
    #   The name of the late data rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_configuration
    #   The information needed to configure the late data rule.
    #   @return [Types::LateDataRuleConfiguration]
    #
    class LateDataRule < Struct.new(
      :rule_name,
      :rule_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information needed to configure a delta time session window.
    #
    # @!attribute [rw] delta_time_session_window_configuration
    #   The information needed to configure a delta time session window.
    #   @return [Types::DeltaTimeSessionWindowConfiguration]
    #
    class LateDataRuleConfiguration < Struct.new(
      :delta_time_session_window_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The command caused an internal limit to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #
    #   The default value is 100.
    #   @return [Integer]
    #
    class ListChannelsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_summaries
    #   A list of `ChannelSummary` objects.
    #   @return [Array<Types::ChannelSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results, or `null` if there
    #   are no more results.
    #   @return [String]
    #
    class ListChannelsResponse < Struct.new(
      :channel_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_name
    #   The name of the dataset whose contents information you want to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @!attribute [rw] scheduled_on_or_after
    #   A filter to limit results to those dataset contents whose creation
    #   is scheduled on or after the given time. See the field
    #   `triggers.schedule` in the `CreateDataset` request. (timestamp)
    #   @return [Time]
    #
    # @!attribute [rw] scheduled_before
    #   A filter to limit results to those dataset contents whose creation
    #   is scheduled before the given time. See the field
    #   `triggers.schedule` in the `CreateDataset` request. (timestamp)
    #   @return [Time]
    #
    class ListDatasetContentsRequest < Struct.new(
      :dataset_name,
      :next_token,
      :max_results,
      :scheduled_on_or_after,
      :scheduled_before)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_content_summaries
    #   Summary information about dataset contents that have been created.
    #   @return [Array<Types::DatasetContentSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results, or `null` if there
    #   are no more results.
    #   @return [String]
    #
    class ListDatasetContentsResponse < Struct.new(
      :dataset_content_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #
    #   The default value is 100.
    #   @return [Integer]
    #
    class ListDatasetsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_summaries
    #   A list of `DatasetSummary` objects.
    #   @return [Array<Types::DatasetSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results, or `null` if there
    #   are no more results.
    #   @return [String]
    #
    class ListDatasetsResponse < Struct.new(
      :dataset_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #
    #   The default value is 100.
    #   @return [Integer]
    #
    class ListDatastoresRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_summaries
    #   A list of `DatastoreSummary` objects.
    #   @return [Array<Types::DatastoreSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results, or `null` if there
    #   are no more results.
    #   @return [String]
    #
    class ListDatastoresResponse < Struct.new(
      :datastore_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #
    #   The default value is 100.
    #   @return [Integer]
    #
    class ListPipelinesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline_summaries
    #   A list of `PipelineSummary` objects.
    #   @return [Array<Types::PipelineSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results, or `null` if there
    #   are no more results.
    #   @return [String]
    #
    class ListPipelinesResponse < Struct.new(
      :pipeline_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource whose tags you want to list.
    #   @return [String]
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags (metadata) that you have assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about logging options.
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants permission to IoT Analytics to
    #   perform logging.
    #   @return [String]
    #
    # @!attribute [rw] level
    #   The logging level. Currently, only ERROR is supported.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If true, logging is enabled for IoT Analytics.
    #   @return [Boolean]
    #
    class LoggingOptions < Struct.new(
      :role_arn,
      :level,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # An activity that computes an arithmetic expression using the
    # message's attributes.
    #
    # @!attribute [rw] name
    #   The name of the math activity.
    #   @return [String]
    #
    # @!attribute [rw] attribute
    #   The name of the attribute that contains the result of the math
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] math
    #   An expression that uses one or more existing attributes and must
    #   return an integer value.
    #   @return [String]
    #
    # @!attribute [rw] next
    #   The next activity in the pipeline.
    #   @return [String]
    #
    class MathActivity < Struct.new(
      :name,
      :attribute,
      :math,
      :next)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a message.
    #
    # @!attribute [rw] message_id
    #   The ID you want to assign to the message. Each `messageId` must be
    #   unique within each batch sent.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The payload of the message. This can be a JSON string or a
    #   base64-encoded string representing binary data, in which case you
    #   must decode it by means of a pipeline activity.
    #   @return [String]
    #
    class Message < Struct.new(
      :message_id,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value of the variable as a structure that specifies an output file
    # URI.
    #
    # @!attribute [rw] file_name
    #   The URI of the location where dataset contents are stored, usually
    #   the URI of a file in an S3 bucket.
    #   @return [String]
    #
    class OutputFileUriValue < Struct.new(
      :file_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration information of the Parquet format.
    #
    # @!attribute [rw] schema_definition
    #   Information needed to define a schema.
    #   @return [Types::SchemaDefinition]
    #
    class ParquetConfiguration < Struct.new(
      :schema_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # A partition dimension defined by an attribute.
    #
    # @!attribute [rw] attribute_name
    #   The name of the attribute that defines a partition dimension.
    #   @return [String]
    #
    class Partition < Struct.new(
      :attribute_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a pipeline.
    #
    # @!attribute [rw] name
    #   The name of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] activities
    #   The activities that perform transformations on the messages.
    #   @return [Array<Types::PipelineActivity>]
    #
    # @!attribute [rw] reprocessing_summaries
    #   A summary of information about the pipeline reprocessing.
    #   @return [Array<Types::ReprocessingSummary>]
    #
    # @!attribute [rw] creation_time
    #   When the pipeline was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The last time the pipeline was updated.
    #   @return [Time]
    #
    class Pipeline < Struct.new(
      :name,
      :arn,
      :activities,
      :reprocessing_summaries,
      :creation_time,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An activity that performs a transformation on a message.
    #
    # @!attribute [rw] channel
    #   Determines the source of the messages to be processed.
    #   @return [Types::ChannelActivity]
    #
    # @!attribute [rw] lambda
    #   Runs a Lambda function to modify the message.
    #   @return [Types::LambdaActivity]
    #
    # @!attribute [rw] datastore
    #   Specifies where to store the processed message data.
    #   @return [Types::DatastoreActivity]
    #
    # @!attribute [rw] add_attributes
    #   Adds other attributes based on existing attributes in the message.
    #   @return [Types::AddAttributesActivity]
    #
    # @!attribute [rw] remove_attributes
    #   Removes attributes from a message.
    #   @return [Types::RemoveAttributesActivity]
    #
    # @!attribute [rw] select_attributes
    #   Used to create a new message using only the specified attributes
    #   from the original message.
    #   @return [Types::SelectAttributesActivity]
    #
    # @!attribute [rw] filter
    #   Filters a message based on its attributes.
    #   @return [Types::FilterActivity]
    #
    # @!attribute [rw] math
    #   Computes an arithmetic expression using the message's attributes
    #   and adds it to the message.
    #   @return [Types::MathActivity]
    #
    # @!attribute [rw] device_registry_enrich
    #   Adds data from the IoT device registry to your message.
    #   @return [Types::DeviceRegistryEnrichActivity]
    #
    # @!attribute [rw] device_shadow_enrich
    #   Adds information from the IoT Device Shadow service to a message.
    #   @return [Types::DeviceShadowEnrichActivity]
    #
    class PipelineActivity < Struct.new(
      :channel,
      :lambda,
      :datastore,
      :add_attributes,
      :remove_attributes,
      :select_attributes,
      :filter,
      :math,
      :device_registry_enrich,
      :device_shadow_enrich)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of information about a pipeline.
    #
    # @!attribute [rw] pipeline_name
    #   The name of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] reprocessing_summaries
    #   A summary of information about the pipeline reprocessing.
    #   @return [Array<Types::ReprocessingSummary>]
    #
    # @!attribute [rw] creation_time
    #   When the pipeline was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   When the pipeline was last updated.
    #   @return [Time]
    #
    class PipelineSummary < Struct.new(
      :pipeline_name,
      :reprocessing_summaries,
      :creation_time,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] logging_options
    #   The new values of the IoT Analytics logging options.
    #   @return [Types::LoggingOptions]
    #
    class PutLoggingOptionsRequest < Struct.new(
      :logging_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information that is used to filter message data, to segregate it
    # according to the timeframe in which it arrives.
    #
    # @!attribute [rw] delta_time
    #   Used to limit data to that which has arrived since the last
    #   execution of the action.
    #   @return [Types::DeltaTime]
    #
    class QueryFilter < Struct.new(
      :delta_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An activity that removes attributes from a message.
    #
    # @!attribute [rw] name
    #   The name of the `removeAttributes` activity.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A list of 1-50 attributes to remove from the message.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next
    #   The next activity in the pipeline.
    #   @return [String]
    #
    class RemoveAttributesActivity < Struct.new(
      :name,
      :attributes,
      :next)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about pipeline reprocessing.
    #
    # @!attribute [rw] id
    #   The `reprocessingId` returned by `StartPipelineReprocessing`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the pipeline reprocessing.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the pipeline reprocessing was created.
    #   @return [Time]
    #
    class ReprocessingSummary < Struct.new(
      :id,
      :status,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource with the same name already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message,
      :resource_id,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the resource used to execute the
    # `containerAction`.
    #
    # @!attribute [rw] compute_type
    #   The type of the compute resource used to execute the
    #   `containerAction`. Possible values are: `ACU_1` (vCPU=4, memory=16
    #   GiB) or `ACU_2` (vCPU=8, memory=32 GiB).
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_gb
    #   The size, in GB, of the persistent storage available to the resource
    #   instance used to execute the `containerAction` (min: 1, max: 50).
    #   @return [Integer]
    #
    class ResourceConfiguration < Struct.new(
      :compute_type,
      :volume_size_in_gb)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource with the specified name could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # How long, in days, message data is kept.
    #
    # @!attribute [rw] unlimited
    #   If true, message data is kept indefinitely.
    #   @return [Boolean]
    #
    # @!attribute [rw] number_of_days
    #   The number of days that message data is kept. The `unlimited`
    #   parameter must be false.
    #   @return [Integer]
    #
    class RetentionPeriod < Struct.new(
      :unlimited,
      :number_of_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline_activity
    #   The pipeline activity that is run. This must not be a channel
    #   activity or a data store activity because these activities are used
    #   in a pipeline only to load the original message and to store the
    #   (possibly) transformed message. If a Lambda activity is specified,
    #   only short-running Lambda functions (those with a timeout of less
    #   than 30 seconds or less) can be used.
    #   @return [Types::PipelineActivity]
    #
    # @!attribute [rw] payloads
    #   The sample message payloads on which the pipeline activity is run.
    #   @return [Array<String>]
    #
    class RunPipelineActivityRequest < Struct.new(
      :pipeline_activity,
      :payloads)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payloads
    #   The enriched or transformed sample message payloads as
    #   base64-encoded strings. (The results of running the pipeline
    #   activity on each input sample message payload, encoded in base64.)
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_result
    #   In case the pipeline activity fails, the log message that is
    #   generated.
    #   @return [String]
    #
    class RunPipelineActivityResponse < Struct.new(
      :payloads,
      :log_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for delivery of dataset contents to Amazon
    # Simple Storage Service (Amazon S3).
    #
    # @!attribute [rw] bucket
    #   The name of the S3 bucket to which dataset contents are delivered.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The key of the dataset contents object in an S3 bucket. Each object
    #   has a key that is a unique identifier. Each object has exactly one
    #   key.
    #
    #   You can create a unique key with the following options:
    #
    #   * Use `!\{iotanalytics:scheduleTime\}` to insert the time of a
    #     scheduled SQL query run.
    #
    #   * Use `!\{iotanalytics:versionId\}` to insert a unique hash that
    #     identifies a dataset content.
    #
    #   * Use `!\{iotanalytics:creationTime\}` to insert the creation time
    #     of a dataset content.
    #
    #   The following example creates a unique key for a CSV file:
    #   `dataset/mydataset/!\{iotanalytics:scheduleTime\}/!\{iotanalytics:versionId\}.csv`
    #
    #   <note markdown="1"> If you don't use `!\{iotanalytics:versionId\}` to specify the key,
    #   you might get duplicate keys. For example, you might have two
    #   dataset contents with the same `scheduleTime` but different
    #   `versionId`s. This means that one dataset content overwrites the
    #   other.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] glue_configuration
    #   Configuration information for coordination with Glue, a fully
    #   managed extract, transform and load (ETL) service.
    #   @return [Types::GlueConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants IoT Analytics permission to interact
    #   with your Amazon S3 and Glue resources.
    #   @return [String]
    #
    class S3DestinationConfiguration < Struct.new(
      :bucket,
      :key,
      :glue_configuration,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_name
    #   The name of the channel whose message samples are retrieved.
    #   @return [String]
    #
    # @!attribute [rw] max_messages
    #   The number of sample messages to be retrieved. The limit is 10. The
    #   default is also 10.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The start of the time window from which sample messages are
    #   retrieved.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time window from which sample messages are retrieved.
    #   @return [Time]
    #
    class SampleChannelDataRequest < Struct.new(
      :channel_name,
      :max_messages,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payloads
    #   The list of message samples. Each sample message is returned as a
    #   base64-encoded string.
    #   @return [Array<String>]
    #
    class SampleChannelDataResponse < Struct.new(
      :payloads)
      SENSITIVE = []
      include Aws::Structure
    end

    # The schedule for when to trigger an update.
    #
    # @!attribute [rw] expression
    #   The expression that defines when to trigger an update. For more
    #   information, see [Schedule Expressions for Rules][1] in the *Amazon
    #   CloudWatch Events User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html
    #   @return [String]
    #
    class Schedule < Struct.new(
      :expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information needed to define a schema.
    #
    # @!attribute [rw] columns
    #   Specifies one or more columns that store your data.
    #
    #   Each schema can have up to 100 columns. Each column can have up to
    #   100 nested types.
    #   @return [Array<Types::Column>]
    #
    class SchemaDefinition < Struct.new(
      :columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to create a new message using only the specified attributes from
    # the original message.
    #
    # @!attribute [rw] name
    #   The name of the `selectAttributes` activity.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A list of the attributes to select from the message.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next
    #   The next activity in the pipeline.
    #   @return [String]
    #
    class SelectAttributesActivity < Struct.new(
      :name,
      :attributes,
      :next)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to store channel data in an S3 bucket managed by IoT Analytics.
    # You can't change the choice of S3 storage after the data store is
    # created.
    #
    # @api private
    #
    class ServiceManagedChannelS3Storage < Aws::EmptyStructure; end

    # Used to store channel data in an S3 bucket managed by IoT Analytics.
    #
    class ServiceManagedChannelS3StorageSummary < Aws::EmptyStructure; end

    # Used to store data in an Amazon S3 bucket managed by IoT Analytics.
    # You can't change the choice of Amazon S3 storage after your data
    # store is created.
    #
    # @api private
    #
    class ServiceManagedDatastoreS3Storage < Aws::EmptyStructure; end

    # Contains information about the data store that is managed by IoT
    # Analytics.
    #
    class ServiceManagedDatastoreS3StorageSummary < Aws::EmptyStructure; end

    # The service is temporarily unavailable.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SQL query to modify the message.
    #
    # @!attribute [rw] sql_query
    #   A SQL query string.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Prefilters applied to message data.
    #   @return [Array<Types::QueryFilter>]
    #
    class SqlQueryDatasetAction < Struct.new(
      :sql_query,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline_name
    #   The name of the pipeline on which to start reprocessing.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time (inclusive) of raw message data that is reprocessed.
    #
    #   If you specify a value for the `startTime` parameter, you must not
    #   use the `channelMessages` object.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time (exclusive) of raw message data that is reprocessed.
    #
    #   If you specify a value for the `endTime` parameter, you must not use
    #   the `channelMessages` object.
    #   @return [Time]
    #
    # @!attribute [rw] channel_messages
    #   Specifies one or more sets of channel messages that you want to
    #   reprocess.
    #
    #   If you use the `channelMessages` object, you must not specify a
    #   value for `startTime` and `endTime`.
    #   @return [Types::ChannelMessages]
    #
    class StartPipelineReprocessingRequest < Struct.new(
      :pipeline_name,
      :start_time,
      :end_time,
      :channel_messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reprocessing_id
    #   The ID of the pipeline reprocessing activity that was started.
    #   @return [String]
    #
    class StartPipelineReprocessingResponse < Struct.new(
      :reprocessing_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of key-value pairs that are used to manage the resource.
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

    # @!attribute [rw] resource_arn
    #   The ARN of the resource whose tags you want to modify.
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

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A partition dimension defined by a timestamp attribute.
    #
    # @!attribute [rw] attribute_name
    #   The attribute name of the partition defined by a timestamp.
    #   @return [String]
    #
    # @!attribute [rw] timestamp_format
    #   The timestamp format of a partition defined by a timestamp. The
    #   default format is seconds since epoch (January 1, 1970 at midnight
    #   UTC time).
    #   @return [String]
    #
    class TimestampPartition < Struct.new(
      :attribute_name,
      :timestamp_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the dataset whose content generation triggers the
    # new dataset content generation.
    #
    # @!attribute [rw] name
    #   The name of the dataset whose content generation triggers the new
    #   dataset content generation.
    #   @return [String]
    #
    class TriggeringDataset < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource whose tags you want to remove.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of those tags which you want to remove.
    #   @return [Array<String>]
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] channel_name
    #   The name of the channel to be updated.
    #   @return [String]
    #
    # @!attribute [rw] channel_storage
    #   Where channel data is stored. You can choose one of
    #   `serviceManagedS3` or `customerManagedS3` storage. If not specified,
    #   the default is `serviceManagedS3`. You can't change this storage
    #   option after the channel is created.
    #   @return [Types::ChannelStorage]
    #
    # @!attribute [rw] retention_period
    #   How long, in days, message data is kept for the channel. The
    #   retention period can't be updated if the channel's Amazon S3
    #   storage is customer-managed.
    #   @return [Types::RetentionPeriod]
    #
    class UpdateChannelRequest < Struct.new(
      :channel_name,
      :channel_storage,
      :retention_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_name
    #   The name of the dataset to update.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   A list of `DatasetAction` objects.
    #   @return [Array<Types::DatasetAction>]
    #
    # @!attribute [rw] triggers
    #   A list of `DatasetTrigger` objects. The list can be empty or can
    #   contain up to five `DatasetTrigger` objects.
    #   @return [Array<Types::DatasetTrigger>]
    #
    # @!attribute [rw] content_delivery_rules
    #   When dataset contents are created, they are delivered to
    #   destinations specified here.
    #   @return [Array<Types::DatasetContentDeliveryRule>]
    #
    # @!attribute [rw] retention_period
    #   How long, in days, dataset contents are kept for the dataset.
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] versioning_configuration
    #   Optional. How many versions of dataset contents are kept. If not
    #   specified or set to null, only the latest version plus the latest
    #   succeeded version (if they are different) are kept for the time
    #   period specified by the `retentionPeriod` parameter. For more
    #   information, see [Keeping Multiple Versions of IoT Analytics
    #   datasets][1] in the *IoT Analytics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions
    #   @return [Types::VersioningConfiguration]
    #
    # @!attribute [rw] late_data_rules
    #   A list of data rules that send notifications to CloudWatch, when
    #   data arrives late. To specify `lateDataRules`, the dataset must use
    #   a [DeltaTimer][1] filter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html
    #   @return [Array<Types::LateDataRule>]
    #
    class UpdateDatasetRequest < Struct.new(
      :dataset_name,
      :actions,
      :triggers,
      :content_delivery_rules,
      :retention_period,
      :versioning_configuration,
      :late_data_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_name
    #   The name of the data store to be updated.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   How long, in days, message data is kept for the data store. The
    #   retention period can't be updated if the data store's Amazon S3
    #   storage is customer-managed.
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] datastore_storage
    #   Where data in a data store is stored.. You can choose
    #   `serviceManagedS3` storage, `customerManagedS3` storage, or
    #   `iotSiteWiseMultiLayerStorage` storage. The default is
    #   `serviceManagedS3`. You can't change the choice of Amazon S3
    #   storage after your data store is created.
    #   @return [Types::DatastoreStorage]
    #
    # @!attribute [rw] file_format_configuration
    #   Contains the configuration information of file formats. IoT
    #   Analytics data stores support JSON and [Parquet][1].
    #
    #   The default file format is JSON. You can specify only one format.
    #
    #   You can't change the file format after you create the data store.
    #
    #
    #
    #   [1]: https://parquet.apache.org/
    #   @return [Types::FileFormatConfiguration]
    #
    class UpdateDatastoreRequest < Struct.new(
      :datastore_name,
      :retention_period,
      :datastore_storage,
      :file_format_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline_name
    #   The name of the pipeline to update.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_activities
    #   A list of `PipelineActivity` objects. Activities perform
    #   transformations on your messages, such as removing, renaming or
    #   adding message attributes; filtering messages based on attribute
    #   values; invoking your Lambda functions on messages for advanced
    #   processing; or performing mathematical transformations to normalize
    #   device data.
    #
    #   The list can be 2-25 `PipelineActivity` objects and must contain
    #   both a `channel` and a `datastore` activity. Each entry in the list
    #   must contain only one activity. For example:
    #
    #   `pipelineActivities = [ \{ "channel": \{ ... \} \}, \{ "lambda": \{
    #   ... \} \}, ... ]`
    #   @return [Array<Types::PipelineActivity>]
    #
    class UpdatePipelineRequest < Struct.new(
      :pipeline_name,
      :pipeline_activities)
      SENSITIVE = []
      include Aws::Structure
    end

    # An instance of a variable to be passed to the `containerAction`
    # execution. Each variable must have a name and a value given by one of
    # `stringValue`, `datasetContentVersionValue`, or `outputFileUriValue`.
    #
    # @!attribute [rw] name
    #   The name of the variable.
    #   @return [String]
    #
    # @!attribute [rw] string_value
    #   The value of the variable as a string.
    #   @return [String]
    #
    # @!attribute [rw] double_value
    #   The value of the variable as a double (numeric).
    #   @return [Float]
    #
    # @!attribute [rw] dataset_content_version_value
    #   The value of the variable as a structure that specifies a dataset
    #   content version.
    #   @return [Types::DatasetContentVersionValue]
    #
    # @!attribute [rw] output_file_uri_value
    #   The value of the variable as a structure that specifies an output
    #   file URI.
    #   @return [Types::OutputFileUriValue]
    #
    class Variable < Struct.new(
      :name,
      :string_value,
      :double_value,
      :dataset_content_version_value,
      :output_file_uri_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the versioning of dataset contents.
    #
    # @!attribute [rw] unlimited
    #   If true, unlimited versions of dataset contents are kept.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_versions
    #   How many versions of dataset contents are kept. The `unlimited`
    #   parameter must be `false`.
    #   @return [Integer]
    #
    class VersioningConfiguration < Struct.new(
      :unlimited,
      :max_versions)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
