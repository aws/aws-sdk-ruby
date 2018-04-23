# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTAnalytics
  module Types

    # An activity that adds other attributes based on existing attributes in
    # the message.
    #
    # @note When making an API call, you may pass AddAttributesActivity
    #   data as a hash:
    #
    #       {
    #         name: "ActivityName", # required
    #         attributes: { # required
    #           "AttributeName" => "AttributeName",
    #         },
    #         next: "ActivityName",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the 'addAttributes' activity.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A list of 1-50 "AttributeNameMapping" objects that map an existing
    #   attribute to a new attribute.
    #
    #   <note markdown="1"> The existing attributes remain in the message, so if you want to
    #   remove the originals, use "RemoveAttributeActivity".
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
      include Aws::Structure
    end

    # Contains informations about errors.
    #
    # @!attribute [rw] message_id
    #   The ID of the message that caused the error. (See the value
    #   corresponding to the "messageId" key in the message object.)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchPutMessageRequest
    #   data as a hash:
    #
    #       {
    #         channel_name: "ChannelName", # required
    #         messages: [ # required
    #           {
    #             message_id: "MessageId", # required
    #             payload: "data", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] channel_name
    #   The name of the channel where the messages are sent.
    #   @return [String]
    #
    # @!attribute [rw] messages
    #   The list of messages to be sent. Each message has format: '\\\{
    #   "messageId": "string", "payload": "string"\\}'.
    #   @return [Array<Types::Message>]
    #
    class BatchPutMessageRequest < Struct.new(
      :channel_name,
      :messages)
      include Aws::Structure
    end

    # @!attribute [rw] batch_put_message_error_entries
    #   A list of any errors encountered when sending the messages to the
    #   channel.
    #   @return [Array<Types::BatchPutMessageErrorEntry>]
    #
    class BatchPutMessageResponse < Struct.new(
      :batch_put_message_error_entries)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelPipelineReprocessingRequest
    #   data as a hash:
    #
    #       {
    #         pipeline_name: "PipelineName", # required
    #         reprocessing_id: "ReprocessingId", # required
    #       }
    #
    # @!attribute [rw] pipeline_name
    #   The name of pipeline for which data reprocessing is canceled.
    #   @return [String]
    #
    # @!attribute [rw] reprocessing_id
    #   The ID of the reprocessing task (returned by
    #   "StartPipelineReprocessing").
    #   @return [String]
    #
    class CancelPipelineReprocessingRequest < Struct.new(
      :pipeline_name,
      :reprocessing_id)
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
    class Channel < Struct.new(
      :name,
      :arn,
      :status,
      :retention_period,
      :creation_time,
      :last_update_time)
      include Aws::Structure
    end

    # The activity that determines the source of the messages to be
    # processed.
    #
    # @note When making an API call, you may pass ChannelActivity
    #   data as a hash:
    #
    #       {
    #         name: "ActivityName", # required
    #         channel_name: "ChannelName", # required
    #         next: "ActivityName",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the 'channel' activity.
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
      include Aws::Structure
    end

    # A summary of information about a channel.
    #
    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
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
    class ChannelSummary < Struct.new(
      :channel_name,
      :status,
      :creation_time,
      :last_update_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateChannelRequest
    #   data as a hash:
    #
    #       {
    #         channel_name: "ChannelName", # required
    #         retention_period: {
    #           unlimited: false,
    #           number_of_days: 1,
    #         },
    #       }
    #
    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   How long, in days, message data is kept for the channel.
    #   @return [Types::RetentionPeriod]
    #
    class CreateChannelRequest < Struct.new(
      :channel_name,
      :retention_period)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDatasetContentRequest
    #   data as a hash:
    #
    #       {
    #         dataset_name: "DatasetName", # required
    #       }
    #
    # @!attribute [rw] dataset_name
    #   The name of the data set.
    #   @return [String]
    #
    class CreateDatasetContentRequest < Struct.new(
      :dataset_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDatasetRequest
    #   data as a hash:
    #
    #       {
    #         dataset_name: "DatasetName", # required
    #         actions: [ # required
    #           {
    #             action_name: "DatasetActionName",
    #             query_action: {
    #               sql_query: "SqlQuery", # required
    #             },
    #           },
    #         ],
    #         triggers: [
    #           {
    #             schedule: {
    #               expression: "ScheduleExpression",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dataset_name
    #   The name of the data set.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   A list of actions that create the data set. Only one action is
    #   supported at this time.
    #   @return [Array<Types::DatasetAction>]
    #
    # @!attribute [rw] triggers
    #   A list of triggers. A trigger causes data set content to be
    #   populated at a specified time or time interval. The list of triggers
    #   can be empty or contain up to five **DataSetTrigger** objects.
    #   @return [Array<Types::DatasetTrigger>]
    #
    class CreateDatasetRequest < Struct.new(
      :dataset_name,
      :actions,
      :triggers)
      include Aws::Structure
    end

    # @!attribute [rw] dataset_name
    #   The name of the data set.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The ARN of the data set.
    #   @return [String]
    #
    class CreateDatasetResponse < Struct.new(
      :dataset_name,
      :dataset_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDatastoreRequest
    #   data as a hash:
    #
    #       {
    #         datastore_name: "DatastoreName", # required
    #         retention_period: {
    #           unlimited: false,
    #           number_of_days: 1,
    #         },
    #       }
    #
    # @!attribute [rw] datastore_name
    #   The name of the data store.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   How long, in days, message data is kept for the data store.
    #   @return [Types::RetentionPeriod]
    #
    class CreateDatastoreRequest < Struct.new(
      :datastore_name,
      :retention_period)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePipelineRequest
    #   data as a hash:
    #
    #       {
    #         pipeline_name: "PipelineName", # required
    #         pipeline_activities: [ # required
    #           {
    #             channel: {
    #               name: "ActivityName", # required
    #               channel_name: "ChannelName", # required
    #               next: "ActivityName",
    #             },
    #             lambda: {
    #               name: "ActivityName", # required
    #               lambda_name: "LambdaName", # required
    #               batch_size: 1, # required
    #               next: "ActivityName",
    #             },
    #             datastore: {
    #               name: "ActivityName", # required
    #               datastore_name: "DatastoreName", # required
    #             },
    #             add_attributes: {
    #               name: "ActivityName", # required
    #               attributes: { # required
    #                 "AttributeName" => "AttributeName",
    #               },
    #               next: "ActivityName",
    #             },
    #             remove_attributes: {
    #               name: "ActivityName", # required
    #               attributes: ["AttributeName"], # required
    #               next: "ActivityName",
    #             },
    #             select_attributes: {
    #               name: "ActivityName", # required
    #               attributes: ["AttributeName"], # required
    #               next: "ActivityName",
    #             },
    #             filter: {
    #               name: "ActivityName", # required
    #               filter: "FilterExpression", # required
    #               next: "ActivityName",
    #             },
    #             math: {
    #               name: "ActivityName", # required
    #               attribute: "AttributeName", # required
    #               math: "MathExpression", # required
    #               next: "ActivityName",
    #             },
    #             device_registry_enrich: {
    #               name: "ActivityName", # required
    #               attribute: "AttributeName", # required
    #               thing_name: "AttributeName", # required
    #               role_arn: "RoleArn", # required
    #               next: "ActivityName",
    #             },
    #             device_shadow_enrich: {
    #               name: "ActivityName", # required
    #               attribute: "AttributeName", # required
    #               thing_name: "AttributeName", # required
    #               role_arn: "RoleArn", # required
    #               next: "ActivityName",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] pipeline_name
    #   The name of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_activities
    #   A list of pipeline activities.
    #
    #   The list can be 1-25 **PipelineActivity** objects. Activities
    #   perform transformations on your messages, such as removing,
    #   renaming, or adding message attributes; filtering messages based on
    #   attribute values; invoking your Lambda functions on messages for
    #   advanced processing; or performing mathematical transformations to
    #   normalize device data.
    #   @return [Array<Types::PipelineActivity>]
    #
    class CreatePipelineRequest < Struct.new(
      :pipeline_name,
      :pipeline_activities)
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
      include Aws::Structure
    end

    # Information about a data set.
    #
    # @!attribute [rw] name
    #   The name of the data set.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the data set.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The "DatasetAction" objects that create the data set.
    #   @return [Array<Types::DatasetAction>]
    #
    # @!attribute [rw] triggers
    #   The "DatasetTrigger" objects that specify when the data set is
    #   automatically updated.
    #   @return [Array<Types::DatasetTrigger>]
    #
    # @!attribute [rw] status
    #   The status of the data set.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the data set was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The last time the data set was updated.
    #   @return [Time]
    #
    class Dataset < Struct.new(
      :name,
      :arn,
      :actions,
      :triggers,
      :status,
      :creation_time,
      :last_update_time)
      include Aws::Structure
    end

    # A "DatasetAction" object specifying the query that creates the data
    # set content.
    #
    # @note When making an API call, you may pass DatasetAction
    #   data as a hash:
    #
    #       {
    #         action_name: "DatasetActionName",
    #         query_action: {
    #           sql_query: "SqlQuery", # required
    #         },
    #       }
    #
    # @!attribute [rw] action_name
    #   The name of the data set action.
    #   @return [String]
    #
    # @!attribute [rw] query_action
    #   An "SqlQueryDatasetAction" object that contains the SQL query to
    #   modify the message.
    #   @return [Types::SqlQueryDatasetAction]
    #
    class DatasetAction < Struct.new(
      :action_name,
      :query_action)
      include Aws::Structure
    end

    # The state of the data set and the reason it is in this state.
    #
    # @!attribute [rw] state
    #   The state of the data set. Can be one of "CREATING", "SUCCEEDED"
    #   or "FAILED".
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason the data set is in this state.
    #   @return [String]
    #
    class DatasetContentStatus < Struct.new(
      :state,
      :reason)
      include Aws::Structure
    end

    # The reference to a data set entry.
    #
    # @!attribute [rw] entry_name
    #   The name of the data set item.
    #   @return [String]
    #
    # @!attribute [rw] data_uri
    #   The pre-signed URI of the data set item.
    #   @return [String]
    #
    class DatasetEntry < Struct.new(
      :entry_name,
      :data_uri)
      include Aws::Structure
    end

    # A summary of information about a data set.
    #
    # @!attribute [rw] dataset_name
    #   The name of the data set.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the data set.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the data set was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The last time the data set was updated.
    #   @return [Time]
    #
    class DatasetSummary < Struct.new(
      :dataset_name,
      :status,
      :creation_time,
      :last_update_time)
      include Aws::Structure
    end

    # The "DatasetTrigger" that specifies when the data set is
    # automatically updated.
    #
    # @note When making an API call, you may pass DatasetTrigger
    #   data as a hash:
    #
    #       {
    #         schedule: {
    #           expression: "ScheduleExpression",
    #         },
    #       }
    #
    # @!attribute [rw] schedule
    #   The "Schedule" when the trigger is initiated.
    #   @return [Types::Schedule]
    #
    class DatasetTrigger < Struct.new(
      :schedule)
      include Aws::Structure
    end

    # Information about a data store.
    #
    # @!attribute [rw] name
    #   The name of the data store.
    #   @return [String]
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
    #   How long, in days, message data is kept for the data store.
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
    class Datastore < Struct.new(
      :name,
      :arn,
      :status,
      :retention_period,
      :creation_time,
      :last_update_time)
      include Aws::Structure
    end

    # The 'datastore' activity that specifies where to store the processed
    # data.
    #
    # @note When making an API call, you may pass DatastoreActivity
    #   data as a hash:
    #
    #       {
    #         name: "ActivityName", # required
    #         datastore_name: "DatastoreName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the 'datastore' activity.
    #   @return [String]
    #
    # @!attribute [rw] datastore_name
    #   The name of the data store where processed messages are stored.
    #   @return [String]
    #
    class DatastoreActivity < Struct.new(
      :name,
      :datastore_name)
      include Aws::Structure
    end

    # A summary of information about a data store.
    #
    # @!attribute [rw] datastore_name
    #   The name of the data store.
    #   @return [String]
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
    class DatastoreSummary < Struct.new(
      :datastore_name,
      :status,
      :creation_time,
      :last_update_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteChannelRequest
    #   data as a hash:
    #
    #       {
    #         channel_name: "ChannelName", # required
    #       }
    #
    # @!attribute [rw] channel_name
    #   The name of the channel to delete.
    #   @return [String]
    #
    class DeleteChannelRequest < Struct.new(
      :channel_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDatasetContentRequest
    #   data as a hash:
    #
    #       {
    #         dataset_name: "DatasetName", # required
    #         version_id: "DatasetContentVersion",
    #       }
    #
    # @!attribute [rw] dataset_name
    #   The name of the data set whose content is deleted.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version of the data set whose content is deleted. You can also
    #   use the strings "$LATEST" or "$LATEST\_SUCCEEDED" to delete the
    #   latest or latest successfully completed data set. If not specified,
    #   "$LATEST\_SUCCEEDED" is the default.
    #   @return [String]
    #
    class DeleteDatasetContentRequest < Struct.new(
      :dataset_name,
      :version_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDatasetRequest
    #   data as a hash:
    #
    #       {
    #         dataset_name: "DatasetName", # required
    #       }
    #
    # @!attribute [rw] dataset_name
    #   The name of the data set to delete.
    #   @return [String]
    #
    class DeleteDatasetRequest < Struct.new(
      :dataset_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDatastoreRequest
    #   data as a hash:
    #
    #       {
    #         datastore_name: "DatastoreName", # required
    #       }
    #
    # @!attribute [rw] datastore_name
    #   The name of the data store to delete.
    #   @return [String]
    #
    class DeleteDatastoreRequest < Struct.new(
      :datastore_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePipelineRequest
    #   data as a hash:
    #
    #       {
    #         pipeline_name: "PipelineName", # required
    #       }
    #
    # @!attribute [rw] pipeline_name
    #   The name of the pipeline to delete.
    #   @return [String]
    #
    class DeletePipelineRequest < Struct.new(
      :pipeline_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeChannelRequest
    #   data as a hash:
    #
    #       {
    #         channel_name: "ChannelName", # required
    #       }
    #
    # @!attribute [rw] channel_name
    #   The name of the channel whose information is retrieved.
    #   @return [String]
    #
    class DescribeChannelRequest < Struct.new(
      :channel_name)
      include Aws::Structure
    end

    # @!attribute [rw] channel
    #   An object that contains information about the channel.
    #   @return [Types::Channel]
    #
    class DescribeChannelResponse < Struct.new(
      :channel)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDatasetRequest
    #   data as a hash:
    #
    #       {
    #         dataset_name: "DatasetName", # required
    #       }
    #
    # @!attribute [rw] dataset_name
    #   The name of the data set whose information is retrieved.
    #   @return [String]
    #
    class DescribeDatasetRequest < Struct.new(
      :dataset_name)
      include Aws::Structure
    end

    # @!attribute [rw] dataset
    #   An object that contains information about the data set.
    #   @return [Types::Dataset]
    #
    class DescribeDatasetResponse < Struct.new(
      :dataset)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDatastoreRequest
    #   data as a hash:
    #
    #       {
    #         datastore_name: "DatastoreName", # required
    #       }
    #
    # @!attribute [rw] datastore_name
    #   The name of the data store
    #   @return [String]
    #
    class DescribeDatastoreRequest < Struct.new(
      :datastore_name)
      include Aws::Structure
    end

    # @!attribute [rw] datastore
    #   Information about the data store.
    #   @return [Types::Datastore]
    #
    class DescribeDatastoreResponse < Struct.new(
      :datastore)
      include Aws::Structure
    end

    # @api private
    #
    class DescribeLoggingOptionsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] logging_options
    #   The current settings of the AWS IoT Analytics logging options.
    #   @return [Types::LoggingOptions]
    #
    class DescribeLoggingOptionsResponse < Struct.new(
      :logging_options)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePipelineRequest
    #   data as a hash:
    #
    #       {
    #         pipeline_name: "PipelineName", # required
    #       }
    #
    # @!attribute [rw] pipeline_name
    #   The name of the pipeline whose information is retrieved.
    #   @return [String]
    #
    class DescribePipelineRequest < Struct.new(
      :pipeline_name)
      include Aws::Structure
    end

    # @!attribute [rw] pipeline
    #   A "Pipeline" object that contains information about the pipeline.
    #   @return [Types::Pipeline]
    #
    class DescribePipelineResponse < Struct.new(
      :pipeline)
      include Aws::Structure
    end

    # An activity that adds data from the AWS IoT device registry to your
    # message.
    #
    # @note When making an API call, you may pass DeviceRegistryEnrichActivity
    #   data as a hash:
    #
    #       {
    #         name: "ActivityName", # required
    #         attribute: "AttributeName", # required
    #         thing_name: "AttributeName", # required
    #         role_arn: "RoleArn", # required
    #         next: "ActivityName",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the 'deviceRegistryEnrich' activity.
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
      include Aws::Structure
    end

    # An activity that adds information from the AWS IoT Device Shadows
    # service to a message.
    #
    # @note When making an API call, you may pass DeviceShadowEnrichActivity
    #   data as a hash:
    #
    #       {
    #         name: "ActivityName", # required
    #         attribute: "AttributeName", # required
    #         thing_name: "AttributeName", # required
    #         role_arn: "RoleArn", # required
    #         next: "ActivityName",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the 'deviceShadowEnrich' activity.
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
      include Aws::Structure
    end

    # An activity that filters a message based on its attributes.
    #
    # @note When making an API call, you may pass FilterActivity
    #   data as a hash:
    #
    #       {
    #         name: "ActivityName", # required
    #         filter: "FilterExpression", # required
    #         next: "ActivityName",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the 'filter' activity.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   An expression that looks like an SQL WHERE clause that must return a
    #   Boolean value.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDatasetContentRequest
    #   data as a hash:
    #
    #       {
    #         dataset_name: "DatasetName", # required
    #         version_id: "DatasetContentVersion",
    #       }
    #
    # @!attribute [rw] dataset_name
    #   The name of the data set whose contents are retrieved.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version of the data set whose contents are retrieved. You can
    #   also use the strings "$LATEST" or "$LATEST\_SUCCEEDED" to
    #   retrieve the contents of the latest or latest successfully completed
    #   data set. If not specified, "$LATEST\_SUCCEEDED" is the default.
    #   @return [String]
    #
    class GetDatasetContentRequest < Struct.new(
      :dataset_name,
      :version_id)
      include Aws::Structure
    end

    # @!attribute [rw] entries
    #   A list of "DatasetEntry" objects.
    #   @return [Array<Types::DatasetEntry>]
    #
    # @!attribute [rw] timestamp
    #   The time when the request was made.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the data set content.
    #   @return [Types::DatasetContentStatus]
    #
    class GetDatasetContentResponse < Struct.new(
      :entries,
      :timestamp,
      :status)
      include Aws::Structure
    end

    # An activity that runs a Lambda function to modify the message.
    #
    # @note When making an API call, you may pass LambdaActivity
    #   data as a hash:
    #
    #       {
    #         name: "ActivityName", # required
    #         lambda_name: "LambdaName", # required
    #         batch_size: 1, # required
    #         next: "ActivityName",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the 'lambda' activity.
    #   @return [String]
    #
    # @!attribute [rw] lambda_name
    #   The name of the Lambda function that is run on the message.
    #   @return [String]
    #
    # @!attribute [rw] batch_size
    #   The number of messages passed to the Lambda function for processing.
    #
    #   The AWS Lambda function must be able to process all of these
    #   messages within five minutes, which is the maximum timeout duration
    #   for Lambda functions.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListChannelsRequest
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
    #   The maximum number of results to return in this request.
    #
    #   The default value is 100.
    #   @return [Integer]
    #
    class ListChannelsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] channel_summaries
    #   A list of "ChannelSummary" objects.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDatasetsRequest
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
    #   The maximum number of results to return in this request.
    #
    #   The default value is 100.
    #   @return [Integer]
    #
    class ListDatasetsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] dataset_summaries
    #   A list of "DatasetSummary" objects.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDatastoresRequest
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
    #   The maximum number of results to return in this request.
    #
    #   The default value is 100.
    #   @return [Integer]
    #
    class ListDatastoresRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] datastore_summaries
    #   A list of "DatastoreSummary" objects.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPipelinesRequest
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
    #   The maximum number of results to return in this request.
    #
    #   The default value is 100.
    #   @return [Integer]
    #
    class ListPipelinesRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] pipeline_summaries
    #   A list of "PipelineSummary" objects.
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
      include Aws::Structure
    end

    # Information about logging options.
    #
    # @note When making an API call, you may pass LoggingOptions
    #   data as a hash:
    #
    #       {
    #         role_arn: "RoleArn", # required
    #         level: "ERROR", # required, accepts ERROR
    #         enabled: false, # required
    #       }
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants permission to AWS IoT Analytics to
    #   perform logging.
    #   @return [String]
    #
    # @!attribute [rw] level
    #   The logging level. Currently, only "ERROR" is supported.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If true, logging is enabled for AWS IoT Analytics.
    #   @return [Boolean]
    #
    class LoggingOptions < Struct.new(
      :role_arn,
      :level,
      :enabled)
      include Aws::Structure
    end

    # An activity that computes an arithmetic expression using the
    # message's attributes.
    #
    # @note When making an API call, you may pass MathActivity
    #   data as a hash:
    #
    #       {
    #         name: "ActivityName", # required
    #         attribute: "AttributeName", # required
    #         math: "MathExpression", # required
    #         next: "ActivityName",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the 'math' activity.
    #   @return [String]
    #
    # @!attribute [rw] attribute
    #   The name of the attribute that will contain the result of the math
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
      include Aws::Structure
    end

    # Information about a message.
    #
    # @note When making an API call, you may pass Message
    #   data as a hash:
    #
    #       {
    #         message_id: "MessageId", # required
    #         payload: "data", # required
    #       }
    #
    # @!attribute [rw] message_id
    #   The ID you wish to assign to the message.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The payload of the message.
    #   @return [String]
    #
    class Message < Struct.new(
      :message_id,
      :payload)
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
      include Aws::Structure
    end

    # An activity that performs a transformation on a message.
    #
    # @note When making an API call, you may pass PipelineActivity
    #   data as a hash:
    #
    #       {
    #         channel: {
    #           name: "ActivityName", # required
    #           channel_name: "ChannelName", # required
    #           next: "ActivityName",
    #         },
    #         lambda: {
    #           name: "ActivityName", # required
    #           lambda_name: "LambdaName", # required
    #           batch_size: 1, # required
    #           next: "ActivityName",
    #         },
    #         datastore: {
    #           name: "ActivityName", # required
    #           datastore_name: "DatastoreName", # required
    #         },
    #         add_attributes: {
    #           name: "ActivityName", # required
    #           attributes: { # required
    #             "AttributeName" => "AttributeName",
    #           },
    #           next: "ActivityName",
    #         },
    #         remove_attributes: {
    #           name: "ActivityName", # required
    #           attributes: ["AttributeName"], # required
    #           next: "ActivityName",
    #         },
    #         select_attributes: {
    #           name: "ActivityName", # required
    #           attributes: ["AttributeName"], # required
    #           next: "ActivityName",
    #         },
    #         filter: {
    #           name: "ActivityName", # required
    #           filter: "FilterExpression", # required
    #           next: "ActivityName",
    #         },
    #         math: {
    #           name: "ActivityName", # required
    #           attribute: "AttributeName", # required
    #           math: "MathExpression", # required
    #           next: "ActivityName",
    #         },
    #         device_registry_enrich: {
    #           name: "ActivityName", # required
    #           attribute: "AttributeName", # required
    #           thing_name: "AttributeName", # required
    #           role_arn: "RoleArn", # required
    #           next: "ActivityName",
    #         },
    #         device_shadow_enrich: {
    #           name: "ActivityName", # required
    #           attribute: "AttributeName", # required
    #           thing_name: "AttributeName", # required
    #           role_arn: "RoleArn", # required
    #           next: "ActivityName",
    #         },
    #       }
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
    #   Creates a new message using only the specified attributes from the
    #   original message.
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
    #   Adds data from the AWS IoT device registry to your message.
    #   @return [Types::DeviceRegistryEnrichActivity]
    #
    # @!attribute [rw] device_shadow_enrich
    #   Adds information from the AWS IoT Device Shadows service to a
    #   message.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutLoggingOptionsRequest
    #   data as a hash:
    #
    #       {
    #         logging_options: { # required
    #           role_arn: "RoleArn", # required
    #           level: "ERROR", # required, accepts ERROR
    #           enabled: false, # required
    #         },
    #       }
    #
    # @!attribute [rw] logging_options
    #   The new values of the AWS IoT Analytics logging options.
    #   @return [Types::LoggingOptions]
    #
    class PutLoggingOptionsRequest < Struct.new(
      :logging_options)
      include Aws::Structure
    end

    # An activity that removes attributes from a message.
    #
    # @note When making an API call, you may pass RemoveAttributesActivity
    #   data as a hash:
    #
    #       {
    #         name: "ActivityName", # required
    #         attributes: ["AttributeName"], # required
    #         next: "ActivityName",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the 'removeAttributes' activity.
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
      include Aws::Structure
    end

    # Information about pipeline reprocessing.
    #
    # @!attribute [rw] id
    #   The 'reprocessingId' returned by "StartPipelineReprocessing".
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
      include Aws::Structure
    end

    # How long, in days, message data is kept.
    #
    # @note When making an API call, you may pass RetentionPeriod
    #   data as a hash:
    #
    #       {
    #         unlimited: false,
    #         number_of_days: 1,
    #       }
    #
    # @!attribute [rw] unlimited
    #   If true, message data is kept indefinitely.
    #   @return [Boolean]
    #
    # @!attribute [rw] number_of_days
    #   The number of days that message data is kept. The "unlimited"
    #   parameter must be false.
    #   @return [Integer]
    #
    class RetentionPeriod < Struct.new(
      :unlimited,
      :number_of_days)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RunPipelineActivityRequest
    #   data as a hash:
    #
    #       {
    #         pipeline_activity: { # required
    #           channel: {
    #             name: "ActivityName", # required
    #             channel_name: "ChannelName", # required
    #             next: "ActivityName",
    #           },
    #           lambda: {
    #             name: "ActivityName", # required
    #             lambda_name: "LambdaName", # required
    #             batch_size: 1, # required
    #             next: "ActivityName",
    #           },
    #           datastore: {
    #             name: "ActivityName", # required
    #             datastore_name: "DatastoreName", # required
    #           },
    #           add_attributes: {
    #             name: "ActivityName", # required
    #             attributes: { # required
    #               "AttributeName" => "AttributeName",
    #             },
    #             next: "ActivityName",
    #           },
    #           remove_attributes: {
    #             name: "ActivityName", # required
    #             attributes: ["AttributeName"], # required
    #             next: "ActivityName",
    #           },
    #           select_attributes: {
    #             name: "ActivityName", # required
    #             attributes: ["AttributeName"], # required
    #             next: "ActivityName",
    #           },
    #           filter: {
    #             name: "ActivityName", # required
    #             filter: "FilterExpression", # required
    #             next: "ActivityName",
    #           },
    #           math: {
    #             name: "ActivityName", # required
    #             attribute: "AttributeName", # required
    #             math: "MathExpression", # required
    #             next: "ActivityName",
    #           },
    #           device_registry_enrich: {
    #             name: "ActivityName", # required
    #             attribute: "AttributeName", # required
    #             thing_name: "AttributeName", # required
    #             role_arn: "RoleArn", # required
    #             next: "ActivityName",
    #           },
    #           device_shadow_enrich: {
    #             name: "ActivityName", # required
    #             attribute: "AttributeName", # required
    #             thing_name: "AttributeName", # required
    #             role_arn: "RoleArn", # required
    #             next: "ActivityName",
    #           },
    #         },
    #         payloads: ["data"], # required
    #       }
    #
    # @!attribute [rw] pipeline_activity
    #   The pipeline activity that is run. This must not be a 'channel'
    #   activity or a 'datastore' activity because these activities are
    #   used in a pipeline only to load the original message and to store
    #   the (possibly) transformed message. If a 'lambda' activity is
    #   specified, only short-running Lambda functions (those with a timeout
    #   of less than 30 seconds or less) can be used.
    #   @return [Types::PipelineActivity]
    #
    # @!attribute [rw] payloads
    #   The sample message payloads on which the pipeline activity is run.
    #   @return [Array<String>]
    #
    class RunPipelineActivityRequest < Struct.new(
      :pipeline_activity,
      :payloads)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass SampleChannelDataRequest
    #   data as a hash:
    #
    #       {
    #         channel_name: "ChannelName", # required
    #         max_messages: 1,
    #         start_time: Time.now,
    #         end_time: Time.now,
    #       }
    #
    # @!attribute [rw] channel_name
    #   The name of the channel whose message samples are retrieved.
    #   @return [String]
    #
    # @!attribute [rw] max_messages
    #   The number of sample messages to be retrieved. The limit is 10, the
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
      include Aws::Structure
    end

    # @!attribute [rw] payloads
    #   The list of message samples. Each sample message is returned as a
    #   base64-encoded string.
    #   @return [Array<String>]
    #
    class SampleChannelDataResponse < Struct.new(
      :payloads)
      include Aws::Structure
    end

    # The schedule for when to trigger an update.
    #
    # @note When making an API call, you may pass Schedule
    #   data as a hash:
    #
    #       {
    #         expression: "ScheduleExpression",
    #       }
    #
    # @!attribute [rw] expression
    #   The expression that defines when to trigger an update. For more
    #   information, see [ Schedule Expressions for Rules][1] in the Amazon
    #   CloudWatch documentation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html
    #   @return [String]
    #
    class Schedule < Struct.new(
      :expression)
      include Aws::Structure
    end

    # Creates a new message using only the specified attributes from the
    # original message.
    #
    # @note When making an API call, you may pass SelectAttributesActivity
    #   data as a hash:
    #
    #       {
    #         name: "ActivityName", # required
    #         attributes: ["AttributeName"], # required
    #         next: "ActivityName",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the 'selectAttributes' activity.
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
      include Aws::Structure
    end

    # The SQL query to modify the message.
    #
    # @note When making an API call, you may pass SqlQueryDatasetAction
    #   data as a hash:
    #
    #       {
    #         sql_query: "SqlQuery", # required
    #       }
    #
    # @!attribute [rw] sql_query
    #   An SQL query string.
    #   @return [String]
    #
    class SqlQueryDatasetAction < Struct.new(
      :sql_query)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartPipelineReprocessingRequest
    #   data as a hash:
    #
    #       {
    #         pipeline_name: "PipelineName", # required
    #         start_time: Time.now,
    #         end_time: Time.now,
    #       }
    #
    # @!attribute [rw] pipeline_name
    #   The name of the pipeline on which to start reprocessing.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time (inclusive) of raw message data that is reprocessed.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time (exclusive) of raw message data that is reprocessed.
    #   @return [Time]
    #
    class StartPipelineReprocessingRequest < Struct.new(
      :pipeline_name,
      :start_time,
      :end_time)
      include Aws::Structure
    end

    # @!attribute [rw] reprocessing_id
    #   The ID of the pipeline reprocessing activity that was started.
    #   @return [String]
    #
    class StartPipelineReprocessingResponse < Struct.new(
      :reprocessing_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateChannelRequest
    #   data as a hash:
    #
    #       {
    #         channel_name: "ChannelName", # required
    #         retention_period: {
    #           unlimited: false,
    #           number_of_days: 1,
    #         },
    #       }
    #
    # @!attribute [rw] channel_name
    #   The name of the channel to be updated.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   How long, in days, message data is kept for the channel.
    #   @return [Types::RetentionPeriod]
    #
    class UpdateChannelRequest < Struct.new(
      :channel_name,
      :retention_period)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDatasetRequest
    #   data as a hash:
    #
    #       {
    #         dataset_name: "DatasetName", # required
    #         actions: [ # required
    #           {
    #             action_name: "DatasetActionName",
    #             query_action: {
    #               sql_query: "SqlQuery", # required
    #             },
    #           },
    #         ],
    #         triggers: [
    #           {
    #             schedule: {
    #               expression: "ScheduleExpression",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dataset_name
    #   The name of the data set to update.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   A list of "DatasetAction" objects. Only one action is supported at
    #   this time.
    #   @return [Array<Types::DatasetAction>]
    #
    # @!attribute [rw] triggers
    #   A list of "DatasetTrigger" objects. The list can be empty or can
    #   contain up to five **DataSetTrigger** objects.
    #   @return [Array<Types::DatasetTrigger>]
    #
    class UpdateDatasetRequest < Struct.new(
      :dataset_name,
      :actions,
      :triggers)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDatastoreRequest
    #   data as a hash:
    #
    #       {
    #         datastore_name: "DatastoreName", # required
    #         retention_period: {
    #           unlimited: false,
    #           number_of_days: 1,
    #         },
    #       }
    #
    # @!attribute [rw] datastore_name
    #   The name of the data store to be updated.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   How long, in days, message data is kept for the data store.
    #   @return [Types::RetentionPeriod]
    #
    class UpdateDatastoreRequest < Struct.new(
      :datastore_name,
      :retention_period)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePipelineRequest
    #   data as a hash:
    #
    #       {
    #         pipeline_name: "PipelineName", # required
    #         pipeline_activities: [ # required
    #           {
    #             channel: {
    #               name: "ActivityName", # required
    #               channel_name: "ChannelName", # required
    #               next: "ActivityName",
    #             },
    #             lambda: {
    #               name: "ActivityName", # required
    #               lambda_name: "LambdaName", # required
    #               batch_size: 1, # required
    #               next: "ActivityName",
    #             },
    #             datastore: {
    #               name: "ActivityName", # required
    #               datastore_name: "DatastoreName", # required
    #             },
    #             add_attributes: {
    #               name: "ActivityName", # required
    #               attributes: { # required
    #                 "AttributeName" => "AttributeName",
    #               },
    #               next: "ActivityName",
    #             },
    #             remove_attributes: {
    #               name: "ActivityName", # required
    #               attributes: ["AttributeName"], # required
    #               next: "ActivityName",
    #             },
    #             select_attributes: {
    #               name: "ActivityName", # required
    #               attributes: ["AttributeName"], # required
    #               next: "ActivityName",
    #             },
    #             filter: {
    #               name: "ActivityName", # required
    #               filter: "FilterExpression", # required
    #               next: "ActivityName",
    #             },
    #             math: {
    #               name: "ActivityName", # required
    #               attribute: "AttributeName", # required
    #               math: "MathExpression", # required
    #               next: "ActivityName",
    #             },
    #             device_registry_enrich: {
    #               name: "ActivityName", # required
    #               attribute: "AttributeName", # required
    #               thing_name: "AttributeName", # required
    #               role_arn: "RoleArn", # required
    #               next: "ActivityName",
    #             },
    #             device_shadow_enrich: {
    #               name: "ActivityName", # required
    #               attribute: "AttributeName", # required
    #               thing_name: "AttributeName", # required
    #               role_arn: "RoleArn", # required
    #               next: "ActivityName",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] pipeline_name
    #   The name of the pipeline to update.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_activities
    #   A list of "PipelineActivity" objects.
    #
    #   The list can be 1-25 **PipelineActivity** objects. Activities
    #   perform transformations on your messages, such as removing, renaming
    #   or adding message attributes; filtering messages based on attribute
    #   values; invoking your Lambda functions on messages for advanced
    #   processing; or performing mathematical transformations to normalize
    #   device data.
    #   @return [Array<Types::PipelineActivity>]
    #
    class UpdatePipelineRequest < Struct.new(
      :pipeline_name,
      :pipeline_activities)
      include Aws::Structure
    end

  end
end
