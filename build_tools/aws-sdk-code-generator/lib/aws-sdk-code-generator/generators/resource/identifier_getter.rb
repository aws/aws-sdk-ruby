module AwsSdkCodeGenerator
  module Generators
    module Resource
      class IdentifierGetter < Dsl::Method

        include Helper

        # @option options [required, Hash] :identifier
        def initialize(options)
          identifier = options.fetch(:identifier)
          name = underscore(identifier.fetch('name'))
          super(name)
          returns(identifier_type(identifier))
          code("@#{name}")
          if
            identifier['memberName'] &&
            identifier['memberName'] != identifier['name']
          then
            alias_as(underscore(identifier['memberName']))
          end
        end

      end
    end
  end
end
