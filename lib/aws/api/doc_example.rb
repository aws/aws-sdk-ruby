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
        return '' if @operation.input.nil?
        structure(@operation.input, '')
      end

      def structure(shape, i)
        lines = ['{']
        shape.members.each do |member_name, member_shape|
          if shape.required.include?(member_name)
            lines << "#{i}  # required"
          end
          lines << "#{i}  #{member_name}: #{member(member_shape, i + '  ')},"
        end
        lines << "#{i}}"
        lines.join("\n")
      end

      def map(shape, i)
        if multiline?(shape.value)
          multiline_map(shape, i)
        else
          "{ #{key_name(shape)} => #{value(shape.value)} }"
        end
      end

      def multiline_map(shape, i)
        lines = ["{"]
        lines << "#{i}  #{key_name(shape)} => #{member(shape.value, i + '  ')},"
        lines << "#{i}  # repeated ..."
        lines << "#{i}}"
        lines.join("\n")
      end

      def list(shape, i)
        if multiline?(shape.member)
          multiline_list(shape, i)
        else
          "[#{value(shape.member)}, '...']"
        end
      end

      def multiline_list(shape, i)
        lines = ["["]
        lines << "#{i}  #{member(shape.member, i + '  ')},"
        lines << "#{i}  # repeated ... "
        lines << "#{i}]"
        lines.join("\n")
      end

      def member(shape, i)
        case shape
        when Seahorse::Model::Shapes::Structure then structure(shape, i)
        when Seahorse::Model::Shapes::Map then map(shape, i)
        when Seahorse::Model::Shapes::List then list(shape, i)
        else value(shape)
        end
      end

      def value(shape)
        case shape
        when Seahorse::Model::Shapes::String then string_value(shape)
        when Seahorse::Model::Shapes::Integer then 1
        when Seahorse::Model::Shapes::Float then 1.1
        when Seahorse::Model::Shapes::Boolean then true
        when Seahorse::Model::Shapes::Timestamp then 'Time.now'
        when Seahorse::Model::Shapes::Blob then "#{shape_name(shape, false)}<String,IO>".inspect
        else raise "unhandled shape type `#{shape.type}'"
        end
      end

      def string_value(shape)
        if shape.enum
          shape.enum.to_a.join('|').inspect
        else
          shape_name(shape)
        end
      end

      def multiline?(shape)
        Seahorse::Model::Shapes::Structure === shape ||
        Seahorse::Model::Shapes::List === shape ||
        Seahorse::Model::Shapes::Map === shape
      end

      def shape_name(shape, inspect = true)
        value = shape.name
        inspect ? value.inspect : value
      end

      def key_name(shape, inspect = true)
        shape_name(shape.key)
      end

    end
  end
end
