require 'aws-sdk-core'

module Aws

  module Resources
    autoload :Batch, 'aws-sdk-resources/batch'
    autoload :Builder, 'aws-sdk-resources/builder'
    autoload :BuilderSources, 'aws-sdk-resources/builder_sources'
    autoload :Collection, 'aws-sdk-resources/collection'
    autoload :Definition, 'aws-sdk-resources/definition'
    autoload :Documenter, 'aws-sdk-resources/documenter'
    autoload :Errors, 'aws-sdk-resources/errors'
    autoload :HasOperations, 'aws-sdk-resources/has_operations'
    autoload :Operations, 'aws-sdk-resources/operations'
    autoload :OperationMethods, 'aws-sdk-resources/operation_methods'
    autoload :Options, 'aws-sdk-resources/options'
    autoload :Request, 'aws-sdk-resources/request'
    autoload :RequestParams, 'aws-sdk-resources/request_params'
    autoload :Resource, 'aws-sdk-resources/resource'
    autoload :Source, 'aws-sdk-resources/source'
    autoload :Validator, 'aws-sdk-resources/validator'
  end

  service_added do |name, svc_module, options|
    definition = options[:resources]
    definition = case definition
      when nil then Resources::Definition.new({})
      when Resources::Definition then definition
      when Hash then Resources::Definition.new(definition)
      when String then Resources::Definition.new(Aws.load_json(definition))
      else raise ArgumentError, "invalid resource definition #{definition}"
    end
    definition.apply(svc_module)

    # load customizations
    svc = File.join(
      File.dirname(__FILE__),
      'aws-sdk-resources',
      'services',
      "#{name.downcase}.rb")

    require(svc) if File.exists?(svc)
  end

end
