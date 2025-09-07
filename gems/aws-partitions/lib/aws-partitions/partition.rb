# frozen_string_literal: true

module Aws
  module Partitions
    # Represents a partition of AWS regions.
    class Partition
      def initialize(options = {})
        @id = options[:id]
        @dns_suffix = options[:dns_suffix]
        @dual_stack_dns_suffix = options[:dual_stack_dns_suffix]
        @implicit_global_region = options[:implicit_global_region]
        @supports_dual_stack = options[:supports_dual_stack]
        @supports_fips = options[:supports_fips]
        @region_regex = options[:region_regex]
        @regions = {}
      end

      # @return [String] the partition ID, e.g., "aws", "aws-cn", or "aws-us-gov"
      attr_reader :id

      # @return [String] the partition DNS suffix, e.g., "amazonaws.com"
      attr_reader :dns_suffix

      # @return [String] the partition dual-stack DNS suffix, e.g., "api.aws"
      attr_reader :dual_stack_dns_suffix

      # @return [String] the implicit global region for the partition, e.g., "us-east-1"
      attr_reader :implicit_global_region

      # @return [Boolean] true if the partition supports dual-stack endpoints
      attr_reader :supports_dual_stack

      # @return [Boolean] true if the partition supports FIPS endpoints
      attr_reader :supports_fips

      # @return [Regexp] the regex pattern for matching region names in this partition
      attr_reader :region_regex

      # @param [String] name The name of the region to retrieve.
      def region(name)
        if @regions.key?(name)
          @regions[name]
        else
          msg = "invalid region name #{name.inspect}; valid region names include #{@regions.keys.join(', ')}"
          raise ArgumentError, msg
        end
      end

      # @return [Array<Region>]
      def regions
        @regions.values
      end

      # @param [Region] region
      def add_region(region)
        raise ArgumentError, "expected Region, got #{region.class}" unless region.is_a?(Region)

        @regions[region.name] = region
      end
    end
  end
end
