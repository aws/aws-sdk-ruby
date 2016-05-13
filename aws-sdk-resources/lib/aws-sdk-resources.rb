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
end
