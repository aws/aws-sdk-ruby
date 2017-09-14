# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Glacier
  class Vault

    extend Aws::Deprecations

    # @overload def initialize(account_id, name, options = {})
    #   @param [String] account_id
    #   @param [String] name
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :account_id
    #   @option options [required, String] :name
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @account_id = extract_account_id(args, options)
      @name = extract_name(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def account_id
      @account_id
    end

    # @return [String]
    def name
      @name
    end
    alias :vault_name :name

    # The Amazon Resource Name (ARN) of the vault.
    # @return [String]
    def vault_arn
      data[:vault_arn]
    end

    # The Universal Coordinated Time (UTC) date when the vault was created.
    # This value should be a string in the ISO 8601 date format, for example
    # `2012-03-20T17:03:43.221Z`.
    # @return [Time]
    def creation_date
      data[:creation_date]
    end

    # The Universal Coordinated Time (UTC) date when Amazon Glacier
    # completed the last vault inventory. This value should be a string in
    # the ISO 8601 date format, for example `2012-03-20T17:03:43.221Z`.
    # @return [Time]
    def last_inventory_date
      data[:last_inventory_date]
    end

    # The number of archives in the vault as of the last inventory date.
    # This field will return `null` if an inventory has not yet run on the
    # vault, for example if you just created the vault.
    # @return [Integer]
    def number_of_archives
      data[:number_of_archives]
    end

    # Total size, in bytes, of the archives in the vault as of the last
    # inventory date. This field will return null if an inventory has not
    # yet run on the vault, for example if you just created the vault.
    # @return [Integer]
    def size_in_bytes
      data[:size_in_bytes]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Vault}.
    # Returns `self` making it possible to chain methods.
    #
    #     vault.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_vault(
        vault_name: @name,
        account_id: @account_id
      )
      @data = resp.data
      self
    end
    alias :reload :load

    # @return [Types::DescribeVaultOutput]
    #   Returns the data for this {Vault}. Calls
    #   {Client#describe_vault} if {#data_loaded?} is `false`.
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
    #   vault.create()
    # @param [Hash] options ({})
    # @return [Types::CreateVaultOutput]
    def create(options = {})
      options = options.merge(
        vault_name: @name,
        account_id: @account_id
      )
      resp = @client.create_vault(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   vault.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(
        vault_name: @name,
        account_id: @account_id
      )
      resp = @client.delete_vault(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   vault.initiate_inventory_retrieval()
    # @param [Hash] options ({})
    # @return [Job]
    def initiate_inventory_retrieval(options = {})
      options = Aws::Util.deep_merge(options,
        vault_name: @name,
        account_id: @account_id,
        job_parameters: {
          type: "inventory-retrieval"
        }
      )
      resp = @client.initiate_job(options)
      Job.new(
        id: resp.data.job_id,
        account_id: @account_id,
        vault_name: @name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   multipartupload = vault.initiate_multipart_upload({
    #     archive_description: "string",
    #     part_size: 1,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :archive_description
    #   The archive description that you are uploading in parts.
    #
    #   The part size must be a megabyte (1024 KB) multiplied by a power of 2,
    #   for example 1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8
    #   MB), and so on. The minimum allowable part size is 1 MB, and the
    #   maximum is 4 GB (4096 MB).
    # @option options [Integer] :part_size
    #   The size of each part except the last, in bytes. The last part can be
    #   smaller than this part size.
    # @return [MultipartUpload]
    def initiate_multipart_upload(options = {})
      options = options.merge(
        vault_name: @name,
        account_id: @account_id
      )
      resp = @client.initiate_multipart_upload(options)
      MultipartUpload.new(
        id: resp.data.upload_id,
        account_id: @account_id,
        vault_name: @name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   archive = vault.upload_archive({
    #     archive_description: "string",
    #     checksum: "string",
    #     body: "data",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :archive_description
    #   The optional description of the archive you are uploading.
    # @option options [String] :checksum
    #   The SHA256 tree hash of the data being uploaded.
    # @option options [String, IO] :body
    #   The data to upload.
    # @return [Archive]
    def upload_archive(options = {})
      options = options.merge(
        vault_name: @name,
        account_id: @account_id
      )
      resp = @client.upload_archive(options)
      Archive.new(
        id: resp.data.archive_id,
        account_id: @account_id,
        vault_name: @name,
        client: @client
      )
    end

    # @!group Associations

    # @return [Account]
    def account
      Account.new(
        id: @account_id,
        client: @client
      )
    end

    # @param [String] id
    # @return [Archive]
    def archive(id)
      Archive.new(
        account_id: @account_id,
        vault_name: @name,
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   completed_jobs = vault.completed_jobs({
    #     statuscode: "string",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :statuscode
    #   The type of job status to return. You can specify the following
    #   values: `InProgress`, `Succeeded`, or `Failed`.
    # @return [Job::Collection]
    def completed_jobs(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          account_id: @account_id,
          vault_name: @name,
          completed: "true"
        )
        resp = @client.list_jobs(options)
        resp.each_page do |page|
          batch = []
          page.data.job_list.each do |j|
            batch << Job.new(
              account_id: @account_id,
              vault_name: @name,
              id: j.job_id,
              data: j,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Job::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   failed_jobs = vault.failed_jobs({
    #     completed: "string",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :completed
    #   The state of the jobs to return. You can specify `true` or `false`.
    # @return [Job::Collection]
    def failed_jobs(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          account_id: @account_id,
          vault_name: @name,
          statuscode: "Failed"
        )
        resp = @client.list_jobs(options)
        resp.each_page do |page|
          batch = []
          page.data.job_list.each do |j|
            batch << Job.new(
              account_id: @account_id,
              vault_name: @name,
              id: j.job_id,
              data: j,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Job::Collection.new(batches)
    end

    # @param [String] id
    # @return [Job]
    def job(id)
      Job.new(
        account_id: @account_id,
        vault_name: @name,
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   jobs = vault.jobs({
    #     statuscode: "string",
    #     completed: "string",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :statuscode
    #   The type of job status to return. You can specify the following
    #   values: `InProgress`, `Succeeded`, or `Failed`.
    # @option options [String] :completed
    #   The state of the jobs to return. You can specify `true` or `false`.
    # @return [Job::Collection]
    def jobs(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          account_id: @account_id,
          vault_name: @name
        )
        resp = @client.list_jobs(options)
        resp.each_page do |page|
          batch = []
          page.data.job_list.each do |j|
            batch << Job.new(
              account_id: @account_id,
              vault_name: @name,
              id: j.job_id,
              data: j,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Job::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   jobs_in_progress = vault.jobs_in_progress({
    #     completed: "string",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :completed
    #   The state of the jobs to return. You can specify `true` or `false`.
    # @return [Job::Collection]
    def jobs_in_progress(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          account_id: @account_id,
          vault_name: @name,
          statuscode: "InProgress"
        )
        resp = @client.list_jobs(options)
        resp.each_page do |page|
          batch = []
          page.data.job_list.each do |j|
            batch << Job.new(
              account_id: @account_id,
              vault_name: @name,
              id: j.job_id,
              data: j,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Job::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   vault.multipart_uplaods()
    # @param [Hash] options ({})
    # @return [MultipartUpload::Collection]
    def multipart_uplaods(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          vault_name: @name,
          account_id: @account_id
        )
        resp = @client.list_multipart_uploads(options)
        resp.each_page do |page|
          batch = []
          page.data.uploads_list.each do |u|
            batch << MultipartUpload.new(
              account_id: @account_id,
              vault_name: @name,
              id: u.multipart_upload_id,
              data: u,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      MultipartUpload::Collection.new(batches)
    end

    # @param [String] id
    # @return [MultipartUpload]
    def multipart_upload(id)
      MultipartUpload.new(
        account_id: @account_id,
        vault_name: @name,
        id: id,
        client: @client
      )
    end

    # @return [Notification]
    def notification
      Notification.new(
        account_id: @account_id,
        vault_name: @name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   succeeded_jobs = vault.succeeded_jobs({
    #     completed: "string",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :completed
    #   The state of the jobs to return. You can specify `true` or `false`.
    # @return [Job::Collection]
    def succeeded_jobs(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          account_id: @account_id,
          vault_name: @name,
          statuscode: "Succeeded"
        )
        resp = @client.list_jobs(options)
        resp.each_page do |page|
          batch = []
          page.data.job_list.each do |j|
            batch << Job.new(
              account_id: @account_id,
              vault_name: @name,
              id: j.job_id,
              data: j,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Job::Collection.new(batches)
    end

    # @deprecated
    # @api private
    def identifiers
      {
        account_id: @account_id,
        name: @name
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
