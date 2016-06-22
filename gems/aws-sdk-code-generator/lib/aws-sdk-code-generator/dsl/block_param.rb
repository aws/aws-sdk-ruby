module AwsSdkCodeGenerator
  module Dsl
    class BlockParam < Param

      def initialize(type:nil, default:nil, docstring:nil)
        super('&block')
      end

    end
  end
end
