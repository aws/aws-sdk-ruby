$LOAD_PATH.unshift(File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'aws-sdk-resources', 'lib')))

# KNOWN ISSUES
#
# - Changed Resource#data, #client and #attributes from
#   attr_reader to methods so I could override them in the client
#   with the appropriate return values
#
#   - This appears to be caused by embed-mixins
#   - might be fixed if I could document the attr_reader in the subclass
#   - method appears twice when I leave it as attr_reader in subclass
#   - able to work around this by creating method object, and moving it
#     into the instance_attributes[:client] = { :read => m } and marking
#     parent attr_reader as @api private
#
# TODOs
#
# - document batch operations at the resource class level
#
# - document when a load method is not possible
#   - add @raise tags to data attribute getters that show a NotImplementedError
#     can be triggered, and under what conditions
#
# - skip documentation of limit keys for enumerable resource operations, these
#   should not be controllable via the collection limit method
#   ideally the operation could accept a generic :limit option
#
# - skip documentation of limit keys for enumerable data operations
#   ideally the operation should raise an argument error
#   additionally, it could support a generic :limit option or a :limit method
#

require 'aws-sdk-resources'

YARD::Parser::SourceParser.after_parse_list do
  ResourceDocPlugin.new.apply
end

class ResourceDocPlugin

  def apply
    Aws.service_added do |_, svc_module, files|

      # merges the .docs.json API docs onto the .api.json model
      Aws::Api::Docstrings.apply(svc_module::Client, files[:docs])

      namespace = YARD::Registry[svc_module.name]
      svc_module.constants.each do |const|
        klass = svc_module.const_get(const)
        if klass.is_a?(Module) && klass.ancestors.include?(Aws::Resources::Resource)
          yard_class = document_resource_class(const, namespace, klass)
          if const == :Resource
            yard_class.docstring = service_docstring(const, yard_class, klass)
          end
        end
      end
    end

    Aws::Resources::Documenter.apply_customizations

  end

  def service_docstring(name, yard_class, svc_class)
    api = svc_class.client_class.api
    product_name = api.metadata('serviceAbbreviation')
    product_name ||= api.metadata('serviceFullName')

    docstring = <<-DOCSTRING.strip
This class provides a resource oriented interface for #{product_name}.
To create a resource object:

    #{name.downcase} = #{svc_class.name}.new

You can supply a client object with custom configuration that will be
used for all resource operations.  If you do not pass `:client`,
a default client will be constructed.

    client = Aws::#{svc_class.name.split('::')[1]}::Client.new(region: 'us-west-2')
    #{name.downcase} = #{svc_class.name}.new(client: client)

# #{name} Resource Classes

#{svc_class.name} has the following resource classes:

#{svc_class.constants.sort.map { |const| "* {#{const}}" }.join("\n")}
    DOCSTRING
  end

  def document_resource_class(name, namespace, resource_class)
    yard_class = YARD::CodeObjects::ClassObject.new(namespace, name)
    yard_class.superclass = YARD::Registry['Aws::Resources::Resource']
    document_constructor(yard_class, resource_class)
    # intentionally disabled as these are documented in Aws::Resources::Resource
    #document_client_getter(yard_class, resource_class)
    #document_identifiers_hash(yard_class, resource_class)
    #document_load(yard_class, resource_class)
    document_identifier_attributes(yard_class, resource_class)
    document_data_attribute_getters(yard_class, resource_class)
    document_operation_methods(yard_class, resource_class)
    yard_class
  end

  def document_constructor(yard_class, resource_class)

    positional = <<-DOCSTRING.strip
