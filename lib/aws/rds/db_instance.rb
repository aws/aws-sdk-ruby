module AWS
  class RDS
    class DBInstance < Core::Resource

      # @param [String] job_flow_id
      # @param [Hash] options
      # @private
      def initialize db_instance_id, options = {}
        @db_instance_identifier = db_instance_id
        super
      end

      attr_reader :db_instance_identifier

      alias_method :id, :db_instance_identifier

      attribute :allocated_storage, :static => true
      alias_method :size, :allocated_storage

      attribute :availability_zone, :static => true
      attribute :backup_retention_period, :static => true
      attribute :character_set_name, :static => true
      attribute :db_instance_class, :static => true
      attribute :db_name, :static => true
      attribute :engine, :static => true
      attribute :engine_version, :static => true
      attribute :master_username, :static => true
      attribute :multi_az, :static => true
      attribute :preferred_backup_window, :static => true
      attribute :preferred_maintenance_window, :static => true
      attribute :read_replica_db_instance_identifiers, :static => true
      attribute :read_replica_source_db_instance_identifier, :static => true

      attribute :db_instance_status
      alias_method :status, :db_instance_status

      attribute :endpoint_address,
                :from => [:endpoint, :address], :static => true
      attribute :endpoint_port,
                :from => [:endpoint, :port], :static => true

      attribute :creation_date_time,
                :from => [:instance_create_time],
                :static => true,
                :alias => :created_at

      attribute :latest_restorable_time

      populates_from(:describe_db_instances) do |resp|
        resp.data[:db_instances].find{|j| j[:db_instance_identifier] == db_instance_identifier }
      end

      def reboot options={}
        options[:db_instance_identifier] = db_instance_identifier
        client.reboot_db_instance(options)
        nil
      end

      def delete options={}
        options[:db_instance_identifier] = db_instance_identifier
        client.delete_db_instance(options)
        nil
      end

      protected

      def resource_identifiers
        [[:db_instance_identifier, id]]
      end

      def get_resource attr = nil
        client.describe_db_instances(:db_instance_identifier => db_instance_identifier)
      end

    end
  end
end
