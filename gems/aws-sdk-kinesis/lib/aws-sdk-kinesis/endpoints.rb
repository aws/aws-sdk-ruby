# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Kinesis
  # @api private
  module Endpoints

    class AcknowledgeDeadLetterQueueRecords
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "data",
          queue_arn: context.params[:queue_arn],
          resource_type: "queue",
        )
      end
    end

    class AcknowledgeQueueRecords
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "data",
          queue_arn: context.params[:queue_arn],
          resource_type: "queue",
        )
      end
    end

    class AddTagsToStream
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class CreateChannel
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
        )
      end
    end

    class CreateQueue
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          resource_type: "queue",
        )
      end
    end

    class CreateStream
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
        )
      end
    end

    class DecreaseStreamRetentionPeriod
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class DeleteChannel
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          channel_arn: context.params[:channel_arn],
        )
      end
    end

    class DeleteQueue
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          queue_arn: context.params[:queue_arn],
          resource_type: "queue",
        )
      end
    end

    class DeleteResourcePolicy
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class DeleteStream
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class DeregisterStreamConsumer
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
          consumer_arn: context.params[:consumer_arn],
        )
      end
    end

    class DescribeAccountSettings
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
        )
      end
    end

    class DescribeChannel
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          channel_arn: context.params[:channel_arn],
        )
      end
    end

    class DescribeLimits
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
        )
      end
    end

    class DescribeQueue
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          queue_arn: context.params[:queue_arn],
          resource_type: "queue",
        )
      end
    end

    class DescribeStream
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class DescribeStreamConsumer
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
          consumer_arn: context.params[:consumer_arn],
        )
      end
    end

    class DescribeStreamSummary
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class DisableEnhancedMonitoring
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class EnableEnhancedMonitoring
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class GetRecords
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "data",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class GetResourcePolicy
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class GetShardIterator
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "data",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class IncreaseStreamRetentionPeriod
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class ListChannels
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
        )
      end
    end

    class ListQueues
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          resource_type: "queue",
        )
      end
    end

    class ListShards
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class ListStreamConsumers
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class ListStreams
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
        )
      end
    end

    class ListTagsForResource
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class ListTagsForStream
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class MergeShards
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class PutRecord
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "data",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class PutRecords
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "data",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class PutResourcePolicy
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class ReceiveDeadLetterQueueRecords
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "data",
          queue_arn: context.params[:queue_arn],
          resource_type: "queue",
        )
      end
    end

    class ReceiveQueueRecords
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "data",
          queue_arn: context.params[:queue_arn],
          resource_type: "queue",
        )
      end
    end

    class RegisterStreamConsumer
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class RemoveTagsFromStream
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class RestoreDeadLetterQueueRecords
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "data",
          queue_arn: context.params[:queue_arn],
          resource_type: "queue",
        )
      end
    end

    class SplitShard
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class StartStreamEncryption
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class StopStreamEncryption
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class SubscribeToShard
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "data",
          stream_id: context.params[:stream_id],
          consumer_arn: context.params[:consumer_arn],
        )
      end
    end

    class TagResource
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class UntagResource
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class UpdateAccountSettings
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
        )
      end
    end

    class UpdateChannel
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          channel_arn: context.params[:channel_arn],
        )
      end
    end

    class UpdateDeadLetterQueueRecordsVisibility
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "data",
          queue_arn: context.params[:queue_arn],
          resource_type: "queue",
        )
      end
    end

    class UpdateMaxRecordSize
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class UpdateQueue
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          queue_arn: context.params[:queue_arn],
          resource_type: "queue",
        )
      end
    end

    class UpdateQueueRecordsVisibility
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "data",
          queue_arn: context.params[:queue_arn],
          resource_type: "queue",
        )
      end
    end

    class UpdateShardCount
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class UpdateStreamMode
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class UpdateStreamRecordDistributionStrategy
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class UpdateStreamWarmThroughput
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          stream_id: context.params[:stream_id],
          stream_arn: context.params[:stream_arn],
        )
      end
    end


    def self.parameters_for_operation(context)
      case context.operation_name
      when :acknowledge_dead_letter_queue_records
        AcknowledgeDeadLetterQueueRecords.build(context)
      when :acknowledge_queue_records
        AcknowledgeQueueRecords.build(context)
      when :add_tags_to_stream
        AddTagsToStream.build(context)
      when :create_channel
        CreateChannel.build(context)
      when :create_queue
        CreateQueue.build(context)
      when :create_stream
        CreateStream.build(context)
      when :decrease_stream_retention_period
        DecreaseStreamRetentionPeriod.build(context)
      when :delete_channel
        DeleteChannel.build(context)
      when :delete_queue
        DeleteQueue.build(context)
      when :delete_resource_policy
        DeleteResourcePolicy.build(context)
      when :delete_stream
        DeleteStream.build(context)
      when :deregister_stream_consumer
        DeregisterStreamConsumer.build(context)
      when :describe_account_settings
        DescribeAccountSettings.build(context)
      when :describe_channel
        DescribeChannel.build(context)
      when :describe_limits
        DescribeLimits.build(context)
      when :describe_queue
        DescribeQueue.build(context)
      when :describe_stream
        DescribeStream.build(context)
      when :describe_stream_consumer
        DescribeStreamConsumer.build(context)
      when :describe_stream_summary
        DescribeStreamSummary.build(context)
      when :disable_enhanced_monitoring
        DisableEnhancedMonitoring.build(context)
      when :enable_enhanced_monitoring
        EnableEnhancedMonitoring.build(context)
      when :get_records
        GetRecords.build(context)
      when :get_resource_policy
        GetResourcePolicy.build(context)
      when :get_shard_iterator
        GetShardIterator.build(context)
      when :increase_stream_retention_period
        IncreaseStreamRetentionPeriod.build(context)
      when :list_channels
        ListChannels.build(context)
      when :list_queues
        ListQueues.build(context)
      when :list_shards
        ListShards.build(context)
      when :list_stream_consumers
        ListStreamConsumers.build(context)
      when :list_streams
        ListStreams.build(context)
      when :list_tags_for_resource
        ListTagsForResource.build(context)
      when :list_tags_for_stream
        ListTagsForStream.build(context)
      when :merge_shards
        MergeShards.build(context)
      when :put_record
        PutRecord.build(context)
      when :put_records
        PutRecords.build(context)
      when :put_resource_policy
        PutResourcePolicy.build(context)
      when :receive_dead_letter_queue_records
        ReceiveDeadLetterQueueRecords.build(context)
      when :receive_queue_records
        ReceiveQueueRecords.build(context)
      when :register_stream_consumer
        RegisterStreamConsumer.build(context)
      when :remove_tags_from_stream
        RemoveTagsFromStream.build(context)
      when :restore_dead_letter_queue_records
        RestoreDeadLetterQueueRecords.build(context)
      when :split_shard
        SplitShard.build(context)
      when :start_stream_encryption
        StartStreamEncryption.build(context)
      when :stop_stream_encryption
        StopStreamEncryption.build(context)
      when :subscribe_to_shard
        SubscribeToShard.build(context)
      when :tag_resource
        TagResource.build(context)
      when :untag_resource
        UntagResource.build(context)
      when :update_account_settings
        UpdateAccountSettings.build(context)
      when :update_channel
        UpdateChannel.build(context)
      when :update_dead_letter_queue_records_visibility
        UpdateDeadLetterQueueRecordsVisibility.build(context)
      when :update_max_record_size
        UpdateMaxRecordSize.build(context)
      when :update_queue
        UpdateQueue.build(context)
      when :update_queue_records_visibility
        UpdateQueueRecordsVisibility.build(context)
      when :update_shard_count
        UpdateShardCount.build(context)
      when :update_stream_mode
        UpdateStreamMode.build(context)
      when :update_stream_record_distribution_strategy
        UpdateStreamRecordDistributionStrategy.build(context)
      when :update_stream_warm_throughput
        UpdateStreamWarmThroughput.build(context)
      else
        Aws::Kinesis::EndpointParameters.create(context.config)
      end
    end
  end
end