@overload initialize(#{resource_class.identifiers.map(&:to_s).join(", ")}, options = {})
#{resource_class.identifiers.map { |n| "  @param [String] #{n}" }.join("\n")}
  @option options [Client] :client When `:client is not given, the options hash
    is used to construct a new {Client} object.
    DOCSTRING

    hash_style = <<-DOCSTRING.strip
@overload initialize(options = {})
#{resource_class.identifiers.map { |n| "  @option options [required,String] :#{n}" }.join("\n")}
  @option options [Client] :client When `:client is not given, the options hash
    is used to construct a new {Client} object.
    DOCSTRING

    m = YARD::CodeObjects::MethodObject.new(yard_class, :initialize)
    m.scope = :instance
    m.docstring = positional + "\n" + hash_style
  end

  def document_client_getter(yard_class, resource_class)
    client_class = resource_class.client_class.name.split('::', 2).last
    m = YARD::CodeObjects::MethodObject.new(yard_class, :client)
    m.scope = :instance
    m.add_tag(YARD::Tags::Tag.new(:return, '', [client_class]))
    yard_class.instance_attributes[:client] = { :read => m }
  end

  def document_identifiers_hash(yard_class, resource_class)
    identifiers = resource_class.identifiers
    m = YARD::CodeObjects::MethodObject.new(yard_class, :identifiers)
    m.scope = :instance
    docstring = if identifiers.empty?
      "Returns an empty hash. This resource class is constructed without identifiers."
    else
      identifiers = identifiers.map { |i| "`:#{i}`" }.join(', ')
      "Returns a read-only hash with the following keys: #{identifiers}."
    end
    m.docstring = docstring
    m.add_tag(YARD::Tags::Tag.new(:return, nil, ['Hash']))
    yard_class.instance_attributes[:identifiers] = { :read => m }
  end

  def document_load(yard_class, resource_class)
    if op = resource_class.load_operation
      name = resource_class.name.split('::').last
      method = op.request.method_name
      m = YARD::CodeObjects::MethodObject.new(yard_class, :load)
      m.scope = :instance
      m.group = 'Common Resource Methods'
      m.docstring = <<-DOCS.strip
Loads the current #{name} by calling {Client##{method}}.
@return [self] Returns `self` after loading {#data}.
      DOCS
    end
  end

  def document_identifier_attributes(yard_class, resource_class)
    identifiers = resource_class.identifiers
    identifiers.each do |identifier_name|
      m = YARD::CodeObjects::MethodObject.new(yard_class, identifier_name)
      m.scope = :instance
      m.docstring = ''
      m.add_tag(YARD::Tags::Tag.new(:return, nil, ['String']))
      yard_class.instance_attributes[identifier_name] = { :read => m }
    end
  end

  def document_data_attribute_getters(yard_class, resource_class)

    _, svc, resource_name = resource_class.name.split('::')

    return if resource_name == 'Resource'

    definition = File.read("aws-sdk-core/apis/#{svc}.resources.json")
    definition = MultiJson.load(definition)
    definition = definition['resources'][resource_name]
    if shape_name = definition['shape']

      shape = resource_class.client_class.api.shape_map.shape('shape' => shape_name)

      resource_class.data_attributes.each do |member_name|

        member_shape = shape.member(member_name)
        return_type = case member_shape
          when Seahorse::Model::Shapes::Blob then 'String<bytes>'
          when Seahorse::Model::Shapes::Byte then  'String<bytes>'
          when Seahorse::Model::Shapes::Boolean then 'Boolean'
          when Seahorse::Model::Shapes::Character then 'String'
          when Seahorse::Model::Shapes::Double then 'Float'
          when Seahorse::Model::Shapes::Float then 'Float'
          when Seahorse::Model::Shapes::Integer then 'Integer'
          when Seahorse::Model::Shapes::List then 'Array'
          when Seahorse::Model::Shapes::Long then 'Integer'
          when Seahorse::Model::Shapes::Map then 'Hash'
          when Seahorse::Model::Shapes::String then 'String'
          when Seahorse::Model::Shapes::Structure then 'Structure'
          when Seahorse::Model::Shapes::Timestamp then 'Time'
          else raise 'unhandled type'
        end

        m = YARD::CodeObjects::MethodObject.new(yard_class, member_name)
        m.scope = :instance
        m.docstring = "#{member_shape.documentation}\n@return [#{return_type}] #{member_shape.documentation}"
        yard_class.instance_attributes[member_name] = { :read => m }
      end
    end
  end

  def document_operation_methods(yard_class, resource_class)
    resource_class.operations.each do |name, operation|
      document_operation_method(yard_class, resource_class, name, operation)
    end
  end

  def document_operation_method(yard_class, resource_class, name, operation)
    type = operation.class.name.split('::').last
    documenter = Aws::Resources::Documenter.const_get(type + 'Documenter')
    documenter = documenter.new(yard_class, resource_class, name, operation)
    documenter.method_object
  end

end
