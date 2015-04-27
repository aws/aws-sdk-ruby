module Aws
  module Json
    class RestHandler < RestBodyHandler

      # @param [Seahorse::Model::Shapes::Structure] shape
      # @param [Hash] params
      def serialize_params(shape, params)
        Builder.new(shape).to_json(params)
      end

      # @param [String] json
      # @param [Seahorse::Model::Shapes::Structure] shape
      # @param [Structure, nil] target
      def parse_body(json, shape, target)
        Parser.new(shape).parse(json, target)
      end

    end
  end
end
