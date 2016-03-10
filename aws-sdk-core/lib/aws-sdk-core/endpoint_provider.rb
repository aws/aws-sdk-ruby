module Aws
  # @api private
  class EndpointProvider

    PATH = File.join(File.dirname(__FILE__), '..', '..', 'endpoints.json')
    RULES = Json.load_file(PATH)

    class << self

      def resolve(region, service)
        "https://" + endpoint_for(region, service)
      end

      private
      def endpoint_for(region, service)
        partition = get_partition(region)
        if partition.nil?
          return "#{service}.#{region}.amazonaws.com"
        end
        endpoint = default_endpoint(partition, service, region)
        if service_cfg = partition["services"][service]
          if service_cfg["isRegionalized"] == false
            if partition_endpoint = service_cfg["partitionEndpoint"]
              region = partition_endpoint
            end
          end
          if endpoint_cfg = service_cfg["endpoints"][region]
            if host = endpoint_cfg["hostname"]
              endpoint = host
            end
          end
        end
        endpoint
      end

      def default_endpoint(partition, service, region)
        hostname_template = partition["defaults"]["hostname"]
        hostname_template.sub(
          '{region}', region
        ).sub(
          '{service}', service
        ).sub(
          '{dnsSuffix}', partition["dnsSuffix"]
        )
      end

      def get_partition(region)
        RULES["partitions"].find do |p|
          region.match(p["regionRegex"])
        end
      end

    end
  end
end
