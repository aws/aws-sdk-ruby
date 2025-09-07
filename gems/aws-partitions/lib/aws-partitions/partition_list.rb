# frozen_string_literal: true

module Aws
  module Partitions
    # A collection of {Partition} objects.
    class PartitionList
      include Enumerable

      def initialize
        @partitions = {}
      end

      # @return [Enumerator<Partition>]
      def each(&)
        @partitions.each_value(&)
      end

      # @param [String] partition_name
      # @return [Partition]
      def partition(partition_name)
        if @partitions.key?(partition_name)
          @partitions[partition_name]
        else
          msg = "invalid partition name #{partition_name.inspect}; valid " \
                "partition names include #{@partitions.keys.join(', ')}"
          raise ArgumentError, msg
        end
      end

      # @return [Array<Partition>]
      def partitions
        @partitions.values
      end

      # @param [Partition] partition
      def add_partition(partition)
        raise ArgumentError, "expected Partition, got #{partition.class}" unless partition.is_a?(Partition)

        @partitions[partition.id] = partition
      end

      # Removes all partitions.
      def clear
        @partitions = {}
      end
    end
  end
end
