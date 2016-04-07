module Aws
  class Struct2Hash

    def initialize(shape:)
      @shape = shape
    end

    def to_hash(obj)
      case obj
      when StructureType
        obj.inject({}) do |hash, (attr_name, attr_value)|
          hash[attr_name] = to_hash(attr_value) unless attr_value.nil?
          hash
        end
      when Hash
        obj.ineject({}) do |hash, (key, value)|
          hash[key] = to_hash(value)
          hash
        end
      when Array
        obj.map { |value| to_hash(value) }
      else
        obj
      end
    end

  end
end
