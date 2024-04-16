# frozen_string_literal: true

module Aws
  module RpcV2
    class Handler < Seahorse::Client::Handler
      # @param [Seahorse::Client::RequestContext] context
      # @return [Seahorse::Client::Response]
      def call(context)
        build_request(context)
        response = @handler.call(context)
        response.on(200..299) { |resp| resp.data = parse_body(context) }
        response.on(200..599) { |_resp| apply_request_id(context) }
        response
      end

      private

      def build_request(context)
        context.http_request.http_method = 'POST'
        build_url(context)
        context.http_request.headers['smithy-protocol'] = 'rpc-v2-cbor'
        context.http_request.headers['Accept'] = 'application/cbor' # remove?
        context.http_request.body = build_body(context)
        apply_content_type_header(context)
      end

      def build_url(context)
        base = context.http_request.endpoint
        service_name = context.config.api.metadata['targetPrefix']
        base.path += "/service/#{service_name}/operation/#{context.operation.name}"
      end

      def build_body(context)
        Builder.new(context.operation.input).serialize(context.params)
      end

      def apply_content_type_header(context)
        # If the input shape is empty, do not set the content type. This is
        # different than if the input shape is a structure with no members.
        return if context.operation.input.shape.struct_class == EmptyStructure

        context.http_request.headers['Content-Type'] = 'application/cbor'
      end

      def parse_body(context)
        cbor_data = context.http_response.body_contents.force_encoding(Encoding::BINARY)
        Parser.new(
          context.operation.output,
          query_compatible: query_compatible?(context)
        ).parse(cbor_data)
      end

      def apply_request_id(context)
        context[:request_id] = context.http_response.headers['x-amzn-requestid']
      end

      def query_compatible?(context)
        context.config.api.metadata.key?('awsQueryCompatible')
      end
    end
  end
end
