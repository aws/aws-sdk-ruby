# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Kinesis
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Kinesis::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Kinesis::EndpointParameters`'
      ) do |cfg|
        Aws::Kinesis::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          # If endpoint was discovered, do not resolve or apply the endpoint.
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)
          end

          context[:endpoint_params] = params
          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          @handler.call(context)
        end

        private

        def apply_endpoint_headers(context, headers)
          headers.each do |key, values|
            value = values
              .compact
              .map { |s| Seahorse::Util.escape_header_list_string(s.to_s) }
              .join(',')

            context.http_request.headers[key] = value
          end
        end

        def parameters_for_operation(context)
          case context.operation_name
          when :add_tags_to_stream
            Aws::Kinesis::Endpoints::AddTagsToStream.build(context)
          when :create_stream
            Aws::Kinesis::Endpoints::CreateStream.build(context)
          when :decrease_stream_retention_period
            Aws::Kinesis::Endpoints::DecreaseStreamRetentionPeriod.build(context)
          when :delete_stream
            Aws::Kinesis::Endpoints::DeleteStream.build(context)
          when :deregister_stream_consumer
            Aws::Kinesis::Endpoints::DeregisterStreamConsumer.build(context)
          when :describe_limits
            Aws::Kinesis::Endpoints::DescribeLimits.build(context)
          when :describe_stream
            Aws::Kinesis::Endpoints::DescribeStream.build(context)
          when :describe_stream_consumer
            Aws::Kinesis::Endpoints::DescribeStreamConsumer.build(context)
          when :describe_stream_summary
            Aws::Kinesis::Endpoints::DescribeStreamSummary.build(context)
          when :disable_enhanced_monitoring
            Aws::Kinesis::Endpoints::DisableEnhancedMonitoring.build(context)
          when :enable_enhanced_monitoring
            Aws::Kinesis::Endpoints::EnableEnhancedMonitoring.build(context)
          when :get_records
            Aws::Kinesis::Endpoints::GetRecords.build(context)
          when :get_shard_iterator
            Aws::Kinesis::Endpoints::GetShardIterator.build(context)
          when :increase_stream_retention_period
            Aws::Kinesis::Endpoints::IncreaseStreamRetentionPeriod.build(context)
          when :list_shards
            Aws::Kinesis::Endpoints::ListShards.build(context)
          when :list_stream_consumers
            Aws::Kinesis::Endpoints::ListStreamConsumers.build(context)
          when :list_streams
            Aws::Kinesis::Endpoints::ListStreams.build(context)
          when :list_tags_for_stream
            Aws::Kinesis::Endpoints::ListTagsForStream.build(context)
          when :merge_shards
            Aws::Kinesis::Endpoints::MergeShards.build(context)
          when :put_record
            Aws::Kinesis::Endpoints::PutRecord.build(context)
          when :put_records
            Aws::Kinesis::Endpoints::PutRecords.build(context)
          when :register_stream_consumer
            Aws::Kinesis::Endpoints::RegisterStreamConsumer.build(context)
          when :remove_tags_from_stream
            Aws::Kinesis::Endpoints::RemoveTagsFromStream.build(context)
          when :split_shard
            Aws::Kinesis::Endpoints::SplitShard.build(context)
          when :start_stream_encryption
            Aws::Kinesis::Endpoints::StartStreamEncryption.build(context)
          when :stop_stream_encryption
            Aws::Kinesis::Endpoints::StopStreamEncryption.build(context)
          when :subscribe_to_shard
            Aws::Kinesis::Endpoints::SubscribeToShard.build(context)
          when :update_shard_count
            Aws::Kinesis::Endpoints::UpdateShardCount.build(context)
          when :update_stream_mode
            Aws::Kinesis::Endpoints::UpdateStreamMode.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
