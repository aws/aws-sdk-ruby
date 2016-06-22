module AwsSdkCodeGenerator
  module Dsl
    class AccessControlStatement

      include Dsl::CodeObject

      def initialize(access)
        if [:public, :protected, :private].include?(access)
          @access = access
        else
          raise ArgumentError, "expected :public, :protected, or :private"
        end
      end

      attr_reader :access

      def lines
        [access.to_s]
      end

    end
  end
end
