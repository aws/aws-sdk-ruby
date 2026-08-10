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
      # ec2: true selects the EC2 query dialect (capitalized member names, no map support) - see Query::ParamBuilder
      def initialize(options = {})
        @input_codec = Query::Codec.new(options.merge(ec2: true))
        @output_codec = Smithy::Xml::Codec.new(options)
      end

      # Serialize the request into the EC2 Query wire format.
      # @param [HandlerContext] context
      def build_request(context)
        context.http_request.http_method = 'POST'
        context.http_request.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        apply_endpoint_path(context)
        context.http_request.body = build_body(context, context.params)
      end

      # Deserialize a successful response body.
      # @param [HandlerContext] context
      # @return [Object] the parsed output data
      def parse_data(context)
        @output_codec.parse(context.operation.output, context.http_response.body.read)
      end

      # Deserialize an error response into the modeled error. Called on every
      # response (always runs before #parse_data - see the generic Protocol
      # plugin's handler ordering), captures the request id, and returns nil
      # when the response is not an error.
      # @param [HandlerContext] context
      # @return [StandardError, nil]
      def parse_error(context)
        return unless (300..599).cover?(context.http_response.status_code)

        klass, code, data = extract_error(context)
        build_error(context, klass, code, data)
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

      # Build a stubbed HTTP error response for the given error code.
      # @param [Configuration] _config
      # @param [String] error_code
      # @return [Http::Response]
      def stub_error(_config, error_code)
        response = Smithy::Client::Http::Response.new
        response.status_code = 400
        response.body = <<~XML.strip
          <ErrorResponse>
            <Error>
              <Code>#{error_code}</Code>
              <Message>stubbed-error-message</Message>
            </Error>
          </ErrorResponse>
        XML
        response
      end

      private

      def apply_endpoint_path(context)
        path = context.http_request.endpoint.path
        return path if path.end_with?('/')

        context.http_request.endpoint.path += '/'
      end

      def build_body(context, params)
        param_list = Query::ParamList.new
        param_list.set('Action', context.operation.name)
        param_list.set('Version', context.config.service.version)
        @input_codec.build(context.operation.input, params, param_list)
        param_list.to_io
      end

      def extract_error(context)
        body = context.http_response.body.read
        apply_request_id(context, body)
        code = error_code(context, body)
        parse_error_data(context, body, code)
      rescue Smithy::Xml::ParseError
        [http_status_error_code(context), http_status_error_code(context), Smithy::Schema::EmptyStructure.new]
      end

      def error_code(context, body)
        if (matches = body.match(%r{<Code>(.+?)</Code>}))
          matches[1]
        else
          http_status_error_code(context)
        end
      end

      def parse_error_data(context, body, code)
        context.operation.errors.each do |shape|
          query_code = query_error_code(shape)
          next unless code == query_code || code == shape.target.name

          data = error_data(@output_codec, shape, body)
          return [shape.target.name, query_code || code, data]
        end
        [code, code, Smithy::Schema::EmptyStructure.new]
      end

      def query_error_code(shape)
        traits = shape.target.traits
        return unless traits.key?('aws.protocols#awsQueryError')

        traits['aws.protocols#awsQueryError']['code']
      end

      def error_data(codec, shape, body)
        # errors may be nested under <Errors><Error>structure_data</Error></Errors>
        # or flat and under <Error>structure_data</Error>
        body = body.tr("\n", '')
        if (matches = body.match(%r{<Error>(.+?)</Error>}))
          codec.parse(shape, "<#{shape.target.name}>#{matches[1]}</#{shape.target.name}>")
        else
          Smithy::Schema::EmptyStructure.new
        end
      end

      def build_error(context, klass, code, data)
        errors_module = context.client.class.errors_module
        error_class = errors_module.error_class(klass)
        error_class.code = code
        error_class.new(context, data)
      end

      def http_status_error_code(context)
        "HTTP#{context.http_response.status_code}Error"
      end

      def apply_request_id(context, body)
        return unless (matches = body.match(%r{<RequestId>(.+?)</RequestId>}m))

        context[:request_id] = matches[1]
      end

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
