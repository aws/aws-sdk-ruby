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

require 'aws/inflection'
require 'aws/ec2/tagged_item'
require 'aws/model'
require 'aws/cacheable'
require 'aws/ec2/resource'
require 'aws/ec2/key_pair'
require 'aws/ec2/image'

module AWS
  class EC2

    # Represents an EC2 instance.
    #
    # @attr [String] user_data Arbitrary metadata that is available
    #   to the instance while it is running.  This interface handles
    #   the details of encoding the user data for transmission; you
    #   should set the user data exactly as you want it to be made
    #   available to the instance.
    #
    #   The instance must be in a stopped state to change user data;
    #   for example:
    #
    #    i.user_data             # => "HELLO"
    #    i.status                # => :running
    #    i.user_data = "GOODBYE" # raises an exception
    #    i.stop; sleep 1 until i.status == :stopped
    #    i.user_data = "GOODBYE" # => "GOODBYE"
    #
    # @attr [String] instance_type The instance type,
    #   e.g. "m1.small".  The instance must be in a stopped state to
    #   change the instance type.
    #
    # @attr [Boolean] api_termination_disabled True if the instance
    #   cannot be terminated using the {#terminate} method.  This
    #   attribute can be changed at any time.
    #
    # @attr [String] instance_initiated_shutdown_behavior Valid
    #   values are:
    #
    #   ["stop"] When the instance shuts down, it will go into a
    #            "stopped" state.
    #
    #   ["terminate"] When the instance shuts down, it will be
    #                 terminated.
    #
    # @attr_reader [String] image_id Image ID of the AMI used to
    #   launch the instance.
    #
    # @attr_reader [String] key_name The name of the key pair with
    #   which this instance was associated at launch.
    #
    # @attr [String] kernel_id The ID of the kernel that the image
    #   currently uses.  The instance must be in a stopped state to
    #   change this attribute.
    #
    # @attr [String] ramdisk_id The ID of the RAM disk that the
    #   image currently uses.  The instance must be in a stopped
    #   state to change this attribute.
    #
    # @attr_reader [Symbol] root_device_type The root device type
    #   used by the AMI. The AMI can use an Amazon EBS or instance
    #   store root device.  Valid values:
    #
    #   * +:ebs+
    #   * +:instance_store+
    #
    # @attr_reader [String] root_device_name The name of the root
    #   device.
    #
    # @attr_reader [String] private_dns_name The DNS name of the
    #   instance within the EC2 network.
    #
    # @attr_reader [String] dns_name The DNS name of the instance on
    #   the internet.
    #
    # @attr_reader [Integer] ami_launch_index The AMI launch index,
    #   which can be used to find this instance within the launch
    #   group.
    #
    # @attr_reader [String] private_ip_address The private IP
    #   address assigned to the instance.
    #
    # @attr_reader [String] ip_address The IP address of the
    #   instance.
    #
    # @attr_reader [Symbol] architecture The architecture of the
    #   image.
    #
    # @attr_reader [Symbol] virtualization_type The instance's
    #   virtualization type.  Valid values:
    #
    #   * +:paravirtual+
    #   * +:hvm+
    #
    # @attr_reader [String] reservation_id The ID of the reservation
    #   in which this instance was launched.
    #
    # @attr_reader [String] requester_id ID of the requester that
    #   launched the instance on your behalf (e.g., AWS Management
    #   Console, Auto Scaling).
    #
    # @attr_reader [String] owner_id ID of the AWS account that owns
    #   the reservation in which the instance was launched.
    #
    # @attr_reader [Symbol] monitoring The status of CloudWatch
    #   monitoring for the instance.  Valid values:
    #
    #   * +:enabled+
    #   * +:disabled+
    #   * +:pending+
    #
    # @attr_reader [String] state_transition_reason A string
    #   describing the reason for the last state transition.
    #
    # @attr_reader [Time] launch_time The time at which the instance
    #   was launched.
    #
    # @attr_reader [String] platform A string describing the
    #   platform of the image (e.g. "windows").
    #
    # @attr_reader [Symbol] hypervisor The instance's hypervisor
    #   type.  Valid values:
    #
    #   * +:ovm+
    #   * +:xen+
    #
    # @attr_reader [String] client_token Idempotency token you
    #   provided when you launched the instance.
    class Instance < Resource

      include TaggedItem

      # Creates an object that represents the instance with the
      # given ID.  It's usually easier to get an instance of this
      # class by calling {InstanceCollection#[]} or
      # {InstanceCollection#each}.
      def initialize(instance_id, opts = {})
        super
        @id = instance_id
        @reservation_attributes = {}
      end

      # @return [String] Returns the instance id.
      attr_reader :id

      # @return [Boolean] True if the instance exists according to
      #   EC2.
      def exists?
        client.describe_instances(:filters =>
                                  [{
                                     :name => "instance-id",
                                     :values => [id]
                                   }]).instance_index.key?(id)
      end

      # @private
      def self.instance_action(name)
        define_method(name) do
          client.send("#{name}_instances", :instance_ids => [id])
          nil
        end
      end

      # Terminates the instance.
      # @return [nil]
      def terminate; end
      instance_action :terminate
      alias_method :delete, :terminate

      # Reboots the instance.
      # @return [nil]
      def reboot; end
      instance_action :reboot

      # Starts the instance, assuming it is in a stopped state.
      # @see stop
      # @return [nil]
      def start; end
      instance_action :start

      # Stops the instance, eventually putting it into a stopped state.
      # @return [nil]
      def stop; end
      instance_action :stop

      describe_call_attribute :private_dns_name
      describe_call_attribute :dns_name
      alias_method :public_dns_name, :dns_name
      describe_call_attribute :ami_launch_index

      describe_call_attribute :monitoring do
        translate_output { |v| v.state.to_sym if v }
      end

      # @return true if CloudWatch monitoring is enabled for this
      #   instance.
      def monitoring_enabled?
        monitoring == :enabled
      end

      # Enables or disables monitoring for this instance.
      def monitoring_enabled=(value)
        if value
          client.monitor_instances(:instance_ids => [id])
          true
        else
          client.unmonitor_instances(:instance_ids => [id])
          false
        end
      end

      # @return [Array] A list of security groups
      #   the instance is in.  Each member is an instance of
      #   {SecurityGroup}.
      def security_groups
        group_set
      end
      describe_call_attribute :group_set do
        translate_output do |groups|
          (groups || []).map do |g|
            SecurityGroup.new(g.group_id,
                              :name => g.group_name,
                              :config => config)
          end
        end
      end
      alias_method :groups, :security_groups

      describe_call_attribute :private_ip_address
      describe_call_attribute :ip_address
      alias_method :public_ip_address, :ip_address
      describe_call_attribute :architecture, :to_sym => true
      describe_call_attribute :root_device_type, :to_sym => true
      describe_call_attribute :instance_lifecycle, :to_sym => true

      # @return [Boolean] true if the instance is a Spot instance.
      def spot_instance?
        instance_lifecycle == :spot
      end

      describe_call_attribute :virtualization_type, :to_sym => true
      describe_call_attribute :hypervisor, :to_sym => true
      describe_call_attribute :placement

      # @return [String] The availability zone where the instance is
      #   running.
      def availability_zone
        if p = placement
          p.availability_zone
        end
      end

      describe_call_attribute :reason, :getter => :state_transition_reason

      describe_call_attribute :launch_time
      describe_call_attribute :platform
      describe_call_attribute :client_token
      describe_call_attribute :image_id

      # @return [Image] The AMI used to launch the instance.
      def image
        Image.new(image_id, :config => config)
      end

      describe_call_attribute :key_name

      # @return [KeyPair] The key pair with which this instance was
      #   associated at launch.
      def key_pair
        KeyPair.new(key_name, :config => config) if key_name
      end

      # Creates an AMI from this instance.
      #
      # @param [String] name A name for the new image you're
      #   creating.  Constraints: 3-128 alphanumeric characters,
      #   parenthesis (()), commas (,), slashes (/), dashes (-), or
      #   underscores(_)
      #
      # @param [Hash] options Additional options for creating the
      #   image.
      #
      # @option options [String] :description A description of the
      #   new image.
      #
      # @option options [Boolean] :no_reboot By default this
      #   option is set to +false+, which means Amazon EC2
      #   attempts to cleanly shut down the instance before image
      #   creation and reboots the instance afterwards. When the
      #   option is set to +true+, Amazon EC2 does not shut down
      #   the instance before creating the image. When this option
      #   is used, file system integrity on the created image cannot
      #   be guaranteed.
      #
      # @return [Image] The newly created image.
      def create_image(name, options = {})
        ImageCollection.new(:config => config).
            create(options.merge(:instance_id => id,
                                 :name => name))
      end

      # @private
      def self.reservation_attribute(name)
        define_method(name) do
          @reservation_attributes[name] ||= retrieve_attribute(name) do
            client.describe_instances(:instance_ids => [id])
          end
        end
        MetaUtils.class_extend_method(self, :attributes_from_reservation) do |r, i|
          if atts = super(r, i)
            atts[name] = (r.send(name) if r.respond_to?(name))
            atts
          end
        end
      end

      MetaUtils.class_extend_method(self, :attributes_from_reservation) do |r, i|
        attributes_from_response_object(i) if i
      end

      reservation_attribute :reservation_id
      reservation_attribute :owner_id
      reservation_attribute :requester_id

      mutable_attribute :user_data do
        # mutable_attribute unwraps the ".value" unless you translate
        # the output yourself
        translate_output { |v| Base64.decode64(v.value) if v }
        translate_input { |v| Base64.encode64(v).strip }
      end

      describe_call_attribute :instance_type
      mutable_attribute :instance_type

      mutable_attribute :source_dest_check, :getter => :source_dest_check?
      mutable_attribute(:disable_api_termination,
                         :getter => :api_termination_disabled?,
                         :setter => :api_termination_disabled=)
      mutable_attribute :instance_initiated_shutdown_behavior
      describe_call_attribute :kernel_id
      mutable_attribute :kernel, :getter => :kernel_id, :setter => :kernel_id=

      ##
      # Resets the kernel to its default value.
      def reset_kernel_id
        client.reset_instance_attribute(:instance_id => id,
                                        :attribute => "kernel").return
      end

      describe_call_attribute :ramdisk_id
      mutable_attribute :ramdisk, :getter => :ramdisk_id, :setter => :ramdisk_id=

      ##
      # Resets the RAM disk to its default value.
      def reset_ramdisk_id
        client.reset_instance_attribute(:instance_id => id,
                                        :attribute => "ramdisk").return
      end

      describe_call_attribute :root_device_name
      mutable_attribute :root_device_name, :setter => false

      # @return [Hash] A hash in which each key is the name of a
      #   device that is mapped to an EBS volume.  The value of each
      #   entry is an object describing the volume, including the
      #   following fields:
      #
      #   [status] The status of the attachment (e.g. "attached").
      #
      #   [volume_id] The ID of the EBS volume.
      #
      #   [attach_time] The time at which the volume was attached.
      #
      #   [delete_on_termination?] True if the volume will be
      #                            automatically deleted when the
      #                            instance terminates.
      def block_device_mappings; end

      describe_call_attribute(:block_device_mapping,
                              :getter => :block_device_mappings) do
        translate_output { |v| translate_block_device_mappings(v) }
      end
      mutable_attribute(:block_device_mapping,
                        :setter => false,
                        :getter => :block_device_mappings) do
        translate_output { |v| translate_block_device_mappings(v) }
      end

      # @return [Symbol] The status of the instance.  Valid values:
      #   * +:pending+
      #   * +:running+
      #   * +:shutting_down+
      #   * +:terminated+
      #   * +:stopping+
      #   * +:stopped+
      def status
        retrieve_attribute(:status) do
          client.describe_instances(:instance_ids => [id])
        end
      end

      # Associates the elastic IP address with this instance.
      #
      # @param [ElasticIp,String] elastic_ip Either a public IP address
      #   string or an {ElasticIp} object to associate to this 
      #   instance.
      # @return [nil]
      def associate_elastic_ip elastic_ip
        client.associate_address(
          :public_ip => elastic_ip.to_s,
          :instance_id => self.id)
        nil
      end

      alias_method :ip_address=, :associate_elastic_ip

      # Disassociates an attached elastic IP address from this instance.
      # Raises an exception if there is no elastic IP address associated
      # with this instance.
      def disassociate_elastic_ip
        if ip = self.elastic_ip
          ip.disassociate
        else
          raise "instance #{id} does not have an associated elastic ip"
        end
      end

      # @return [Boolean] Returns true if an elastic IP address is 
      #   associated with this instance, false otherwise.
      def has_elastic_ip?
        !elastic_ip.nil?
      end

      # @return [ElasticIp,nil] Returns an elastic IP address if one
      #   is associated with this instance, nil otherwise.
      def elastic_ip
        ElasticIpCollection.new(:config => config).
          filter('instance-id', id).first
      end

      protected
      def find_in_response(resp)
        resp.instance_index[id]
      end

      populate_from :describe_instances do |resp|
        if r = resp.reservation_index[id]
          attributes_from_reservation(r, resp.instance_index[id])
        end
      end

      populate_from :run_instances do |resp|
        attributes_from_reservation(resp,
                                    resp.instances_set.
                                    find { |i| i.instance_id == id })
      end

      [:terminate_instances,
       :start_instances,
       :stop_instances].each do |op|
        populate_from op do |resp|
          if i = resp.instances_set.find { |i| i.instance_id == id }
            { :status => i.current_state.name.tr("-","_").to_sym }
          end
        end
      end

      [:monitor_instances,
       :unmonitor_instances].each do |op|
        populate_from op do |resp|
          if i = resp.instances_set.find { |i| i.instance_id == id }
            { :monitoring =>
              attributes_from_response_object(i)[:monitoring] }
          end
        end
      end

      protected
      def translate_block_device_mappings(mappings)
        mappings.inject({}) do |m, mapping|
          m[mapping.device_name] =
            Attachment.new(Volume.new(mapping.ebs.volume_id, :config => config),
                           self,
                           mapping.device_name,
                           :config => config)
          m
        end if mappings
      end

      protected
      def attributes_from_response_object(obj)
        if atts = super(obj)
          atts[:status] = obj.instance_state.name.tr("-","_").to_sym if
            obj.respond_to?(:instance_state)
          atts
        end
      end

    end

  end
end
