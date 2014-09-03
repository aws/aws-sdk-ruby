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
          param_option_tags + example_tags + [return_tag] + see_also_tags
        end

        # Defaults to an empty list, this may be overridden by sub-classes.
        def example_tags
          []
        end

        def param_option_tags
          if @operation.respond_to?(:request)
            api_operation = @operation.request.method_name
            api_operation = @resource_class.client_class.api.operation(api_operation)
            if api_operation.input
              tags = []
              api_operation.input.members.each do |member_name, member_shape|
                if @operation.request.params.any? { |p| p.target.match(/^#{member_name}\b/) }
                  next
                end
                docstring = member_shape.documentation
                tags << "@option params [#{ruby_type(member_shape)}] :#{member_name} #{docstring}"
              end
              tags = tags.join("\n")
              YARD::DocstringParser.new.parse(tags).to_docstring.tags
            else
              []
            end
          else
            []
          end
        end

        def see_also_tags
          if called_operation
            tag = "@see #{called_operation}"
            YARD::DocstringParser.new.parse(tag).to_docstring.tags
          else
            []
          end
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
          if called_operation
            "For more information on the format of `params`, see #{called_operation}."
          else
            ''
          end
        end

        def parameters
          [['params', '{}']]
        end

        def return_tag
          YARD::Tags::Tag.new(:return, return_message, [return_type])
        end

        # The response object type for the @return tag. This must be overridden
        # in sub-classes.
        def return_type
          raise NotImplementedError
        end

        # The message portion of the @return tag for this operation. This must
        # be overidden in sub-classes.
        def return_message
          raise NotImplementedError
        end

        # The YARD docmentation group this operation belongs to. This is
        # often overridden in sub-classes.
        def group_name
          'Operations'
        end

        # Returns the name of the resource class being documented without
        # the namespace prefix:
        #
        #    Aws::S3::Resource => 'Resource'
        #    Aws::S3::Bucket => 'Bucket'
        #
        def resource_class_name
          @resource_class.name.split('::').last
        end

        # Returns a suitable variable name for the resource class being
        # documented:
        #
        #    Aws::S3::Resource => 's3'
        #    Aws::S3::Bucket => 'bucket'
        #
        def variable_name
          parts = @resource_class.name.split('::')
          (parts.last == 'Resource' ? parts[-2] : parts[-1]).downcase
        end

        # Returns the Ruby class of the resource returned by this operation.
        def target_resource_class
          @operation.builder.resource_class
        end

        # Returns the name of the Ruby class of the resource returned by
        # this operation, without a namespace prefix:
        #
        #     Aws::S3::Bucket => 'Bucket'
        #
        def target_resource_class_name
          target_resource_class.name.split('::').last
        end

        # The class name and method name of the client API operation
        # called by this resource operation. 
        #
        #     'ClientClassName#operation_name'
        #
        # Returns `nil` if the operation makes no API request.
        def called_operation
          if @operation.respond_to?(:request)
            client = @resource_class.client_class.name
            method = @operation.request.method_name
            client + '#' + method
          else
            nil
          end
        end

        def path_type
          case path_shape
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
            raise "unhandled shape class `#{path_shape.class.name}'"
          end
        end

        def path_shape
          api = @resource_class.client_class.api
          shape = api.operation(@operation.request.method_name).output
          resolve_shape(shape, @operation.path)
        end

        def resolve_shape(shape, path)
          if path != '$'
            shape = path.scan(/\w+|\[.*?\]/).inject(shape) do |shape, part|
              if part[0] == '['
                shape.member
              else
                shape.member(part)
              end
            end
          end
        end

        def ruby_type(shape)
          case shape
          when Seahorse::Model::Shapes::Blob then 'IO'
          when Seahorse::Model::Shapes::Byte then  'String'
          when Seahorse::Model::Shapes::Boolean then 'Boolean'
          when Seahorse::Model::Shapes::Character then 'String'
          when Seahorse::Model::Shapes::Double then 'Float'
          when Seahorse::Model::Shapes::Float then 'Float'
          when Seahorse::Model::Shapes::Integer then 'Integer'
          when Seahorse::Model::Shapes::List then 'Array'
          when Seahorse::Model::Shapes::Long then 'Integer'
          when Seahorse::Model::Shapes::Map then 'Hash'
          when Seahorse::Model::Shapes::String then 'String'
          when Seahorse::Model::Shapes::Structure then 'Structure'
          when Seahorse::Model::Shapes::Timestamp then 'Time'
          else raise 'unhandled type'
          end
        end

      end
    end
  end
end
