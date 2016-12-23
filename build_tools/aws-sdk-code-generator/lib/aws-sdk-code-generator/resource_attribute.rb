module AwsSdkCodeGenerator
  class ResourceAttribute

    # @return [String]
    attr_accessor :name

    # @return [String, nil]
    attr_accessor :documentation

    class << self

      # @return [Array<ResourceAttribute>)
      def build_list(resource, api)
        if resource['shape']
          skip = Set.new
          skip += resource['identifiers'].map { |i| i['name'] }
          skip += resource['identifiers'].map { |i| i['memberName'] }
          shape = Api.shape(resource['shape'], api)
          shape['members'].inject([]) do |list, (mname, mref)|
            if skip.include?(mname)
              list
            else
              docstring = Docstring.block_comment(
                Docstring.html_to_markdown(Api.docstring(mref, api))
              )
              docstring = (docstring ? "#{docstring}\n" : '')
              type = Api.ruby_type(mref, api)
              list << ResourceAttribute.new.tap do |attr|
                attr.name = Underscore.underscore(mname)
                attr.documentation = docstring + "# @return [#{type}]"
              end
            end
          end
        else
          []
        end

      end

    end
  end
end
