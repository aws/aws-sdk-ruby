module Aws
  module Resource
    class Documenter
      class EnumerateDataOperationDocumenter < BaseOperationDocumenter

        def docstring
          super + ' ' + <<-DOCSTRING.lstrip
Returns an enumerator that yields #{operation_name.gsub('_', ' ')}.
No API requests are made until you call an enumerable method.
{#{called_operation}} will be called multiple times until all results
have been yielded.
          DOCSTRING
        end

        def return_type
          ["Enumerator<#{path_type}>"]
        end

        def return_message
          msg = "Returns an enumerator that yields #{operation_name.gsub('_', ' ')}."
          msg << data_members
          msg
        end

        def data_members
          if path_shape.type == 'structure'
            msg = "\nEnumerated values have the following properties:\n"
            path_shape.member_names.each do |name|
              msg << "\n* `#{name}`"
            end
            msg
          else
            ''
          end
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
