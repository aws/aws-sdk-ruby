module Aws
  class EventEmitter

    def initialize
      @listeners = {}
      @buffer = []
      @emit_state = :sleep
    end

    attr_accessor :stream

    attr_accessor :encoder

    attr_reader :buffer

    attr_accessor :emit_state

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
      case @emit_state
      when :ready
        # TODO, reproduce the scenario
        @stream.data(@encoder.encode(type, params))
      else
        @buffer << Proc.new do |stream, encoder|
          @stream.data(@encoder.encode(type, params), end_stream: false)
        end
      end
    end

  end
end
