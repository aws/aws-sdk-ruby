# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
  class DBLogFile

    extend Aws::Deprecations

    # @overload def initialize(instance_id, name, options = {})
    #   @param [String] instance_id
    #   @param [String] name
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :instance_id
    #   @option options [required, String] :name
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @instance_id = extract_instance_id(args, options)
      @name = extract_name(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def instance_id
      @instance_id
    end

    # @return [String]
    def name
      @name
    end
    alias :log_file_name :name

    # A POSIX timestamp when the last log entry was written.
    # @return [Integer]
    def last_written
      data[:last_written]
    end

    # The size, in bytes, of the log file for the specified DB instance.
    # @return [Integer]
    def size
      data[:size]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # @raise [NotImplementedError]
    # @api private
    def load
      msg = "#load is not implemented, data only available via enumeration"
      raise NotImplementedError, msg
    end
    alias :reload :load

    # @raise [NotImplementedError] Raises when {#data_loaded?} is `false`.
    # @return [Types::DescribeDBLogFilesDetails]
    #   Returns the data for this {DBLogFile}.
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
    # @note The waiting operation is performed on a copy. The original resource remains unchanged
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
    #     instance.wait_until(max_attempts:10, delay:5) {|instance| instance.state.name == 'running' }
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. The waiting condition is set
    # by passing a block to {#wait_until}:
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
    #
    # @yield param [Resource] resource to be used in the waiting condition
    #
    # @raise [Aws::Waiters::Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    #   yet successful.
    #
    # @raise [Aws::Waiters::Errors::UnexpectedError] Raised when an error is encountered
    #   while polling for a resource that is not expected.
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

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   db_log_file.download({
    #     marker: "String",
    #     number_of_lines: 1,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :marker
    #   The pagination token provided in the previous request or "0". If the
    #   Marker parameter is specified the response includes only records
    #   beyond the marker until the end of the file or up to NumberOfLines.
    # @option options [Integer] :number_of_lines
    #   The number of lines to download. If the number of lines specified
    #   results in a file over 1 MB in size, the file is truncated at 1 MB in
    #   size.
    #
    #   If the NumberOfLines parameter is specified, then the block of lines
    #   returned can be from the beginning or the end of the log file,
    #   depending on the value of the Marker parameter.
    #
    #   * If neither Marker or NumberOfLines are specified, the entire log
    #     file is returned up to a maximum of 10000 lines, starting with the
    #     most recent log entries first.
    #
    #   * If NumberOfLines is specified and Marker is not specified, then the
    #     most recent lines from the end of the log file are returned.
    #
    #   * If Marker is specified as "0", then the specified number of lines
    #     from the beginning of the log file are returned.
    #
    #   * You can download the log file in blocks of lines by specifying the
    #     size of the block using the NumberOfLines parameter, and by
    #     specifying a value of "0" for the Marker parameter in your first
    #     request. Include the Marker value returned in the response as the
    #     Marker value for the next request, continuing until the
    #     AdditionalDataPending response element returns false.
    # @return [Types::DownloadDBLogFilePortionDetails]
    def download(options = {})
      options = options.merge(
        db_instance_identifier: @instance_id,
        log_file_name: @name
      )
      resp = @client.download_db_log_file_portion(options)
      resp.data
    end

    # @deprecated
    # @api private
    def identifiers
      {
        instance_id: @instance_id,
        name: @name
      }
    end
    deprecated(:identifiers)

    private

    def extract_instance_id(args, options)
      value = args[0] || options.delete(:instance_id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :instance_id"
      else
        msg = "expected :instance_id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_name(args, options)
      value = args[1] || options.delete(:name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :name"
      else
        msg = "expected :name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
