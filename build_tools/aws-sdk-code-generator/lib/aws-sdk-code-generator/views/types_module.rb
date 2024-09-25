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
        @output_shapes = compute_output_shapes(@service.api)
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
        @service.api['shapes'].each do |_, shape|
          if shape['eventstream']
            # add internal exception_event ctrait to all exceptions
            # exceptions will not have the event trait.
            shape['members'].each do |name, ref|
              if !!@service.api['shapes'][ref['shape']]['exception']
                @service.api['shapes'][ref['shape']]['exceptionEvent'] = true
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
          elsif shape['type'] == 'structure' && !shape['document']
            struct_members = struct_members(shape)
            sensitive_params = struct_members.select(&:sensitive).map do |m|
              m.member_name.to_sym
            end
            list << StructClass.new(
              class_name: shape_name,
              members: struct_members,
              sensitive_params: sensitive_params,
              documentation: struct_class_docs(shape_name, shape),
              union: shape['union']
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
              documentation: eventstream_class_docs(shape_name, shape)
            )
          else
            list
          end
        end
      end

      # @return [Array<String>]
      def types_customizations
        Dir.glob(File.join(Helper.gem_lib_path(gem_name), "#{gem_name}/customizations/types", '*.rb')).map do |file|
          filename = File.basename(file, '.rb')
          "#{gem_name}/customizations/types/#{filename}"
        end
      end

      private

      def gem_name
        "aws-sdk-#{module_name.split('::').last.downcase}"
      end

      def struct_members(shape)
        return if shape['members'].nil?
        members = shape['members'].map do |member_name, member_ref|
          member_target = @api['shapes'][member_ref['shape']]
          sensitive = !!(member_ref['sensitive'] ||
            member_target['sensitive'])

          case member_target["type"]
          when 'map'
            key_shape = @api['shapes'][member_target['key']['shape']]
            value_shape = @api['shapes'][member_target['value']['shape']]
            sensitive ||= !!(key_shape['sensitive'] || value_shape['sensitive'])
          when 'list'
            list_member = @api['shapes'][member_target['member']['shape']]
            sensitive ||= !!(list_member['sensitive'])
          end

          StructMember.new(
            member_name: underscore(member_name),
            sensitive: sensitive
          )
        end
        if shape['event'] || shape['exceptionEvent']
          members << StructMember.new(member_name: 'event_type')
        end
        members
      end

      def struct_class_docs(shape_name, shape)
        join_docstrings([
          html_to_markdown(Api.docstring(shape_name, @api)),
          input_example_docs(shape_name, shape),
          output_example_docs(shape_name, shape),
          attribute_macros_docs(shape_name),
          see_also_tag(shape_name),
        ])
      end

      def eventstream_class_docs(shape_name, shape)
        join_docstrings([
          html_to_markdown(Api.docstring(shape_name, @api)),
          input_example_docs(shape_name, shape),
          eventstream_docs(shape_name),
          see_also_tag(shape_name),
        ])
      end

      def eventstream_docs(shape_name)
        "EventStream is an Enumerator of Events.\n"\
        " #event_types #=> Array, returns all modeled event types in the stream"
      end

      def output_example_docs(shape_name, shape)
        if @output_shapes.include?(shape_name)
          if shape['union']
            "@note #{shape_name} is a union - when returned from an API call"\
            ' exactly one value will be set and the returned type will'\
            " be a subclass of #{shape_name} corresponding to the set member."
          end
        end
      end

      def input_example_docs(shape_name, shape)
        if @input_shapes.include?(shape_name)
          return if shape(shape_name)['members'].nil?
          if shape(shape_name)['members'].empty?
            '@api private'
          elsif shape['union']
            "@note #{shape_name} is a union - when making an API calls you"\
            ' must set exactly one of the members.'
          # This doc block is no longer useful, but keeping for records
          # else
          #   note = "@note When making an API call, you may pass #{shape_name}\n"
          #   note += "  data as a hash:\n\n"
          #   note += '      ' + SyntaxExampleHash.new(
          #     shape: shape(shape_name),
          #     api: @service.api,
          #   ).format('      ')
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
        if @service.protocol != 'api-gateway' && Crosslink.taggable?(uid)
          Crosslink.tag_string(uid, shape_name)
        end
      end

      def compute_input_shapes(api)
        inputs = Set.new
        (api['operations'] || {}).each do |_, operation|
          visit_shapes(operation['input'], inputs) if operation['input']
        end
        inputs
      end

      def compute_output_shapes(api)
        outputs = Set.new
        (api['operations'] || {}).each do |_, operation|
          visit_shapes(operation['output'], outputs) if operation['output']
        end
        outputs
      end

      def idempotency_token?(member_ref)
        member_ref['idempotencyToken'] || shape(member_ref)['idempotencyToken']
      end

      def idempotency_token_msg
        "<p><b>A suitable default value is auto-generated.</b> You should normally not need to pass this option.</p>"
      end

      def visit_shapes(shape_ref, shapes)
        return if shapes.include?(shape_ref['shape']) # recursion
        shapes << shape_ref['shape']
        s = shape(shape_ref)
        raise "cannot locate shape #{shape_ref['shape']}" if s.nil?
        case s['type']
        when 'structure'
          return if s['members'].nil?
          s['members'].each_pair do |_, member_ref|
            visit_shapes(member_ref, shapes)
          end
        when 'list'
          visit_shapes(s['member'], shapes)
        when 'map'
          visit_shapes(s['key'], shapes)
          visit_shapes(s['value'], shapes)
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
          @union = options.fetch(:union)
          @members << StructMember.new(member_name: :unknown, member_class_name: 'Unknown') if @union
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
        def union?
          @union
        end

        # @return [Boolean]
        def empty?
          @empty
        end
      end

      class StructMember

        def initialize(options)
          @member_name = options.fetch(:member_name)
          @member_class_name = AwsSdkCodeGenerator::Helper::pascal_case(@member_name)
          @sensitive = options.fetch(:sensitive, false)
          @last = false
        end

        # @return [String]
        attr_accessor :member_name

        # @return [Boolean]
        attr_accessor :sensitive

        # @return [String]
        attr_accessor :member_class_name

        # @return [Boolean]
        attr_accessor :last

      end
    end
  end
end
