# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'aws/ec2/resource'
require 'aws/ec2/has_permissions'
require 'aws/ec2/tagged_item'

module AWS
  class EC2

    # Represents an Amazon EBS snapshot.
    #
    # @example Taking a snapshot from a volume
    #  snapshot = volume.create_snapshot("Database Backup 12/21/2010")
    #  sleep 1 until [:completed, :error].include?(snapshot.status)
    #
    # @example Managing snapshot permissions
    #  unless snapshot.public?
    #    snapshot.permissions.add("12345678901")
    #  end
    #
    # @attr_reader [String] volume_id The ID of the volume this
    #   snapshot was created from.
    #
    # @attr_reader [Symbol] status The status of the snapshot.
    #   Possible values:
    #
    #   * +:pending+
    #   * +:completed+
    #   * +:error+
    #
    # @attr_reader [Time] start_time The time at which the snapshot
    #   was initiated.
    #
    # @attr_reader [Integer] progress The progress of the snapshot
    #   as a percentage.
    #
    # @attr_reader [String] owner_id The AWS account ID of the
    #   snapshot owner.
    #
    # @attr_reader [Integer] volume_size The size of the volume from
    #   which the snapshot was created.
    #
    # @attr_reader [String] description The description of the
    #   snapshot provided at snapshot initiation.
    class Snapshot < Resource

      include HasPermissions
      include TaggedItem
      alias_method :create_volume_permissions, :permissions

      # The snapshot ID
      attr_reader :id

      # @private
      def initialize(id, opts = {})
        @id = id
        super(opts)
      end

      # Deletes the snapshot.
      def delete
        client.delete_snapshot(:snapshot_id => id)
      end

      # Creates a volume from the snapshot.
      #
      # @param [AvailabilityZone or String] availability_zone The
      #   Availability Zone in which to create the new volume. See
      #   {EC2#availability_zones} for how to get a list of
      #   availability zones.
      #
      # @param [Hash] opts Additional options for creating the volume
      #
      # @option opts [Integer] size The desired size (in gigabytes)
      #   for the volume.
      #
      # @return [Volume] The newly created volume
      def create_volume(availability_zone, opts = {})
        VolumeCollection.new(:config => config).
          create(opts.merge(:snapshot => self,
                            :availability_zone => availability_zone))
      end

      # @return [Boolean] True if the snapshot exists.
      def exists?
        resp =
          client.describe_snapshots(:filters => [{ :name => 'snapshot-id',
                                                   :values => [id] }]) and
          !resp.snapshot_set.empty?
      end

      describe_call_attribute :volume_id

      # @return [Volume] The volume this snapshot was created from.
      def volume
        Volume.new(volume_id, :config => config) if volume_id
      end

      describe_call_attribute :status, :to_sym => true
      describe_call_attribute :start_time
      describe_call_attribute :progress do
        translate_output { |value| value.to_i if value }
      end
      describe_call_attribute :owner_id
      describe_call_attribute :volume_size
      describe_call_attribute :owner_alias
      describe_call_attribute :description

      # @private
      def __permissions_attribute__
        "createVolumePermission"
      end

      populate_from :create_snapshot do |resp|
        attributes_from_response_object(resp) if
          resp.snapshot_id == id
      end

      protected
      def find_in_response(resp)
        resp.snapshot_index[id]
      end

    end

  end
end
