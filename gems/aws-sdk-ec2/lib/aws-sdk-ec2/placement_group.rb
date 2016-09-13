# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module EC2
    class PlacementGroup

      extend Aws::Deprecations

      # @overload def initialize(name, options = {})
      #   @param [String] name
      #   @option options [Client] :client
      # @overload def initialize(options = {})
      #   @option options [required, String] :name
      #   @option options [Client] :client
      def initialize(*args)
        options = Hash === args.last ? args.pop.dup : {}
        @name = extract_name(args, options)
        @data = options.delete(:data)
        @client = options.delete(:client) || Client.new(options)
      end

      # @!group Read-Only Attributes

      # @return [String]
      def name
        @name
      end
      alias :group_name :name

      # The placement strategy.
      # @return [String]
      def strategy
        data.strategy
      end

      # The state of the placement group.
      # @return [String]
      def state
        data.state
      end

      # @!endgroup

      # @return [Client]
      def client
        @client
      end

      # Loads, or reloads {#data} for the current {PlacementGroup}.
      # Returns `self` making it possible to chain methods.
      #
      #     placement_group.reload.data
      #
      # @return [self]
      def load
        resp = @client.describe_placement_groups(group_names: [@name])
        @data = resp.placementgroups[0]
        self
      end
      alias :reload :load

      # @return [Types::PlacementGroup]
      #   Returns the data for this {PlacementGroup}. Calls
      #   {Client#describe_placement_groups} if {#data_loaded?} is `false`.
      def data
        load unless @data
        @data
      end

      # @return [Boolean]
      #   Returns `true` if this resource is loaded.  Accessing attributes or
      #   {#data} on an unloaded resource will trigger a call to {#load}.
      def data_loaded?
        !!@data
      end

      # @!group Actions

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [EmptyStructure]
      def delete(options = {})
        options = options.merge(group_name: @name)
        resp = @client.delete_placement_group(options)
        resp.data
      end

      # @!group Associations

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :instance_ids
      #   One or more instance IDs.
      #
      #   Default: Describes all your instances.
      # @return [Instance::Collection]
      def instances(options = {})
        batches = Enumerator.new do |y|
          options = Aws::Util.deep_merge(options, filters: [{
            name: "placement-group-name",
            values: [@name]
          }])
          resp = @client.describe_instances(options)
          resp.each_page do |page|
            batch = []
            page.data.reservations.each do |r|
              r.instances.each do |i|
                batch << Instance.new(
                  id: i.instance_id,
                  data: i,
                  client: @client
                )
              end
            end
            y.yield(batch)
          end
        end
        Instance::Collection.new(batches)
      end

      # @deprecated
      # @api private
      def identifiers
        { name: @name }
      end
      deprecated(:identifiers)

      private

      def extract_name(args, options)
        value = args[0] || options.delete(:name)
        case value
        when String then value
        when nil then raise ArgumentError, "missing required option :name"
        else
          msg = "expected :name to be a String, got #{value.class}"
          raise ArgumentError, msg
        end
      end

      class Collection

        include Aws::Resources::Collection

        # @return [Enumerator<PlacementGroup>]
        def each(&block)
          enum = super
          enum.each(&block) if block
          enum
        end

      end
    end
  end
end
