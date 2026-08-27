# frozen_string_literal: true

require 'smithy-xml'
require_relative 'query'

module Aws
  module Core
    # Protocol implementation for AWS Query. Serializes requests as
    # form-urlencoded query strings and deserializes XML responses (and
    # errors), and builds stubbed responses for testing.
    # @api private
    class AwsQuery
      include Query::Protocol

      def initialize(options = {})
        @input_codec = Query::Codec.new(options)
        @output_codec = Smithy::Xml::Codec.new(options)
      end

      # Deserialize a successful response body.
      # @param [HandlerContext] context
      # @return [Object] the parsed output data
      def parse_data(context)
        shape = wrap(context.operation)
        data = @output_codec.parse(shape, context.http_response.body.read)
        unwrap(context, data)
      end

      # Build a stubbed HTTP response for the given output data.
      # @param [Configuration] config
      # @param [Schema::OperationShape] operation
      # @param [Object] data
      # @return [Http::Response]
      def stub_data(config, operation, data)
        response = Smithy::Client::Http::Response.new
        response.status_code = 200
        response.body = stub_body(config, operation, data)
        response
      end

      private

      def wrap(operation)
        member = Smithy::Schema::Shapes::MemberShape.new(
          target: operation.output, name: "#{operation.name}Result"
        )
        result = Smithy::Schema::Shapes::StructureShape.new
        result.add_member(:result, member)
        result.type = ::Struct.new(:result, :response_metadata)

        response_metadata = Smithy::Schema::Shapes::StructureShape.new
        response_metadata.type = ::Struct.new(:request_id)
        request_id_member = Smithy::Schema::Shapes::MemberShape.new(
          target: Smithy::Schema::Shapes::StringShape.new, name: 'RequestId'
        )
        response_metadata.add_member(:request_id, request_id_member)
        response_metadata_member = Smithy::Schema::Shapes::MemberShape.new(
          target: response_metadata, name: 'ResponseMetadata'
        )
        result.add_member(:response_metadata, response_metadata_member)
        result
      end

      def unwrap(context, data)
        context[:request_id] = data.response_metadata&.request_id
        data.result
      end

      def stub_body(config, operation, data)
        xml = []
        @output_codec.build(operation.output, data, xml)
        xml.shift
        xml.pop
        <<~XML.strip
          <#{operation.name}Response xmlns="#{xmlns(config.service)}">
            <#{operation.name}Result>#{xml.join}</#{operation.name}Result>
            <ResponseMetadata>
              <RequestId>stubbed-request-id</RequestId>
            </ResponseMetadata>
          </#{operation.name}Response>
        XML
      end

      def xmlns(service)
        service.traits.dig('smithy.api#xmlNamespace', 'uri')
      end
    end
  end
end
