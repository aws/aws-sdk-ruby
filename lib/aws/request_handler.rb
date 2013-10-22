module Aws
  # @api private
  class RequestHandler

    def initialize(serializer)
      @serializer = serializer
    end

    attr_accessor :handler

    def call(context)
      setup_request(context)
      serialize_params(context) if serialize_params?(context)
      @handler.call(context)
    end

    def setup_request(context)
      @serializer.setup_request(context)
    end

    def serialize_params(context)
      input = context.operation.input
      if input.payload
        rules = input.payload_member
        params = context.params[input.payload] || {}
      else
        rules = input
        params = context.params
      end
      @serializer.serialize_params(context, rules, params)
    end

    def serialize_params?(context)
      rules = context.operation.input
      !(rules.raw_payload? || rules.payload_member.empty?)
    end

  end
end
