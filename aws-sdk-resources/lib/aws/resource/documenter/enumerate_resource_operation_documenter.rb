module Aws
  module Resource
    class Documenter
      class EnumerateResourceOperationDocumenter < BaseOperationDocumenter

        def docstring
          ''
        end

        def return_type
          "Collection<#{target_resource_class_name}>"
        end

        def return_message
          "a {Aws::Resource::Collection Collection} of {#{target_resource_class_name}} resource objects."
        end

        def group_name
          "Resource References"
        end

        def example_tags
          tags = []
          tags << enumerate_example
          tags << enumerate_with_limit_example
          tags << batch_examples if target_resource_batches?
          YARD::DocstringParser.new.parse(tags.join("\n")).to_docstring.tags
        end

        def enumerate_example
          return <<EXAMPLE
@example Enumerating {#{target_resource_class_name}} resources.
  #{variable_name}.#{@operation_name}.each do |#{target_resource_class_name.downcase}|
    # yields each #{target_resource_class_name.downcase}
  end
EXAMPLE
        end

        def enumerate_with_limit_example
          return <<EXAMPLE
@example Enumerating {#{target_resource_class_name}} resources with a limit.
  #{variable_name}.#{@operation_name}.limit(10).each do |#{target_resource_class_name.downcase}|
    # yields at most 10 #{@operation_name}
  end
EXAMPLE
        end

        def batch_examples
          example = "@example Batch operations on the "
          example << "{#{target_resource_class_name}} collection"
          target_resource_batch_operations.each do |name|
            example << "\n  #{variable_name}.#{@operation_name}.#{name}"
          end
          example
        end

        def target_resource_batches?
          target_resource_class.const_defined?(:Batch) &&
          target_resource_batch_operations.count > 0
        end

        def target_resource_batch_operations
          target_resource_class::Batch.operation_names
        end

      end
    end
  end
end
