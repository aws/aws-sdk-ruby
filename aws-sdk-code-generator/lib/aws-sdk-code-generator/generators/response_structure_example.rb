require 'set'

module AwsSdkCodeGenerator
  module Generators
    class ResponseStructureExample

      include Helper

      def initialize(output_ref, api)
        @output_ref = output_ref
        @api = api
      end

      def to_str
        "\n@example Response structure\n\n  #{entry(@output_ref, "resp", Set.new).join("\n  ")}"
      end
      alias to_s to_str

      private

      def structure(ref, context, visited)
        lines = []
        shape(ref)['members'].each_pair do |member_name, member_ref|
          lines += entry(member_ref, "#{context}.#{underscore(member_name)}", visited)
        end
        lines
      end

      def list(ref, context, visited)
        lines = []
        lines << "#{context} #=> Array"
        lines += entry(shape(ref)['member'], "#{context}[0]", visited)
        lines
      end

      def map(ref, context, visited)
        lines = []
        lines << "#{context} #=> Hash"
        lines += entry(shape(ref)['value'], "#{context}[#{map_key(ref)}]", visited)
        lines
      end

      def map_key(ref)
        shape(ref)['key']['shape']
      end

      def entry(ref, context, visited)
        if shape(ref)['shape'] == 'AttributeValue'
          return ["#{context} #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>"]
        elsif visited.include?(ref['shape'])
          return ["#{context} #=> Types::#{ref['shape']}"]
        else
          visited  = visited + [ref['shape']]
        end
        case shape(ref)['type']
        when 'structure' then structure(ref, context, visited)
        when 'list' then list(ref, context, visited)
        when 'map' then map(ref, context, visited)
        else ["#{context} #=> #{ruby_type(ref)}"]
        end
      end

      def string(ref)
        if shape(ref)['enum']
          "String, one of #{shape(ref)['enum'].map(&:inspect).join(', ')}"
        else
          'String'
        end
      end

    end
  end
end
