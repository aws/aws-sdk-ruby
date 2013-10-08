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
        response.error = nil
        response.data = Structure.new(output.members.keys)
        unless output.raw_payload?
          if output.payload
            rules = output.payload_member
            target = Structure.new(rules.members.keys)
            response.data[output.payload] = target
          else
            rules = output
            target = response.data
          end
          @parser.parse(rules, context.http_response.body_contents, target)
        end
      end
    end

  end
end
