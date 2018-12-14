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
        input_es = []
        output_es = []
        @service.api['operations'].each do |_, ref|
          if input = ref['input']
            input_shape = @service.api['shapes'][input['shape']]
            input_shape['members'].each do |_, m_ref|
              if @service.api['shapes'][m_ref['shape']]['eventstream']
                shape = @service.api['shapes'][m_ref['shape']]
                input_es << EventStreamClass.new(
                  class_name: m_ref['shape'],
                  types: eventstream_members(shape)
                )
              end
            end
          end
          if output = ref['output']
            output_shape = @service.api['shapes'][output['shape']]
            output_shape['members'].each do |_, m_ref|
              if @service.api['shapes'][m_ref['shape']]['eventstream']
                shape = @service.api['shapes'][m_ref['shape']]
                output_es << EventStreamClass.new(
                  class_name: m_ref['shape'],
                  types: eventstream_members(shape)
                )
              end
            end
          end
        end
        [input_es, output_es]
      end

      def eventstream_members(shape)
        raise 'no event members for an eventstream' if shape['members'].nil?
        shape['members'].keys.map {|m| underscore(m)}
      end

      private

      class EventStreamClass

        def initialize(options)
          @class_name = options.fetch(:class_name)
          @types = options.fetch(:types)
        end

        # @return [String]
        attr_accessor :class_name

        # @return [Array<String>]
        attr_accessor :types

      end

    end
  end
end
    
