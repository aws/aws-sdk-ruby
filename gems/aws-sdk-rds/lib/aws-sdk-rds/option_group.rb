# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module RDS
    class OptionGroup

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
      alias :option_group_name :name

      # Provides a description of the option group.
      # @return [String]
      def option_group_description
        data.option_group_description
      end

      # Indicates the name of the engine that this option group can be applied
      # to.
      # @return [String]
      def engine_name
        data.engine_name
      end

      # Indicates the major engine version associated with this option group.
      # @return [String]
      def major_engine_version
        data.major_engine_version
      end

      # Indicates what options are available in the option group.
      # @return [Array<Types::Option>]
      def options
        data.options
      end

      # Indicates whether this option group can be applied to both VPC and
      # non-VPC instances. The value `true` indicates the option group can be
      # applied to both VPC and non-VPC instances.
      # @return [Boolean]
      def allows_vpc_and_non_vpc_instance_memberships
        data.allows_vpc_and_non_vpc_instance_memberships
      end

      # If **AllowsVpcAndNonVpcInstanceMemberships** is `false`, this field is
      # blank. If **AllowsVpcAndNonVpcInstanceMemberships** is `true` and this
      # field is blank, then this option group can be applied to both VPC and
      # non-VPC instances. If this field contains a value, then this option
      # group can only be applied to instances that are in the VPC indicated
      # by this field.
      # @return [String]
      def vpc_id
        data.vpc_id
      end

      # The Amazon Resource Name (ARN) for the option group.
      # @return [String]
      def option_group_arn
        data.option_group_arn
      end

      # @!endgroup

      # @return [Client]
      def client
        @client
      end

      # Loads, or reloads {#data} for the current {OptionGroup}.
      # Returns `self` making it possible to chain methods.
      #
      #     option_group.reload.data
      #
      # @return [self]
      def load
        resp = @client.describe_option_groups(option_group_name: @name)
        @data = resp.optiongroupslist[0]
        self
      end
      alias :reload :load

      # @return [Types::OptionGroup]
      #   Returns the data for this {OptionGroup}. Calls
      #   {Client#describe_option_groups} if {#data_loaded?} is `false`.
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
      # @option options [required, String] :engine_name
      #   Specifies the name of the engine that this option group should be
      #   associated with.
      # @option options [required, String] :major_engine_version
      #   Specifies the major version of the engine that this option group
      #   should be associated with.
      # @option options [required, String] :option_group_description
      #   The description of the option group.
      # @option options [Array<Types::Tag>] :tags
      #   A list of tags.
      # @return [OptionGroup]
      def create(options = {})
        options = options.merge(option_group_name: @name)
        resp = @client.create_option_group(options)
        OptionGroup.new(
          name: resp.data.option_group.option_group_name,
          data: resp.data.option_group,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [required, String] :target_option_group_identifier
      #   The identifier for the copied option group.
      #
      #   Constraints:
      #
      #   * Cannot be null, empty, or blank
      #
      #   * Must contain from 1 to 255 alphanumeric characters or hyphens
      #
      #   * First character must be a letter
      #
      #   * Cannot end with a hyphen or contain two consecutive hyphens
      #
      #   Example: `my-option-group`
      # @option options [required, String] :target_option_group_description
      #   The description for the copied option group.
      # @option options [Array<Types::Tag>] :tags
      #   A list of tags.
      # @return [OptionGroup]
      def copy(options = {})
        options = options.merge(source_option_group_identifier: @name)
        resp = @client.copy_option_group(options)
        OptionGroup.new(
          name: resp.data.option_group.option_group_name,
          data: resp.data.option_group,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @return [EmptyStructure]
      def delete(options = {})
        options = options.merge(option_group_name: @name)
        resp = @client.delete_option_group(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Array<Types::OptionConfiguration>] :options_to_include
      #   Options in this list are added to the option group or, if already
      #   present, the specified configuration is used to update the existing
      #   configuration.
      # @option options [Array<String>] :options_to_remove
      #   Options in this list are removed from the option group.
      # @option options [Boolean] :apply_immediately
      #   Indicates whether the changes should be applied immediately, or during
      #   the next maintenance window for each instance associated with the
      #   option group.
      # @return [OptionGroup]
      def modify(options = {})
        options = options.merge(option_group_name: @name)
        resp = @client.modify_option_group(options)
        OptionGroup.new(
          name: resp.data.option_group.option_group_name,
          data: resp.data.option_group,
          client: @client
        )
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

        # @return [Enumerator<OptionGroup>]
        def each(&block)
          enum = super
          enum.each(&block) if block
          enum
        end

      end
    end
  end
end
