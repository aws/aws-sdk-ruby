$LOAD_PATH.unshift('./lib')

require 'aws-sdk-core'

YARD::Tags::Library.define_tag('CONFIGURATION_OPTIONS', :seahorse_client_option)
YARD::Tags::Library.define_tag('SERVICE', :service)
YARD::Tags::Library.define_tag('API_VERSION', :api_version)

YARD::Templates::Engine.register_template_path(File.join(File.dirname(__FILE__), '..', 'templates'))

YARD::Parser::SourceParser.after_parse_list do
  Aws.service_added do |_, svc_module, options|
    docs_path = options[:api].sub('.api.', '.docs.')
    Aws::Api::Documenter.new(svc_module, docs_path).apply
  end
end
