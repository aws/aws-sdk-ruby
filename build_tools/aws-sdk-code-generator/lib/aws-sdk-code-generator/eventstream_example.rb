# frozen_string_literal: true

module AwsSdkCodeGenerator
  class EventStreamExample
    
    def initialize(options = {})
      @api = options.fetch(:api)
      @method_name = options.fetch(:method_name)
      @module_name = options.fetch(:module_name)
      @receiver = options.fetch(:receiver)
      @resp_var = options.fetch(:resp_var)
      @operation = options.fetch(:operation)
      @input_eventstream_member, @input_eventstream_shape = input_eventstream_shape
      @output_eventstream_member, @output_eventstream_shape = output_eventstream_shape
      if @input_eventstream_shape && @output_eventstream_shape &&
          @input_eventstream_shape == @output_eventstream_shape
        # input and output sharing same eventstream
        # renaming, see EventStreamModules
        @input_eventstream = "#{@module_name}::EventStreams::Input#{@input_eventstream_shape}"
        @output_eventstream = "#{@module_name}::EventStreams::Output#{@output_eventstream_shape}"
      else
        @input_eventstream = "#{@module_name}::EventStreams::#{@input_eventstream_shape}" if @input_eventstream_shape
        @output_eventstream = "#{@module_name}::EventStreams::#{@output_eventstream_shape}" if @output_eventstream_shape
      end
    end

    def format
      if @input_eventstream_member && @output_eventstream_member
        bi_directional_format
      elsif @output_eventstream_member
        output_format
     # elsif @input_eventstream_member
       # input stream only is supported naturally, but
       # unclear usage when just input streaming, so pending for now
      end
    end

    def bi_directional_format
      <<-EXAMPLE.strip
# @example Bi-directional EventStream Operation Example
#
#   You can signal input events after the initial request is established. Events
#   will be sent to the stream immediately once the stream connection is
#   established successfully.
#
#   To signal events, you can call the #signal methods from an #{@input_eventstream}
#   object. You must signal events before calling #wait or #join! on the async response.
#
#     input_stream = #{@input_eventstream}.new
#
#     async_resp = #{@receiver}.#{@method_name}(
#       # params input
#       input_event_stream_handler: input_stream) do |out_stream|
#
#       # register callbacks for events
#{event_entry(:output, 'out_stream', 2)}
#
#     end
#     # => Aws::Seahorse::Client::AsyncResponse
#
#     # signal events
#{event_entry(:input, 'input_stream')}
#
#     # make sure to signal :end_stream at the end
#     input_stream.signal_end_stream
#
#     # wait until stream is closed before finalizing the sync response
#     resp = async_resp.wait
#     # Or close the stream and finalize sync response immediately
#     # resp = async_resp.join!
#
#   You can also provide an #{@output_eventstream} object to register callbacks
#   before initializing the request instead of processing from the request block.
#
#     output_stream = #{@output_eventstream}.new
#     # register callbacks for output events
#{event_entry(:output, 'output_stream')}
#{error_event_entry('output_stream')}
#
#     async_resp = #{@receiver}.#{@method_name} (
#       # params input
#       input_event_stream_handler: input_stream
#       output_event_stream_handler: output_stream
#     )
#
#     resp = async_resp.join!
#
#   You can also iterate through events after the response is complete.
#
#   Events are available at #{@resp_var}.#{@output_eventstream_member} # => Enumerator
      EXAMPLE
    end

    def output_format
      <<-EXAMPLE.strip
