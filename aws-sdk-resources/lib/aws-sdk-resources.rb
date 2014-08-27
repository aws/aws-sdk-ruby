require 'aws-sdk-core'

require 'aws/resource/base'
require 'aws/resource/batch'
require 'aws/resource/builder'
require 'aws/resource/builder_sources'
require 'aws/resource/collection'
require 'aws/resource/definition'
require 'aws/resource/errors'
require 'aws/resource/operations'
require 'aws/resource/request'
require 'aws/resource/request_params'
require 'aws/resource/source'
require 'aws/resource/validator'

module Aws
  module Resource

    autoload :Documenter, 'aws/resource/documenter'

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
