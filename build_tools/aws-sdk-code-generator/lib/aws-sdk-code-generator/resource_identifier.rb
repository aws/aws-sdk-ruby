# frozen_string_literal: true

module AwsSdkCodeGenerator
  class ResourceIdentifier

    # @return [String]
    attr_accessor :name

    # @return [String]
    attr_accessor :type

    # @return [String, nil]
    attr_accessor :offset

    # @return [String, nil]
    attr_accessor :alias

    class << self

      # @return [Array<ResourceIdentifier>)
      def build_list(resource)
        resource.fetch('identifiers', []).each.with_index.map do |i, n|
          ResourceIdentifier.new.tap do |identifier|
            identifier.name = Underscore.underscore(i['name'])
            identifier.type = Docstring.ucfirst(i['type'] || 'String')
            identifier.offset = n
            identifier.alias = identifier_alias(i)
          end
        end
      end

      private

      def identifier_alias(identifier)
        if identifier['memberName'] && identifier['memberName'] != identifier['name']
          Underscore.underscore(identifier['memberName'])
        else
          nil
        end
      end

    end
  end
end
