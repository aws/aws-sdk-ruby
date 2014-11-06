require 'json'

module Aws
  module Resources
    class Documenter

      autoload :BaseOperationDocumenter, 'aws-sdk-resources/documenter/base_operation_documenter'
      autoload :BelongsToOperationDocumenter, 'aws-sdk-resources/documenter/belongs_to_operation_documenter'
      autoload :HasManyOperationDocumenter, 'aws-sdk-resources/documenter/has_many_operation_documenter'
      autoload :OperationDocumenter, 'aws-sdk-resources/documenter/operation_documenter'
      autoload :ResourceOperationDocumenter, 'aws-sdk-resources/documenter/resource_operation_documenter'
      autoload :WaiterOperationDocumenter, 'aws-sdk-resources/documenter/waiter_operation_documenter'

    end
  end
end
