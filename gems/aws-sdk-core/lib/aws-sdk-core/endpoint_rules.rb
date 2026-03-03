# frozen_string_literal: true

require 'json'

module Aws
  module Core
    # @api private
    module EndpointRules
      VALID_S3_BUCKET = /\A(?!-)[a-z0-9-]{3,63}(?<!-)\z/
      IP_ADDRESS = /(\d+\.){3}\d+/

      class << self
        # aws.partition(region: string) Option<Partition>
        def partition(region) # rubocop:disable Metrics/AbcSize, Metrics/CyclomaticComplexity
          partitions = Aws::Partitions.partitions
          partition =
            partitions.find { |p| p.regions.map(&:name).include?(region) } ||
            partitions.find { |p| region =~ p.region_regex } ||
            partitions.find { |p| p.id == 'aws' }

          return nil unless partition

          {
            'dnsSuffix' => partition.dns_suffix,
            'dualStackDnsSuffix' => partition.dual_stack_dns_suffix,
            'implicitGlobalRegion' => partition.implicit_global_region,
            'name' => partition.id,
            'supportsDualStack' => partition.supports_dual_stack?,
            'supportsFIPS' => partition.supports_fips?
          }
        end

        # aws.parseArn(value: string) Option<ARN>
        def parse_arn(value)
          arn = ARNParser.parse(value)
          {
            'partition' => arn.partition,
            'service' => arn.service,
            'region' => arn.region,
            'accountId' => arn.account_id,
            'resourceId' => arn.resource.split(%r{[:/]}, -1)
          }
        rescue ARNParser::InvalidARNError
          nil
        end

        # aws.isVirtualHostableS3Bucket(value: string, allowSubDomains: bool) bool
        # rubocop:disable Naming/PredicatePrefix, Style/OptionalBooleanParameter
        def is_virtual_hostable_s3_bucket?(value, allow_sub_domains = false)
          return false if value.empty?

          if allow_sub_domains
            labels = value.split('.', -1)
            return labels.all? { |l| is_virtual_hostable_s3_bucket?(l) }
          end

          # TODO: look at improving performance
          # must be between 3 and 63 characters long, no uppercase and not an IP address
          value.match?(VALID_S3_BUCKET) && !value.match?(IP_ADDRESS)
        end
        # rubocop:enable Naming/PredicatePrefix, Style/OptionalBooleanParameter
      end
    end
  end
end
