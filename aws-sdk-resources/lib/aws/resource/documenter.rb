require 'json'

module Aws
  module Resource
    class Documenter

      autoload :BaseOperationDocumenter, 'aws/resource/documenter/base_operation_documenter'
      autoload :DataOperationDocumenter, 'aws/resource/documenter/data_operation_documenter'
      autoload :EnumerateDataOperationDocumenter, 'aws/resource/documenter/enumerate_data_operation_documenter'
      autoload :EnumerateResourceOperationDocumenter, 'aws/resource/documenter/enumerate_resource_operation_documenter'
      autoload :OperationDocumenter, 'aws/resource/documenter/operation_documenter'
      autoload :ReferenceOperationDocumenter, 'aws/resource/documenter/reference_operation_documenter'
      autoload :ResourceOperationDocumenter, 'aws/resource/documenter/resource_operation_documenter'
      autoload :WaiterOperationDocumenter, 'aws/resource/documenter/waiter_operation_documenter'

    end
  end
end
