module Aws
  module Resource
    class Documenter
      class EnumerateDataOperationDocumenter < BaseOperationDocumenter

        def return_type
          "Enumerator<#{path_type}>"
        end

        def return_message
          "an enumerator that yields #{resource_class_name} #{operation_name}."
        end

        def example_tags
          tag = <<-EXAMPLE.strip
@example Enumerate all #{operation_name}
  #{variable_name}.#{operation_name}.each do |data|
    # ...
  end
          EXAMPLE
          YARD::DocstringParser.new.parse(tag).to_docstring.tags
        end

      end
    end
  end
end
