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
require 'aws/ec2/has_permissions'
require 'aws/ec2/instance_collection'

module AWS
  class EC2

    # Represents an Amazon Machine Image (AMI).
    #
    # @attr [String] description A description of the image.
    #
    # @attr_reader [String] location The location of the AMI.
    #
    # @attr_reader [Symbol] state Current state of the AMI. If the
    #    state is +:available+, the image is successfully registered
    #    and available for launching.  Valid values:
    #
    #    * +:available+
    #    * +:pending+
    #    * +:failed+
    #
    # @attr_reader [String] owner_id AWS account ID of the image
    #   owner.
    #
    # @attr_reader [Symbol] architecture The architecture of the
    #   image (e.g. +:i386+).
    #
    # @attr_reader [Symbol] type The type of image.  Valid values:
    #
    #   * +:machine+
    #   * +:kernel+
    #   * +:ramdisk+
    #
    # @attr_reader [String] kernel_id The kernel ID associated with
    #   the image, if any. Only applicable for machine images.
    #
    # @attr_reader [String] ramdisk_id The RAM disk ID associated
    #   with the image, if any. Only applicable for machine images.
    #
    # @attr_reader [String] platform Value is +windows+ for Windows
    #   AMIs; otherwise blank.
    #
    # @attr_reader [Object] state_reason The reason for the image's
    #   most recent state change.  The return value is an object with
    #   the following methods:
    #
    #   [code] Reason code for the state change.
    #
    #   [message] A textual description of the state change.
    #
    # @attr_reader [String] owner_alias The AWS account alias (e.g.,
    #   +"amazon"+) or AWS account ID that owns the AMI.
    #
    # @attr_reader [String] name The name of the AMI that was
    #   provided during image creation.
    #
    # @attr [String] description A free-form description of the AMI.
    #   May contain up to 255 characters.
    #
    # @attr_reader [Symbol] root_device_type The root device type
    #   used by the AMI. Possible values:
    #
    #   * +:ebs+
    #   * +:instance_store+
    #
    # @attr_reader [String] root_device_name The root device name
    #   (e.g., +"/dev/sda1"+, or +"xvda"+).
    #
    # @attr_reader [Hash] block_device_mappings A hash of block
    #   device mappings for the image.  In each entry, the key is
    #   the device name (e.g. +"/dev/sda1"+) and the value is an
    #   object with the following methods that return information
    #   about the block device:
    #
    #   [snapshot_id] The ID of the snapshot that will be used to
    #                 create this device (may be nil).
    #
    #   [volume_size] The size of the volume, in GiBs.
    #
    #   [delete_on_termination] True if the Amazon EBS volume is
    #                           deleted on instance termination.
    #
    # @attr_reader [Symbol] virtualization_type The type of
    #   virtualization of the AMI.  Possible values:
    #
    #   * +:paravirtual+
    #   * +:hvm+
    #
    # @attr_reader [Symbol] hypervisor The image's hypervisor type.
    #   Possible values:
    #
    #   * +:ovm+
    #   * +:xen+
    class Image < Resource

      include TaggedItem
      include HasPermissions
      alias_method :launch_permissions, :permissions

      # The ID of the AMI.
      attr_reader :id

      # @private
      def initialize(id, opts = {})
        @id = id
        super(opts)
      end

      # Deregisters this AMI. Once deregistered, the AMI cannot be
      # used to launch new instances.
      def deregister
        client.deregister_image(:image_id => id)
      end
      alias_method :delete, :deregister

      # Runs a single instance of this image.
      #
      # @param [Hash] opts Additional options for running the
      #   instance.  See {InstanceCollection#create} for a full list
      #   of supported options.
      #
      # @return [Instance] An object representing the new instance.
      def run_instance(opts = {})
        InstanceCollection.new(:config => config).
          create(opts.merge(:image => self))
      end

      # Runs multiple instances of this image.
      #
      # @param count How many instances to request.  You can specify
      #   this either as an integer or as a Range, to indicate the
      #   minimum and maximum number of instances to run.  Note that
      #   for a new account you can request at most 20 instances at
      #   a time.
      #
      # @param [Hash] opts Additional options for running the
      #   instance.  See {InstanceCollection#create} for a full list
      #   of supported options.
      #
      # @return [Array] An array containing an {Instance} object for
      #   each instance that was run.
      def run_instances(count, opts = {})
        InstanceCollection.new(:config => config).
          create(opts.merge(:image => self,
                            :count => count))
      end

      # @return [Boolean] +true+ if the AMI exists (is returned by
      # the DescribeImages action).
      def exists?
        resp = client.describe_images(:filters =>
                                      [{ :name => "image-id",
                                         :values => [id] }]) and
          !resp.images_set.empty?
      end

      mutable_attribute :description
      # use describe_images to get it, so it will work with public images
      describe_call_attribute :description

      describe_call_attribute :name, :memoize => true
      describe_call_attribute(:image_location,
                              :getter => :location,
                              :memoize => true)
      describe_call_attribute :image_state, :getter => :state, :to_sym => true
      describe_call_attribute(:image_owner_id,
                              :getter => :owner_id,
                              :memoize => true)
      describe_call_attribute(:image_owner_alias,
                              :getter => :owner_alias,
                              :memoize => true)
      describe_call_attribute(:architecture,
                              :to_sym => true,
                              :memoize => true)
      describe_call_attribute(:image_type,
                              :getter => :type,
                              :to_sym => true,
                              :memoize => true)

      describe_call_attribute :kernel_id, :memoize => true

      # @return [Image] The kernel associated with the image, if
      #   any. Only applicable for machine images.
      def kernel
        if id = kernel_id
          Image.new(id, :config => config)
        end
      end

      describe_call_attribute :ramdisk_id, :memoize => true

      # @return [Image] The RAM disk associated with the image, if
      #   any. Only applicable for machine images.
      def ramdisk
        if id = ramdisk_id
          Image.new(id, :config => config)
        end
      end

      describe_call_attribute :platform, :memoize => true
      describe_call_attribute :state_reason
      describe_call_attribute(:root_device_type,
                              :to_sym => true,
                              :memoize => true)
      describe_call_attribute :root_device_name
      describe_call_attribute :virtualization_type, :to_sym => true
      describe_call_attribute :hypervisor, :to_sym => true
      describe_call_attribute(:block_device_mapping,
                              :getter => :block_device_mappings) do
        translate_output do |mappings|
          (mappings || []).inject({}) do |h, mapping|
            h[mapping.device_name] = mapping.ebs
            h
          end
        end
      end

      # @private
      def __permissions_attribute__
        "launchPermission"
      end

      protected
      def find_in_response(resp)
        resp.image_index[id]
      end

    end

  end
end
