require 'set'

module AwsSdkCodeGenerator
  module Generators
    class ResponseStructureExample

      include Helper

      # @option options [required, Hash] :shape_ref
      # @option options [required, Hash] :api
      def initialize(options = {})
        @shape_ref = options.fetch(:shape_ref)
        @api = options.fetch(:api)
      end

      def to_str
        "\n@example Response structure\n  #{entry(@shape_ref, "resp", Set.new).join("\n  ")}"
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
        shape(ref)['key']['shape'].inspect
      end

      def entry(ref, context, visited)
        if ref['shape'] == 'AttributeValue'
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
        else ["#{context} #=> #{type(ref)}"]
        end
      end

      def type(ref)
        if shape(ref)['type'] == 'string'
          string(ref)
        else
          ruby_type(ref)
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
