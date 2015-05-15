module Aws
  class EmptyStructure < Struct.new('AwsEmptyStructure')

    # @api private
    def inspect
      "#<struct Aws::EmptyStructure>"
    end

    # @api private
    def pretty_print(q)
      q.text(inspect)
    end

    # @api private
    def to_h
      {}
    end
    alias to_hash to_h

  end
end
