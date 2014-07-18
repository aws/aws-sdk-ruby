require 'aws-sdk-core'
require "#{Aws::SRC}/resource"

Aws.service_modules.each do |_, svc_module|

  api_version, files = svc_module::Client.send(:versions).to_a.last

  if files['resources']

    # define all of the resource classes
    Aws::Resource.define_resource_classes(
      namespace: svc_module,
      client_class: svc_module::Client.versioned_client_class(api_version),
      definition: files['resources'],
    )

    # Add a `.resources` helper method to the service module
    svc_module.extend(Module.new {
      def resource(options = {})
        if options[:client]
          const_get(:Resource).new(client: options[:client])
        else
          const_get(:Resource).new(client: options)
        end
      end
    })

  end
end
