module Aws
  module Partitions

    autoload :Partition, 'aws-sdk-core/partitions/partition'
    autoload :PartitionList, 'aws-sdk-core/partitions/partition_list'
    autoload :Region, 'aws-sdk-core/partitions/region'
    autoload :Service, 'aws-sdk-core/partitions/service'

    class << self

      # @param [Hash] new_partitions
      # @api private
      def add_partitions(new_partitions)
        new_partitions['partitions'].each do |partition|
          default_list.add_partition(Partition.build(partition))
          defaults['partitions'] << partition
        end
      end

      # @api private
      def clear_partitions
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

      # @param [String] svc_id
      # @return [String] The service module name.
      # @api priviate
      def service_name(svc_id)
        if service_names.key?(svc_id)
          service_names[svc_id]
        else
          msg = "invalid service id #{svc_id.inspect}; valid service ids "
          msg << "include %s" % [service_names.keys.join(', ')]
          raise ArgumentError, msg
        end
      end

      # @return [Hash<String,String>] Returns a hash of service id keys
      #   and service module name values.
      # @api private
      def service_names
        @service_names ||= begin
          service_models = "#{File.dirname(__FILE__)}/../../service-models.json"
          service_models = Aws::Json.load_file(service_models)
          service_models.inject({}) do |names, (name, artifact)|
            svc_id = artifact.split('/').first
            # TODO : Remove this once endpoints.json has been corrected
            svc_id = 'data.iot' if svc_id == 'iot-data'
            names[svc_id] = name
            names
          end
        end
      end

    end
  end
end
