require 'multi_json'

module Aws
  module Api

    # @api private
    # Generates smaller API models by removing:
    #
    # * documentation
    # * whitespace
    #
    class Minifier

      def self.minify(src, target)
        json = MultiJson.load(File.read(src))
        json = new(json).minify
        File.open(target, 'w') { |f| f.write(MultiJson.dump(json)) }
      end

      def initialize(json)
        @json = json
      end

      def minify(value = @json)
        case value
        when Hash
          value.inject({}) do |h, (k, v)|
            unless k == 'documentation'
              h[k] = minify(v)
            end
            h
          end
        when Array
          value.map { |v| minify(v) }
        else
          value
        end
      end

    end
  end
end
