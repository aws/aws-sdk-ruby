# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class RDS

    # @attr_reader [Integer] allocated_storage
    #
    # @attr_reader [String] availability_zone_name
    #
    # @attr_reader [String] db_instance_id
    #
    # @attr_reader [String] engine
    #
    # @attr_reader [String] engine_version
    #
    # @attr_reader [String] license_model
    #
    # @attr_reader [String] master_username
    #
    # @attr_reader [String] port
    #
    # @attr_reader [Integer] vpc_id
    #
    # @attr_reader [String] snapshot_type
    #
    # @attr_reader [String] status
    #
    # @attr_reader [Time] created_at
    #
    # @attr_reader [Time] instance_create_time
    #
    class DBSnapshot < Core::Resource

      # @param [String] db_snapshot_id
      # @param [Hash] options
      def initialize db_snapshot_id, options = {}
        @db_snapshot_identifier = db_snapshot_id
        super
      end

      # @return [String]
      attr_reader :db_snapshot_identifier

      alias_method :id, :db_snapshot_identifier

      alias_method :db_snapshot_id, :db_snapshot_identifier

      attribute :allocated_storage, :static => true, :alias => :size

      attribute :availability_zone_name,
        :from => :availability_zone,
        :static => true

      attribute :db_instance_id,
        :from => :db_instance_identifier,
        :static => true

      attribute :engine, :static => true

      attribute :engine_version, :static => true

      attribute :license_model, :static => true

      attribute :master_username, :static => true

      attribute :port, :static => true

      attribute :vpc_id, :static => true

      attribute :snapshot_type, :static => true, :alias => :type

      attribute :status, :alias => :db_snapshot_status

      attribute :created_at,
        :from => :snapshot_create_time,
        :static => true, :alias => :created_at

      attribute :instance_create_time, :static => true

      populates_from(:describe_db_snapshots) do |resp|
        resp.data[:db_snapshots].find{|j| j[:db_snapshot_identifier] == db_snapshot_identifier }
      end

      # Copies this database snapshot.
      # @param [String] db_instance_id
      # @return [nil]
      def copy db_instance_id
        options = {:source_db_snapshot_identifier => db_snapshot_identifier,
                   :target_db_snapshot_identifier => db_instance_id}
        client.copy_db_snapshot(options)
        nil
      end

      # Deletes this database snapshot.
      # @return [nil]
      def delete
        client.delete_db_snapshot(:db_snapshot_identifier => db_snapshot_identifier)
        nil
      end

      # Restores the database instance from this snapshot.
      # @param [String] db_instance_id
      # @see Client#restore_db_instance_from_db_snapshot
      def restore_instance db_instance_id, options = {}
        options[:db_instance_identifier] = db_instance_id
        options[:db_snapshot_identifier] = db_snapshot_identifier
        client.restore_db_instance_from_db_snapshot(options)
        nil
      end

      protected

      def resource_identifiers
        [[:db_snapshot_identifier, id]]
      end

      def get_resource attr = nil
        options = {}
        options[:db_snapshot_identifier] = db_snapshot_identifier
        client.describe_db_snapshots(options)
      end

    end
  end
end
