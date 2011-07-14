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

require 'aws/model'
require 'aws/ec2/tagged_collection'
require 'aws/ec2/collection'
require 'aws/ec2/instance'
require 'aws/ec2/block_device_mappings'
require 'base64'
require 'uuidtools'

module AWS
  class EC2

    ##
    # Represents a collection of EC2 instances.  Typically you
    # should get an instance of this class by calling
    # {EC2#instances}.
    #
    # To run an instance:
    #
    #   ec2.instances.create(:image_id => "ami-8c1fece5")
    #
    # To get an instance by ID:
    #
    #   i = ec2.instances["i-12345678"]
    #   i.exists?
    #
    # To get a map of instance IDs to instance status:
    #
    #   ec2.instances.inject({}) { |m, i| m[i.id] = i.status; m }
    #   # => { "i-12345678" => :running, "i-87654321" => :shutting_down }
    #
    class InstanceCollection < Collection

      include TaggedCollection
      include BlockDeviceMappings

      ##
      # Runs one or more EC2 instances.
      #
      # @example Running a single instance
      #  i = ec2.instances.create(:image_id => "ami-8c1fece5")
      #  sleep 1 while i.status == :pending
      #
      # @example Running multiple instances with the same parameters
      #  instances =
      #    ec2.instances.create(:image_id => "ami-8c1fece5",
      #                         :count => 10)
      #  sleep 1 while instances.any? { |i| i.status == :pending }
      #
      # @example Specifying block device mappings
      #  ec2.instances.create(:image_id => "ami-8c1fece5",
      #                       :block_device_mappings => {
      #                         "/dev/sda2" => {
      #                           # 15 GiB
      #                           :volume_size => 15,
      #                           :delete_on_termination => true
      #                         }
      #                       })
      #
      # @return [Instance or Array] If a single instance is being created, this returns
      #   an instance of {EC2::Instance} to represent the newly
      #   created instance.  Otherwise it returns an array of
      #   EC2::Instance objects.
      #
      # @param [Hash] opts Options for new instance.  +:image_id+ is
      #   the only required option.
      #
      # @option opts :count How many instances to request.  By
      #   default one instance is requested.  You can specify this
      #   either as an integer or as a Range, to indicate the
      #   minimum and maximum number of instances to run.  Note that
      #   for a new account you can request at most 20 instances at
      #   once.
      #
      # @option opts [Hash] :block_device_mappings This must be a
      #   hash; the keys are device names to map, and the value for
      #   each entry determines how that device is mapped.  Valid
      #   values include:
      #
      #   * A string, which is interpreted as a virtual device name.
      #
      #   * The symbol :no_device, which overrides the default
      #     mapping for a device so that it is not mapped to anything.
      #
      #   * A hash with any of the following options.  One of
      #     +:snapshot+, +:snapshot_id+ or +:volume_size+ is
      #     required.
      #
      #     [:snapshot] A snapshot to use when creating the block
      #                 device.
      #
      #     [:snapshot_id] The ID of a snapshot to use when creating
      #                    the block device.
      #
      #     [:volume_size] The size of volume to create, in gigabytes.
      #
      #     [:delete_on_termination] Setting this to true causes EC2
      #                              to delete the volume when the
      #                              instance is terminated.
      #
      # @option opts [Boolean] :monitoring Setting this to true
      #   enables CloudWatch monitoring on the instances once they
      #   are started.
      #
      # @option opts [String] :availability_zone Specifies the
      #   availability zone where the instance should run.  Without
      #   this option, EC2 will choose an availability zone for you.
      #
      # @option opts [String] :image_id ID of the AMI you want to
      #   launch.
      #
      # @option opts [String] :key_name The name of the key pair to
      #   use.  Note: Launching public images without a key pair ID
      #   will leave them inaccessible.
      #
      # @option opts [Array] :security_groups The names of the
      #   security groups that will be used to determine network
      #   access rules for the instances.  You may pass instances of
      #   {SecurityGroup} as well.
      #
      # @option opts [String] :user_data Arbitrary user data.  You
      #   do not need to encode this value.
      #
      # @option opts [String] :instance_type The type of instance to
      #   launch, for example "m1.small".
      #
      # @option opts [String] :kernel_id The ID of the kernel with
      #   which to launch the instance.
      #
      # @option opts [String] :ramdisk_id The ID of the RAM disk to
      #   select. Some kernels require additional drivers at
      #   launch. Check the kernel requirements for information on
      #   whether you need to specify a RAM disk. To find kernel
      #   requirements, refer to the Resource Center and search for
      #   the kernel ID.
      #
      # @option opts [Boolean] :disable_api_termination Specifies
      #   whether you can terminate the instance using the EC2
      #   API. A value of true means you can't terminate the
      #   instance using the API (i.e., the instance is "locked"); a
      #   value of false means you can. If you set this to true, and
      #   you later want to terminate the instance, you must first
      #   enable API termination.  For example:
      #
      #     i = ec2.instances.create(:image_id => "ami-8c1fece5",
      #                              :disable_api_termination => true)
      #     i.api_termination_disabled?        # => true
      #     i.terminate                        # raises an exception
      #     i.api_termination_disabled = false
      #     i.terminate                        # terminates the instance
      #
      # @option opts [String] :instance_initiated_shutdown_behavior
      #   Determines whether the instance stops or terminates on
      #   instance-initiated shutdown.
      def create(opts = {})
        if image = opts.delete(:image)
          opts[:image_id] = image.id
        end

        if kernel = opts.delete(:kernel)
          opts[:kernel_id] = kernel.id
        end

        if ramdisk = opts.delete(:ramdisk)
          opts[:ramdisk_id] = ramdisk.id
        end

        if key_pair = opts.delete(:key_pair)
          opts[:key_name] = key_pair.name
        end

        opts = count_opts(opts).merge(opts)
        opts.delete(:count)

        opts[:user_data] = Base64.encode64(opts[:user_data]).strip if
          opts[:user_data]

        opts[:block_device_mappings] =
          translate_block_device_mappings(opts[:block_device_mappings]) if
          opts[:block_device_mappings]

        opts[:monitoring] = { :enabled => true } if
          opts[:monitoring_enabled]
        opts.delete(:monitoring_enabled)

        opts[:placement] = {
          :availability_zone => opts[:availability_zone].to_s
        } if opts[:availability_zone]
        opts.delete(:availability_zone)

        opts[:security_groups] = group_opts(opts[:security_groups]) if
          opts[:security_groups]

        opts[:client_token] = UUIDTools::UUID.timestamp_create.to_s

        resp = client.run_instances(opts)

        if opts[:min_count] == opts[:max_count] and
            opts[:min_count] == 1
          self[resp.instances_set.first.instance_id]
        else
          resp.instances_set.map do |i|
            self[i.instance_id]
          end
        end
      end
      alias_method :run, :create

      # @yield [Instance] Yields each instance in the collection.
      def each(&block)
        response = filtered_request(:describe_instances)
        response.reservation_set.each do |r|
          r.instances_set.each do |i|
            yield(Instance.new(i.instance_id, :config => config))
          end
        end
      end

      # @return [Instance] Returns an object representing the EC2 instance
      #   with the given ID.
      def [] id
        super
      end

      # @private
      protected
      def member_class
        Instance
      end

      # @private
      private
      def count_opts(opts)
        min = max = 1
        count = opts[:count]
        case count
        when Range
          min = count.begin
          max = (count.exclude_end? ? count.end-1 : count.end)
        when Integer
          min = max = count
        end
        { :min_count => min,
          :max_count => max }
      end

      # @private
      private
      def group_opts(groups)
        [groups].flatten.map do |g|
          case g
          when SecurityGroup then g.name
          when String        then g
          else
            raise ArgumentError.new("members of security_groups must be "+
                                    "strings or SecurityGroup objects")
          end
        end
      end

    end

  end
end
