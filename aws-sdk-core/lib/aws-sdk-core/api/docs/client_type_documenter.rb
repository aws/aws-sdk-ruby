module Aws
  module Api
    module Docs
      class ClientTypeDocumenter

        include Utils

        # @param [Yard::CodeObjects::Base] namespace
        def initialize(namespace)
          @namespace = namespace
        end

        # @param [Seahorse::Model::Shapes::StructureShape] shape
        def document(shape)
          yard_class = YARD::CodeObjects::ClassObject.new(@namespace, shape.name)
          yard_class.superclass = 'Struct'
          yard_class.docstring = shape.documentation
          shape.members.each do |member_name, ref|
            document_struct_member(yard_class, member_name, ref)
          end
        end

        def document_struct_member(yard_class, member_name, ref)
          m = YARD::CodeObjects::MethodObject.new(yard_class, member_name)
          m.scope = :instance
          m.docstring = ref.documentation
          m.add_tag(tag("@return [#{output_type(ref)}] #{ref.documentation}"))
          yard_class.instance_attributes[member_name] = { :read => m, :write => m }
        end

      end
    end
  end
end
