module Aws
  class EventEmitter

    def initialize
      @listeners = {}
      @validate_event = true
      @buffer = Queue.new
    end

    attr_accessor :stream

    attr_accessor :encoder

    attr_accessor :validate_event

    attr_reader :buffer

    def on(type, callback)
      (@listeners[type] ||= []) << callback
    end

    def signal(type, event)
      return unless @listeners[type]
      @listeners[type].each do |listener|
        listener.call(event) if event.event_type == type
      end
    end

    def emit(type, params)
      @buffer << Proc.new do
        if @validate_event && type != :end_stream
          Aws::ParamValidator.validate!(
            @encoder.rules.shape.member(type), params)
        end
        @stream.data(
          @encoder.encode(type, params),
          end_stream: type == :end_stream
        )
      end
    end

    private

    class Queue

      def initialize(procs = [])
        @procs = procs
        @mutex = Mutex.new
      end

      def <<(callback)
        @mutex.synchronize { @procs << callback }
      end

      def shift
        @mutex.synchronize { @procs.shift }
      end

    end

  end
end
