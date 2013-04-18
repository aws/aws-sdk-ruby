# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
  class Route53

    # # Delete existing hosted zone
    #
    #     hosted_zone = AWS::Route53::HostedZone.new(hosted_zone_id)
    #     hosted_zone.delete
    #
    # @attr_reader [String] name The hosted zone name.
    #
    # @attr_reader [String] caller_reference
    #
    # @attr_reader [Integer] resource_record_set_count
    #   The resource record set count.
    #
    # @attr_reader [Array<String>] delegation_set
    #
    class HostedZone < Core::Resource

      # @api private
      def initialize id, options = {}
        @id = id.sub(%r!^/hostedzone/!, '')
        @change_info = options[:change_info]
        super
      end

      # @return [String] The hosted zone ID.
      attr_reader :id

      # @return [ChangeInfo] Change info for the newly created HostedZone
      #   instance.
      attr_reader :change_info

      # The Hosted zone path.
      # @return [String]
      def path
        "/hostedzone/#{id}"
      end

      attribute :name, :static => true

      attribute :caller_reference, :static => true

      attribute :configuration, :from => :config, :static => true

      attribute :resource_record_set_count

      attribute :delegation_set, :static => true

      populates_from :create_hosted_zone do |resp|
        resp[:hosted_zone] if resp[:hosted_zone][:id] == path
      end

      populates_from :get_hosted_zone do |resp|
        resp[:hosted_zone] if resp[:hosted_zone][:id] == path
      end

      populates_from :list_hosted_zones do |resp|
        resp.data[:hosted_zones].find { |detail| detail[:hosted_zone][:id] == path }
      end

      # Deletes the hosted zone.
      # @return [ChangeInfo]
      def delete
        resp = client.delete_hosted_zone(:id => id)
        if resp[:change_info][:id]
          ChangeInfo.new_from(:delete_hosted_zone,
                              resp[:change_info],
                              resp[:change_info][:id],
                              :config => config)
        end
      end

      # @return [Boolean] Returns `true` if this hosted zone exists.
      def exists?
        get_resource.data[:hosted_zone][:id] == path
      end

      # Returns resource record sets.
      # @return [ResourceRecordSetCollection]
      def resource_record_sets
        ResourceRecordSetCollection.new(id, :config => config)
      end
      alias_method :rrsets, :resource_record_sets

      private

      def resource_identifiers
        [[:id, id], [:name, name], [:caller_reference, caller_reference]]
      end

      def get_resource attr_name = nil
        client.get_hosted_zone(:id => id)
      end

    end
  end
end
