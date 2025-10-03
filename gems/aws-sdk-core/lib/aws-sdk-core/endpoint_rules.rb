# frozen_string_literal: true

require 'json'

module Aws
  module Core
    # @api private
    module EndpointRules
      # aws.partition(region: string) Option<Partition>
      def self.partition(region) # rubocop:disable Metrics/AbcSize, Metrics/CyclomaticComplexity
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
      def self.parse_arn(value)
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
    end
  end
end
