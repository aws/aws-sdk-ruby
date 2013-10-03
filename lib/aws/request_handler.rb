module Aws
  # @api private
  class RequestHandler < Seahorse::Client::Handler

    def call(context)
      build_request(context)
      @handler.call(context)
    end

    def build_request(context)
      populate_headers(context)
      populate_body(context)
    end

    def populate_headers(context); end

    def populate_body(context)
      input = context.operation.input
      unless input.raw_payload? || input.payload_member.empty?
        if input.payload
          rules = input.payload_member
          params = context.params[input.payload] || {}
        else
          rules = input
          params = context.params
        end
        context.http_request.body = serialize_params(context, rules, params)
      end
    end

  end
end
