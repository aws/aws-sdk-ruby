# frozen_string_literal: true

require 'json'

require_relative 'aws-partitions/partition'
require_relative 'aws-partitions/partition_list'
require_relative 'aws-partitions/region'

module Aws
  # A {Partition} is a group of AWS {Region} objects.
  # You can use a partition to determine what regions are available in that partition
  # and what properties those regions have.
  #
  # ## Partitions
  #
  # **AWS accounts are scoped to a single partition**. You can get a partition by name.
  # Valid partition names include:
  #
  # * `aws`
  # * `aws-cn`
  # * `aws-eusc`
  # * `aws-iso`
  # * `aws-iso-b`
  # * `aws-iso-e`
  # * `aws-iso-f`
  # * `aws-us-gov`
  #
  # To get a partition by name:
  #
  #     aws = Aws::Partitions.partition('aws')
  #
  # You can also enumerate all partitions:
  #
  #     Aws::Partitions.each do |partition|
  #       puts partition.name
  #     end
  #
  # ## Regions
  #
  # A {Partition} is divided up into one or more regions. For example, the
  # "aws" partition contains, "us-east-1", "us-west-1", etc. You can get
  # a region by name. Calling {Partition#region} will return an instance
  # of {Region}.
  #
  #     region = Aws::Partitions.partition('aws').region('us-west-2')
  #     region.name
  #     #=> "us-west-2"
  #
  # You can also enumerate all regions within a partition:
  #
  #     Aws::Partitions.partition('aws').regions.each do |region|
  #       puts region.name
  #     end
  #
  # Each {Region} object has a name and description.
  #
  #     us_west_2 = Aws::Partitions.partition('aws').region('us-west-2')
  #     us_west_2.name #=> "us-west-2"
  #     us_west_2.description #=> "US West (Oregon)"
  #     us_west_2.partition_name "aws"
  module Partitions
    VERSION = File.read(File.expand_path('../VERSION', __dir__)).strip

    class << self
      include Enumerable

      # @return [Enumerable<Partition>]
      def each(&)
        default_partition_list.each(&)
      end

      # Return the partition with the given name. A partition describes
      # the services and regions available in that partition.
      #
      #     aws = Aws::Partitions.partition('aws')
      #
      #     puts "Regions available in the aws partition:\n"
      #     aws.regions.each do |region|
      #       puts region.name
      #     end
      #
      # @param [String] name The name of the partition to return.
      # @return [Partition]
      # @raise [ArgumentError] Raises an `ArgumentError` if a partition is
      #   not found with the given name. The error message contains a list
      #   of valid partition names.
      def partition(name)
        default_partition_list.partition(name)
      end

      # Returns an array with every partitions. A partition describes
      # the services and regions available in that partition.
      #
      #     Aws::Partitions.partitions.each do |partition|
      #       puts "Regions available in #{partition.name}:\n"
      #       partition.regions.each do |region|
      #         puts region.name
      #       end
      #     end
      #
      # @return [Enumerable<Partition>] Returns an enumerable of all known partitions.
      def partitions
        default_partition_list
      end

      # Add new partitions to the list of known partitions.
      # @param [Hash] new_partitions
      def add(new_partitions)
        new_partitions['partitions'].each do |partition|
          default_partition_list.add_partition(build_partition(partition))
          defaults['partitions'] << partition
        end
      end

      # Removes all partitions.
      def clear
        default_partition_list.clear
        defaults['partitions'].clear
      end

      private

      def defaults
        @defaults ||= begin
          path = File.expand_path('../partitions.json', __dir__)
          defaults = JSON.parse(File.read(path), freeze: true)
          defaults.merge('partitions' => defaults['partitions'].dup)
        end
      end

      def default_partition_list
        @default_partition_list ||= build_partitions(defaults)
      end

      def build_partitions(data)
        partitions = PartitionList.new
        data['partitions'].each do |partition_data|
          partitions.add_partition(build_partition(partition_data))
        end
        partitions
      end

      def build_partition(partition_data)
        partition = Partition.new(
          id: partition_data['id'],
          dns_suffix: partition_data.dig('outputs', 'dnsSuffix'),
          dual_stack_dns_suffix: partition_data.dig('outputs', 'dualStackDnsSuffix'),
          implicit_global_region: partition_data.dig('outputs', 'implicitGlobalRegion'),
          supports_dual_stack: partition_data.dig('outputs', 'supportsDualStack'),
          supports_fips: partition_data.dig('outputs', 'supportsFIPS'),
          region_regex: Regexp.new(partition_data['regionRegex'])
        )
        build_regions(partition_data.fetch('regions', {}), partition)
        partition
      end

      def build_regions(regions, partition)
        regions.each do |name, region_data|
          partition.add_region(
            Region.new(
              name,
              description: region_data['description'],
              partition_name: partition.id
            )
          )
        end
      end
    end
  end
end
