require 'aws-sdk-core'

module Aws
  module Resource

    autoload :Base, 'aws/resource/base'
    autoload :Batch, 'aws/resource/batch'
    autoload :Builder, 'aws/resource/builder'
    autoload :BuilderSources, 'aws/resource/builder_sources'
    autoload :Collection, 'aws/resource/collection'
    autoload :Definition, 'aws/resource/definition'
    autoload :Documenter, 'aws/resource/documenter'
    autoload :Errors, 'aws/resource/errors'
    autoload :HasOperations, 'aws/resource/has_operations'
    autoload :Operations, 'aws/resource/operations'
    autoload :Request, 'aws/resource/request'
    autoload :RequestParams, 'aws/resource/request_params'
    autoload :Source, 'aws/resource/source'
    autoload :Validator, 'aws/resource/validator'

    # @see Base.define
    # @api private
    def self.define(*args)
      Base.define(*args)
    end

  end
end

Aws.service_added do |_, svc_module, options|
  if path = options[:resources]
    definition = Aws.load_json(path)
    definition = Aws::Resource::Definition.new(definition, source_path: path)
    definition.apply(svc_module)
  end
end
