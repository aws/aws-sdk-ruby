# frozen_string_literal: true

require 'smithy-json'

require_relative 'request_builder'
require_relative 'response_parser'
require_relative 'response_stubber'

module Aws
  module Core
    module RestJson
      # @api private
      class Protocol
        def initialize(options = {})
          @options = options.merge(json_name: true)
        end

        def build_request(context)
          RequestBuilder.new(@options).build(context)
        end

        def parse_error(response)
          ResponseParser.new(@options).parse_error(response)
        end

        def parse_data(response)
          ResponseParser.new(@options).parse_data(response)
        end

        def stub_data(service, operation, data)
          ResponseStubber.new(@options).stub_data(service, operation, data)
        end

        def stub_error(service, error_code)
          ResponseStubber.new(@options).stub_error(service, error_code)
        end
      end
    end
  end
end
