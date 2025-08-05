# frozen_string_literal: true

require_relative '../rest/request/builder'
require_relative '../rest/response/parser'

module Aws
  module Core
    # @api private
    module Rest
      # @api private
      class Handler < Smithy::Client::Handler
        def call(context)
          Request::Builder.new(codec(context.config)).apply(context)
          response = @handler.call(context)
          response.on_done(200..599) { |_resp| apply_request_id(context) }
          response.on_done(200..299) { |resp| Response::Parser.new(codec(context.config)).apply(resp) }
        end

        private

        def apply_request_id(context)
          headers = context.http_response.headers
          context[:request_id] = headers.delete('x-amz-request-id') || headers.delete('x-amzn-requestid')
        end

        def codec(config)
          case config.protocol
          when 'aws.protocols#restJson1' then config.json_codec
          else raise "Unsupported protocol: #{config.protocol}"
          end
        end
      end
    end
  end
end

