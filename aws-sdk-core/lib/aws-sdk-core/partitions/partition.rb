module Aws
  module Partitions
    class Partition

      # @option options [required, String] :name
      # @option options [required, Hash<String,Region>] :regions
      # @option options [required, Hash<String,Service>] :services
      # @api private
      def initialize(options = {})
        @name = options[:name]
        @regions = options[:regions]
        @services = options[:services]
      end

      # @return [String] The partition name, e.g. "aws", "aws-cn", "aws-us-gov".
      def name
        @name
      end

      # @param [String] region_name The name of the region, e.g. "us-east-1".
      # @return [Region]
      # @raise [ArgumentError] Raises `ArgumentError` for unknown region name.
      def region(region_name)
        if @regions.key?(region_name)
          @regions[region_name]
        else
          msg = "invalid region name #{region_name.inspect}; valid region "
          msg << "names include %s" % [@regions.keys.join(', ')]
          raise ArgumentError, msg
        end
      end

      # @return [Array<Region>]
      def regions
        @regions.values
      end

      # @param [String] service_name The service module name.
      # @return [Service]
      # @raise [ArgumentError] Raises `ArgumentError` for unknown service name.
      def service(service_name)
        if @services.key?(service_name)
          @services[service_name]
        else
          msg = "invalid service name #{service_name.inspect}; valid service "
          msg << "names include %s" % [@services.keys.join(', ')]
          raise ArgumentError, msg
        end
      end

      # @return [Array<Service>]
      def services
        @services.values
      end

      class << self

        def build(partition)
          Partition.new(
            name: partition['partition'],
            regions: build_regions(partition),
            services: build_services(partition),
          )
        end

        private

        # @param [Hash] partition
        # @return [Hash<String,Region>]
        def build_regions(partition)
          partition['regions'].inject({}) do |regions, (region_name, region)|
            regions[region_name] = Region.build(region_name, region, partition)
            regions
          end
        end

        # @param [Hash] partition
        # @return [Hash<String,Service>]
        def build_services(partition)
          partition['services'].inject({}) do |services, (svc_id, svc_data)|
            if Partitions.service_names.key?(svc_id)
              service = Service.build(svc_id, svc_data, partition)
              services[service.name] = service
            end
            services
          end
        end

      end
    end
  end
end
