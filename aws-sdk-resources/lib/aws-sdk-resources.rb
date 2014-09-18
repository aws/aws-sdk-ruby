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

    class << self

      # @api private
      def define_resource_classes(options)
        definition(options).apply(:Resource, options[:client_class])
      end

      # @api private
      def definition(options)
        namespace, path = options.values_at(:namespace, :definition)
        source = File.open(path, 'r', encoding: 'UTF-8') { |f| f.read }
        source = MultiJson.load(source)
        Definition.new(namespace, source, source_path: path)
      end

    end
  end
end

Aws.service_added do |_, svc_module, options|
  if options[:resources]
    Aws::Resource.define_resource_classes(
      namespace: svc_module,
      client_class: svc_module::Client,
      definition: options[:resources],
    )
  end
end
