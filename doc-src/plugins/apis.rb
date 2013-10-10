$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')

require 'aws-sdk-core'

YARD::Parser::SourceParser.after_parse_list do
  svc_apis.each do |svc_name, apis|
    next unless svc_name == 'DynamoDB'
    document_svc(svc_name, apis)
  end
end

def svc_apis
  Dir.glob('apis-src/*.json').inject({}) do |apis, path|
    if matches = path.match(/^apis-src\/(\w+)-(\d{4}-\d{2}-\d{2}).json$/)
      api = load_api(path)
      svc_name = api.metadata['service_class_name']
      apis[svc_name] ||= []
      apis[svc_name] << api
    end
    apis
  end
end

def load_api(path)
  Aws::Api::Translator.translate(
    MultiJson.load(File.read(path), max_nesting: nil),
    documentation: true,
    errors: true)
end

def document_svc(svc_name, apis)
  document_svc_helper(svc_name, apis)
  document_svc_class(svc_name, apis)
  apis.each do |api|
    document_svc_api(svc_name, api)
  end
end

def document_svc_helper(svc_name, apis)
  method_name = svc_name.downcase
  desc = "Returns a new instance of {#{svc_name}}."
  m = YARD::CodeObjects::MethodObject.new(YARD::Registry['Aws'], method_name)
  m.scope = :class
  m.docstring = <<-DOC.strip
@overload #{method_name}(options = {})
  #{desc}
  @param [Hash] options ({})
  @return [#{svc_name}] #{desc}
  DOC
end

def document_svc_class(svc_name, apis)
  namespace = YARD::Registry['Aws']
  klass = YARD::CodeObjects::ClassObject.new(namespace, svc_name)
  klass.docstring = "A service constructor."
end

def document_svc_api(svc_name, api)
  namespace = YARD::Registry["Aws::#{svc_name}"]
  name = "V#{api.version.gsub(/-/, '')}"
  full_name = api.metadata['service_full_name']
  klass = YARD::CodeObjects::ClassObject.new(namespace, name)
  klass.docstring = "A client for the #{full_name} #{api.version} API.{"
  api.operations.each do |method_name, operation|
    document_svc_api_operation(klass, method_name, operation)
  end
end

def document_svc_api_operation(client, method_name, operation)
  m = YARD::CodeObjects::MethodObject.new(client, method_name)
  m.docstring = <<-DOC.strip
@overload #{method_name}(params = {})
Calls the #{operation.name} operation.
@param [Hash] params ({})
@return [Seahorse::Client::Response]
  DOC
end
