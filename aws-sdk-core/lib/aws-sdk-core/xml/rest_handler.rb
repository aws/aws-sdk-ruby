module Aws
  module Xml
    class RestHandler < RestBodyHandler

      def serialize_params(rules, params)
        Builder.new(rules).to_xml(params)
      end

      def parse_body(xml, rules, target)
        Parser.new(rules).parse(xml, target)
      end

    end
  end
end
