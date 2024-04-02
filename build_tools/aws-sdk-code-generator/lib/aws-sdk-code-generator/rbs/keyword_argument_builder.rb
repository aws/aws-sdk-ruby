# frozen_string_literal: true

module AwsSdkCodeGenerator
  module RBS
    # similar to SyntaxExampleHash
    class KeywordArgumentBuilder
      include Helper

      attr_reader :newline

      def initialize(api:, shape:, newline:)
        @api = api
        @shape = shape
        @newline = newline
      end

      def format(indent: '')
        members_str = struct_members(@shape, indent, [], keyword: true)
        result = []
        result << '' if newline
        result << members_str if !members_str.empty?
        result << indent if newline
        result.join(joint)
      end

      def struct(struct_shape, i, visited)
        members_str = struct_members(struct_shape, i, visited, keyword: false)
        result = ["{"]
        result << members_str if struct_shape['members']&.empty?&.!
        result << "#{i}}"
        result.join(joint)
      end

      def struct_members(struct_shape, i, visited, keyword:)
        lines = []
        unless struct_shape['members'].nil?
          n = 0
          struct_shape['members'].each do |member_name, member_ref|
            next if member_ref['documented'] === false
            more_indent = newline ? "  " : ""
            if @api['shapes'][member_ref['shape']]['eventstream'] === true
              # FIXME: "input_event_stream_hander: EventStreams::#{member_ref['shape']}.new"
              lines << "#{i}#{more_indent}input_event_stream_hander: untyped,"
            else
              lines << "#{i}#{more_indent}#{struct_member(struct_shape, member_name, member_ref, i, visited, keyword: keyword)}"
            end
          end
        end
        if lines.empty?
          ""
        else
          lines.join(joint).chomp(",")
        end
      end

      def struct_member(struct, member_name, member_ref, i, visited, keyword:)
        required = (struct['required'] || []).include?(member_name)
        if keyword
          "#{required ? '' : '?'}#{underscore(member_name)}: #{ref_value(member_ref, i + more_indent, visited)},"
        else
          "#{underscore(member_name)}: #{ref_value(member_ref, i + more_indent, visited)}#{required ? '' : '?'},"
        end
      end

      def ref_value(ref, i, visited)
        if visited.include?(ref['shape'])
          return "untyped"
        else
          visited  = visited + [ref['shape']]
        end

        s = shape(ref)
        case s['type']
        when 'structure'
          if ref['shape'] == 'AttributeValue'
            'untyped'
          else
            struct(s, i, visited)
          end
        when 'blob'
          if ref['streaming']
            "::String | ::StringIO | ::File" # input only
          else
            "::String"
          end
        when 'list' then list(s, i, visited)
        when 'map' then map(s, i, visited)
        when 'boolean' then "bool"
        when 'integer', 'long' then '::Integer'
        when 'float', 'double' then '::Float'
        when 'byte' then '::Integer'
        when 'character' then '::String'
        when 'string' then string(ref)
        when 'timestamp' then '::Time'
        else raise "unsupported shape #{s['type'].inspect}"
        end
      end

      def list(list_shape, i, visited)
        member_ref = list_shape['member']
        if complex?(member_ref)
          complex_list(member_ref, i, visited)
        else
          scalar_list(member_ref, i, visited)
        end
      end

      def scalar_list(member_ref, i, visited)
        "Array[#{ref_value(member_ref, i, visited)}]"
      end

      def complex_list(member_ref, i, visited)
        newline_indent = newline ? "\n#{i}" : ""
        "Array[#{newline_indent}#{more_indent}#{ref_value(member_ref, i + more_indent, visited)},#{newline_indent}]"
      end

      def complex?(ref)
        s = shape(ref)
        if s['type'] == 'structure'
          !ddb_av?(ref)
        else
          s['type'] == 'list' || s['type'] == 'map'
        end
      end

      def ddb_av?(ref)
        s = shape(ref)
        case s['type']
        when 'list' then ddb_av?(s['member'])
        when 'structure' then ref['shape'] == 'AttributeValue'
        else false
        end
      end

      def map(map_shape, i, visited)
        key = string(map_shape['key'])
        value = ref_value(map_shape['value'], i + more_indent, visited)
        "Hash[#{key}, #{value}]"
      end

      def string(ref)
        string_shape = shape(ref)
        if string_shape['enum']
          "(#{string_shape['enum'].map { |s| "\"#{s}\"" }.join(" | ")})"
        else ref['shape']
          "::String"
        end
      end

      def more_indent
        newline ? "  " : ""
      end

      def joint
        newline ? "\n" : " "
      end
    end
  end
end
