module Aws
  module Resource
    class Documenter
      class ReferenceOperationDocumenter < BaseOperationDocumenter

        def docstring
          if argument?
            "<p>Returns a new #{resource_class_name} object with the given `#{argument_name}`.</p>"
          elsif plural?
            "<p>Returns an array of #{resource_class_name} objects."
          else
            "<p>Returns a new #{resource_class_name} object."
          end
        end

        def parameters
          if argument?
            [[argument_name, nil]]
          else
            []
          end
        end

        def return_type
          if plural?
            "Array<#{resource_class_name}>"
          else
            resource_class_name
          end
        end

        def return_message
          ''
        end

        def group_name
          if argument?
            "#{resource_class_name} Operations"
          else
            "References"
          end
        end

        def plural?
          @operation.builder.plural?
        end

        def argument?
          @operation.requires_argument?
        end

        def argument_name
          argument = @operation.builder.sources.find do |source|
            BuilderSources::Argument === source
          end
          argument.target.to_s
        end

      end
    end
  end
end
