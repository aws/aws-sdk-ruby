module AwsSdkCodeGenerator
  module Views
    class EventStreamsModule < View

      include Helper

      def initialize(options)
        @service = options.fetch(:service)
      end

      # @return [String|nil]
      def generated_src_warning
        return if @service.protocol == 'api-gateway'
        GENERATED_SRC_WARNING
      end

      def module_name
        @service.module_name
      end

      # @return [Array<EventStreamClass>]
      def eventstreams
        @service.api['shapes'].inject([]) do |list, (name, shape)|
          if shape['eventstream']
            list << EventStreamClass.new(
              class_name: name,
              types: eventstream_members(shape)
            )
          else
            list
          end
        end
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
    
