# frozen_string_literal: true

require_relative 'request_builder'
require_relative 'response_parser'
require_relative 'response_stubber'

module Aws
  module Core
    module RestJson
      # @api private
      class Protocol
        def initialize(options = {})
          @options = options
        end

        def build_request(context)
          RequestBuilder.new(@options).build(context)
        end

        def parse_error(context)
          ResponseParser.new(@options).parse_error(context)
        end

        def parse_data(context)
          ResponseParser.new(@options).parse_data(context)
        end

        def stub_data(service, operation, data)
          ResponseStubber.new(@options).stub_data(service, operation, data)
        end

        def stub_error(error_code)
          ResponseStubber.new(@options).stub_error(error_code)
        end
      end
    end
  end
end
