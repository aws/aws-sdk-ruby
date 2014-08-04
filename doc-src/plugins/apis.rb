root = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
$:.unshift(File.join(root, 'vendor', 'seahorse', 'lib'))
$:.unshift(File.join(root, 'lib'))

require 'aws-sdk-core'
require 'erb'

YARD::Tags::Library.define_tag('CONFIGURATION_OPTIONS', :seahorse_client_option)
YARD::Tags::Library.define_tag('SERVICE', :service)
YARD::Tags::Library.define_tag('API_VERSION', :api_version)

YARD::Templates::Engine.register_template_path(File.join(File.dirname(__FILE__), '..', 'templates'))

YARD::Parser::SourceParser.after_parse_list do
  each_service do |svc_name|
    document_svc(svc_name)
  end
end

def each_service(&block)
  Aws::Api::Manifest.default_manifest.services.each do |svc|
    yield(svc.name)
  end
end

def load_api(path)
  Aws::Api::Translator.translate(
    MultiJson.load(File.read(path), max_nesting: nil),
    documentation: true,
    errors: true)
end

def document_svc(svc_name)
  svc_mod = document_service(svc_name)
  document_errors(svc_mod, svc_name)
  document_client(svc_mod, svc_name)
end

def document_service(svc_name)
  namespace = YARD::Registry['Aws']
  yard_mod = YARD::CodeObjects::ModuleObject.new(namespace, svc_name)
  yard_mod.docstring = service_docstring(svc_name)
  yard_mod.docstring.add_tag(YARD::Tags::Tag.new(:service, svc_name))
  yard_mod
end

def service_docstring(svc_name)
  path = "doc-src/services/#{svc_name}/service.md"
  if File.exists?(path)
    template = File.read(path)
  else
    template = File.read('doc-src/services/default/service.md')
  end
  api = Aws.const_get(svc_name).const_get(:Client).api
  full_name = api.metadata('serviceFullName')
  ERB.new(template).result(binding)
end

def document_errors(namespace, svc_name)
  errors_mod = YARD::CodeObjects::ModuleObject.new(namespace, 'Errors')
  errors_mod.docstring = errors_docstring(svc_name)

  base_error = YARD::CodeObjects::ClassObject.new(errors_mod, 'ServiceError')
  base_error.docstring = "Base class for all Aws::#{svc_name} errors."
  base_error.superclass = YARD::Registry['Aws::Errors::ServiceError']

  api = Aws.const_get(svc_name).const_get(:Client).api
  api.operations.each do |_, operation|
    operation.errors.each do |error|
      error_klass = YARD::CodeObjects::ClassObject.new(errors_mod, error.name)
      error_klass.superclass = base_error
    end
  end


end

def errors_docstring(svc_name)
  path = "doc-src/services/#{svc_name}/errors.md"
  if File.exists?(path)
    template = File.read(path)
  else
    template = File.read('doc-src/services/default/errors.md')
  end
  api = Aws.const_get(svc_name).const_get(:Client).api
  full_name = api.metadata('serviceFullName')
  known_errors = api.operations.map {|_,o| o.errors.map(&:name) }.flatten.uniq.sort
  ERB.new(template).result(binding)
end

def document_client(namespace, svc_name)
  yard_klass = YARD::CodeObjects::ClassObject.new(namespace, 'Client')
  yard_klass.superclass = YARD::Registry['Seahorse::Client::Base']
  yard_klass.docstring = client_docstring(svc_name)

  client = Aws.const_get(svc_name).const_get(:Client)

  options = {}

  client.plugins.each do |plugin|
    if p = YARD::Registry[plugin.name]
      p.tags.each do |tag|
        if tag.tag_name == 'seahorse_client_option'
          option_name = tag.text.match(/.+(:\w+)/)[1]
          option_text = "@option options " + tag.text.split("\n").join("\n  ")
          options[option_name] = option_text +
            "  See {#{plugin.name}} for more details."
        end
      end
    end
  end
  options = options.sort_by { |k,v| k }.map(&:last).join("\n")

  docstring = <<-DOCS.strip
Constructs an API client.
#{options}
@return [#{client.name}] Returns an API client.
  DOCS

  constructor = YARD::CodeObjects::MethodObject.new(yard_klass, :initialize)
  constructor.scope = :instance
  constructor.parameters << ['options', '{}']
  constructor.docstring = docstring

  client.api.operations.each do |method_name, operation|
    document_operation(svc_name, yard_klass, method_name, operation)
  end

  yard_klass
end

def client_docstring(svc_name)
  path = "doc-src/services/#{svc_name}/client.md"
  if File.exists?(path)
    template = File.read(path)
  else
    template = File.read('doc-src/services/default/client.md')
  end
  api = Aws.const_get(svc_name).const_get(:Client).api
  full_name = api.metadata('serviceFullName')
  ERB.new(template).result(binding)
end

class Tabulator

  def initialize
    @tabs = []
    @tab_contents = []
  end

  def tab(method_name, tab_name, &block)
    tab_class = tab_name.downcase.gsub(/[^a-z]+/i, '-')
    tab_id = "#{method_name.to_s.gsub(/_/, '-')}-#{tab_class}"
    class_names = ['tab-contents', tab_class]
    @tabs << [tab_id, tab_name]
    @tab_contents << "<div class=\"#{class_names.join(' ')}\" id=\"#{tab_id}\">"
    @tab_contents << yield
    @tab_contents << '</div>'
  end

  def to_html
    lines = []
    lines << '<div class="tab-box">'
    lines << '<ul class="tabs">'
    @tabs.each do |tab_id, tab_name|
      lines << "<li data-tab-id=\"#{tab_id}\">#{tab_name}</li>"
    end
    lines << '</ul>'
    lines.concat(@tab_contents)
    lines << '</div>'
    lines.join
  end
  alias inspect to_html
  alias to_str to_html
  alias to_s to_html

end

def document_operation(svc_name, client, method_name, operation)
  m = YARD::CodeObjects::MethodObject.new(client, method_name)
  m.scope = :instance
  m.parameters << ['params', '{}']
  m.docstring = operation_docstring(svc_name, method_name, operation)
end

def operation_docstring(svc_name, method_name, operation)

  documentor = Aws::Api::Documentor.new(svc_name.downcase, method_name, operation)

  tabs = Tabulator.new.tap do |t|
    t.tab(method_name, 'Formatting Example') do
      "<pre><code>#{documentor.example}</code></pre>"
    end
    t.tab(method_name, 'Request Parameters') do
      documentor.input
    end
    t.tab(method_name, 'Response Structure') do
      documentor.output
    end
  end

  errors = (operation.errors || []).map { |shape| shape.name }
  errors = errors.map { |e| "@raise [Errors::#{e}]" }.join("\n")

  docstring = <<-DOCSTRING.strip
<p>Calls the #{operation.name} operation.<p>
#{documentor.api_ref(operation)}
#{tabs}
@param [Hash] params ({})
@return [PageableResponse]
#{errors}
  DOCSTRING
end
