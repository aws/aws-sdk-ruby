module Aws

  # Error event in an event stream which has event_type :error
  # error code and error message can be retrieved when available.
  #
  # example usage:
  #
  #   client.stream_foo(name: 'bar') do |event|
  #     case event.event_type
  #     when :error
  #       raise "Error #{event.error_code}: #{event.error_message}"
  #     end
  #   end
  #
  class EventError < Struct.new(
    :event_type,
    :error_code,
    :error_message)
  end

end
