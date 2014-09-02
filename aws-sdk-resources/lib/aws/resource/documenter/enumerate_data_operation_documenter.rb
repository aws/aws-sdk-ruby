module Aws
  module Resource
    class Documenter
      class EnumerateDataOperationDocumenter < BaseOperationDocumenter

        def docstring
          ''
        end

        def return_type
          "Enumerator<#{path_type}>"
        end

        def return_message
          "an enumerator of #{@resource_class.name.split('::').last} #{@operation_name}."
        end

        def tags
          yield_tags + super
        end

        def yield_tags
          tag = "@yieldparam [#{path_type}] data"
          if path_shape.is_a?(Seahorse::Model::Shapes::Structure)
            tag << "\n  Yielded `data` objects have the following members:\n"
            path_shape.member_names.each do |name|
              tag << "\n  * `:#{name}`"
            end
          end
          YARD::DocstringParser.new.parse(tag).to_docstring.tags
        end

      end
    end
  end
end
