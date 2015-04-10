require 'base64'
require 'time'

module Aws
  module Xml
    class Parser
      class Frame

        def initialize(parent, shape, result = nil)
          @parent = parent
          @shape = shape
          @result = result
          @text = []
        end

        attr_reader :parent

        attr_reader :shape

        attr_reader :result

        def set_text(value)
          @text << value
        end

        def child_frame(xml_name)
          NullFrame.new(self)
        end

        def consume_child_frame(child); end

        private

        class << self

          def new(parent, shape, result = nil)
            if self == Frame
              frame = frame_class(shape).allocate
              frame.send(:initialize, parent, shape, result)
              frame
            else
              super
            end
          end

          private

          def frame_class(shape)
            @classes ||= {
              'blob' => BlobFrame,
              'boolean' => BooleanFrame,
              'byte' => BlobFrame,
              'character' => StringFrame,
              'double' => FloatFrame,
              'float' => FloatFrame,
              'integer' => IntegerFrame,
              'list' => ListFrame,
              'list:flat' => FlatListFrame,
              'long' => IntegerFrame,
              'map' => MapFrame,
              'map:flat' => MapEntryFrame,
              'string' => StringFrame,
              'structure' => StructureFrame,
              'timestamp' => TimestampFrame,
            }
            if shape
              type = shape.type
              type += ':flat' if shape.definition['flattened']
              @classes[type]
            else
              NullFrame
            end
          end

        end
      end

      class StructureFrame < Frame

        def initialize(parent, shape, result = nil)
          super
          @result ||= Structure.new(shape.member_names)
          @members = {}
          shape.members.each do |member_name, member_shape|
            apply_default_value(member_name, member_shape)
            @members[xml_name(member_shape)] = {
              name: member_name,
              shape: member_shape,
            }
          end
        end

        def child_frame(xml_name)
          if @member = @members[xml_name]
            Frame.new(self, @member[:shape])
          else
            NullFrame.new(self)
          end
        end

        def consume_child_frame(child)
          case child
          when MapEntryFrame
            @result[@member[:name]][child.key.result] = child.value.result
          when FlatListFrame
            @result[@member[:name]] << child.result
          when NullFrame
          else
            @result[@member[:name]] = child.result
          end
        end

        private

        def apply_default_value(name, shape)
          case shape
          when Seahorse::Model::Shapes::List then @result[name] = DefaultList.new
          when Seahorse::Model::Shapes::Map then @result[name] = {}
          end
        end

        def xml_name(member_shape)
          if member_shape.type == 'list' && member_shape.definition['flattened']
            member_shape.member.location_name || member_shape.location_name
          else
            member_shape.location_name
          end
        end

      end

      class ListFrame < Frame

        def initialize(*args)
          super
          @result = []
          @member_xml_name = @shape.member.location_name || 'member'
        end

        def child_frame(xml_name)
          if xml_name == @member_xml_name
            Frame.new(self, @shape.member)
          else
            raise NotImplementedError
          end
        end

        def consume_child_frame(child)
          @result << child.result unless NullFrame === child
        end

      end

      class FlatListFrame < Frame

        def initialize(*args)
          super
          @member = Frame.new(self, @shape.member)
        end

        def result
          @member.result
        end

        def set_text(value)
          @member.set_text(value)
        end

        def child_frame(xml_name)
          @member.child_frame(xml_name)
        end

        def consume_child_frame(child)
          @result = @member.result
        end

      end

      class MapFrame < Frame

        def initialize(*args)
          super
          @result = {}
        end

        def child_frame(xml_name)
          if xml_name == 'entry'
            MapEntryFrame.new(self, @shape)
          else
            raise NotImplementedError
          end
        end

        def consume_child_frame(child)
          @result[child.key.result] = child.value.result
        end

      end

      class MapEntryFrame < Frame

        def initialize(*args)
          super
          @key_name = @shape.key.location_name || 'key'
          @key = Frame.new(self, @shape.key)
          @value_name = @shape.value.location_name || 'value'
          @value = Frame.new(self, @shape.value)
        end

        # @return [StringFrame]
        attr_reader :key

        # @return [Frame]
        attr_reader :value

        def child_frame(xml_name)
          if @key_name == xml_name
            @key
          elsif @value_name == xml_name
            @value
          else
            NullFrame.new(self)
          end
        end

      end

      class NullFrame < Frame
        def self.new(parent)
          super(parent, nil)
        end
      end

      class BlobFrame < Frame
        def result
          @text.empty? ? nil : Base64.decode64(@text.join)
        end
      end

      class BooleanFrame < Frame
        def result
          @text.empty? ? nil : (@text.join == 'true')
        end
      end

      class FloatFrame < Frame
        def result
          @text.empty? ? nil : @text.join.to_f
        end
      end

      class IntegerFrame < Frame
        def result
          @text.empty? ? nil : @text.join.to_i
        end
      end

      class StringFrame < Frame
        def result
          @text.join
        end
      end

      class TimestampFrame < Frame
        def result
          @text.empty? ? nil : parse(@text.join)
        end
        def parse(value)
          case value
          when nil then nil
          when /^\d+$/ then Time.at(value.to_i)
          else
            begin
              Time.parse(value).utc
            rescue ArgumentError
              raise "unhandled timestamp format `#{value}'"
            end
          end
        end
      end
    end
  end
end
