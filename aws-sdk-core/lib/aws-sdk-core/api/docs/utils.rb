module Aws
  module Api
    module Docs
      module Utils

        include Seahorse::Model

        def tag(string)
          YARD::DocstringParser.new.parse(string).to_docstring.tags.first
        end

        def input_type(ref)
          case ref.shape
          when Shapes::StructureShape then "Types::" + ref.shape.name
          when Shapes::ListShape then "Array<#{input_type(ref.shape.member)}>"
          when Shapes::MapShape then "Hash<String,#{input_type(ref.shape.value)}>"
          when Shapes::BlobShape then 'String,IO'
          when Shapes::BooleanShape then 'Boolean'
          when Shapes::FloatShape then 'Float,Numeric'
          when Shapes::IntegerShape then 'Integer,Numeric'
          when Shapes::StringShape then 'String'
          when Shapes::TimestampShape then 'Time,Date,DateTime,Integer'
          else raise "unsupported shape #{ref.shape.class.name}"
          end
        end

        def output_type(ref)
          case ref.shape
          when Shapes::StructureShape then "Types::" + ref.shape.name
          when Shapes::ListShape then "Array<#{output_type(ref.shape.member)}>"
          when Shapes::MapShape then "Hash<String,#{output_type(ref.shape.value)}>"
          when Shapes::BlobShape then ref.location == 'body' ? 'StringIO' : 'String'
          when Shapes::BooleanShape then 'Boolean'
          when Shapes::FloatShape then 'Float'
          when Shapes::IntegerShape then 'Integer'
          when Shapes::StringShape then 'String'
          when Shapes::TimestampShape then 'Time'
          else raise "unsupported shape #{ref.shape.class.name}"
          end
        end

      end
    end
  end
end
