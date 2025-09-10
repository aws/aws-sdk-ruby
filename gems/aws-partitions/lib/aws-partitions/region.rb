# frozen_string_literal: true

module Aws
  module Partitions
    # Represents an AWS region in the partition metadata.
    class Region
      def initialize(name, options = {})
        @name = name
        @description = options[:description]
        @partition_name = options[:partition_name]
      end

      # @return [String] the region name, e.g., "us-west-2"
      attr_reader :name

      # @return [String] the region description, e.g., "US West (Oregon)"
      attr_reader :description

      # @return [String] the name of the partition this region belongs to, e.g., "aws"
      attr_reader :partition_name
    end
  end
end
