# frozen_string_literal: true

require 'set'

module AwsSdkCodeGenerator
  module Views
    class TypesModule < View

      include Helper

      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)
        @api = @service.api
        @input_shapes = compute_input_shapes(@service.api)
      end

      # @return [String|nil]
      def generated_src_warning
        return if @service.protocol == 'api-gateway'
        GENERATED_SRC_WARNING
      end

      def module_name
        @service.module_name
      end

      # @return [Array<StructClass>]
      def structures
        unless @service.protocol_settings.empty?
          if @service.protocol_settings['h2'] == 'eventstream'
            @service.api['shapes'].each do |_, shape|
              if shape['eventstream']
                # add event trait to all members if not exists
                shape['members'].each do |name, ref|
                  @service.api['shapes'][ref['shape']]['event'] = true
                end
              end
            end
          end
        end
        @service.api['shapes'].inject([]) do |list, (shape_name, shape)|
          # APIG model can have input/output shape with downcase and '__'
          if @service.protocol == 'api-gateway'
            shape_name = lstrip_prefix(upcase_first(shape_name))
          end
          # eventstream shape will be inheriting from enumerator
          if shape['eventstream']
            list
          elsif shape['type'] == 'structure'
            struct_members = struct_members(shape)
            sensitive_params = struct_members.select(&:sensitive).map do |m|
              m.member_name.to_sym
            end
            list << StructClass.new(
              class_name: shape_name,
              members: struct_members,
              sensitive_params: sensitive_params,
              documentation: struct_class_docs(shape_name)
            )
          else
            list
          end
        end
      end

      # return [Array<EventStreamClass>]
      def eventstreams
        @service.api['shapes'].inject([]) do |list, (shape_name, shape)|
          if shape['eventstream']
            list << EventStreamClass.new(
              class_name: shape_name,
              types: struct_members(shape),
              documentation: eventstream_class_docs(shape_name)
            )
          else
            list
          end
        end
      end

      private

      def struct_members(shape)
        return if shape['members'].nil?
        members = shape['members'].map do |member_name, member_ref|
          sensitive = !!(member_ref['sensitive'] ||
            @api['shapes'][member_ref['shape']]['sensitive'])
          StructMember.new(
            member_name: underscore(member_name),
            sensitive: sensitive
          )
        end
        if shape['event']
          members << StructMember.new(member_name: 'event_type')
        end
        members
      end

      def struct_class_docs(shape_name)
        join_docstrings([
          html_to_markdown(Api.docstring(shape_name, @api)),
          input_example_docs(shape_name),
          attribute_macros_docs(shape_name),
          see_also_tag(shape_name),
        ])
      end

      def eventstream_class_docs(shape_name)
        join_docstrings([
          html_to_markdown(Api.docstring(shape_name, @api)),
          input_example_docs(shape_name),
          eventstream_docs(shape_name),
          see_also_tag(shape_name),
        ])
      end

      def eventstream_docs(shape_name)
        "EventStream is an Enumerator of Events.\n"\
        " #event_types #=> Array, returns all modeled event types in the stream"
      end

      def input_example_docs(shape_name)
        if @input_shapes.include?(shape_name)
          return if shape(shape_name)['members'].nil?
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
        # APIG model downcase shape name in origin or "__" prefix in origin
        if @service.protocol == 'api-gateway'
          if shape(shape_name).nil?
            if !shape(downcase_first(shape_name)).nil?
              shape_name = downcase_first(shape_name)
            elsif !shape(apig_prefix(shape_name)).nil?
              shape_name = apig_prefix(shape_name)
            else
              shape_name = apig_prefix(downcase_first(shape_name))
            end
          end
        end
        return if shape(shape_name)['members'].nil?
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
        if @api['metadata']['protocol'] != 'api-gateway' && Crosslink.taggable?(uid)
          Crosslink.tag_string(uid, shape_name)
        end
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
        raise "cannot locate shape #{shape_ref['shape']}" if s.nil?
        case s['type']
        when 'structure'
          return if s['members'].nil?
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

      class EventStreamClass

        def initialize(options)
          @class_name = options.fetch(:class_name)
          @types = options.fetch(:types)
          @documentation = options.fetch(:documentation)
          if @types.nil? || @types.empty?
            @empty = true
          else
            @empty = false
            @types.last.last = true
          end
        end

        # @return [String]
        attr_accessor :class_name

        # @return [Array<StructMember>]
        attr_accessor :types

        # @return [String, nil]
        attr_accessor :documentation

        # @return [Boolean]
        def empty?
          @empty
        end

      end

      class StructClass

        def initialize(options)
          @class_name = options.fetch(:class_name)
          @members = options.fetch(:members)
          @documentation = options.fetch(:documentation)
          @sensitive_params = options.fetch(:sensitive_params)
          if @members.nil? || @members.empty?
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

        # @return [Array<Symbol>]
        attr_accessor :sensitive_params

        # @return [Boolean]
        def empty?
          @empty
        end

        # @return [Boolean]
        def sensitive_params?
          @sensitive_params.any?
        end
      end

      class StructMember

        def initialize(options)
          @member_name = options.fetch(:member_name)
          @sensitive = options.fetch(:sensitive, false)
          @last = false
        end

        # @return [String]
        attr_accessor :member_name

        # @return [Boolean]
        attr_accessor :sensitive

        # @return [Boolean]
        attr_accessor :last

      end
    end
  end
end
