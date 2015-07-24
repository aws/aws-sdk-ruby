$LOAD_PATH.unshift(File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'aws-sdk-core', 'lib')))

require 'aws-sdk-core'

YARD::Tags::Library.define_tag('CONFIGURATION_OPTIONS', :seahorse_client_option)
YARD::Tags::Library.define_tag('SERVICE', :service)
YARD::Tags::Library.define_tag('API_VERSION', :api_version)

YARD::Templates::Engine.register_template_path(File.join(File.dirname(__FILE__), '..', 'templates'))

YARD::Parser::SourceParser.after_parse_list do
  Aws.eager_autoload!
  Aws.service_added do |_, svc_module, options|
    Aws::Api::Docs::Builder.document(svc_module)
  end
end

# load shared examples
Aws.service_added do |name, svc_module, options|
  api = svc_module::Client.api
  if path = options[:examples]
    Aws::Json.load_file(path)['examples'].each do |operation_name, examples|
      operation = api.operation(Seahorse::Util.underscore(operation_name))
      operation['examples'] = examples
    end
  end
end
