# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    class EventStreamsModule < View

      include Helper

      def initialize(options)
        @service = options.fetch(:service)
        input, output = extract_eventstreams
        @input_eventstreams = input
        @output_eventstreams = output
      end

      # @return [Array<EventStreamClass>]
      attr_reader :input_eventstreams

      # @return [Array<EventStreamClass>]
      attr_reader :output_eventstreams

      # @return [String|nil]
      def generated_src_warning
        return if @service.protocol == 'api-gateway'
        GENERATED_SRC_WARNING
      end

      def module_name
        @service.module_name
      end

      def extract_eventstreams
        es = []
        @service.api['operations'].each do |_, ref|
          pair = []
          if input = ref['input']
            input_shape = @service.api['shapes'][input['shape']]
            input_shape['members'].each do |_, m_ref|
              if @service.api['shapes'][m_ref['shape']]['eventstream']
                shape = @service.api['shapes'][m_ref['shape']]
                pair << {
                  class_name: m_ref['shape'],
                  event_entries: eventstream_members_w_doc(shape),
                  types: eventstream_members(shape)
                }
              end
            end
          end
          # have a placeholder for input
          pair << nil if pair.empty?
          if output = ref['output']
            output_shape = @service.api['shapes'][output['shape']]
            output_shape['members'].each do |_, m_ref|
              if @service.api['shapes'][m_ref['shape']]['eventstream']
                shape = @service.api['shapes'][m_ref['shape']]
                pair << {
                  class_name: m_ref['shape'],
                  types: eventstream_members(shape)
                }
              end
            end
          end
          es << pair unless pair.compact.empty?
        end
        # rename eventstream when needed
        input_es = []
        output_es = []
        es.each do |pair|
          input, output = pair
          # bidirectional and sharing same eventstream shape
          if input && output && input[:class_name] == output[:class_name]
            input[:class_name] = "Input" + input[:class_name]
            output[:class_name] = "Output" + output[:class_name]
          end
          input_es << EventStreamClass.new(input) if input
          output_es << EventStreamClass.new(output) if output
        end
        [input_es, output_es]
      end

      def eventstream_members(shape)
        raise 'no event members for an eventstream' if shape['members'].nil?
        shape['members'].keys.map {|m| underscore(m)}
      end

      def eventstream_members_w_doc(shape)
        raise 'no event members for an eventstream' if shape['members'].nil?
        shape['members'].inject([]) do |m, (n, ref)|
          event_shape = @service.api['shapes'][ref['shape']]
          option_tags = event_shape['members'].map do |member_name, member_ref|
            next if member_ref['documented'] === false
            docstring = Api.docstring(member_ref, @service.api)
            YardOptionTag.new(
              name: Underscore.underscore(member_name),
              ruby_type: Api.ruby_input_type(member_ref, @service.api),
              required: shape.fetch('required', []).include?(member_name),
              docstring: Docstring.html_to_markdown(docstring),
              option_hash_name: 'params',
            ).to_s
          end
          param_hash_str = Docstring.join_docstrings([option_tags], block_comment: false)
          param_hash =
            if param_hash_str.nil?
              '# This event has no members'
            else
              Docstring.indent(param_hash_str, '      ')
            end
          m << EventEntry.new(
            name: underscore(n),
            param_hash: param_hash
          )
          m
        end
      end

      private

      class EventEntry

        def initialize(options)
          @name = options.fetch(:name)
          @param_hash = options.fetch(:param_hash)
        end

        # @return [String]
        attr_reader :name

        # @return [String]
        attr_reader :param_hash

      end

      class EventStreamClass

        def initialize(options)
          @class_name = options.fetch(:class_name)
          @types = options.fetch(:types)
          @event_entries = options[:event_entries] || []
        end

        # @return [String]
        attr_accessor :class_name

        # @return [Array<String>]
        attr_accessor :types

        # @return [Array<EventEntry>]
        attr_reader :event_entries

      end

    end
  end
end
    
