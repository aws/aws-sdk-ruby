module Aws

        def parameters
          [['params', '{}']]
        end
  module Resource
    class Documenter
      class BaseOperationDocumenter

        def initialize(yard_class, resource_class, operation_name, operation)
          @yard_class = yard_class
          @resource_class = resource_class
          @resource_class_name = @resource_class.name.split('::').last
          @operation_name = operation_name
          @operation = operation
          @source = @operation.source
          if @operation.respond_to?(:request)
            @request_operation_name = @operation.request.method_name.to_s
            @called_operation = "Client##{@request_operation_name}"
          end
          if @operation.respond_to?(:builder)
            @target_resource_class = @operation.builder.resource_class
            @target_resource_class_name = @target_resource_class.name.split('::').last
          end
        end

        # @return [YARD::CodeObject::ClassObject]
        attr_reader :yard_class

        # @return [String] The name of this resource operation.
        attr_reader :operation_name

        # @return [String] Returns the name of the resource class being
        #   documented without the namespace prefix. Example:
        #
        #   * Aws::S3::Resource => 'Resource'
        #   * Aws::S3::Bucket => 'Bucket'
        #
        attr_reader :resource_class_name

        # @return [Class<Resource::Base>,nil] Returns the class of the resource
        #   returned by invoking this operation. Returns `nil` if this operation
        #   does not return any resource objects.
        attr_reader :target_resource_class

        # @return [String,nil] Returns the name of the resource class
        #   returned by this operation. This is the base name of
        #   the class without a namespace prefix. Returns `nil` if this
        #   operation does not return any resource objects.
        attr_reader :target_resource_class_name

        # @return [String,nil] Returns the name of the API operation called
        #   on the client. Returns `nil` if this operation does not make
        #   any API requests.
        attr_reader :request_operation_name

        # @return [String,nil] Returns the `Client#operation_name` reference.
        #   This is useful for generating `@see` tags and `{links}`.
        attr_reader :called_operation

        # @return [Resource::Source]
        attr_reader :source

        # Constructs and returns a new YARD method object for this operation.
        # @return [YARD::CodeObject::MethodObject]
        def method_object
          m = YARD::CodeObjects::MethodObject.new(yard_class, operation_name)
          m.scope = :instance
          m.group = group_name
          m.parameters = parameters
          m.docstring = docstring
          if source
            m.source_type = :json
            m.source = source.format
            filename = source.file
            filename = filename.match('(aws-sdk-core/apis/.+\.resources\.json)')[1]
            m.add_file(filename, nil, true)
          end
          tags.each do |tag|
            m.add_tag(tag)
          end
          m
        end

        private

        def parameters
          [['params', '{}']]
        end

        def docstring
          ''
        end

        # The YARD docmentation group this operation belongs to. This is
        # often overridden in sub-classes.
        def group_name
          'Operations'
        end

        def tags
          param_option_tags + example_tags + [return_tag] + see_also_tags
        end

        # This method should be overridden in sub-classes to add YARD tags
        # to the method code object.
        # @return [Array<YARD::Tag>]
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

        # If this operation makes an API request, then a `@see` tag is
        # returned that references the client API operation.
        # @return [Array<YARD::Tag>]
        def see_also_tags
          tags = []
          tags += called_operation_tag if called_operation
          tags += related_resource_operation_tags
          tags
        end

        def called_operation_tag
          tag = "@see #{called_operation}"
          YARD::DocstringParser.new.parse(tag).to_docstring.tags
        end

        def related_resource_operation_tags
          []
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
          resolve_shape(response_shape, @operation.path)
        end

        # Returns the output shape for the called operation.
        def response_shape
          api = @resource_class.client_class.api
          api.operation(@operation.request.method_name).output
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
