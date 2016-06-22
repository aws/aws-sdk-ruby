module AwsSdkCodeGenerator
  module Dsl
    class AttributeReader < AttributeAccessor

      def macro
        "attr_reader"
      end

    end
  end
end
