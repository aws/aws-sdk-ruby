module Aws
  module Resources
    class Documenter
      class OperationDocumenter < BaseOperationDocumenter

        def docstring
          super + " #{return_base_message}"
        end

        def return_type
          if returns_data_members
            ['Structure']
          else
            ['void']
          end
        end

        def return_message
          "#{return_base_message} #{returns_data_members}"
        end

        def return_base_message
          if returns_data_members
            "Calls {#{called_operation}}, returning its response."
          end
        end

        def returns_data_members
          if response_shape && response_shape.member_names.count > 0
            msg = "The response data has following properties:\n"
            response_shape.member_names.each do |name|
              msg << "\n* `#{name}`"
            end
            msg
          else
            nil
          end
        end

      end
    end
  end
end
