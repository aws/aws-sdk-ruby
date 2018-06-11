module Aws
  class EventEmitter

    def initialize
      @listeners = {}
    end

    def on(type, callback)
      (@listeners[type] ||= []) << callback
    end

    def signal(type, event)
      return unless @listeners[type]
      @listeners[type].each do |listener|
        listener.call(event) if event.event_type == type
      end
    end

  end
end
