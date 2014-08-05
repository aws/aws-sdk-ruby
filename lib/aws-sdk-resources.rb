require 'aws-sdk-core'
require "#{Aws::SRC}/resource"

Aws.service_added do |_, svc_module, options|
  if options['resources']
    Aws::Resource.define_resource_classes(
      namespace: svc_module,
      client_class: svc_module::Client,
      definition: options['resources'],
    )
  end
end
