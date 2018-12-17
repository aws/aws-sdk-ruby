module Aws
  class EventEmitter

    def initialize
      @listeners = {}
      @buffer = Queue.new
      @emit_state = :sleep
    end

    attr_accessor :stream

    attr_accessor :encoder

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
      @buffer << Proc.new do |stream, encoder|
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
