module Aws
  module Resource
    class Documenter
      class OperationDocumenter < BaseOperationDocumenter

        def return_message
          msg = "the reponse from {#{called_operation}}."
          if response_shape && response_shape.member_names.count > 0
            msg << " The response data contains the following members:\n"
            response_shape.member_names.each do |name|
              msg << "\n* `#{name}`"
            end
          end
          msg
        end

        def return_type
          'Seahorse::Client::Response'
        end

      end
    end
  end
end
