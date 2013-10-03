module Aws
  class ProtocolHandler < Seahorse::Client::Handler

    def call(context)
      build_request(context)
      response = @handler.call(context)

      # handle ~200 level responses
      response.on_success do |response|
        parse_response(response)
      end

      # handle ~400 and ~500 level responses
      response.on_error do |response|
        response.data = nil
        response.error = extract_error(response)
      end

      response
    end

    private

    def build_request(context)
      populate_headers(context)
      populate_body(context)
    end

    def populate_headers(context)
      raise NotImplementedError
    end

    def builder_class
      raise NotImplementedError
    end

    def parser_class
      raise NotImplementedError
    end

    def extract_error(response)
      raise NotImplementedError
    end

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
        context.http_request.body = builder_class.build(rules, params)
      end
    end

    def parse_response(response)
      output = response.context.operation.output
      response.data = Structure.new(output.members.keys)
      unless output.raw_payload?
        extract_data(output, response)
      end
    end

    def extract_data(rules, response)
      body = response.context.http_response.body
      parser_class.parse(rules, body.read, response.data)
      body.rewind
    end

  end
end
