module Aws
  module Resource
    class Documenter
      class OperationDocumenter < BaseOperationDocumenter

        def docstring
          ''
        end

        def return_message
          "the reponse from {#{called_operation}}."
        end

        def return_type
          'Seahorse::Client::Response'
        end

      end
    end
  end
end
