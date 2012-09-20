require 'date'
require 'time'

module AWS
  class RDS
    class DBSnapshotCollection

      include Core::Collection::WithLimitAndNextToken

      # @private
      def initialize options = {}
        @filters = options[:filters] || {}
        super
      end

      # @param [String] db_snapshot_id
      # @return [DBSnapshot] Returns a {DBSnapshot} with the given ID.
      def [] db_snapshot_id
        DBSnapshot.new(db_snapshot_id, :config => config)
      end

      def db_instance db_instance_id
        filter(:db_instance_identifier, db_instance_id)
      end

      def type snapshot_type
        filter(:snapshot_type, snapshot_type)
      end

      # @param [String,Symbol] name
      # @param [Mixed] value
      # @return [DBSnapshotCollection]
      def filter name, value
        options = {}
        options[:filters] = @filters.merge(name.to_s.to_sym => value)
        options[:config] = config
        DBSnapshotCollection.new(options)
      end

      protected

      def _each_item marker, max_records, options = {}, &block

        options = @filters.merge(options)
        options[:marker] = marker if marker
        options[:max_records] = [[20,max_records].max,100].min if max_records

        response = client.describe_db_snapshots(@filters.merge(options))
        response.data[:db_snapshots].each do |details|

          db_snapshot = DBSnapshot.new_from(
              :describe_db_snapshots,
              details,
              details[:db_snapshot_identifier],
              :config => config)

          yield(db_snapshot)

        end

        response.data[:marker]
      end

    end
  end
end
