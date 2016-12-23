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
          data_attribute_names(resource, api).map do |member_name, member_ref|
            docstring = Docstring.block_comment(
              Docstring.html_to_markdown(Api.docstring(member_ref, api))
            )
            docstring = (docstring ? "#{docstring}\n" : '')
            type = Api.ruby_type(member_ref, api)
            ResourceAttribute.new.tap do |attr|
              attr.name = Underscore.underscore(member_name)
              attr.documentation = docstring + "# @return [#{type}]"
            end
          end
        else
          []
        end

      end

      private

      def data_attribute_names(resource, api)

        identifiers = resource['identifiers']

        skip = Set.new

        # do no duplicate identifiers
        identifiers.each do |i|
          skip << i['name']
          skip << i['memberName'] if i.key?('memberName')
        end

        # do no duplicate action names
        (resource['actions'] || {}).keys.each do |action_name|
          skip << action_name
        end

        # do no duplicate has association names
        (resource['has'] || {}).keys.each do |association_name|
          skip << association_name
        end

        # do no duplicate hasMany association names
        (resource['hasMany'] || {}).keys.each do |association_name|
          skip << association_name
        end

        shape = Api.shape(resource['shape'], api)
        members = shape['members'] || {}
        Enumerator.new do |y|
          members.each do |member_name, member_ref|
            unless skip.include?(member_name)
              y.yield(member_name, member_ref)
            end
          end
        end
      end

    end
  end
end
