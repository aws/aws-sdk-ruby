module Aws
  # @api private
  class ResponseHandler

    def initialize(parser)
      @parser = parser
    end

    attr_accessor :handler

    def call(context)
      @handler.call(context).on(200..299) do |response|
        rules = context.operation.output
        response.error = nil
        response.data = case
          when rules.raw_payload? then empty_struct(rules)
          when rules.payload then parse_payload(rules, context)
          else parse(rules, context)
        end
      end
    end

    def empty_struct(rules)
      Structure.new(rules.members.keys)
    end

    def parse_payload(rules, context)
      data = empty_struct(rules)
      data[rules.payload] = parse(rules.payload_member, context)
      data
    end

    def parse(rules, context)
      @parser.parse(rules, context.http_response.body_contents)
    end

  end
end
