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
      rules = input.payload_member
      if input.payload
        params = context.params[input.payload] || {}
      else
        params = {}
        rules.members.keys.each do |param_name|
          param_name = param_name.to_sym
          if context.params.include?(param_name)
            params[param_name] = context.params[param_name]
          end
        end
      end
      @serializer.serialize_params(context, rules, params)
    end

    def serialize_params?(context)
      rules = context.operation.input
      !(rules.raw_payload? || rules.payload_member.empty?)
    end

  end
end
