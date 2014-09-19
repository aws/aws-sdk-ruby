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
    autoload :Operations, 'aws/resource/operations'
    autoload :OperationMethods, 'aws/resource/operation_methods'
    autoload :Request, 'aws/resource/request'
    autoload :RequestParams, 'aws/resource/request_params'
    autoload :Source, 'aws/resource/source'
    autoload :Validator, 'aws/resource/validator'
  end

  service_added do |_, svc_module, options|
    definition = options[:resources]
    definition = case definition
      when nil then Resource::Definition.new({})
      when Resource::Definition then definition
      when Hash then Resource::Definition.new(definition)
      when String then Resource::Definition.new(Aws.load_json(definition), source_path: definition)
      else raise ArgumentError, "invalid resource definition #{definition}"
    end
    definition.apply(svc_module)
  end

end
