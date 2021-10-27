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
        if configured_variants?(variants)
          resolved_variants = resolve_variants(region, service)
          get_variant(resolved_variants, variants)['dnsSuffix']
        else
          get_partition(region)['dnsSuffix']
        end
      end

      private

      def configured_variants?(variants)
        variants[:fips] == true || variants[:dualstack] == true
      end

      def resolve_variants(region, service)
        partition = get_partition(region)
        partition_variants = partition.fetch('defaults', {})
                                      .fetch('variants', [])

        service_variants = partition.fetch('services', {})
                                    .fetch(service, {})
                                    .fetch('defaults', {})
                                    .fetch('variants', [])

        service_cfg = partition.fetch('services', {})
                               .fetch(service, {})
        endpoints = service_cfg.fetch('endpoints', {})

        is_global = !endpoints.key?(region) &&
                    service_cfg['isRegionalized'] == false

        # Check for global endpoint.
        region = service_cfg.fetch('partitionEndpoint', region) if is_global

        endpoint_variants = endpoints.fetch(region, {})
                                     .fetch('variants', [])

        variants = []

        partition_variants.each do |variant|
          matching_svc_variant = service_variants.find do |svc_variant|
            Set.new(variant['tags']) == Set.new(svc_variant['tags'])
          end || {}

          matching_ep_variant = endpoint_variants.find do |ep_variant|
            Set.new(variant['tags']) == Set.new(ep_variant['tags'])
          end || {}

          variants << variant.merge(matching_svc_variant)
                             .merge(matching_ep_variant)
        end

        variants
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

      def validate_variants!(config_variants, resolved_variants)
        if config_variants[:dualstack] == true && resolved_variants.empty?
          raise ArgumentError,
                'Dualstack is not supported for this region and partition'
        end
        if config_variants[:fips] == true && resolved_variants.empty?
          raise ArgumentError,
                'FIPS is not supported for this region and partition'
        end
      end

      def endpoint_for(region, service, sts_endpoints, variants)
        if configured_variants?(variants)
          resolved_variants = resolve_variants(region, service)
          validate_variants!(variants, resolved_variants)
          variant = get_variant(resolved_variants, variants)
          variant['hostname'].sub('{region}', region)
                             .sub('{service}', service)
                             .sub('{dnsSuffix}', variant['dnsSuffix'])
        else
          _endpoint_for(region, service, sts_endpoints)
        end
      end

      def _endpoint_for(region, service, sts_regional_endpoints)
        partition = get_partition(region)
        service_cfg = partition.fetch('services', {}).fetch(service, {})

        # Find the default endpoint
        default_endpoint = service_cfg
                   .fetch('defaults', {})
                   .fetch('hostname', partition['defaults']['hostname'])

        endpoints = service_cfg.fetch('endpoints', {})

        # Check for sts legacy behavior
        sts_legacy = service == 'sts' &&
                     sts_regional_endpoints == 'legacy' &&
                     STS_LEGACY_REGIONS.include?(region)

        is_global = !endpoints.key?(region) &&
                    service_cfg['isRegionalized'] == false

        # Check for global endpoint.
        if sts_legacy || is_global
          region = service_cfg.fetch('partitionEndpoint', region)
        end

        # Check for service/region level endpoint.
        endpoint = endpoints
                   .fetch(region, {})
                   .fetch('hostname', default_endpoint)

        # Replace placeholders from the endpoints
        endpoint.sub('{region}', region)
                .sub('{service}', service)
                .sub('{dnsSuffix}', partition['dnsSuffix'])
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
