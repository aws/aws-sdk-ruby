module Aws
  # @api private
  class ResponseHandler

    def initialize(parser)
      @parser = parser
    end

    attr_accessor :handler

    def call(context)
      @handler.call(context).on_success do |response|
        output = context.operation.output
        body = context.http_response.body_contents
        if output.payload
          response.data = Structure.new(output.members.keys)
          unless output.raw_payload?
            response.data[output.payload] = parse(output.payload_member, body)
          end
        else
          response.data = parse(output, body)
        end
        response.error = nil
      end
    end

    def parse(rules, body)
      @parser.parse(rules, body)
    end

  end
end
