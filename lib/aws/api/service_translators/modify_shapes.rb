# Crawls every operation yielding once per shape for input and output.
# This allows an observer to modify the yielded shapes.
module Aws::Api::ServiceTranslators::ModifyShapes

  include Seahorse::Model::Shapes

  def modify_shapes(api, &block)
    api.operations.values.each do |operation|
      modify_shape(:input, operation.input, &block)
      modify_shape(:output, operation.output, &block)
    end
  end

  private

  def modify_shape(context, shape, &block)
    yield(context, shape)
    case shape
    when StructureShape
      shape.members.each do |member_name, member_shape|
        modify_shape(member_name, member_shape, &block)
      end
    when MapShape
      modify_shape(:map_key, shape.keys, &block)
      modify_shape(:map_value, shape.members, &block)
    when ListShape
      modify_shape(:list_member, shape.members, &block)
    end
  end

end
