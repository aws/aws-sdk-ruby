# frozen_string_literal: true

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
      @waiter_block_warned = false
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
      data[:db_parameter_group_family]
    end

    # The description of the database engine.
    # @return [String]
    def db_engine_description
      data[:db_engine_description]
    end

    # The description of the database engine version.
    # @return [String]
    def db_engine_version_description
      data[:db_engine_version_description]
    end

    # The default character set for new instances of this engine version, if
    # the `CharacterSetName` parameter of the CreateDBInstance API isn't
    # specified.
    # @return [Types::CharacterSet]
    def default_character_set
      data[:default_character_set]
    end

    # A list of the character sets supported by this engine for the
    # `CharacterSetName` parameter of the `CreateDBInstance` operation.
    # @return [Array<Types::CharacterSet>]
    def supported_character_sets
      data[:supported_character_sets]
    end

    # A list of the character sets supported by the Oracle DB engine for the
    # `NcharCharacterSetName` parameter of the `CreateDBInstance` operation.
    # @return [Array<Types::CharacterSet>]
    def supported_nchar_character_sets
      data[:supported_nchar_character_sets]
    end

    # A list of engine versions that this database engine version can be
    # upgraded to.
    # @return [Array<Types::UpgradeTarget>]
    def valid_upgrade_target
      data[:valid_upgrade_target]
    end

    # A list of the time zones supported by this engine for the `Timezone`
    # parameter of the `CreateDBInstance` action.
    # @return [Array<Types::Timezone>]
    def supported_timezones
      data[:supported_timezones]
    end

    # The types of logs that the database engine has available for export to
    # CloudWatch Logs.
    # @return [Array<String>]
    def exportable_log_types
      data[:exportable_log_types]
    end

    # A value that indicates whether the engine version supports exporting
    # the log types specified by ExportableLogTypes to CloudWatch Logs.
    # @return [Boolean]
    def supports_log_exports_to_cloudwatch_logs
      data[:supports_log_exports_to_cloudwatch_logs]
    end

    # Indicates whether the database engine version supports read replicas.
    # @return [Boolean]
    def supports_read_replica
      data[:supports_read_replica]
    end

    # A list of the supported DB engine modes.
    # @return [Array<String>]
    def supported_engine_modes
      data[:supported_engine_modes]
    end

    # A list of features supported by the DB engine. Supported feature names
    # include the following.
    #
    # * s3Import
    #
    # ^
    # @return [Array<String>]
    def supported_feature_names
      data[:supported_feature_names]
    end

    # The status of the DB engine version, either `available` or
    # `deprecated`.
    # @return [String]
    def status
      data[:status]
    end

    # A value that indicates whether you can use Aurora parallel query with
    # a specific DB engine version.
    # @return [Boolean]
    def supports_parallel_query
      data[:supports_parallel_query]
    end

    # A value that indicates whether you can use Aurora global databases
    # with a specific DB engine version.
    # @return [Boolean]
    def supports_global_databases
      data[:supports_global_databases]
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

    # @deprecated Use [Aws::RDS::Client] #wait_until instead
    #
    # Waiter polls an API operation until a resource enters a desired
    # state.
    #
    # @note The waiting operation is performed on a copy. The original resource
    #   remains unchanged.
    #
    # ## Basic Usage
    #
    # Waiter will polls until it is successful, it fails by
    # entering a terminal state, or until a maximum number of attempts
    # are made.
    #
    #     # polls in a loop until condition is true
    #     resource.wait_until(options) {|resource| condition}
    #
    # ## Example
    #
    #     instance.wait_until(max_attempts:10, delay:5) do |instance|
    #       instance.state.name == 'running'
    #     end
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. The waiting condition is
    # set by passing a block to {#wait_until}:
    #
    #     # poll for ~25 seconds
    #     resource.wait_until(max_attempts:5,delay:5) {|resource|...}
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     # poll for 1 hour, instead of a number of attempts
    #     proc = Proc.new do |attempts, response|
    #       throw :failure if Time.now - started_at > 3600
    #     end
    #
    #       # disable max attempts
    #     instance.wait_until(before_wait:proc, max_attempts:nil) {...}
    #
    # ## Handling Errors
    #
    # When a waiter is successful, it returns the Resource. When a waiter
    # fails, it raises an error.
    #
    #     begin
    #       resource.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @yieldparam [Resource] resource to be used in the waiting condition.
    #
    # @raise [Aws::Waiters::Errors::FailureStateError] Raised when the waiter
    #   terminates because the waiter has entered a state that it will not
    #   transition out of, preventing success.
    #
    #   yet successful.
    #
    # @raise [Aws::Waiters::Errors::UnexpectedError] Raised when an error is
    #   encountered while polling for a resource that is not expected.
    #
    # @raise [NotImplementedError] Raised when the resource does not
    #
    # @option options [Integer] :max_attempts (10) Maximum number of
    # attempts
    # @option options [Integer] :delay (10) Delay between each
    # attempt in seconds
    # @option options [Proc] :before_attempt (nil) Callback
    # invoked before each attempt
    # @option options [Proc] :before_wait (nil) Callback
    # invoked before each wait
    # @return [Resource] if the waiter was successful
    def wait_until(options = {}, &block)
      self_copy = self.dup
      attempts = 0
      options[:max_attempts] = 10 unless options.key?(:max_attempts)
      options[:delay] ||= 10
      options[:poller] = Proc.new do
        attempts += 1
        if block.call(self_copy)
          [:success, self_copy]
        else
          self_copy.reload unless attempts == options[:max_attempts]
          :retry
        end
      end
      Aws::Waiters::Waiter.new(options).wait({})
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
    #   This parameter isn't currently supported.
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
    #   The name of the option group to describe. Can't be supplied together
    #   with EngineName or MajorEngineVersion.
    # @option options [Array<Types::Filter>] :filters
    #   This parameter isn't currently supported.
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
      if data[:db_parameter_group_family]
        DBParameterGroupFamily.new(
          name: data[:db_parameter_group_family],
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
