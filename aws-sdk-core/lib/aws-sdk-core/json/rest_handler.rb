module Aws
  module Json
    class RestHandler < RestBodyHandler

      def serialize_params(rules, params)
        Builder.new(rules).to_json(params)
      end

      def parse_body(json, rules, target)
        Parser.new(rules).parse(json, target)
      end

    end
  end
end
