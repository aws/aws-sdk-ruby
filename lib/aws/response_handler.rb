module Aws
  # @api private
  class ResponseHandler < Seahorse::Client::Handler

    def call(context)
      response = @handler.call(context)
      response.on_success { parse_response_data(response) }
      response.on_error { parse_response_error(response) }
    end

    def parse_response_data(response)
      context = response.context
      rules = context.operation.output
      response.data = Structure.new(rules.members.keys)
      response.error = nil
      unless rules.raw_payload?
        extract_data(rules, context.http_response.body_contents, response.data)
      end
    end

    def parse_response_error(response)
      response.data = nil
      response.error = extract_error(response)
    end

    def extract_data(rules, response_body, data)
      raise NotImplementedError
    end

    def extract_error(response)
      raise NotImplementedError
    end

  end
end
