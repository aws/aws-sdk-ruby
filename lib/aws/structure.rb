module Aws
  # @api private
  class Structure < Struct

    @classes = {}

    # Yields non-nil property names and values.
    def each(&block)
      members.each do |member|
        value = self[member]
        yield(member, value) unless value.nil?
      end
    end
    alias each_pair each

    # @overload to_hash()
    #   @return [Hash]
    def to_hash(obj = self)
      case obj
      when Structure
        obj.members.inject({}) do |hash, member|
          hash[member] = to_hash(obj[member]) unless obj[member].nil?
          hash
        end
      when Array then obj.map { |v| to_hash(v) }
      else obj
      end
    end

    # @param [Array<Symbol>] properties
    # @return [Structure]
    def self.new(properties, values = [])
      properties = [:_] if properties.empty?
      (@classes[properties] ||= super(*properties)).new(*values)
    end

  end
end
