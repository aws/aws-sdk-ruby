require 'aws-sdk-core'

module Aws

  module Resource
    autoload :Base, 'aws-sdk-resources/resource/base'
    autoload :Batch, 'aws-sdk-resources/resource/batch'
    autoload :Builder, 'aws-sdk-resources/resource/builder'
    autoload :BuilderSources, 'aws-sdk-resources/resource/builder_sources'
    autoload :Collection, 'aws-sdk-resources/resource/collection'
    autoload :Definition, 'aws-sdk-resources/resource/definition'
    autoload :Documenter, 'aws-sdk-resources/resource/documenter'
    autoload :Errors, 'aws-sdk-resources/resource/errors'
    autoload :Operations, 'aws-sdk-resources/resource/operations'
    autoload :OperationMethods, 'aws-sdk-resources/resource/operation_methods'
    autoload :Options, 'aws-sdk-resources/resource/options'
    autoload :Request, 'aws-sdk-resources/resource/request'
    autoload :RequestParams, 'aws-sdk-resources/resource/request_params'
    autoload :Source, 'aws-sdk-resources/resource/source'
    autoload :Validator, 'aws-sdk-resources/resource/validator'
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
