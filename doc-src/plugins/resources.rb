# ISSUES
#
# - Changed Resource::Base#data, #client and #attributes from
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

YARD::Parser::SourceParser.after_parse_list do
  namespace = 'Aws::Resources'
  Aws::Resources.constants.each do |svc_const|
    svc_class = Aws::Resources.const_get(svc_const)
    document_service(svc_const, YARD::Registry['Aws::Resources'], svc_class)
  end
end

def document_service(name, namespace, svc_class)
  yard_class = document_resource_class(name, namespace, svc_class)
  yard_class.docstring = service_docstring(name, yard_class, svc_class)
  document_service_resources(name, yard_class, svc_class)
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

    client = Aws::#{name}.new(region: 'us-west-2')
    #{name.downcase} = #{svc_class.name}.new(client: client)

# #{name} Resource Classes

#{svc_class.name} has the following resource classes:

#{svc_class.constants.sort.map { |const| "* {#{const}}" }.join("\n")}

  DOCSTRING
end

def document_service_resources(name, namespace, svc_class)
  svc_class.constants.each do |resource_name|
    resource_class = svc_class.const_get(resource_name)
    document_resource_class(resource_name, namespace, resource_class)
  end
end

def document_resource_class(name, namespace, resource_class)
  yard_class = YARD::CodeObjects::ClassObject.new(namespace, name)
  yard_class.superclass = YARD::Registry['Aws::Resource::Base']
  document_client_getter(yard_class, resource_class)
  document_identifiers_getter(name, yard_class, resource_class)
  document_operation_methods(yard_class, resource_class)
  yard_class
end

def document_client_getter(yard_class, resource_class)
  client_class = resource_class.client_class.name.split('::', 2).last
  m = YARD::CodeObjects::MethodObject.new(yard_class, :client)
  m.scope = :instance
  m.add_tag(YARD::Tags::Tag.new(:return, '', [client_class]))
  yard_class.instance_attributes[:client] = { :read => m }
end

def document_identifiers_getter(name, yard_class, resource_class)
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

def document_operation_methods(yard_class, resource_class)
  resource_class.operations.each do |name, operation|
    document_operation_method(yard_class, resource_class, name, operation)
  end
end

def document_operation_method(yard_class, resource_class, name, operation)
  type = operation.class.name.split('::').last
  documenter = Aws::Resource::Documenter.const_get(type + 'Documenter')
  documenter = documenter.new(yard_class, resource_class, name, operation)
  documenter.method_object
end
