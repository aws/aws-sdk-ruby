module AwsSdkCodeGenerator
  class ResourceIdentifier

    # @return [String]
    attr_accessor :name

    # @return [String]
    attr_accessor :type

    # @return [String, nil]
    attr_accessor :offset

    class << self

      # @return [Array<ResourceIdentifier>)
      def build_list(resource)
        resource['identifiers'].each.with_index.map do |i, n|
          ResourceIdentifier.new.tap do |identifier|
            identifier.name = Underscore.underscore(i['name'])
            identifier.type = Docstring.ucfirst(i['type'] || 'String')
            identifier.offset = n
          end
        end
      end

    end
  end
end
