module Aws
  module Resource
    class Documenter
      class OperationDocumenter < BaseOperationDocumenter

        def docstring
          ''
        end

        def parameters
          [['params', '{}']]
        end

        def return_message
          "Returns the reponse from calling {#{called_operation}}."
        end

        def return_type
          'Seahorse::Client::Response'
        end

      end
    end
  end
end
