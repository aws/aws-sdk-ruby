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
    autoload :Operations, 'aws-sdk-resources/operations'
    autoload :OperationMethods, 'aws-sdk-resources/operation_methods'
    autoload :Options, 'aws-sdk-resources/options'
    autoload :Request, 'aws-sdk-resources/request'
    autoload :RequestParams, 'aws-sdk-resources/request_params'
    autoload :Resource, 'aws-sdk-resources/resource'
    autoload :Source, 'aws-sdk-resources/source'
    autoload :Validator, 'aws-sdk-resources/validator'

  end

  class << self

    private

    def define_resource_classes(svc_module, definition)
      build_definition(definition).apply(svc_module)
    end

    def build_definition(definition)
      case definition
      when nil then Resources::Definition.new({})
      when Resources::Definition then definition
      when Hash then Resources::Definition.new(definition)
      when String then Resources::Definition.new(Aws.load_json(definition), source_path: definition)
      else raise ArgumentError, "invalid resource definition #{definition}"
      end
    end

    def load_resource_customizations(svc_name)
      require "aws-sdk-resources/#{svc_name.downcase}"
    rescue LoadError
      # no customizations
    end

  end

  service_added do |svc_name, svc_module, options|
    define_resource_classes(svc_module, options[:resources])
    load_resource_customizations(svc_name)
  end

end
