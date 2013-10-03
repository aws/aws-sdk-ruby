module Aws
  # @api private
  class ResponseHandler

    def initialize(parser)
      @parser = parser
    end

    attr_accessor :handler

    def call(context)
      @handler.call(context).on_success do |response|
        rules = context.operation.output
        response.error = nil
        response.data = Structure.new(rules.members.keys)
        @parser.parse(rules, context.http_response.body_contents, response.data)
      end
    end

  end
end
