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

module AWS
  class EC2

    # Represents an EC2 availability zone.  You can use this class
    # to get information about the state of an availability zone
    # that is available to your account.
    class AvailabilityZone < Resource

      # @return [String] Returns the name of the availability zone,
      #   e.g. "us-east-1a".
      attr_reader :name

      alias_method :to_s, :name
      alias_method :to_str, :name

      # @param [String] name The name of the availability zone.
      def initialize(name, opts = {})
        @name = name
        @region = opts[:region]
        super(opts)
      end

      # @return [Region] The region of this availability zone.
      def region; end
      describe_call_attribute :region_name, :getter => :region, :memoize => true do
        translate_output do |value|
          Region.new(value, :config => config) if value
        end
      end

      # @return [Symbol] The state of the availability zone,
      #   e.g. +:available+.
      def state; end
      describe_call_attribute :zone_state, :getter => :state, :to_sym => true

      # @return [Array] A list of messages about the Availability
      #   Zone.
      def messages; end
      describe_call_attribute :message_set, :getter => :messages do
        translate_output { |set| set.map { |m| m.message } if set }
      end

      protected
      def inflected_name
        "zone"
      end

      protected
      def find_in_response(resp)
        resp.availability_zone_info.find { |az| az.zone_name == name }
      end

      # @private
      private
      def get_attribute(name)
        resp = client.describe_availability_zones(:zone_names =>
                                                  [self.name])
        az = resp.availability_zone_info.first
        az.send(name)
      end

    end

  end
end
