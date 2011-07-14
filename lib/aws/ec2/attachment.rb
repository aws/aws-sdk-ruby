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
require 'aws/cacheable'

module AWS
  class EC2

    # Represents an attachment of an Amazon EBS volume to an instance.
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
    class Attachment

      include Model
      include Cacheable

      attr_reader :volume
      attr_reader :instance
      attr_reader :device

      # @private
      def initialize(volume, instance, device, opts = {})
        @volume = volume
        @instance = instance
        @device = device
        super(opts)
      end

      # (see Volume#detach_from)
      def delete(opts = {})
        client.detach_volume(opts.merge(:volume_id => volume.id,
                                        :instance_id => instance.id,
                                        :device => device))
      end

      # @return [Symbol] The attachment status.  Possible values:
      #   * +:attaching+
      #   * +:attached+
      #   * +:detaching+
      #   * +:detached+
      def status
        retrieve_attribute(:status) { describe_call }
      end

      # @return [Time] The time at which this attachment was created.
      def attach_time
        retrieve_attribute(:attach_time) { describe_call }
      end

      # @return [Boolean] True if the volume will be deleted on
      #   instance termination.
      def delete_on_termination?
        retrieve_attribute(:delete_on_termination?) { describe_call }
      end

      # @return [Boolean] True if the attachment exists.
      def exists?
        !describe_attachment.nil?
      end

      # @return [Boolean] True if the attachments are the same.
      #
      # @param [Object] other The object to compare with.
      def ==(other)
        other.kind_of?(Attachment) and
          other.volume == volume and
          other.instance == instance and
          other.device == device
      end
      alias_method :eql?, :==

      populate_from :describe_volumes do |resp|
        if volume = resp.volume_index[self.volume.id] and
            attachments = volume.attachment_set and
            attachment = attachments.find do |att|
            att.instance_id == self.instance.id &&
              att.volume_id == self.volume.id &&
              att.device == self.device
          end

          attributes_from_response_object(attachment)
        end
      end

      [:attach_volume,
       :detach_volume].each do |op|
        populate_from op do |resp|
          attributes_from_response_object(resp) if
            resp.volume_id == volume.id and
            resp.instance_id == instance.id and
            resp.device == device
        end
      end

      protected
      def attributes_from_response_object(attachment)
        atts = {}
        atts[:status] = (attachment.status.to_sym if
                         attachment.respond_to?(:status))
        atts[:attach_time] = (attachment.attach_time if
                              attachment.respond_to?(:attach_time))
        atts[:delete_on_termination?] = (attachment.delete_on_termination? if
                                         attachment.respond_to?(:delete_on_termination?))
        atts
      end

      protected
      def describe_call
        client.describe_volumes(:volume_ids => [self.volume.id])
      end

      private
      def describe_attachment
        (resp = describe_call and
         volume = resp.volume_index[self.volume.id] and
         attachments = volume.attachment_set and
         attachment = attachments.find do |att|
           att.instance_id == self.instance.id &&
             att.volume_id == self.volume.id &&
             att.device == self.device
         end) or nil
      end

    end

  end
end
