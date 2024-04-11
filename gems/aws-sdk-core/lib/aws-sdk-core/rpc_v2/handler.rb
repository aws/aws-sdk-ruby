# frozen_string_literal: true

module Aws
  module RpcV2
    class Handler < Seahorse::Client::Handler
      CONTENT_TYPE = 'application/cbor'

      # @param [Seahorse::Client::RequestContext] context
      # @return [Seahorse::Client::Response]
      def call(context)
        build_request(context)
        response = @handler.call(context)
        response.on(200..299) { |resp| parse_response(resp) }
        response
      end

      private

      def build_request(context)
        context.http_request.http_method = 'POST'
        build_url(context)
        context.http_request.headers['Content-Type'] = content_type(context)
        context.http_request.headers['smithy-protocol'] = 'rpc-v2-cbor'
        context.http_request.body = build_body(context)
      end

      def build_url(context)
        base = context.http_request.endpoint
        service_name = context.config.api.metadata['targetPrefix']
        base.path += "/service/#{service_name}/operation/#{context.operation.name}"
      end

      def build_body(context)
          Builder.new(context.operation.input).serialize(context.params)
      end

      def parse_response(response)
        Thread.current[:parse_time] ||= 0
        t1 = Util.monotonic_milliseconds
        response.data = parse_body(response.context)
        Thread.current[:parse_time] += Util.monotonic_milliseconds - t1
      end

      def parse_body(context)
        cbor_data = context.http_response.body_contents.force_encoding(Encoding::BINARY)
        context.config.rpcv2_parser_class.new(context.operation.output, cbor_data).parse
      end

      def content_type(context)
        CONTENT_TYPE
      end

      def target(context)
        prefix = context.config.api.metadata['targetPrefix']
        "#{prefix}.#{context.operation.name}"
      end

      def apply_request_id(context)
        context[:request_id] = context.http_response.headers['x-amzn-requestid']
      end

      def simple_json?(context)
        context.config.simple_json
      end

      def query_compatible?(context)
        context.config.api.metadata.key?('awsQueryCompatible')
      end
    end
  end
end
