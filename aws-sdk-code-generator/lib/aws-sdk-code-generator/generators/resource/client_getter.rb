module AwsSdkCodeGenerator
  module Generators
    module Resource
      class ClientGetter < Dsl::Method

        def initialize
          super('client')
          returns('Client')
          code('@client')
        end

      end
    end
  end
end
