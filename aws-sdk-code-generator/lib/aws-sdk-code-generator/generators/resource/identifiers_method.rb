module AwsSdkCodeGenerator
  module Generators
    module Resource
      class IdentifiersMethod < Dsl::Method

        def initialize(identifiers:)
          super('identifiers')
          docstring('@deprecated')
          docstring('@api private')
          identifiers ||= []
          if identifiers.empty?
            code('{}')
          else
            code('{')
            identifiers.each do |i|
              name = underscore(i['name'])
              code("  #{name}: @#{name},")
            end
            code('}')
          end
        end

      end
    end
  end
end
