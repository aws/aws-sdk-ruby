module AwsSdkCodeGenerator
  module Dsl
    class AttributeWriter < AttributeAccessor

      def macro
        "attr_writer"
      end

    end
  end
end
