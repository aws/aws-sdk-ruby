require 'json'

module Aws
  module Resource
    class Documenter

      autoload :BaseOperationDocumenter, 'aws-sdk-resources/resource/documenter/base_operation_documenter'
      autoload :DataOperationDocumenter, 'aws-sdk-resources/resource/documenter/data_operation_documenter'
      autoload :EnumerateDataOperationDocumenter, 'aws-sdk-resources/resource/documenter/enumerate_data_operation_documenter'
      autoload :EnumerateResourceOperationDocumenter, 'aws-sdk-resources/resource/documenter/enumerate_resource_operation_documenter'
      autoload :OperationDocumenter, 'aws-sdk-resources/resource/documenter/operation_documenter'
      autoload :ReferenceOperationDocumenter, 'aws-sdk-resources/resource/documenter/reference_operation_documenter'
      autoload :ResourceOperationDocumenter, 'aws-sdk-resources/resource/documenter/resource_operation_documenter'
      autoload :WaiterOperationDocumenter, 'aws-sdk-resources/resource/documenter/waiter_operation_documenter'

    end
  end
end
