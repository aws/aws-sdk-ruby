module Aws
  module Xml
    class Parser
      class Stack

        def initialize(ref, result = nil)
          @ref = ref
          @frame = self
          @result = result
        end

        attr_reader :frame

        attr_reader :result

        def start_element(name)
          @frame = @frame.child_frame(name.to_s)
        end

        def attr(name, value)
          if name.to_s == 'encoding' && value.to_s == 'base64'
            @frame = BlobFrame.new(@frame.parent, @frame.ref)
          else
            start_element(name)
            text(value)
            end_element(name)
          end
        end

        def text(value)
          @frame.set_text(value)
        end

        def end_element(*args)
          @frame.parent.consume_child_frame(@frame)
          if @frame.parent.is_a?(FlatListFrame)
            @frame = @frame.parent
            @frame.parent.consume_child_frame(@frame)
          end
          @frame = @frame.parent
        end

        def error(msg, line = nil, column = nil)
          raise ParsingError.new(msg, line, column)
        end

        def child_frame(name)
          Frame.new(self, @ref, @result)
        end

        def consume_child_frame(frame)
          @result = frame.result
        end

      end
    end
  end
end
