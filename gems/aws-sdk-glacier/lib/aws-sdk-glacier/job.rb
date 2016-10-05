# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module Glacier
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

      # The job description you provided when you initiated the job.
      # @return [String]
      def job_description
        data.job_description
      end

      # The job type. It is either ArchiveRetrieval or InventoryRetrieval.
      # @return [String]
      def action
        data.action
      end

      # For an ArchiveRetrieval job, this is the archive ID requested for
      # download. Otherwise, this field is null.
      # @return [String]
      def archive_id
        data.archive_id
      end

      # The Amazon Resource Name (ARN) of the vault from which the archive
      # retrieval was requested.
      # @return [String]
      def vault_arn
        data.vault_arn
      end

      # The UTC date when the job was created. A string representation of ISO
      # 8601 date format, for example, "2012-03-20T17:03:43.221Z".
      # @return [Time]
      def creation_date
        data.creation_date
      end

      # The job status. When a job is completed, you get the job's output.
      # @return [Boolean]
      def completed
        data.completed
      end

      # The status code can be InProgress, Succeeded, or Failed, and indicates
      # the status of the job.
      # @return [String]
      def status_code
        data.status_code
      end

      # A friendly message that describes the job status.
      # @return [String]
      def status_message
        data.status_message
      end

      # For an ArchiveRetrieval job, this is the size in bytes of the archive
      # being requested for download. For the InventoryRetrieval job, the
      # value is null.
      # @return [Integer]
      def archive_size_in_bytes
        data.archive_size_in_bytes
      end

      # For an InventoryRetrieval job, this is the size in bytes of the
      # inventory requested for download. For the ArchiveRetrieval job, the
      # value is null.
      # @return [Integer]
      def inventory_size_in_bytes
        data.inventory_size_in_bytes
      end

      # An Amazon Simple Notification Service (Amazon SNS) topic that receives
      # notification.
      # @return [String]
      def sns_topic
        data.sns_topic
      end

      # The UTC time that the archive retrieval request completed. While the
      # job is in progress, the value will be null.
      # @return [Time]
      def completion_date
        data.completion_date
      end

      # For an ArchiveRetrieval job, it is the checksum of the archive.
      # Otherwise, the value is null.
      #
      # The SHA256 tree hash value for the requested range of an archive. If
      # the Initiate a Job request for an archive specified a tree-hash
      # aligned range, then this field returns a value.
      #
      # For the specific case when the whole archive is retrieved, this value
      # is the same as the ArchiveSHA256TreeHash value.
      #
      # This field is null in the following situations: * Archive retrieval
      # jobs that specify a range that is not tree-hash
      #   aligned.
      #
      # ^
      #
      #  * Archival jobs that specify a range that is equal to the whole
      #   archive and the job status is InProgress.
      #
      # ^
      #
      #  * Inventory jobs.
      #
      # ^
      # @return [String]
      def sha256_tree_hash
        data.sha256_tree_hash
      end

      # The SHA256 tree hash of the entire archive for an archive retrieval.
      # For inventory retrieval jobs, this field is null.
      # @return [String]
      def archive_sha256_tree_hash
        data.archive_sha256_tree_hash
      end

      # The retrieved byte range for archive retrieval jobs in the form
      # "*StartByteValue*-*EndByteValue*" If no range was specified in the
      # archive retrieval, then the whole archive is retrieved and
      # *StartByteValue* equals 0 and *EndByteValue* equals the size of the
      # archive minus 1. For inventory retrieval jobs this field is null.
      # @return [String]
      def retrieval_byte_range
        data.retrieval_byte_range
      end

      # Parameters used for range inventory retrieval.
      # @return [Types::InventoryRetrievalJobDescription]
      def inventory_retrieval_parameters
        data.inventory_retrieval_parameters
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

      # @!group Actions

      # @example Request syntax with placeholder values
      #
      #   job.get_output({
      #     range: "string",
      #   })
      # @param [Hash] options ({})
      # @option options [String] :range
      #   The range of bytes to retrieve from the output. For example, if you
      #   want to download the first 1,048,576 bytes, specify "Range:
      #   bytes=0-1048575". By default, this operation downloads the entire
      #   output.
      # @return [Types::GetJobOutputOutput]
      def get_output(options = {})
        options = options.merge(
          account_id: @account_id,
          vault_name: @vault_name,
          job_id: @id
        )
        resp = @client.get_job_output(options)
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

      class Collection < Resources::Collection

        # @return [Enumerator<Job>]
        def each(&block)
          enum = super
          enum.each(&block) if block
          enum
        end

      end
    end
  end
end
