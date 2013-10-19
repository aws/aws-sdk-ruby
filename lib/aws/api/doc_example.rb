module Aws
  module Api
    class DocExample

      include Seahorse::Model::Shapes

      def initialize(obj_name, method_name, operation)
        @obj_name = obj_name
        @method_name = method_name
        @operation = operation
      end

      def to_str
        "resp = #{@obj_name}.#{@method_name}(#{params[1...-1]})"
      end
      alias to_s to_str
      alias inspect to_str

      private

      def params
        return '' if @operation.input.members.empty?
        structure(@operation.input, '')
      end

      def structure(shape, i)
        lines = ['{']
        shape.members.each do |member_name, member_shape|
          if member_shape.required
            lines << "#{i}  # required"
          end
          lines << "#{i}  #{member_name}: #{member(member_shape, i + '  ')},"
        end
        lines << "#{i}}"
        lines.join("\n")
      end

      def map(shape, i)
        if multiline?(shape.members)
          multiline_map(shape, i)
        else
          "{ #{key_name(shape)} => #{value(shape.members)} }"
        end
      end

      def multiline_map(shape, i)
        lines = ["{"]
        lines << "#{i}  #{key_name(shape)} => #{member(shape.members, i + '  ')},"
        lines << "#{i}  # repeated ..."
        lines << "#{i}}"
        lines.join("\n")
      end

      def list(shape, i)
        if multiline?(shape.members)
          multiline_list(shape, i)
        else
          "[#{value(shape.members)}, '...']"
        end
      end

      def multiline_list(shape, i)
        lines = ["["]
        lines << "#{i}  #{member(shape.members, i + '  ')},"
        lines << "#{i}  # repeated ... "
        lines << "#{i}]"
        lines.join("\n")
      end

      def member(shape, i)
        case shape
        when StructureShape then structure(shape, i)
        when MapShape then map(shape, i)
        when ListShape then list(shape, i)
        else value(shape)
        end
      end

      def value(shape)
        case shape
        when StringShape then string_value(shape)
        when IntegerShape then 'Integer'
        when FloatShape then 'Float'
        when BooleanShape then 'true || false'
        when TimestampShape then '<Time,DateTime,Date,Integer,String>'.inspect
        when BlobShape then "#{shape_name(shape, false)}<String,IO>".inspect
        else raise "unhandled shape type `#{shape.type}'"
        end
      end

      def string_value(shape)
        if shape.enum
          shape.enum.join('|').inspect
        else
          shape_name(shape)
        end
      end

      def multiline?(shape)
        shape.is_a?(StructureShape) or
        shape.is_a?(MapShape) or
        shape.is_a?(ListShape)
      end

      def shape_name(shape, inspect = true)
        value = shape.metadata['shape_name']
        inspect ? value.inspect : value
      end

      def key_name(shape, inspect = true)
        shape_name(shape.keys)
      end

    end
  end
end
