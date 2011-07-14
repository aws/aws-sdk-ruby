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

require 'aws/ec2/collection'
require 'aws/ec2/tagged_collection'
require 'aws/ec2/snapshot'

module AWS
  class EC2

    # Represents a collection of Amazon EBS snapshots.  Typically
    # you should get an instance of this class by calling
    # {EC2#snapshots}.
    #
    # @example Create a snapshot from a volume
    #  ec2.snapshots.create(:volume => ec2.volumes["vol-123"],
    #                       :description => "my snapshot")
    #  # or:
    #  ec2.volumes["vol-123"].create_snapshot("my snapshot")
    #
    # @example Get a snapshot by ID
    #  snapshot = ec2.snapshots["vol-123"]
    #  snapshot.exists?
    #
    # @example Get a map of snapshot IDs to snapshot status
    #   ec2.snapshots.inject({}) { |m, s| m[i.id] = s.status; m }
    #   # => { "snap-12345678" => :pending, "snap-87654321" => :completed }
    class SnapshotCollection < Collection

      include TaggedCollection

      # @yield [Instance] Yields each volume in the collection.
      # @return [nil]
      def each(&block)
        resp = filtered_request(:describe_snapshots)
        resp.snapshot_set.each do |v|
          snapshot = Snapshot.new(v.snapshot_id, :config => config)
          yield(snapshot)
        end
        nil
      end

      # Creates a snapshot of an Amazon EBS volume and stores it in
      # Amazon S3. You can use snapshots for backups, to make
      # identical copies of instance devices, and to save data
      # before shutting down an instance. For more information about
      # Amazon EBS, go to the {Amazon Elastic Compute Cloud User
      # Guide}[http://docs.amazonwebservices.com/AWSEC2/latest/UserGuide/index.html?using-ebs.html].
      #
      # @return [Snapshot] An object representing the new snapshot.
      #
      # @param [Hash] opts Options for creating the snapshot.
      #   Either +:volume+ or +:volume_id+ is required.
      #
      # @param opts [Volume] :volume The Amazon EBS volume of which
      #   to take a snapshot.
      #
      # @param opts [String] :volume_id The ID of the Amazon EBS
      #   volume of which to take a snapshot.
      #
      # @param opts [String] :description An optional description of
      #   the snapshot.  May contain up to 255 characters.
      def create opts = {}
        if volume = opts.delete(:volume)
          opts[:volume_id] = volume.id
        end
        resp = client.create_snapshot(opts)
        Snapshot.new(resp.snapshot_id, :config => config)
      end

      # @private
      protected
      def member_class
        Snapshot
      end

    end

  end
end