# @example EventStream Operation Example
#
#   You can process the event once it arrives immediately, or wait until the
#   full response is complete and iterate through the eventstream enumerator.
#
#   To interact with event immediately, you need to register ##{@method_name}
#   with callbacks. Callbacks can be registered for specific events or for all
#   events, including error events.
#
#   Callbacks can be passed into the `:event_stream_handler` option or within a
#   block statement attached to the ##{@method_name} call directly. Hybrid
#   pattern of both is also supported.
#
#   `:event_stream_handler` option takes in either a Proc object or
#   #{@output_eventstream} object.
#
#   Usage pattern a): Callbacks with a block attached to ##{@method_name}
#     Example for registering callbacks for all event types and an error event
#
#     #{@receiver}.#{@method_name}( # params input# ) do |stream|
#{error_event_entry('stream', 2)}
#
#       stream.on_event do |event|
#         # process all events arrive
#         puts event.event_type
#         ...
#       end
#
#     end
#
#   Usage pattern b): Pass in `:event_stream_handler` for ##{@method_name}
#
#     1) Create a #{@output_eventstream} object
#     Example for registering callbacks with specific events
#
#       handler = #{@output_eventstream}.new
#{event_entry(:output, 'handler', 2)}
#
#     #{@receiver}.#{@method_name}( # params input #, event_stream_handler: handler)
#
#     2) Use a Ruby Proc object
#     Example for registering callbacks with specific events
#
#     handler = Proc.new do |stream|
#{event_entry(:output, 'stream', 2)}
#     end
#
#     #{@receiver}.#{@method_name}( # params input #, event_stream_handler: handler)
#
#   Usage pattern c): Hybrid pattern of a) and b)
#
#       handler = #{@output_eventstream}.new
#{event_entry(:output, 'handler', 2)}
#
#     #{@receiver}.#{@method_name}( # params input #, event_stream_handler: handler) do |stream|
#{error_event_entry('stream', 2)}
#     end
#
#   You can also iterate through events after the response complete.
#
#   Events are available at #{@resp_var}.#{@output_eventstream_member} # => Enumerator
#   For parameter input example, please refer to following request syntax
      EXAMPLE
    end

    def event_entry(type, ctx, indent = 0)
      case type
      when :input then input_event_entries(ctx, indent)
      when :output then output_event_entries(ctx, indent)
      end
    end

    def error_event_entry(ctx, indent = 0)
      entries = []
      entries << "#     #{' ' * indent}#{ctx}.on_error_event do |event|"
      entries << "#     #{' ' * indent}  # catch unmodeled error event in the stream"
      entries << "#     #{' ' * indent}  raise event"
      entries << "#     #{' ' * indent}  # => Aws::Errors::EventError"
      entries << "#     #{' ' * indent}  # event.event_type => :error"
      entries << "#     #{' ' * indent}  # event.error_code => String"
      entries << "#     #{' ' * indent}  # event.error_message => String"
      entries << "#     #{' ' * indent}end"
      entries.join("\n")
    end

    def input_event_entries(ctx, indent = 0)
      @api['shapes'][@input_eventstream_shape]['members'].each.inject([]) do |entries, (name, _)|
        event_type = Underscore.underscore(name)
        # TODO, place holder values
        entries << "#     #{' ' * indent}#{ctx}.signal_#{event_type}_event( ... )"
        entries
      end.join("\n")
    end

    def output_event_entries(ctx, indent = 0)
      @api['shapes'][@output_eventstream_shape]['members'].keys.each.inject([]) do |entry, name|
        event_type = Underscore.underscore(name)
        entry << "#     #{' ' * indent}#{ctx}.on_#{event_type}_event do |event|"
        entry << "#       #{' ' * indent}event # => #{@module_name}::Types::#{name}"
        entry << "#     #{' ' * indent}end"
      end.join("\n")
    end

    def input_eventstream_shape
      input_shape = @api['shapes'][@operation['input']['shape']] if @operation['input']
      if input_shape
        input_shape['members'].each do |name, ref|
          return [Underscore.underscore(name), ref['shape']] if Api.eventstream?(ref, @api)
        end
      end
      nil
    end

    def output_eventstream_shape
      output_shape = @api['shapes'][@operation['output']['shape']] if @operation['output']
      if output_shape
        output_shape['members'].each do |name, ref|
          return [Underscore.underscore(name), ref['shape']] if Api.eventstream?(ref, @api)
        end
      end
      nil
    end
  end

end
