# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module RDS
    class DBEngine

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
        @data = Aws::EmptyStructure.new
        @client = options.delete(:client) || Client.new(options)
      end

      # @!group Read-Only Attributes

      # @return [String]
      def name
        @name
      end

      # @!endgroup

      # @return [Client]
      def client
        @client
      end

      # @raise [Errors::ResourceNotLoadable]
      # @api private
      def load
        msg = "#load is not implemented, data only available via enumeration"
        raise Errors::ResourceNotLoadable, msg
      end
      alias :reload :load

      # @api private
      # @return [EmptyStructure]
      def data
        @data
      end

      # @return [Boolean]
      #   Returns `true` if this resource is loaded.  Accessing attributes or
      #   {#data} on an unloaded resource will trigger a call to {#load}.
      def data_loaded?
        !!@data
      end

      # @!group Associations

      # @param [Hash] options ({})
      # @option options [String] :major_engine_version
      #   If specified, filters the results to include only options for the
      #   specified major engine version.
      # @option options [Array<Types::Filter>] :filters
      #   This parameter is not currently supported.
      # @return [OptionGroupOption::Collection]
      def option_group_options(options = {})
        batches = Enumerator.new do |y|
          options = options.merge(engine_name: @name)
          resp = @client.describe_option_group_options(options)
          resp.each_page do |page|
            batch = []
            page.data.option_group_options.each do |o|
              batch << OptionGroupOption.new(
                name: o.name,
                data: o,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        OptionGroupOption::Collection.new(batches)
      end

      # @param [Hash] options ({})
      # @option options [String] :option_group_name
      #   The name of the option group to describe. Cannot be supplied together
      #   with EngineName or MajorEngineVersion.
      # @option options [Array<Types::Filter>] :filters
      #   This parameter is not currently supported.
      # @option options [String] :major_engine_version
      #   Filters the list of option groups to only include groups associated
      #   with a specific database engine version. If specified, then EngineName
      #   must also be specified.
      # @return [OptionGroup::Collection]
      def option_groups(options = {})
        batches = Enumerator.new do |y|
          options = options.merge(engine_name: @name)
          resp = @client.describe_option_groups(options)
          resp.each_page do |page|
            batch = []
            page.data.option_groups_list.each do |o|
              batch << OptionGroup.new(
                name: o.option_group_name,
                data: o,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        OptionGroup::Collection.new(batches)
      end

      # @param [String] version
      # @return [DBEngineVersion]
      def version(version)
        DBEngineVersion.new(
          engine_name: @name,
          version: version,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [String] :engine_version
      #   The database engine version to return.
      #
      #   Example: `5.1.49`
      # @option options [String] :db_parameter_group_family
      #   The name of a specific DB parameter group family to return details
      #   for.
      #
      #   Constraints:
      #
      #   * Must be 1 to 255 alphanumeric characters
      #
      #   * First character must be a letter
      #
      #   * Cannot end with a hyphen or contain two consecutive hyphens
      # @option options [Array<Types::Filter>] :filters
      #   Not currently supported.
      # @option options [Boolean] :default_only
      #   Indicates that only the default version of the specified engine or
      #   engine and major version combination is returned.
      # @option options [Boolean] :list_supported_character_sets
      #   If this parameter is specified, and if the requested engine supports
      #   the CharacterSetName parameter for CreateDBInstance, the response
      #   includes a list of supported character sets for each engine version.
      # @return [DBEngineVersion::Collection]
      def versions(options = {})
        batches = Enumerator.new do |y|
          options = options.merge(engine: @name)
          resp = @client.describe_db_engine_versions(options)
          resp.each_page do |page|
            batch = []
            page.data.db_engine_versions.each do |d|
              batch << DBEngineVersion.new(
                engine_name: @name,
                version: d.engine_version,
                data: d,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        DBEngineVersion::Collection.new(batches)
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

        # @return [Enumerator<DBEngine>]
        def each(&block)
          enum = super
          enum.each(&block) if block
          enum
        end

      end
    end
  end
end
