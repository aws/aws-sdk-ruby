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
    autoload :OperationMethods, 'aws-sdk-resources/operation_methods'
    autoload :Operations, 'aws-sdk-resources/operations'
    autoload :Options, 'aws-sdk-resources/options'
    autoload :Request, 'aws-sdk-resources/request'
    autoload :RequestParams, 'aws-sdk-resources/request_params'
    autoload :Resource, 'aws-sdk-resources/resource'
    autoload :Source, 'aws-sdk-resources/source'
  end

  service_added do |name, svc_module, options|
    definition = options[:resources]
    definition = case definition
      when nil then Resources::Definition.new({})
      when Resources::Definition then definition
      when Hash then Resources::Definition.new(definition)
      when String
        Resources::Definition.new(Json.load_file(definition), source_path: definition)
      else raise ArgumentError, "invalid resource definition #{definition}"
    end
    definition.apply(svc_module)

    # load customizations
    svc = File.join(
      File.dirname(__FILE__),
      'aws-sdk-resources',
      'services',
      "#{name.downcase}.rb")

    require(svc) if File.exist?(svc)
  end

end
