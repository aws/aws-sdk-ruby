
module Seahorse
  module Model

    autoload :Api, 'seahorse/model/api'
    autoload :Node, 'seahorse/model/node'
    autoload :Operation, 'seahorse/model/operation'
    autoload :Operations, 'seahorse/model/operations'
    autoload :OperationInput, 'seahorse/model/operation_input'
    autoload :Property, 'seahorse/model/property'
    autoload :PropertyError, 'seahorse/model/property'

    module Shapes
      autoload :BlobShape, 'seahorse/model/shapes/shape'
      autoload :BooleanShape, 'seahorse/model/shapes/shape'
      autoload :DoubleShape, 'seahorse/model/shapes/shape'
      autoload :IntegerShape, 'seahorse/model/shapes/shape'
      autoload :InputShape, 'seahorse/model/shapes/shape'
      autoload :Iso8601TimestampShape, 'seahorse/model/shapes/shape'
      autoload :FloatShape, 'seahorse/model/shapes/shape'
      autoload :ListShape, 'seahorse/model/shapes/shape'
      autoload :LongShape, 'seahorse/model/shapes/shape'
      autoload :MapShape, 'seahorse/model/shapes/shape'
      autoload :MemberHash, 'seahorse/model/shapes/shape'
      autoload :Rfc822TimestampShape, 'seahorse/model/shapes/shape'
      autoload :Shape, 'seahorse/model/shapes/shape'
      autoload :StringShape, 'seahorse/model/shapes/shape'
      autoload :StructureShape, 'seahorse/model/shapes/shape'
      autoload :TimestampShape, 'seahorse/model/shapes/shape'
      autoload :UnixTimestampShape, 'seahorse/model/shapes/shape'
    end

    module Types
      autoload :Boolean, 'seahorse/model/types'
    end

  end
end
