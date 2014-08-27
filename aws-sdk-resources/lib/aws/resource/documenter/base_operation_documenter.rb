module Aws
  module Resource
    class Documenter
      class BaseOperationDocumenter

        def initialize(yard_class, resource_class, operation_name, operation)
          @yard_class = yard_class
          @resource_class = resource_class
          @operation_name = operation_name
          @operation = operation
        end

        def method_object
          new_method.tap do |method|
            method.parameters = parameters
            tags.each { |tag| method.add_tag(tag) }
          end
        end

        private

        def tags
          [return_tag]
        end

        def new_method
          m = YARD::CodeObjects::MethodObject.new(@yard_class, @operation_name)
          m.scope = :instance
          m.group = group_name
          m.docstring = docstring
          m.source_type = :json
          m.source = @operation.source.format
          filename = @operation.source.file
          filename = filename.match('(aws-sdk-core/apis/.+\.resources\.json)')[1]
          m.add_file(filename, nil, true) if @operation.source.file
          m
        end

        def docstring
          raise NotImplementedError
        end

        def parameters
          raise NotImplementedError
        end

        def return_tag
          YARD::Tags::Tag.new(:return, return_message, [return_type])
        end

        def return_type
          raise NotImplementedError
        end

        def return_message
          raise NotImplementedError
        end

        def group_name
          'Operations'
        end

        def resource_class_name
          @operation.builder.resource_class.name.split('::').last
        end

        def called_operation
          client = @resource_class.client_class.name
          method = @operation.request.method_name
          client + '#' + method
        end

        def path_type
          api = @resource_class.client_class.api
          shape = api.operation(@operation.request.method_name).output
          resolve_path(shape, @operation.path)
        end

        def resolve_path(shape, path)
          if path != '$'
            shape = path.scan(/\w+|\[.*?\]/).inject(shape) do |shape, part|
              if part[0] == '['
                shape.member
              else
                shape.member(part)
              end
            end
          end
          case shape
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
        end

      end
    end
  end
end
