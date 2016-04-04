module Aws
  # @api private
  class EndpointProvider

    PATH = File.join(File.dirname(__FILE__), '..', '..', 'endpoints.json')
    RULES = Json.load_file(PATH)

    class << self

      def resolve(region, service)
        "https://" + endpoint_for(region, service)
      end

      def signing_region(region, service)
        partition = get_partition(region)
        [
          "services", service, "endpoints", region, "credentialScope", "region"
        ].inject(partition) do |acc, key|
          if acc && acc[key]
            acc[key]
          else
            region
          end
        end
      end

      private
      def endpoint_for(region, service)
        partition = get_partition(region)
        endpoint = default_endpoint(partition, service, region)
        if service_cfg = partition["services"][service]
          if service_cfg["isRegionalized"] == false
            if partition_endpoint = service_cfg["partitionEndpoint"]
              region = partition_endpoint
            end
          end
          if service_defaults = service_cfg["defaults"]
            if host = service_defaults["hostname"]
              endpoint = host
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
        partition = RULES["partitions"].find do |p|
          region.match(p["regionRegex"])
        end
        partition ||= RULES["partitions"].find { |p| p["partition"] == "aws" }
        partition
      end

    end
  end
end
