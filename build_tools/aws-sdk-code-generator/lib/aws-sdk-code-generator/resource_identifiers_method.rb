# frozen_string_literal: true

module AwsSdkCodeGenerator
  class ResourceIdentifiersMethod
    class << self

      # @param [ResourceIdentifier] identifiers
      # @return [ResourceMethod
      def build(identifiers)
        ResourceMethod.new.tap do |m|
          m.method_name = 'identifiers'
          m.arguments = nil
          m.documentation = "# @deprecated\n# @api private"
          m.code = code(identifiers)
        end
      end

      private

      def code(identifiers)
        hash = identifiers.inject({}) do |hash, identifier|
          hash[identifier.name.to_sym] = "@#{identifier.name}"
          hash
        end
        HashFormatter.new(inline: true).format(hash)
      end
    end
  end
end
