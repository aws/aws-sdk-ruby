module Aws
  class StructureType < Struct.new(:EMPTY_STRUCTURE)

    include Enumerable

    # @param [String, Symbol] attr_name
    # @return [Mixed]
    def [](attr_name)
      send(attr_name)
    end

    # @param [String, Symbol] attr_name
    # @param [Miaxed] value
    # @return [Mixed]
    def []=(attr_name, value)
      send("#{attr_name}=", value)
    end

    # @return [Enumerator<Symbol,Mixed>]
    def each(&block)
      enum = attribute_enumerator
      enum.each(&block) if block
      enum
    end
    alias each_pair each

    # Performs a deep conversion to a hash.
    # @return [Hash]
    def to_hash
      Struct2Hash.new(shape: self.class.shape).to_hash(self)
    end
    alias to_h to_hash

    # @api private
    def inspect
      # Avoiding default inspect string for Struct. Remove this
      # method if Struct is removed as a parent class.
      Object.instance_method(:inspect).bind(self).call
    end

    private

    def attribute_enumerator
      Enumerator.new do |y|
        self.class.shape.member_names.each do |member_name|
          y.yield(member_name, self[member_name])
        end
      end
    end

    class << self

      # @api private
      attr_reader :shape

      # @param [Hash] hash
      # @return [#{@shape_name}]
      def build(hash)
        Hash2Struct.new(shape: shape, struct_class: self).struct(hash)
      end

    end
  end
end
