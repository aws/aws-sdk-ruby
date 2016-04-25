module Aws
  module Partitions

    autoload :Partition, 'aws-sdk-core/partitions/partition'
    autoload :PartitionList, 'aws-sdk-core/partitions/partition_list'
    autoload :Region, 'aws-sdk-core/partitions/region'
    autoload :Service, 'aws-sdk-core/partitions/service'

    class << self

      # @param [Hash] new_partitions
      # @api private
      def add(new_partitions)
        new_partitions['partitions'].each do |partition|
          default_list.add_partition(Partition.build(partition))
          defaults['partitions'] << partition
        end
      end

      # @api private
      def clear
        default_list.clear
        defaults['partitions'].clear
      end

      # @return [Hash]
      # @api private
      def defaults
        @defaults ||= begin
          path = File.join(File.dirname(__FILE__), '..', '..', 'endpoints.json')
          Aws::Json.load_file(path)
        end
      end

      # @rdefaultseturn [PartitionList]
      # @api priviate
      def default_list
        @default_list ||= PartitionList.build(defaults)
      end

      # @return [Hash<String,String>] Returns a map of service module names
      #   to their id as used in the endpoints.json document.
      # @api private
      def service_ids
        @service_ids ||= begin
          services = "#{File.dirname(__FILE__)}/../../service-models.json"
          services = Aws::Json.load_file(services)
          services.inject({}) do |ids, (name, svc)|
            ids[name] = svc['endpoint'] #if svc['endpoint']
            ids
          end
        end
      end

    end
  end
end
