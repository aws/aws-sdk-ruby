module Aws
  module Api
    module Docs
      class ClientTypeDocumenter

        include Utils
        include Seahorse::Model
        include Seahorse::Model::Shapes

        # @param [Yard::CodeObjects::Base] namespace
        def initialize(namespace)
          @namespace = namespace
        end

        # @param [Seahorse::Model::Api] api
        # @param [Seahorse::Model::Shapes::StructureShape] shape
        def document(api, shape)
          yard_class = YARD::CodeObjects::ClassObject.new(@namespace, shape.name)
          yard_class.superclass = 'Struct'
          yard_class.docstring = shape.documentation
          tags(api, shape).each do |tag|
            yard_class.add_tag(tag)
          end
          shape.members.each do |member_name, ref|
            document_struct_member(yard_class, member_name, ref)
          end
        end

        private

        def tags(api, shape)
          tags = []
          tags << input_example_tag(api, shape) if input_shape?(api, shape)
          tags += see_also_tags(api, shape)
          tags
        end

        # Returns `true` if the given shape is ever used as input in the api.
        def input_shape?(haystack, needle, stack = [])
          if stack.include?(haystack)
            return false
          else
            stack += [haystack]
          end
          case haystack
          when needle
            return true
          when Seahorse::Model::Api
            haystack.operations.each do |_, operation|
              if operation.input && input_shape?(operation.input.shape, needle, stack)
                return true
              end
            end
          when StructureShape
            haystack.members.each do |_, member_ref|
              if input_shape?(member_ref.shape, needle, stack)
                return true
              end
            end
          when ListShape
            return input_shape?(haystack.member.shape, needle, stack)
          when MapShape
            return input_shape?(haystack.value.shape, needle, stack)
          end
          false
        end

        def input_example_tag(api, shape)
          example = RequestSyntaxExample.new('', Operation.new)
          example = example.params(ShapeRef.new(shape: shape))
          note = "@note When passing #{shape.name} as input to an #{Client} "
          note << "method, you can use a\n  vanilla Hash:\n\n      "
          note << example.lines.join("      ")
          tag(note)
        end

        def see_also_tags(api, shape)
          []
        end

        def document_struct_member(yard_class, member_name, ref)
          m = YARD::CodeObjects::MethodObject.new(yard_class, member_name)
          m.scope = :instance
          m.docstring = docstring(ref.documentation, ref)
          returns = "@return [#{output_type(ref)}] #{summary(ref.documentation)}"
          m.add_tag(tag(returns))
          yard_class.instance_attributes[member_name] = { :read => m, :write => m }
        end

        def docstring(docs, ref)
          if
            Seahorse::Model::Shapes::StringShape === ref.shape &&
            ref.shape.enum
          then
            docs = "#{docs}<p>Possible values:</p><ul>"
            docs += ref.shape.enum.map { |v| "<li><tt>#{v}</tt></li>" }.join
            docs += "</ul>"
            docs
          else
            docs
          end
        end

      end
    end
  end
end
