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
          # TODO: generalize for xml
          codec = context.config.json_codec
          Request::Builder.new(codec).apply(context)
          response = @handler.call(context)
          response.on_done(200..299) { |resp| Response::Parser.new(codec).apply(resp) }
          response.on_done(200..599) { |_resp| apply_request_id(context) }
        end

        private

        def apply_request_id(context)
          h = context.http_response.headers
          context[:request_id] ||= h['x-amz-request-id'] || h['x-amzn-requestid']
        end
      end
    end
  end
end

