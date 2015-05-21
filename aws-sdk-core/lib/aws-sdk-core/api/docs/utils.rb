require 'set'
module Aws
  module Api
    module Docs
      module Utils

        include Seahorse::Model
        include Seahorse::Model::Shapes

        def tag(string)
          YARD::DocstringParser.new.parse(string).to_docstring.tags.first
        end

        def input_type(ref, link = false)
          if BlobShape === ref.shape
            'String,IO'
          else
            output_type(ref, link)
          end
        end

        def output_type(ref, link = false)
          case ref.shape
          when StructureShape
            type = "Types::" + ref.shape.name
            link ? "{#{type}}" : type
          when ListShape
            "Array<#{output_type(ref.shape.member, link)}>"
          when MapShape
            "Hash<String,#{output_type(ref.shape.value, link)}>"
          when BlobShape
            ref[:streaming] ? 'IO,File'
          when BooleanShape then 'Boolean'
          when FloatShape then 'Float'
          when IntegerShape then 'Integer'
          when StringShape then 'String'
          when TimestampShape then 'Time'
          else raise "unsupported shape #{ref.shape.class.name}"
          end
        end

        def summary(string)
          if string
            YARD::DocstringParser.new.parse(string).to_docstring.summary
          else
            nil
          end
        end

        def compute_recursive_shapes(ref, visited = [], recursive_shapes = Set.new)
          # terminal case for recursion
          if ref.nil?
            return recursive_shapes
          elsif visited.include?(ref.shape)
            recursive_shapes << ref.shape
            return recursive_shapes
          else
            visited += [ref.shape]
          end

          case ref.shape
          when StructureShape
            ref.shape.members.each do |_, member_ref|
              compute_recursive_shapes(member_ref, visited)
            end
          when ListShape
            compute_recursive_shapes(ref.shape.member, visited)
          when MapShape
            compute_recursive_shapes(ref.shape.key, visited)
            compute_recursive_shapes(ref.shape.value, visited)
          end
          recursive_shapes
        end

      end
    end
  end
end
