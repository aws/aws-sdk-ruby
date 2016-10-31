module AwsSdkCodeGenerator
  module Dsl
    class BlockParam < Param

      def initialize(options = {})
        super('&block')
      end

    end
  end
end
