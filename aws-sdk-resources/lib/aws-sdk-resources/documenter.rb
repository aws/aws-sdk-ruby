require 'json'

module Aws
  module Resources
    class Documenter

      autoload :BaseOperationDocumenter, 'aws-sdk-resources/documenter/base_operation_documenter'
      autoload :HasOperationDocumenter, 'aws-sdk-resources/documenter/has_operation_documenter'
      autoload :HasManyOperationDocumenter, 'aws-sdk-resources/documenter/has_many_operation_documenter'
      autoload :OperationDocumenter, 'aws-sdk-resources/documenter/operation_documenter'
      autoload :ResourceOperationDocumenter, 'aws-sdk-resources/documenter/resource_operation_documenter'
      autoload :WaiterOperationDocumenter, 'aws-sdk-resources/documenter/waiter_operation_documenter'

      class << self

        def apply_customizations
          document_s3_object_upload_file_additional_options
        end

        private

        def document_s3_object_upload_file_additional_options
          input = Aws::S3::Client.api.operation(:create_multipart_upload).input
          opts = input.member_names - [:bucket, :key]
          tags = opts.map do |opt|
            shape = input.member(opt)
            type = case shape
            when Seahorse::Model::Shapes::Structure then 'Structure'
            when Seahorse::Model::Shapes::List then 'Array'
            when Seahorse::Model::Shapes::Map then 'Hash'
            when Seahorse::Model::Shapes::String then 'String'
            when Seahorse::Model::Shapes::Integer then 'Integer'
            when Seahorse::Model::Shapes::Float then 'Float'
            when Seahorse::Model::Shapes::Boolean then 'Boolean'
            when Seahorse::Model::Shapes::Timestamp then 'Time'
            when Seahorse::Model::Shapes::Blob then 'IO'
            else
              raise "unhandled shape class `#{shape.class.name}'"
            end
            "@option options [#{type}] :#{opt} #{shape.documentation}"
          end
          tags = YARD::DocstringParser.new.parse(tags).to_docstring.tags
          m = YARD::Registry['Aws::S3::Object#upload_file']
          tags.each { |tag| m.add_tag(tag) }
        end

      end
    end
  end
end
