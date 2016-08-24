module AwsSdkCodeGenerator
  module Generators
    module Resource
      class IdentifiersMethod < Dsl::Method

        def initialize(identifiers:)
          super('identifiers')
          docstring('@deprecated')
          docstring('@api private')
          identifiers ||= []
          identifiers = (identifiers || []).inject({}) do |hash, identifier|
            name = underscore(identifier['name'])
            hash[name.to_sym] = "@#{name}"
            hash
          end
          code(HashFormatter.new(inline: true).format(identifiers))
        end

        def lines
          super + ["deprecated(:#{name})"]
        end

      end
    end
  end
end
