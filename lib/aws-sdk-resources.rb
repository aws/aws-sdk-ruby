require 'aws-sdk-core'
require "#{Aws::SRC}/resource"

module Aws::Resources; end

Aws.service_modules.each do |_, svc_module|
  name = svc_module.name.split('::').last
  client_class = svc_module.const_get(:Client)
  client_class.send(:versions).values.last.tap do |latest_version|
    if path = latest_version['resources']
      definition = MultiJson.load(File.read(path))
      definition = Aws::Resource::Definition.new(svc_module, definition, path: path)
      resources = definition.define_service(name, client_class.default_client_class)
      svc_module.const_set(:Resource, resources)
      Aws::Resources.const_set(name, resources)
    end
  end
end
