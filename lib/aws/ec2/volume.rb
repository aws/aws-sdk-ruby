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
require 'aws/ec2/tagged_item'
require 'aws/ec2/availability_zone'
require 'aws/ec2/attachment'
require 'aws/ec2/attachment_collection'

module AWS
  class EC2

    # Represents an Amazon EBS volume.
    #
    # @example Create an empty 15GiB volume and attach it to an instance
    #  volume = ec2.volumes.create(:size => 15,
    #                              :availability_zone => "us-east-1a")
    #  attachment = volume.attach_to(ec2.instances["i-123"], "/dev/sdf")
    #  sleep 1 until attachment.status != :attaching
    #
    # @example Remove all attachments from a volume and then delete it
    #  volume.attachments.each do |attachment|
    #    attachment.delete(:force => true)
    #  end
    #  sleep 1 until volume.status == :available
    #  volume.delete
    #
    # @attr_reader [Symbol] status The status of the volume.
    #   Possible values:
    #
    #   * +:creating+
    #   * +:available+
    #   * +:in_use+
    #   * +:deleting+
    #   * +:deleted+
    #   * +:error+
    #
    # @attr_reader [Integer] size The size of the volume in
    #   gigabytes.
    #
    # @attr_reader [AvailabilityZone] availability_zone Availability
    #   Zone in which the volume was created.
    #
    # @attr_reader [Time] create_time The time at which the volume
    #   was created.
    class Volume < Resource

      include TaggedItem

      attr_reader :id

      # @private
      def initialize(id, opts = {})
        @id = id
        super(opts)
      end

      # Deletes the volume.
      def delete
        client.delete_volume(:volume_id => id)
      end

      # @return [Snapshot] A new snapshot created from the volume.
      #
      # @param [String] description An optional description of the
      #   snapshot.  May be up to 255 characters in length.
      def create_snapshot(description = nil)
        opts = { :volume => self }
        opts[:description] = description if description
        SnapshotCollection.new(:config => config).
          create(opts)
      end

      # Attaches the volume to an instance.
      #
      # @param [Instance] instance The instance to which the volume
      #   attaches. The volume and instance must be within the same
      #   Availability Zone and the instance must be running.
      #
      # @param [String] device How the device is exposed to the
      #   instance (e.g., /dev/sdh, or xvdh).
      #
      # @return [Attachment] An object representing the attachment,
      #   which you can use to query the attachment status.
      def attach_to(instance, device)
        resp = client.attach_volume(:volume_id => id,
                                    :instance_id => instance.id,
                                    :device => device)
        Attachment.new(self,
                       Instance.new(resp.instance_id),
                       resp.device,
                       :config => config)
      end
      alias_method :attach, :attach_to

      # Detaches the volume from an instance.
      #
      # @param [Instance] instance The instance to detach from.
      #
      # @param [String] device The device name.
      #
      # @param [Hash] opts Additional options for detaching the
      #   volume.
      #
      # @option opts [Boolean] :force Forces detachment if the
      #   previous detachment attempt did not occur cleanly (logging
      #   into an instance, unmounting the volume, and detaching
      #   normally). This option can lead to data loss or a
      #   corrupted file system. Use this option only as a last
      #   resort to detach a volume from a failed instance. The
      #   instance will not have an opportunity to flush file system
      #   caches or file system metadata. If you use this option,
      #   you must perform file system check and repair procedures.
      def detach_from(instance, device, opts = {})
        a = Attachment.new(self,
                           Instance.new(instance.id),
                           device,
                           :config => config)
        a.delete
        a
      end

      # @return [AttachmentCollection] The collection of attachments
      #   that involve this volume.
      def attachments
        AttachmentCollection.new(self, :config => config)
      end

      # @return [Boolean] True if the volume exists.
      def exists?
        resp =
          client.describe_volumes(:filters => [{ :name => 'volume-id',
                                                 :values => [id] }]) and
          resp.volume_index.key?(id)
      end

      describe_call_attribute :status, :to_sym => true
      alias_method :state, :status

      describe_call_attribute :snapshot_id

      # @return [Snapshot] Snapshot from which the volume was created
      #   (may be nil).
      def snapshot;
        if snapshot_id = self.snapshot_id
          Snapshot.new(snapshot_id, :config => config)
        end
      end

      describe_call_attribute :size do
        translate_output { |value| value.to_i if value }
      end

      describe_call_attribute :availability_zone, :getter => :availability_zone_name

      def availability_zone
        if name = availability_zone_name
          AvailabilityZone.new(name, :config => config)
        end
      end

      describe_call_attribute :create_time

      describe_call_attribute :attachment_set

      populate_from :create_volume do |resp|
        attributes_from_response_object(resp) if
          resp.volume_id == id
      end

      # @private
      protected
      def find_in_response(resp)
        resp.volume_index[id]
      end

    end

  end
end
