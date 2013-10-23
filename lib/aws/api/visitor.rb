module Aws
  module Api
    # Visits every shape for every operation in an API model.
    module Visitor

      include Seahorse::Model::Shapes

      def each_shape(api, &block)
        api.operations.values.each do |operation|
          visit_shape(:input, operation.input, &block)
          visit_shape(:output, operation.output, &block)
        end
      end

      def visit_shape(context, shape, &block)
        yield(context, shape)
        case shape
        when StructureShape
          shape.members.each do |member_name, member_shape|
            visit_shape(member_name, member_shape, &block)
          end
        when MapShape
          visit_shape(:map_key, shape.keys, &block)
          visit_shape(:map_value, shape.members, &block)
        when ListShape
          visit_shape(:list_member, shape.members, &block)
        end
      end

    end
  end
end
