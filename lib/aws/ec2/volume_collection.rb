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
require 'aws/ec2/volume'

module AWS
  class EC2

    # Represents a collection of Amazon EBS volumes.  Typically you
    # should get an instance of this class by calling {EC2#volumes}.
    #
    # @example Create an empty 15GiB volume
    #  ec2.volumes.create(:size => 15,
    #                     :availability_zone => "us-east-1a")
    #
    # @example Get a volume by ID
    #  volume = ec2.volumes["vol-123"]
    #  volume.exists?
    #
    # @example Get a map of volume IDs to volume status
    #   ec2.volumes.inject({}) { |m, v| m[i.id] = v.status; m }
    #   # => { "vol-12345678" => :available, "vol-87654321" => :in_use }
    class VolumeCollection < Collection

      include TaggedCollection

      # @yield [Instance] Yields each volume in the collection.
      # @return [nil]
      def each(&block)
        resp = filtered_request(:describe_volumes)
        resp.volume_set.each do |v|
          volume = Volume.new(v.volume_id, :config => config)
          yield(volume)
        end
        nil
      end

      # Creates a new Amazon EBS volume that any Amazon EC2 instance
      # in the same Availability Zone can attach to. For more
      # information about Amazon EBS, go to the {Amazon Elastic
      # Compute Cloud User
      # Guide}[http://docs.amazonwebservices.com/AWSEC2/latest/UserGuide/index.html?using-ebs.html].
      #
      # @return [Volume] An object representing the new volume.
      #
      # @param [Hash] opts Options for creating the volume.
      #   +:availability_zone+ and one of +:size+, +:snapshot+, or
      #   +:snapshot_id+ is required.
      #
      # @option opts [Integer] :size The size of the volume, in
      #   GiBs.  Valid values: 1 - 1024.  If +:snapshot+ or
      #   +:snapshot_id+ is specified, this defaults to the size of
      #   the specified snapshot.
      #
      # @option opts [Snapshot] :snapshot The snapshot from which to
      #   create the new volume.
      #
      # @option opts [String] :snapshot_id The ID of the snapshot
      #   from which to create the new volume.
      #
      # @option opts [String, AvailabilityZone] :availability_zone
      #   The Availability Zone in which to create the new volume.
      #   To get a list of the availability zones you can use, see
      #   {EC2#availability_zones}.
      # @return [Volume]
      def create(opts = {})
        if snapshot = opts.delete(:snapshot)
          opts[:snapshot_id] = snapshot.id
        end
        resp = client.create_volume(opts)
        Volume.new(resp.volume_id, :config => config)
      end

      # @private
      protected
      def member_class
        Volume
      end

    end

  end
end
