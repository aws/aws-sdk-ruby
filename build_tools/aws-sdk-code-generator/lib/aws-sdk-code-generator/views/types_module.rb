require 'set'

module AwsSdkCodeGenerator
  module Views
    class TypesModule < View

      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)
        @api = @service.api
        @input_shapes = compute_input_shapes(@service.api)
      end

      def module_name
        @service.module_name
      end

      # @return [Array<StructClass>]
      def structures
        @service.api['shapes'].inject([]) do |list, (shape_name, shape)|
          if struct_type?(shape)
            list << StructClass.new(
              class_name: shape_name,
              members: struct_members(shape),
              documentation: struct_class_docs(shape_name)
            )
          else
            list
          end
        end
      end

      private

      def struct_members(shape)
        shape['members'].map do |member_name, _|
          StructMember.new(member_name: underscore(member_name))
        end
      end

      def struct_class_docs(shape_name)
        join_docstrings([
          html_to_markdown(Api.docstring(shape_name, @api)),
          input_example_docs(shape_name),
          attribute_macros_docs(shape_name),
          see_also_tag(shape_name),
        ])
      end

      def input_example_docs(shape_name)
        if @input_shapes.include?(shape_name)
          if shape(shape_name)['members'].empty?
            note = '@api private'
          else
            note = "@note When making an API call, you may pass #{shape_name}\n"
            note += "  data as a hash:\n\n"
            note += '      ' + SyntaxExampleHash.new(
              shape: shape(shape_name),
              api: @service.api,
            ).format('      ')
          end
        end
      end

      def attribute_macros_docs(shape_name)
        shape(shape_name)['members'].map do |member_name, member_ref|
          docs = Api.docstring(member_ref, @api).to_s
          docs += idempotency_token_msg if idempotency_token?(member_ref)
          docs = html_to_markdown(docs, line_width: 68)
          docs = docs.to_s.lines.to_a.join('  ')
          macro = "@!attribute [rw] #{underscore(member_name)}\n"
          macro += "  #{docs}\n" unless docs == ''
          macro += "  @return [#{Api.ruby_type(member_ref, @api)}]"
          macro
        end
      end

      def see_also_tag(shape_name)
        uid = @api['metadata']['uid']
        Crosslink.tag_string(uid, shape_name) unless !Crosslink.taggable?(uid)
      end

      def struct_type?(shape)
        shape['type'] == 'structure' &&
        !shape['error'] &&
        !shape['exception']
      end

      def compute_input_shapes(api)
        inputs = Set.new
        (api['operations'] || {}).each do |_, operation|
          visit_inputs(operation['input'], inputs) if operation['input']
        end
        inputs
      end

      def idempotency_token?(member_ref)
        member_ref['idempotencyToken'] || shape(member_ref)['idempotencyToken']
      end

      def idempotency_token_msg
        "<p><b>A suitable default value is auto-generated.</b> You should normally not need to pass this option.</p>"
      end

      def visit_inputs(shape_ref, inputs)
        return if inputs.include?(shape_ref['shape']) # recursion
        inputs << shape_ref['shape']
        s = shape(shape_ref)
        case s['type']
        when 'structure'
          s['members'].each_pair do |_, member_ref|
            visit_inputs(member_ref, inputs)
          end
        when 'list'
          visit_inputs(s['member'], inputs)
        when 'map'
          visit_inputs(s['key'], inputs)
          visit_inputs(s['value'], inputs)
        end
      end

      def shape(shape_ref)
        Api.resolve(shape_ref, @api)[1]
      end

      class StructClass

        def initialize(options)
          @class_name = options.fetch(:class_name)
          @members = options.fetch(:members)
          @documentation = options.fetch(:documentation)
          if @members.empty?
            @empty = true
          else
            @empty = false
            @members.last.last = true
          end
        end

        # @return [String]
        attr_accessor :class_name

        # @return [Array<StructMember>]
        attr_accessor :members

        # @return [String, nil]
        attr_accessor :documentation

        # @return [Boolean]
        def empty?
          @empty
        end

      end

      class StructMember

        def initialize(options)
          @member_name = options.fetch(:member_name)
          @last = false
        end

        # @return [String]
        attr_accessor :member_name

        # @return [Boolean]
        attr_accessor :last

      end
    end
  end
end
