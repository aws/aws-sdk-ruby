# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module RBS
      class TypesModule < View

        include Helper

        # @option options [required, Service] :service
        def initialize(options)
          @service = options.fetch(:service)
          @api = @service.api
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
                  @service.api['shapes'][ref['shape']]['exception_event'] = true
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

        private

        def struct_members(shape)
          return if shape['members'].nil?
          members = shape['members'].map do |member_name, member_ref|
            sensitive = !!(member_ref['sensitive'] ||
              @api['shapes'][member_ref['shape']]['sensitive'])
            StructMember.new(
              member_name: underscore(member_name),
              sensitive: sensitive,
              returns: AwsSdkCodeGenerator::RBS.to_type(member_ref, @api)
            )
          end
          if shape['event'] || shape['exception_event']
            members << StructMember.new(
              member_name: 'event_type',
              returns: 'untyped'
            )
          end
          members
        end

        def struct_class_docs(shape_name, shape)
          nil
        end

        def eventstream_class_docs(shape_name, shape)
          nil
        end

        def eventstream_docs(shape_name)
          nil
        end

        def output_example_docs(shape_name, shape)
          nil
        end

        def input_example_docs(shape_name, shape)
          nil
        end

        def attribute_macros_docs(shape_name)
          nil
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
            @members << StructMember.new(
              member_name: :unknown,
              returns: 'untyped' # FIXME
            ) if @union
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
          def initialize(member_name:, sensitive: false, returns:)
            @member_name = member_name
            @member_class_name = AwsSdkCodeGenerator::Helper::pascal_case(@member_name)
            @sensitive = sensitive
            @returns = returns
            @last = false
          end

          # @return [String]
          attr_accessor :member_name

          # @return [Boolean]
          attr_accessor :sensitive

          # @return [String]
          attr_accessor :member_class_name

          # @return [String]
          attr_accessor :returns

          # @return [Boolean]
          attr_accessor :last
        end
      end
    end
  end
end
