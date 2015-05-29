module Aws
  module Resources
    class Documenter
      class DataOperationDocumenter < BaseOperationDocumenter

        def docstring
          if plural?
            super + " Calls {#{called_operation}}, returning an array of {#{path_type}} objects."
          else
            super + " Calls {#{called_operation}}, returning a #{return_type.first}."
          end
        end

        def return_message
          if plural? && structure?
            "an array of {Structure structures} with the following members:\n" + data_members
          elsif structure?
            "a {Structure} with the following members:\n" + data_members
          else
            ''
          end
        end

        def data_members
          "\n" + path_shape.member_names.map{ |n| "\n* `#{n}`" }.join("\n")
        end

        def return_type
          if plural?
            ["Array<#{path_type}>"]
          else
            [path_type]
          end
        end

        def plural?
          !!@operation.path.match(/\[/)
        end

        def structure?
          Seahorse::Model::Shapes::Structure === path_shape
        end

      end
    end
  end
end
