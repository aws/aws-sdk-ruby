# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
  class DBEngineVersion

    extend Aws::Deprecations

    # @overload def initialize(engine_name, version, options = {})
    #   @param [String] engine_name
    #   @param [String] version
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :engine_name
    #   @option options [required, String] :version
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @engine_name = extract_engine_name(args, options)
      @version = extract_version(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def engine_name
      @engine_name
    end
    alias :engine :engine_name

    # @return [String]
    def version
      @version
    end
    alias :engine_version :version

    # The name of the DB parameter group family for the database engine.
    # @return [String]
    def db_parameter_group_family
      data.db_parameter_group_family
    end

    # The description of the database engine.
    # @return [String]
    def db_engine_description
      data.db_engine_description
    end

    # The description of the database engine version.
    # @return [String]
    def db_engine_version_description
      data.db_engine_version_description
    end

    # The default character set for new instances of this engine version, if
    # the `CharacterSetName` parameter of the CreateDBInstance API is not
    # specified.
    # @return [Types::CharacterSet]
    def default_character_set
      data.default_character_set
    end

    # A list of the character sets supported by this engine for the
    # `CharacterSetName` parameter of the `CreateDBInstance` action.
    # @return [Array<Types::CharacterSet>]
    def supported_character_sets
      data.supported_character_sets
    end

    # A list of engine versions that this database engine version can be
    # upgraded to.
    # @return [Array<Types::UpgradeTarget>]
    def valid_upgrade_target
      data.valid_upgrade_target
    end

    # A list of the time zones supported by this engine for the `Timezone`
    # parameter of the `CreateDBInstance` action.
    # @return [Array<Types::Timezone>]
    def supported_timezones
      data.supported_timezones
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {DBEngineVersion}.
    # Returns `self` making it possible to chain methods.
    #
    #     db_engine_version.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_db_engine_versions(
        engine: @engine_name,
        engine_version: @version
      )
      @data = resp.db_engine_versions[0]
      self
    end
    alias :reload :load

    # @return [Types::DBEngineVersion]
    #   Returns the data for this {DBEngineVersion}. Calls
    #   {Client#describe_db_engine_versions} if {#data_loaded?} is `false`.
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

    # @!group Associations

    # @return [DBEngine]
    def engine
      DBEngine.new(
        name: @engine,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   option_group_options = db_engine_version.option_group_options({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    # @return [OptionGroupOption::Collection]
    def option_group_options(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          engine_name: @engine,
          major_engine_version: @version
        )
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

    # @example Request syntax with placeholder values
    #
    #   option_groups = db_engine_version.option_groups({
    #     option_group_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :option_group_name
    #   The name of the option group to describe. Cannot be supplied together
    #   with EngineName or MajorEngineVersion.
    # @option options [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    # @return [OptionGroup::Collection]
    def option_groups(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          engine_name: @engine,
          major_engine_version: @version
        )
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

    # @return [DBParameterGroupFamily, nil]
    def parameter_group_family
      if data.db_parameter_group_family
        DBParameterGroupFamily.new(
          name: data.db_parameter_group_family,
          client: @client
        )
      else
        nil
      end
    end

    # @deprecated
    # @api private
    def identifiers
      {
        engine_name: @engine_name,
        version: @version
      }
    end
    deprecated(:identifiers)

    private

    def extract_engine_name(args, options)
      value = args[0] || options.delete(:engine_name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :engine_name"
      else
        msg = "expected :engine_name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_version(args, options)
      value = args[1] || options.delete(:version)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :version"
      else
        msg = "expected :version to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
