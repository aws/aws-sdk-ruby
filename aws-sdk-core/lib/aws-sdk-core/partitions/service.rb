require 'set'

module Aws
  module Partitions
    class Service

      # @option options [required, String] :name
      # @option options [required, String] :partition_name
      # @option options [required, Set<String>] :region_name
      # @option options [required, Boolean] :regionalized
      # @option options [String] :partition_endpoint
      # @api private
      def initialize(options = {})
        @name = options[:name]
        @partition_name = options[:partition_name]
        @region_names = options[:region_names]
        @regionalized = options[:regionalized]
        @partition_endpoint = options[:partition_endpoint]
      end

      # @return [String] The name of this service. The name is the module
      #   name as used by the AWS SDK for Ruby.
      attr_reader :name

      # @return [String] The partition name, e.g "aws", "aws-cn", "aws-us-gov".
      attr_reader :partition_name

      # @return [Set<String>] The regions this service is available in.
      #   Regions are scoped to the partition.
      attr_reader :region_names

      # @return [String,nil] The global patition endpoint for this service.
      #   May be `nil`.
      attr_reader :partition_endpoint

      # Returns `false` if the service operates with a single global
      # endpoint for the current partition, returns `true` if the service
      # is available in mutliple regions.
      #
      # Some services have both a partition endpoint and regional endpoints.
      #
      # @return [Boolean]
      def regionalized?
        @regionalized
      end

      class << self

        # @api private
        def build(svc_id, service, partition)
          Service.new(
            name: Partitions.service_name(svc_id),
            partition_name: partition['partition'],
            region_names: region_names(service, partition),
            regionalized: service['isRegionalized'] != false,
            partition_endpoint: service['partitionEndpoint']
          )
        end

        private

        def region_names(service, partition)
          names = Set.new(partition['regions'].keys & service['endpoints'].keys)
          names - ["#{partition['partition']}-global"]
        end

      end
    end
  end
end
