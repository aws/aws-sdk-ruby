module AwsSdkCodeGenerator
  class EventStreamExample
    
    def initialize(options = {})
      @api = options.fetch(:api)
      @method_name = options.fetch(:method_name)
      @module_name = options.fetch(:module_name)
      @receiver = options.fetch(:receiver)
      @resp_var = options.fetch(:resp_var)
      @operation = options.fetch(:operation)
      @eventstream_member, @eventstream_shape = eventstream_shape
    end

    def format
      <<-EXAMPLE.strip
# @example EventStream Operation Example
#
#   You can process event once it arrives immediately, or wait until
#   full response complete and iterate through eventstream enumerator.
#
#   To interact with event immediately, you need to register ##{@method_name}
#   with callbacks, callbacks can be register for specifc events or for all events,
#   callback for errors in the event stream is also available for register.
#
#   Callbacks can be passed in by `:event_stream_handler` option or within block
#   statement attached to ##{@method_name} call directly. Hybrid pattern of both
#   is also supported.
#
#   `:event_stream_handler` option takes in either Proc object or
#   EventStreams::#{@eventstream_shape} object.
#
#   Usage pattern a): callbacks with a block attached to ##{@method_name}
#     Example for registering callbacks for all event types and error event
#
#     #{@receiver}.#{@method_name}( # params input# ) do |stream|
#
#       stream.on_error_event do |event|
#         # catch unmodeled error event in the stream
#         raise event
#         # => Aws::Errors::EventError
#         # event.event_type => :error
#         # event.error_code => String
#         # event.error_message => String
#       end
#
#       stream.on_event do |event|
#         # process all events arrive
#         puts event.event_type
#         ...
#       end
#
#     end
#
#   Usage pattern b): pass in `:event_stream_handler` for ##{@method_name}
#
#     1) create a EventStreams::#{@eventstream_shape} object
#     Example for registering callbacks with specific events
#
#       handler = #{@module_name}::EventStreams::#{@eventstream_shape}.new
#{event_entry('handler')}
#
#     #{@receiver}.#{@method_name}( # params input #, event_stream_handler: handler)
#
#     2) use a Ruby Proc object
#     Example for registering callbacks with specific events
#
#     handler = Proc.new do |stream|
#{event_entry('stream')}
#     end
#
#     #{@receiver}.#{@method_name}( # params input #, event_stream_handler: handler)
#
#   Usage pattern c): hybird pattern of a) and b)
#
#       handler = #{@module_name}::EventStreams::#{@eventstream_shape}.new
#{event_entry('handler')}
#
#     #{@receiver}.#{@method_name}( # params input #, event_stream_handler: handler) do |stream|
#       stream.on_error_event do |event|
#         # catch unmodeled error event in the stream
#         raise event
#         # => Aws::Errors::EventError
#         # event.event_type => :error
#         # event.error_code => String
#         # event.error_message => String
#       end
#     end
#
#   Besides above usage patterns for process events when they arrive immediately, you can also
#   iterate through events after response complete.
#
#   Events are available at #{@resp_var}.#{@eventstream_member} # => Enumerator
#   For parameter input example, please refer to following request syntax
      EXAMPLE
    end

    private

    def event_entry(ctx)
      @api['shapes'][@eventstream_shape]['members'].keys.each.inject([]) do |entry, name|
        event_type = Underscore.underscore(name)
        entry << "#       #{ctx}.on_#{event_type}_event do |event|"
        entry << "#         event # => #{@module_name}::Types::#{name}"
        entry << "#       end"
      end.join("\n")
    end

    def eventstream_shape
      output_shape = @api['shapes'][@operation['output']['shape']]
      output_shape['members'].each do |name, ref|
        return [Underscore.underscore(name), ref['shape']] if Api.eventstream?(ref, @api)
      end
      raise 'Cannot find eventstream member at eventstream operation'
    end

  end
end
