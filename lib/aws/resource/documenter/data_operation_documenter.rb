module Aws
  module Resource
    class Documenter
      class DataOperationDocumenter < BaseOperationDocumenter

        def docstring
          #"Calls {#{called_operation} #{called_operation.split('#').last}} on the {#client}."
          ''
        end

        def parameters
          [['params', '{}']]
        end

        def return_type
          if @operation.path.match(/\[/)
            "Array<#{path_type}>"
          else
            path_type
          end
        end

        def return_message
          ''
        end

      end
    end
  end
end
