module Aws
  module Xml
    class RestHandler < RestBodyHandler

      # @param [Seahorse::Model::Shapes::Structure] shape
      # @param [Hash] params
      def serialize_params(shape, params)
        Builder.new(shape).to_xml(params)
      end

      # @param [String] xml
      # @param [Seahorse::Model::Shapes::Structure] shape
      # @param [Structure, nil] target
      def parse_body(xml, shape, target)
        Parser.new(shape).parse(xml, target)
      end

    end
  end
end
