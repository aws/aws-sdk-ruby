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

  end
end
