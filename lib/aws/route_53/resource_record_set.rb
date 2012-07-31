# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    #
    # = Modify resource record set
    #
    #   rrsets = AWS::Route53::HostedZone.new(hosted_zone_id).rrsets
    #   rrset = rrsets['foo.example.com.', 'A']
    #   rrset.ttl = 3600
    #   rrset.update
    #
    # = Delete existing resource record set
    #
    #   rrsets = AWS::Route53::HostedZone.new(hosted_zone_id).rrsets
    #   rrset = rrsets['foo.example.com.', 'A']
    #   rrset.delete
    #
    # @attr_reader [String] hosted_zone_id
    #
    # @attr_reader [ChangeInfo] change_info
    #
    # @attr_reader [String] name
    #
    # @attr_reader [String] type
    #
    # @attr_reader [String] set_identifier
    #
    # @attr_reader [Hash] alias_target
    #
    # @attr_reader [Integer] weight
    #
    # @attr_reader [String] region
    #
    # @attr_reader [Integer] ttl
    #
    # @attr_reader [Array<Hash>] resource_records
    #
    class ResourceRecordSet < Core::Resource
      # @private
      def initialize name, type, options = {}
        @name = name
        @type = type
        @set_identifier = options[:set_identifier]
        @hosted_zone_id = options[:hosted_zone_id]
        @change_info = options[:change_info]
        @create_options = {}
        super
      end

      attr_reader :hosted_zone_id

      attr_reader :change_info

      attr_reader :name

      # @param [String]
      # @return [String]
      def name=(new_name)
        @create_options[:name] = new_name
      end

      attr_reader :type

      # @param [String]
      # @return [String]
      def type=(new_type)
        @create_options[:type] = new_type
      end

      attr_reader :set_identifier
      alias_method :identifier, :set_identifier

      # @param [String]
      # @return [String]
      def set_identifier=(new_identifier)
        @create_options[:set_identifier] = new_identifier
      end
      alias_method :identifier=, :set_identifier=

      attribute :alias_target

      # @param [Hash]
      # @return [Hash]
      def alias_target=(new_target)
        @create_options[:alias_target] = new_target
      end

      attribute :weight

      # @param [Integer]
      # @return [Integer]
      def weight=(new_weight)
        @create_options[:weight] = new_weight
      end

      attribute :region

      # @param [String]
      # @return [String]
      def region=(new_region)
        @create_options[:region] = new_region
      end

      attribute :ttl

      # @param [Integer]
      # @return [Integer]
      def ttl=(new_ttl)
        @create_options[:ttl] = new_ttl
      end

      attribute :resource_records

      # @param [Array<Hash>]
      # @return [Array<Hash>]
      def resource_records=(new_rrs)
        @create_options[:resource_records] = new_rrs
      end

      populates_from :list_resource_record_sets do |resp|
        resp[:resource_record_sets].find { |details|
          if set_identifier
            details[:name] == name and details[:type] == type and details[:set_identifier] == set_identifier
          else
            details[:name] == name and details[:type] == type
          end
        }
      end

      # @return [Boolean] Returns true if this rrset exists.
      def exists?
        !get_resource.data[:resource_record_sets].find { |details|
          if set_identifier
            details[:name] == name and details[:type] == type and details[:set_identifier] == set_identifier
          else
            details[:name] == name and details[:type] == type
          end
        }.nil?
      end

      # Update values of resource record set.
      # @param [Hash]  Options for change batch.
      # @return [ResourceRecordSet] New resource record set with current value.
      def update(options={})
        delete_options = {:name => name, :type => type}
        delete_options[:set_identifier] = set_identifier if set_identifier
        delete_options[:alias_target] = alias_target if alias_target
        delete_options[:weight] = weight if weight
        delete_options[:region] = region if region
        delete_options[:ttl] = ttl if ttl
        delete_options[:resource_records] = resource_records if resource_records

        create_options = delete_options.merge(@create_options)
        @create_options = {}
        batch = ChangeBatch.new(hosted_zone_id, options.merge(:config => config))
        batch << DeleteRequest.new(delete_options[:name], delete_options[:type], delete_options)
        batch << CreateRequest.new(create_options[:name], create_options[:type], create_options)

        @name = create_options[:name]
        @type = create_options[:type]
        @set_identifier = create_options[:set_identifier]
        @change_info = batch.call()
        self
      end

      # Delete resource record set.
      # @param [Hash] Options for change batch.
      # @return [ChangeInfo]
      def delete(options={})
        delete_options = {:name => name, :type => type}
        delete_options[:set_identifier] = set_identifier if set_identifier
        delete_options[:alias_target] = alias_target if alias_target
        delete_options[:weight] = weight if weight
        delete_options[:region] = region if region
        delete_options[:ttl] = ttl if ttl
        delete_options[:resource_records] = resource_records if resource_records

        batch = ChangeBatch.new(hosted_zone_id, options.merge(:config => config))
        batch << DeleteRequest.new(delete_options[:name], delete_options[:type], delete_options)

        change_info = batch.call()
      end

      protected

      def resource_identifiers
        [[:name, name], [:type, type], [:set_identifier, set_identifier]]
      end

      def get_resource attr_name = nil
        options = {}
        options[:start_record_name] = name
        options[:start_record_type] = type
        options[:start_record_identifier] = set_identifier if set_identifier
        options[:hosted_zone_id] = hosted_zone_id

        client.list_resource_record_sets(options)
      end
    end
  end
end
