module Aws
  # @api private
  class RegionsAndEndpoints

    attr_reader :rules

    PATH = File.join(File.dirname(__FILE__), '..', '..', 'endpoints.json')

    def initialize(file = PATH)
      @rules = Json.load_file(file)
    end

    def set_endpoints_file(file)
      @rules = Json.load_file(file)
    end

    def resolve(region, service)
      "https://" + endpoint_for(region, service)
    end

    def signing_region(region, service)
      partition = get_partition(region)
      config_region = partition.fetch("services", {}).
        fetch(service, {}).
        fetch("endpoints", {}).
        fetch(region, {}).
        fetch("credentialScope", {})["region"]
      config_region ||= region
      config_region
    end

    private
    def endpoint_for(region, service)
      partition = get_partition(region)
      endpoint = default_endpoint(partition, service, region)
      service_cfg = partition.fetch("services", {}).fetch(service, {})

      # Check for service-level default endpoint.
      endpoint = service_cfg.fetch("defaults", {}).fetch("hostname", endpoint)

      # Check for global endpoint.
      if service_cfg["isRegionalized"] == false
        region = service_cfg.fetch("partitionEndpoint", region)
      end

      # Check for service/region level endpoint.
      endpoint = service_cfg.fetch("endpoints", {}).
        fetch(region, {}).fetch("hostname", endpoint)

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
      partition = @rules["partitions"].find do |p|
        region.match(p["regionRegex"])
      end
      partition ||= @rules["partitions"].find { |p| p["partition"] == "aws" }
      partition
    end

  end
end
