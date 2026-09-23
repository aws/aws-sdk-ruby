# frozen_string_literal: true

require 'smithy-xml'
require_relative 'query'

module Aws
  module Core
    # Protocol implementation for AWS EC2 Query. Serializes requests as
    # form-urlencoded query strings and deserializes XML responses (and
    # errors), and builds stubbed responses for testing.
    # @api private
    class Ec2Query
      include QueryProtocol

      def initialize(options = {})
        @input_codec = Query::Codec.new(options.merge(ec2: true))
        @output_codec = Smithy::Xml::Codec.new(options)
      end

      # Deserialize a successful response body.
      # @param [HandlerContext] context
      # @return [Object] the parsed output data
      def parse_data(context)
        @output_codec.parse(context.operation.output, context.http_response.body.read)
      end

      # Build a stubbed HTTP response for the given output data.
      # @param [Configuration] config
      # @param [Schema::OperationShape] operation
      # @param [Object] data
      # @return [Http::Response]
      def stub_data(config, operation, data)
        response = Smithy::Client::Http::Response.new
        response.status_code = 200
        response.headers['Server'] = 'AmazonEC2'
        response.body = stub_body(config, operation, data)
        response
      end

      private

      def stub_body(config, operation, data)
        xml = []
        @output_codec.build(operation.output, data, xml)
        xml.shift
        xml.pop
        <<~XML.strip
          <#{operation.name}Response xmlns="http://ec2.amazonaws.com/doc/#{config.service.version}/">
            #{xml.join}
            <requestId>stubbed-request-id</requestId>
          </#{operation.name}Response>
        XML
      end
    end
  end
end
