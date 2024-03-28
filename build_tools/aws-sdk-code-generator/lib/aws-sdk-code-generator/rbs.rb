# frozen_string_literal: true

module AwsSdkCodeGenerator
  module RBS
    class << self
      def to_type(shape_ref, api)
        _, shape = Api.resolve(shape_ref, api)
        case shape['type']
        when 'blob' then Api.streaming?(shape_ref, api) ? '::IO' : '::String'
        when 'boolean' then 'bool'
        when 'byte' then '::Integer'
        when 'character' then '::String'
        when 'double', 'float' then '::Float'
        when 'integer', 'long', 'short' then '::Integer'
        when 'list' then "::Array[#{to_type(shape['member'], api)}]"
        when 'map' then "::Hash[#{to_type(shape['key'], api)}, #{to_type(shape['value'], api)}]"
        when 'string'
          if shape['enum']
            "(#{shape['enum'].map { |e| "\"#{e}\"" }.join(" | ")})"
          elsif Api.streaming?(shape_ref, api)
            '::IO'
          else
            '::String'
          end
        when 'structure'
          if shape['document']
            'untyped'
          else
            "Types::#{shape_ref['shape']}"
          end
        when 'timestamp' then '::Time'
        else
          raise "unhandled type #{shape['type'].inspect}"
        end
      end
    end
  end
end
