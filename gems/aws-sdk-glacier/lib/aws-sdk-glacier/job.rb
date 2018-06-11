# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Glacier
  class Job

    extend Aws::Deprecations

    # @overload def initialize(account_id, vault_name, id, options = {})
    #   @param [String] account_id
    #   @param [String] vault_name
    #   @param [String] id
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :account_id
    #   @option options [required, String] :vault_name
    #   @option options [required, String] :id
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @account_id = extract_account_id(args, options)
      @vault_name = extract_vault_name(args, options)
      @id = extract_id(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def account_id
      @account_id
    end

    # @return [String]
    def vault_name
      @vault_name
    end

    # @return [String]
    def id
      @id
    end
    alias :job_id :id

    # The job description provided when initiating the job.
    # @return [String]
    def job_description
      data[:job_description]
    end

    # The job type. This value is either `ArchiveRetrieval`,
    # `InventoryRetrieval`, or `Select`.
    # @return [String]
    def action
      data[:action]
    end

    # The archive ID requested for a select job or archive retrieval.
    # Otherwise, this field is null.
    # @return [String]
    def archive_id
      data[:archive_id]
    end

    # The Amazon Resource Name (ARN) of the vault from which an archive
    # retrieval was requested.
    # @return [String]
    def vault_arn
      data[:vault_arn]
    end

    # The UTC date when the job was created. This value is a string
    # representation of ISO 8601 date format, for example
    # `"2012-03-20T17:03:43.221Z"`.
    # @return [Time]
    def creation_date
      data[:creation_date]
    end

    # The job status. When a job is completed, you get the job's output
    # using Get Job Output (GET output).
    # @return [Boolean]
    def completed
      data[:completed]
    end

    # The status code can be `InProgress`, `Succeeded`, or `Failed`, and
    # indicates the status of the job.
    # @return [String]
    def status_code
      data[:status_code]
    end

    # A friendly message that describes the job status.
    # @return [String]
    def status_message
      data[:status_message]
    end

    # For an archive retrieval job, this value is the size in bytes of the
    # archive being requested for download. For an inventory retrieval or
    # select job, this value is null.
    # @return [Integer]
    def archive_size_in_bytes
      data[:archive_size_in_bytes]
    end

    # For an inventory retrieval job, this value is the size in bytes of the
    # inventory requested for download. For an archive retrieval or select
    # job, this value is null.
    # @return [Integer]
    def inventory_size_in_bytes
      data[:inventory_size_in_bytes]
    end

    # An Amazon SNS topic that receives notification.
    # @return [String]
    def sns_topic
      data[:sns_topic]
    end

    # The UTC time that the job request completed. While the job is in
    # progress, the value is null.
    # @return [Time]
    def completion_date
      data[:completion_date]
    end

    # For an archive retrieval job, this value is the checksum of the
    # archive. Otherwise, this value is null.
    #
    # The SHA256 tree hash value for the requested range of an archive. If
    # the **InitiateJob** request for an archive specified a tree-hash
    # aligned range, then this field returns a value.
    #
    # If the whole archive is retrieved, this value is the same as the
    # ArchiveSHA256TreeHash value.
    #
    # This field is null for the following:
    #
    # * Archive retrieval jobs that specify a range that is not tree-hash
    #   aligned
    #
    # ^
    # ^
    #
    # * Archival jobs that specify a range that is equal to the whole
    #   archive, when the job status is `InProgress`
    #
    # ^
    # ^
    #
    # * Inventory jobs
    #
    # * Select jobs
    # @return [String]
    def sha256_tree_hash
      data[:sha256_tree_hash]
    end

    # The SHA256 tree hash of the entire archive for an archive retrieval.
    # For inventory retrieval or select jobs, this field is null.
    # @return [String]
    def archive_sha256_tree_hash
      data[:archive_sha256_tree_hash]
    end

    # The retrieved byte range for archive retrieval jobs in the form
    # *StartByteValue*-*EndByteValue*. If no range was specified in the
    # archive retrieval, then the whole archive is retrieved. In this case,
    # *StartByteValue* equals 0 and *EndByteValue* equals the size of the
    # archive minus 1. For inventory retrieval or select jobs, this field is
    # null.
    # @return [String]
    def retrieval_byte_range
      data[:retrieval_byte_range]
    end

    # The tier to use for a select or an archive retrieval. Valid values are
    # `Expedited`, `Standard`, or `Bulk`. `Standard` is the default.
    # @return [String]
    def tier
      data[:tier]
    end

    # Parameters used for range inventory retrieval.
    # @return [Types::InventoryRetrievalJobDescription]
    def inventory_retrieval_parameters
      data[:inventory_retrieval_parameters]
    end

    # Contains the job output location.
    # @return [String]
    def job_output_path
      data[:job_output_path]
    end

    # Contains the parameters used for a select.
    # @return [Types::SelectParameters]
    def select_parameters
      data[:select_parameters]
    end

    # Contains the location where the data from the select job is stored.
    # @return [Types::OutputLocation]
    def output_location
      data[:output_location]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Job}.
    # Returns `self` making it possible to chain methods.
    #
    #     job.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_job(
        account_id: @account_id,
        vault_name: @vault_name,
        job_id: @id
      )
      @data = resp.data
      self
    end
    alias :reload :load

    # @return [Types::GlacierJobDescription]
    #   Returns the data for this {Job}. Calls
    #   {Client#describe_job} if {#data_loaded?} is `false`.
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

    # @deprecated Use [Aws::Glacier::Client] #wait_until instead
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
    #   job.get_output({
    #     range: "string",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :range
    #   The range of bytes to retrieve from the output. For example, if you
    #   want to download the first 1,048,576 bytes, specify the range as
    #   `bytes=0-1048575`. By default, this operation downloads the entire
    #   output.
    #
    #   If the job output is large, then you can use a range to retrieve a
    #   portion of the output. This allows you to download the entire output
    #   in smaller chunks of bytes. For example, suppose you have 1 GB of job
    #   output you want to download and you decide to download 128 MB chunks
    #   of data at a time, which is a total of eight Get Job Output requests.
    #   You use the following process to download the job output:
    #
    #   1.  Download a 128 MB chunk of output by specifying the appropriate
    #       byte range. Verify that all 128 MB of data was received.
    #
    #   2.  Along with the data, the response includes a SHA256 tree hash of
    #       the payload. You compute the checksum of the payload on the client
    #       and compare it with the checksum you received in the response to
    #       ensure you received all the expected data.
    #
    #   3.  Repeat steps 1 and 2 for all the eight 128 MB chunks of output
    #       data, each time specifying the appropriate byte range.
    #
    #   4.  After downloading all the parts of the job output, you have a list
    #       of eight checksum values. Compute the tree hash of these values to
    #       find the checksum of the entire output. Using the DescribeJob API,
    #       obtain job information of the job that provided you the output.
    #       The response includes the checksum of the entire archive stored in
    #       Amazon Glacier. You compare this value with the checksum you
    #       computed to ensure you have downloaded the entire archive content
    #       with no errors.
    # @return [Types::GetJobOutputOutput]
    def get_output(options = {}, &block)
      options = options.merge(
        account_id: @account_id,
        vault_name: @vault_name,
        job_id: @id
      )
      resp = @client.get_job_output(options, &block)
      resp.data
    end

    # @!group Associations

    # @return [Vault]
    def vault
      Vault.new(
        account_id: @account_id,
        name: @vault_name,
        client: @client
      )
    end

    # @deprecated
    # @api private
    def identifiers
      {
        account_id: @account_id,
        vault_name: @vault_name,
        id: @id
      }
    end
    deprecated(:identifiers)

    private

    def extract_account_id(args, options)
      value = args[0] || options.delete(:account_id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :account_id"
      else
        msg = "expected :account_id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_vault_name(args, options)
      value = args[1] || options.delete(:vault_name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :vault_name"
      else
        msg = "expected :vault_name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_id(args, options)
      value = args[2] || options.delete(:id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :id"
      else
        msg = "expected :id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
