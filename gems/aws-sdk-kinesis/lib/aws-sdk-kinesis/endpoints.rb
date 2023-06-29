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
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: nil,
        )
      end
    end

    class CreateStream
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: nil,
          operation_type: nil,
          consumer_arn: nil,
        )
      end
    end

    class DecreaseStreamRetentionPeriod
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: nil,
        )
      end
    end

    class DeleteStream
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: nil,
        )
      end
    end

    class DeregisterStreamConsumer
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: context.params[:consumer_arn],
        )
      end
    end

    class DescribeLimits
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: nil,
          operation_type: nil,
          consumer_arn: nil,
        )
      end
    end

    class DescribeStream
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: nil,
        )
      end
    end

    class DescribeStreamConsumer
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: context.params[:consumer_arn],
        )
      end
    end

    class DescribeStreamSummary
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: nil,
        )
      end
    end

    class DisableEnhancedMonitoring
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: nil,
        )
      end
    end

    class EnableEnhancedMonitoring
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: nil,
        )
      end
    end

    class GetRecords
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "data",
          consumer_arn: nil,
        )
      end
    end

    class GetShardIterator
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "data",
          consumer_arn: nil,
        )
      end
    end

    class IncreaseStreamRetentionPeriod
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: nil,
        )
      end
    end

    class ListShards
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: nil,
        )
      end
    end

    class ListStreamConsumers
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: nil,
        )
      end
    end

    class ListStreams
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: nil,
          operation_type: nil,
          consumer_arn: nil,
        )
      end
    end

    class ListTagsForStream
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: nil,
        )
      end
    end

    class MergeShards
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: nil,
        )
      end
    end

    class PutRecord
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "data",
          consumer_arn: nil,
        )
      end
    end

    class PutRecords
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "data",
          consumer_arn: nil,
        )
      end
    end

    class RegisterStreamConsumer
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: nil,
        )
      end
    end

    class RemoveTagsFromStream
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: nil,
        )
      end
    end

    class SplitShard
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: nil,
        )
      end
    end

    class StartStreamEncryption
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: nil,
        )
      end
    end

    class StopStreamEncryption
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: nil,
        )
      end
    end

    class SubscribeToShard
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: nil,
          operation_type: "data",
          consumer_arn: context.params[:consumer_arn],
        )
      end
    end

    class UpdateShardCount
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: nil,
        )
      end
    end

    class UpdateStreamMode
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::Kinesis::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
          stream_arn: context.params[:stream_arn],
          operation_type: "control",
          consumer_arn: nil,
        )
      end
    end

  end
end
