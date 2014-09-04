module Aws
  module Resource
    class Documenter
      class OperationDocumenter < BaseOperationDocumenter

        def docstring
          super + ' ' + "Calls {#{called_operation}}, returning its response."
        end

        def return_message
          "Returns the response from {#{called_operation}}. #{data_members}"
        end

        def data_members
          if response_shape && response_shape.member_names.count > 0
            msg = "The response data structure responds to the following methods:"
            response_shape.member_names.each do |name|
              msg << "\n* `#{name}`"
            end
            msg
          else
            ''
          end
        end

        def return_type
          'Seahorse::Client::Response'
          'void'
          ''
        end

      end
    end
  end
end
