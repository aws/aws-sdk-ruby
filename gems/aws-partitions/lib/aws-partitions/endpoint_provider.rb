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
      # @param [Boolean] dualstack Set to `true` to use a dualstack endpoint if
      #   available. Falls back to normal endpoints.
      # @param [Boolean] fips Set to `true` to use a fips endpoint if
      #   available. Falls back to normal endpoints.
      # @api private Use the static class methods instead.
      def resolve(region, service, sts_endpoint, dualstack, fips)
        'https://' + endpoint_for(region, service, sts_endpoint, dualstack, fips)
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
      # @param [Boolean] dualstack Set to `true` to use a dualstack DNS suffix
      #   if available. Falls back to normal suffixes.
      # @api private Use the static class methods instead.
      def dns_suffix_for(region, service, dualstack, fips)
        partition = get_partition(region)
        service_suffixes = partition.fetch('services', {})
                               .fetch(service, {})
                               .fetch('dnsSuffixes', {})
        partition_suffixes = partition.fetch('dnsSuffixes', {})

        get_suffix_from_labels(service_suffixes, dualstack, fips) ||
          get_suffix_from_labels(partition_suffixes, dualstack, fips) ||
          partition['dnsSuffix']
      end

      private

      def endpoint_for(region, service, sts_endpoint, dualstack, fips)
        partition = get_partition(region)
        service_cfg = partition.fetch('services', {}).fetch(service, {})
        # check_dualstack_support(partition, service_cfg) if dualstack

        # Find the default endpoint
        # has_dualstack_defaults = service_cfg.key?('dualstackDefaults') ||
        #                          partition.key?('dualstackDefaults')
        # defaults_key = dualstack && has_dualstack_defaults ?
        #    'dualstackDefaults' : 'defaults'
        default_endpoints = service_cfg
                   .fetch('defaults', {})
                   .fetch('endpoints', {})
        default_endpoint = get_endpoint_from_labels(
          default_endpoints, dualstack, fips
        ) || partition['defaults']['hostname']

        # endpoints_key = dualstack && service_cfg.key?('dualstackEndpoints') ?
        #   'dualstackEndpoints' : 'endpoints'
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

        # Check for service/region level endpoint.
        regional_endpoint = endpoints
                   .fetch(region, {})
        regional_endpoints = regional_endpoint
                   .fetch('endpoints', {})
        endpoint = get_endpoint_from_labels(
          regional_endpoints, dualstack, fips
        ) || regional_endpoint.fetch('hostname', default_endpoint)

        # Replace placeholders from the endpoints
        # dns_suffix = dualstack ? 'dualstackDnsSuffix' : 'dnsSuffix'
        # suffix = dualstack && service_cfg.key?('dualstackDnsSuffix') ?
        #   service_cfg['dualstackDnsSuffix'] : partition[dns_suffix]
        suffix = dns_suffix_for(region, service, dualstack, fips)

        endpoint.sub('{region}', region)
                .sub('{service}', service)
                .sub('{dnsSuffix}', suffix)
      end

      # def check_dualstack_support(partition, service_cfg)
      #   if !service_cfg.key?('dualstackEndpoints') &&
      #     !service_cfg.key?('dualstackDefaults') &&
      #     !partition.key?('dualstackDefaults')
      #     raise ArgumentError,
      #           'Dualstack is not supported for this region and partition'
      #   end
      # end

      def get_partition(region)
        partition_containing_region(region) ||
          partition_matching_region(region) ||
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

      def default_partition
        @rules['partitions'].find { |p| p['partition'] == 'aws' } ||
          @rules['partitions'].first
      end

      # return matched endpoint
      def get_endpoint_from_labels(endpoints, dualstack, fips)
        bag = []
        bag << 'dualstack' if dualstack
        bag << 'fips' if fips
        endpoints.each do |endpoint|
          # puts "bag: #{bag}, labels: #{endpoint['labels']}"
          if Set.new(bag) == Set.new(endpoint['labels'])
            # puts "matched endpoint"
            return endpoint['hostname']
          end
        end
        nil
      end

      def get_suffix_from_labels(suffixes, dualstack, fips)
        bag = []
        bag << 'dualstack' if dualstack
        bag << 'fips' if fips
        suffixes.each do |suffix|
          # puts "bag: #{bag}, labels: #{suffix['labels']}"
          if Set.new(bag) == Set.new(suffix['labels'])
            # puts "matched suffix"
            return suffix['suffix']
          end
        end
        nil
      end

      class << self
        def resolve(region, service, sts_endpoint = 'regional', dualstack = false, fips = false)
          default_provider.resolve(region, service, sts_endpoint, dualstack, fips)
        end

        def signing_region(region, service)
          default_provider.signing_region(region, service)
        end

        def dns_suffix_for(region, service = nil, dualstack = false, fips = false)
          default_provider.dns_suffix_for(region, service, dualstack, fips)
        end

        private

        def default_provider
          @default_provider ||= EndpointProvider.new(Partitions.defaults)
        end
      end
    end
  end
end
