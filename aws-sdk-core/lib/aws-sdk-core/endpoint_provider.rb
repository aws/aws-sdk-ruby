module Aws
  # @api private
  class EndpointProvider

    # @api private
    PATH = File.join(File.dirname(__FILE__), '..', '..', 'endpoints.json')

    # @api private
    RULES = Json.load_file(PATH)['endpoints']

    class << self

      def resolve(region, service)
        keys(region, service).each do |key|
          if match = RULES[key]
            return expand(match['endpoint'], region.to_s, service.to_s)
          end
        end
      end

      private

      def keys(region, service)
        ["#{region}/#{service}", "#{region}/*", "*/#{service}", "*/*"]
      end

      def expand(pattern, region, service)
        'https://' + pattern.sub('{region}', region).sub('{service}', service)
      end

    end
  end
end
