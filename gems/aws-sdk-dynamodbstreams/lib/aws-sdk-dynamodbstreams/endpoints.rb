# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DynamoDBStreams
  # @api private
  module Endpoints

    class DescribeStream
      def self.build(context)
        Aws::DynamoDBStreams::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
        )
      end
    end

    class GetRecords
      def self.build(context)
        Aws::DynamoDBStreams::EndpointParameters.create(
          context.config,
          shard_iterator: context.params[:shard_iterator],
        )
      end
    end

    class GetShardIterator
      def self.build(context)
        Aws::DynamoDBStreams::EndpointParameters.create(
          context.config,
          stream_arn: context.params[:stream_arn],
        )
      end
    end


    def self.parameters_for_operation(context)
      case context.operation_name
      when :describe_stream
        DescribeStream.build(context)
      when :get_records
        GetRecords.build(context)
      when :get_shard_iterator
        GetShardIterator.build(context)
      else
        Aws::DynamoDBStreams::EndpointParameters.create(context.config)
      end
    end
  end
end
