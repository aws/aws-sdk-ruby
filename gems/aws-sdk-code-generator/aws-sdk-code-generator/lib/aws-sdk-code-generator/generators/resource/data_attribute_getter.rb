module AwsSdkCodeGenerator
  module Generators
    module Resource
      class DataAttributeGetter < Dsl::Method

        include Helper

        def initialize(api:, member_name:, member_ref:)
          @api = api
          name = underscore(member_name)
          super(name)
          docstring(documentation(member_ref))
          returns(ruby_type(member_ref))
          code("data.#{name}")
        end

      end
    end
  end
end
