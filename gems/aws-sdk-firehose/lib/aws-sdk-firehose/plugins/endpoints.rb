# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Firehose
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Firehose::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Firehose::EndpointParameters`'
      ) do |cfg|
        Aws::Firehose::EndpointProvider.new
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
          when :create_delivery_stream
            Aws::Firehose::Endpoints::CreateDeliveryStream.build(context)
          when :delete_delivery_stream
            Aws::Firehose::Endpoints::DeleteDeliveryStream.build(context)
          when :describe_delivery_stream
            Aws::Firehose::Endpoints::DescribeDeliveryStream.build(context)
          when :list_delivery_streams
            Aws::Firehose::Endpoints::ListDeliveryStreams.build(context)
          when :list_tags_for_delivery_stream
            Aws::Firehose::Endpoints::ListTagsForDeliveryStream.build(context)
          when :put_record
            Aws::Firehose::Endpoints::PutRecord.build(context)
          when :put_record_batch
            Aws::Firehose::Endpoints::PutRecordBatch.build(context)
          when :start_delivery_stream_encryption
            Aws::Firehose::Endpoints::StartDeliveryStreamEncryption.build(context)
          when :stop_delivery_stream_encryption
            Aws::Firehose::Endpoints::StopDeliveryStreamEncryption.build(context)
          when :tag_delivery_stream
            Aws::Firehose::Endpoints::TagDeliveryStream.build(context)
          when :untag_delivery_stream
            Aws::Firehose::Endpoints::UntagDeliveryStream.build(context)
          when :update_destination
            Aws::Firehose::Endpoints::UpdateDestination.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
