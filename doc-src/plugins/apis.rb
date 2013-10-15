$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')

require 'aws-sdk-core'

YARD::Templates::Engine.register_template_path(File.join(File.dirname(__FILE__), '..', 'templates'))

YARD::Parser::SourceParser.after_parse_list do
  svc_apis.each do |svc_name, apis|
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
    document_svc_api_operation(svc_name, klass, method_name, operation)
  end
end

class Tabulator

  def initialize
    @tabs = []
    @tab_contents = []
  end

  def tab(method_name, tab_name, &block)
    tab_class = tab_name.downcase.gsub(/[^a-z]+/i, '-')
    tab_id = "#{method_name.gsub(/_/, '-')}-#{tab_class}"
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

def without_docs(value)
  case value
  when Hash
    value.inject({}) do |h,(k,v)|
      h[k] = without_docs(v) unless k == 'documentation'
      h
    end
  when Array then value.map{ |v| without_docs(v) }
  else value
  end
end

def document_svc_api_operation(svc_name, client, method_name, operation)

  documentor = Aws::Api::Documentor.new(svc_name.downcase, method_name, operation)

  tabs = Tabulator.new.tap do |t|
    t.tab(method_name, 'Formatting Example') do
      "<pre><code>#{documentor.example}</code></pre>"
    end
    t.tab(method_name, 'Parameters Reference') do
      documentor.input
    end
    t.tab(method_name, 'Response  Reference') do
      documentor.output
    end
    t.tab(method_name, 'API Model') do
      "<div class=\"api-src\"><pre><code class=\"json\">#{MultiJson.dump(without_docs(operation.to_hash), pretty: true)}</pre></code></div>"
    end
  end

  m = YARD::CodeObjects::MethodObject.new(client, method_name)
  m.scope = :instance
  m.signature = "#{method_name}(params = {})"
  m.docstring = <<-DOCSTRING.strip
<p>Calls the #{operation.name} operation.<p>
#{documentor.api_ref(operation)}
#{tabs}
@param [Hash] params ({})
@return [Seahorse::Client::Response]
DOCSTRING

end
