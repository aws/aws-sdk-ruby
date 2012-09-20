module AWS
  class RDS
    class DBSnapshot < Core::Resource

      # @param [String] job_flow_id
      # @param [Hash] options
      # @private
      def initialize db_snapshot_id, options = {}
        @db_snapshot_identifier = db_snapshot_id
        super
      end

      attr_reader :db_snapshot_identifier

      alias_method :id, :db_snapshot_identifier

      attribute :allocated_storage, :static => true
      alias_method :size, :allocated_storage

      attribute :availability_zone, :static => true
      attribute :db_instance_id,
                :from => [:db_instance_identifier], :static => true
      attribute :engine, :static => true
      attribute :engine_version, :static => true
      attribute :license_model, :static => true
      attribute :master_username, :static => true
      attribute :port, :static => true
      attribute :vpc_id, :static => true

      attribute :snapshot_type, :static => true
      alias_method :type, :snapshot_type

      attribute :status
      alias_method :db_snapshot_status, :status

      attribute :created_at,
                :from => [:snapshot_create_time],
                :static => true,
                :alias => :created_at

      attribute :instance_create_time, :static => true

      populates_from(:describe_db_snapshots) do |resp|
        resp.data[:db_snapshots].find{|j| j[:db_snapshot_identifier] == db_snapshot_identifier }
      end

      def copy name
        options = {:source_db_snapshot_identifier => db_snapshot_identifier,
                   :target_db_snapshot_identifier => name}
        client.copy_db_snapshot(options)
        nil
      end

      def delete
        client.delete_db_snapshot(:db_snapshot_identifier => db_snapshot_identifier)
        nil
      end

      def restore_instance name, options={}
        options[:db_snapshot_identifier] = db_snapshot_identifier
        options[:db_instance_identifier] = name
        client.restore_db_instance_from_db_snapshot(options)
        nil
      end

      protected

      def resource_identifiers
        [[:db_snapshot_identifier, id]]
      end

      def get_resource attr = nil
        client.describe_db_snapshots(:db_snapshot_identifier => db_snapshot_identifier)
      end


    end
  end
end
