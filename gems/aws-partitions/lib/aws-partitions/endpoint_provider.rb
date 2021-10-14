# frozen_string_literal: true

module Aws
  module Partitions
    # @api private
    class EndpointProvider
      # When sts_regional_endpoint is set to `legacy`, the endpoint
      # pattern stays global for the following regions:
      STS_LEGACY_REGIONS = %w[
        ap-northeast-1
        ap-south-1
        ap-southeast-1
        ap-southeast-2
        aws-global
        ca-central-1
        eu-central-1
        eu-north-1
        eu-west-1
        eu-west-2
        eu-west-3
        sa-east-1
        us-east-1
        us-east-2
        us-west-1
        us-west-2
      ].freeze

      # Intentionally marked private. The format of the endpoint rules
      # is an implementation detail.
      # @api private
      def initialize(rules)
        @rules = rules
      end

      # @param [String] region The region for the client.
      # @param [String] service The endpoint prefix for the service, e.g.
      #   "monitoring" for cloudwatch.
      # @param [String] sts_endpoint [STS only] Whether to use
      #   `legacy` (global endpoint for legacy regions) or `regional` mode for
      #   using regional endpoint for supported regions except 'aws-global'
      # @param [Hash] variants Endpoint variants such as 'fips' or 'dualstack'
      # @option variants [Boolean] :dualstack When true, resolve a dualstack
      #   endpoint.
      # @option variants [Boolean] :fips When true, resolve a FIPS endpoint.
      # @api private Use the static class methods instead.
      def resolve(region, service, sts_endpoint, variants)
        'https://' + endpoint_for(region, service, sts_endpoint, variants)
      end

      # @param [String] region The region for signing.
      # @param [String] service The service to sign with.
      # @api private Use the static class methods instead.
      def signing_region(region, service)
        get_partition(region)
          .fetch('services', {})
          .fetch(service, {})
          .fetch('endpoints', {})
          .fetch(region, {})
          .fetch('credentialScope', {})
          .fetch('region', region)
      end

      # @param [String] region The region used to fetch the partition.
      # @param [String] service Used only if dualstack is true. Used to find a
      #   DNS suffix for a specific service.
      # @param [Hash] variants Endpoint variants such as 'fips' or 'dualstack'
      # @option variants [Boolean] :dualstack When true, resolve a dualstack
      #   endpoint.
      # @option variants [Boolean] :fips When true, resolve a FIPS endpoint.
      # @api private Use the static class methods instead.
      def dns_suffix_for(region, service, variants)
        partition = get_partition(region)
        partition_variants = partition.fetch('defaults', {})
                                      .fetch('variants', [])
        service_variants = partition.fetch('services', {})
                                    .fetch(service, {})
                                    .fetch('defaults', {})
                                    .fetch('variants', [])
        service_variant = get_variant(service_variants, variants)
        unless service_variant['dnsSuffix']
          partition_variant = get_variant(partition_variants, variants)
        end

        service_variant['dnsSuffix'] ||
          partition_variant['dnsSuffix'] ||
          partition['dnsSuffix']
      end

      private

      def endpoint_for(region, service, sts_endpoint, variants)
        # partition default endpoint
        partition = get_partition(region)
        partition_variant = get_variant(
          partition.fetch('defaults', {}).fetch('variants', []), variants
        )
        if variants[:dualstack] == true && partition_variant.empty?
          raise ArgumentError,
                'Dualstack is not supported for this region and partition'
        end
        if variants[:fips] == true && partition_variant.empty?
          raise ArgumentError,
                'FIPS is not supported for this region and partition'
        end
        default_endpoint = if partition_variant.empty?
          partition['defaults']['hostname']
        else
          partition_variant['hostname']
        end

        # service default endpoint
        service_cfg = partition.fetch('services', {}).fetch(service, {})
        service_variant = get_variant(
          service_cfg.fetch('defaults', {}).fetch('variants', []), variants
        )
        default_endpoint = if service_variant.empty?
          service_cfg.fetch('defaults', {}).fetch('hostname', default_endpoint)
        else
          service_variant['hostname']
        end

        # Find the default endpoint
        endpoints = service_cfg.fetch('endpoints', {})

        # Check for sts legacy behavior
        sts_legacy = service == 'sts' &&
                     sts_endpoint == 'legacy' &&
                     STS_LEGACY_REGIONS.include?(region)

        is_global = !endpoints.key?(region) &&
                    service_cfg['isRegionalized'] == false

        # Check for global endpoint.
        if sts_legacy || is_global
          region = service_cfg.fetch('partitionEndpoint', region)
        end

        region_variant = get_variant(
          endpoints.fetch(region, {}).fetch('variants', []), variants
        )
        default_endpoint = if region_variant.empty?
          endpoints.fetch(region, {}).fetch('hostname', default_endpoint)
        else
          region_variant.fetch('hostname', default_endpoint)
        end

        # Replace placeholders from the endpoints
        default_endpoint.sub('{region}', region)
                .sub('{service}', service)
                .sub('{dnsSuffix}', dns_suffix_for(region, service, variants))
      end

      def check_dualstack_support(partition, service_cfg)
        if !service_cfg.key?('dualstackEndpoints') &&
          !service_cfg.key?('dualstackDefaults') &&
          !partition.key?('dualstackDefaults')
          raise ArgumentError,
                'Dualstack is not supported for this region and partition'
        end
      end

      def get_partition(region_or_partition)
        partition_containing_region(region_or_partition) ||
          partition_matching_region(region_or_partition) ||
          partition_matching_name(region_or_partition) ||
          default_partition
      end

      def partition_containing_region(region)
        @rules['partitions'].find do |p|
          p['regions'].key?(region)
        end
      end

      def partition_matching_region(region)
        @rules['partitions'].find do |p|
          p['regionRegex'] && region.match(p['regionRegex']) ||
            p['services'].values.find do |svc|
              svc['endpoints'].key?(region) if svc.key?('endpoints')
            end
        end
      end

      def partition_matching_name(partition_name)
        @rules['partitions'].find { |p| p['partition'] == partition_name }
      end

      def default_partition
        @rules['partitions'].find { |p| p['partition'] == 'aws' } ||
          @rules['partitions'].first
      end

      def get_variant(modeled_variants, config_variants)
        tags = Set.new
        tags << 'dualstack' if config_variants[:dualstack] == true
        tags << 'fips' if config_variants[:fips] == true
        modeled_variants.each do |modeled_variant|
          if tags == Set.new(modeled_variant['tags'])
            return modeled_variant
          end
        end
        {}
      end

      class << self
        def resolve(region, service, sts_endpoint = 'regional', variants = {})
          default_provider.resolve(region, service, sts_endpoint, variants)
        end

        def signing_region(region, service)
          default_provider.signing_region(region, service)
        end

        def dns_suffix_for(region, service = nil, variants = {})
          default_provider.dns_suffix_for(region, service, variants)
        end

        private

        def default_provider
          @default_provider ||= EndpointProvider.new(Partitions.defaults)
        end
      end
    end
  end
end
