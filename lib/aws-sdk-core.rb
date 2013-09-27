require 'seahorse'

# @api private
module Seahorse::Model::Shapes
  class FlatMapShape < MapShape; end
  class FlatListShape < ListShape; end
  Shape.register_type flat_map: FlatMapShape
  Shape.register_type flat_list: FlatListShape
end

require_relative 'aws'
