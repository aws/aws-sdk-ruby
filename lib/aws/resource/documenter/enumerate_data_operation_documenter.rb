module Aws
  module Resource
    class Documenter
      class EnumerateDataOperationDocumenter < BaseOperationDocumenter

        def docstring
          "Returns an enumerator that yields #{path_type} objects."
        end

        def parameters
          [['params', '{}']]
        end

        def return_type
          "Enumerator<#{path_type}>"
        end

        def return_message
          "Calls #{called_operation} on the {#client} returning a {#{return_type}}."
        end

      end
    end
  end
end
