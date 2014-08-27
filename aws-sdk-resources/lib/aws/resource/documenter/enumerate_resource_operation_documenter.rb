module Aws
  module Resource
    class Documenter
      class EnumerateResourceOperationDocumenter < BaseOperationDocumenter

        def docstring
          "<p>Returns an enumerator that yields #{resource_class_name} objects.</p>"
        end

        def parameters
          [['params', '{}']]
        end

        def return_type
          "Enumerator<#{resource_class_name}>"
        end

        def return_message
          "Returns an enumerator that yields {#{resource_class_name}} objects."
        end

        def group_name
          "Resource References"
        end

      end
    end
  end
end
