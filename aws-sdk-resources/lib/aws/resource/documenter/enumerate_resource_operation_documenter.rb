module Aws
  module Resource
    class Documenter
      class EnumerateResourceOperationDocumenter < BaseOperationDocumenter

        def docstring
          ''
        end

        def return_type
          "Collection<#{resource_class_name}>"
        end

        def return_message
          "a {Aws::Resource::Collection Collection} of {#{resource_class_name}} resource objects."
        end

        def group_name
          "Resource References"
        end

        def tags
          example_tags + super
        end

        def example_tags
          parts = @resource_class.name.to_s.split('::')
          source = (parts.last == 'Resource' ? parts[-2] : parts.last).downcase
          tags = <<-TAGS
@example Enumerating {#{resource_class_name}} resources.

  #{source}.#{@operation_name}.each do |#{resource_class_name.downcase}|
    # yields each #{resource_class_name.downcase}
  end

@example Enumerating {#{resource_class_name}} resources with a limit.

  #{source}.#{@operation_name}.limit(10).each do |#{resource_class_name.downcase}|
    # yields at most 10 #{@operation_name}
  end
            TAGS
          if resp_resource_class.const_defined?(:Batch)
            batch_operations = resp_resource_class::Batch.operation_names
            if batch_operations.count > 0
              tags += <<-TAGS

@example Batch operations

#{batch_operations.map {|name| "  #{source}.#{@operation_name}.#{name}" }.join("\n")}
              TAGS
            end
          end
          YARD::DocstringParser.new.parse(tags).to_docstring.tags
        end

      end
    end
  end
end
