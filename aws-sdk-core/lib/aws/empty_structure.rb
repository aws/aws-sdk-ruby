module Aws
  class EmptyStructure < Structure

    def self.new
      super([])
    end

    def ==(other)
      other.is_a?(EmptyStructure)
    end

    def [](member_name)
      raise NameError, "no member '#{member_name}' in struct"
    end

    def []=(member_name, value)
      raise NameError, "no member '#{member_name}' in struct"
    end

    def each(&block)
      unless block_given?
        [].to_enum
      end
    end

    def each_pair(&block)
      unless block_given?
        {}.to_enum
      end
    end

    def eql?(other)
      other.is_a?(EmptyStructure)
    end

    # @api private
    def inspect
      '#<struct>'
    end

    # @api private
    def pretty_print(q)
      q.text(inspect)
    end

    def length
      0
    end

    def members
      []
    end

    def select(&block)
      []
    end

    def size
      0
    end

    def to_a
      []
    end

    def to_h
      {}
    end

    def values
      []
    end

    def values_at(*selector)
      if selector.empty?
        []
      else
        offset = selector.first
        raise IndexError, "offset #{offset} too large for struct(size:0)"
      end
    end

  end
end
