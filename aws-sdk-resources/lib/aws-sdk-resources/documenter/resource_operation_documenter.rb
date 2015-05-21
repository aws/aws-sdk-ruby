module Aws
  module Resources
    class Documenter
      class ResourceOperationDocumenter < BaseOperationDocumenter

        def initialize(*args)
          super
          @plural = @operation.builder.plural?
        end

        # @return [Boolean] Returns `true` if this operation returns an
        #   array of resource objects. Returns `false` if this method returns
        #   a single resource object.
        attr_reader :plural

        alias plural? plural

        def return_tag
          if plural?
            tag("@return [Array<#{target_resource_class_name}>]")
          else
            tag("@return [#{target_resource_class_name}]")
          end
        end

        def example_tags
          id = target_resource_class.identifiers.last.to_s
          idv = target_resource_class_name.downcase + '-' + id.gsub('_', '-')
          tag = []
          tag << "@example Basic usage"
          tag << "  #{resp_variable} = #{variable_name}.#{operation_name}(options)"
          if plural?
            tag << "  #{resp_variable}.map(&:#{id})"
            tag << "  #=> [#{idv.inspect}, ...]"
          else
            tag << "  #{resp_variable}.#{id}"
            tag << "  #=> #{idv.inspect}"
          end
          YARD::DocstringParser.new.parse(tag).to_docstring.tags
        end

        def resp_variable
          if plural?
            target_resource_class_name.downcase + 's'
          else
            target_resource_class_name.downcase
          end
        end

      end
    end
  end
end
