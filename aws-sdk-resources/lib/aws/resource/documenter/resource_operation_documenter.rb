module Aws
  module Resource
    class Documenter
      class ResourceOperationDocumenter < BaseOperationDocumenter

        def docstring
          ''
        end

        def return_type
          if plural?
            "Array<#{resource_class_name}>"
          else
            resource_class_name
          end
        end

        def return_message
          if plural?
            "Calls {#{called_operation}} returning an array of {#{resource_class_name}} objects."
          else
            "Calls {#{called_operation}} returning a {#{resource_class_name}} object."
          end
        end

        def plural?
          @operation.builder.plural?
        end

      end
    end
  end
end
