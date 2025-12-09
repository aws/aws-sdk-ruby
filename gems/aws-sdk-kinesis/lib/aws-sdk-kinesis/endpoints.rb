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

    class AddTagsToStream
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class DecreaseStreamRetentionPeriod
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class DeleteResourcePolicy
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class DeleteStream
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class DeregisterStreamConsumer
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: context.params[:consumer_arn],
        )
      end
    end

    class DescribeStream
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class DescribeStreamConsumer
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: context.params[:consumer_arn],
        )
      end
    end

    class DescribeStreamSummary
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class DisableEnhancedMonitoring
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class EnableEnhancedMonitoring
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class GetRecords
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "data",
        )
      end
    end

    class GetResourcePolicy
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class GetShardIterator
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "data",
        )
      end
    end

    class IncreaseStreamRetentionPeriod
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class ListShards
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class ListStreamConsumers
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class ListTagsForResource
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class ListTagsForStream
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class MergeShards
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class PutRecord
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "data",
        )
      end
    end

    class PutRecords
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "data",
        )
      end
    end

    class PutResourcePolicy
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class RegisterStreamConsumer
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class RemoveTagsFromStream
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class SplitShard
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class StartStreamEncryption
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class StopStreamEncryption
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class SubscribeToShard
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "data",
          consumer_arn: context.params[:consumer_arn],
        )
      end
    end

    class TagResource
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class UntagResource
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          operation_type: "control",
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class UpdateMaxRecordSize
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class UpdateShardCount
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class UpdateStreamMode
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end

    class UpdateStreamWarmThroughput
      def self.build(context)
        Aws::Kinesis::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
        )
      end
    end


    def self.parameters_for_operation(context)
      case context.operation_name
      when :add_tags_to_stream
        AddTagsToStream.build(context)
      when :decrease_stream_retention_period
        DecreaseStreamRetentionPeriod.build(context)
      when :delete_resource_policy
        DeleteResourcePolicy.build(context)
      when :delete_stream
        DeleteStream.build(context)
      when :deregister_stream_consumer
        DeregisterStreamConsumer.build(context)
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
      when :list_shards
        ListShards.build(context)
      when :list_stream_consumers
        ListStreamConsumers.build(context)
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
      when :register_stream_consumer
        RegisterStreamConsumer.build(context)
      when :remove_tags_from_stream
        RemoveTagsFromStream.build(context)
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
      when :update_max_record_size
        UpdateMaxRecordSize.build(context)
      when :update_shard_count
        UpdateShardCount.build(context)
      when :update_stream_mode
        UpdateStreamMode.build(context)
      when :update_stream_warm_throughput
        UpdateStreamWarmThroughput.build(context)
      else
        Aws::Kinesis::EndpointParameters.create(context.config)
      end
    end
  end
end
