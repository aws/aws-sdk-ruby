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

        private

        def document_struct_member(yard_class, member_name, ref)
          m = YARD::CodeObjects::MethodObject.new(yard_class, member_name)
          m.scope = :instance
          m.docstring = ref.documentation
          returns = "@return [#{output_type(ref)}] #{summary(ref.documentation)}"
          m.add_tag(tag(returns))
          yard_class.instance_attributes[member_name] = { :read => m, :write => m }
          document_possible_values(m, ref)
        end

        def document_possible_values(m, ref)
          if
            Seahorse::Model::Shapes::StringShape === ref.shape &&
            ref.shape.enum
          then
            values = ref.shape.enum.map { |v| "\n  * `#{v}`" }.join
            m.docstring += "\nPossible values:\n#{values}"
          end
        end

      end
    end
  end
end
