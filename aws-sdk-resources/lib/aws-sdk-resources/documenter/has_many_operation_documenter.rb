module Aws
  module Resources
    class Documenter
      class HasManyOperationDocumenter < BaseOperationDocumenter

        def docstring
          super + ' ' +<<-DOCSTRING.lstrip
Returns a {Resources::Collection Collection} of {#{target_resource_class_name}}
resources. No API requests are made until you call an enumerable method on the
collection. {#{called_operation}} will be called multiple times until every
{#{target_resource_class_name}} has been yielded.
          DOCSTRING
        end

        def return_tag
          tag("@return [Collection<#{target_resource_class_name}>]")
        end

        def example_tags
          tags = super
          tags << enumerate_example_tag
          tags << enumerate_with_limit_example_tag
          tags << batch_examples_tag if target_resource_batches?
          tags
        end

        def enumerate_example_tag
          tag(<<-EXAMPLE.strip)
@example Enumerating {#{target_resource_class_name}} resources.
  #{variable_name}.#{@operation_name}.each do |#{target_resource_class_name.downcase}|
    # yields each #{target_resource_class_name.downcase}
  end
          EXAMPLE
        end

        def enumerate_with_limit_example_tag
          tag(<<-EXAMPLE.strip)
@example Enumerating {#{target_resource_class_name}} resources with a limit.
  #{variable_name}.#{@operation_name}.limit(10).each do |#{target_resource_class_name.downcase}|
    # yields at most 10 #{@operation_name}
  end
          EXAMPLE
        end

        def batch_examples_tag
          example = "@example Batch operations callable on the returned collection"
          target_resource_batch_operations.each do |name|
            example << "\n  #{variable_name}.#{@operation_name}.#{name}"
          end
          tag(example)
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
