module AwsSdkCodeGenerator
  module Generators
    module Resource
      class DataAttributeGetter < Dsl::Method

        include Helper

        # @option options [required, Hash] :api
        # @option options [required, String] :member_name
        # @option options [required, Hash] :member_ref
        def initialize(options = {})
          @api = options.fetch(:api)
          name = underscore(options.fetch(:member_name))
          member_ref = options.fetch(:member_ref)
          super(name)
          docstring(documentation(member_ref))
          returns(ruby_type(member_ref))
          code("data.#{name}")
        end

      end
    end
  end
end
