# frozen_string_literal: true

module Aws
  module S3
    # A high-level S3 transfer utility that provides enhanced upload and download capabilities with automatic
    # multipart handling, progress tracking, and handling of large files. The following features are supported:
    #
    # * upload a file with multipart upload
    # * upload a stream with multipart upload
    # * download a S3 object with multipart download
    # * track transfer progress by using progress listener
    #
    # ## Executor Management
    # TransferManager uses executors to handle concurrent operations during multipart transfers. You can control
    # concurrency behavior by providing a custom executor or relying on the default executor management.
    #
    # ### Default Behavior
    # When no `:executor` is provided, TransferManager creates a new DefaultExecutor for each individual
    # operation (`download_file`, `upload_file`, etc.) and automatically shuts it down when that operation completes.
    # Each operation gets its own isolated thread pool with the specified `:thread_count` (default 10 threads).
    #
    # ### Custom Executor
    # You can provide your own executor (e.g., `Concurrent::ThreadPoolExecutor`) for fine-grained control over thread
    # pools and resource management. When using a custom executor, you are responsible for shutting it down
    # when finished. The executor may be reused across multiple TransferManager operations.
    #
    # Custom executors must implement the same interface as DefaultExecutor.
    #
    # **Required methods:**
    #
    #   * `post(*args, &block)` - Execute a task with given arguments and block
    #   * `kill` - Immediately terminate all running tasks
    #
    # **Optional methods:**
    #
    #   * `shutdown(timeout = nil)` - Gracefully shutdown the executor with optional timeout
    #
    # @example Using default executor (automatic creation and shutdown)
    #     tm = TransferManager.new # No executor provided
    #     # DefaultExecutor created, used, and shutdown automatically
    #     tm.download_file('/path/to/file', bucket: 'bucket', key: 'key')
    #
    # @example Using custom executor (manual shutdown required)
    #     require 'concurrent-ruby'
    #
    #     executor = Concurrent::ThreadPoolExecutor.new(max_threads: 5)
    #     tm = TransferManager.new(executor: executor)
    #     tm.download_file('/path/to/file1', bucket: 'bucket', key: 'key1')
    #     executor.shutdown # You must shutdown custom executors
    #
    class TransferManager

      # @param [Hash] options
      # @option options [S3::Client] :client (S3::Client.new)
      #   The S3 client to use for {TransferManager} operations. If not provided, a new default client
      #   will be created automatically.
      # @option options [Object] :executor
      #   The executor to use for multipart operations. Must implement the same interface as {DefaultExecutor}.
      #   If not provided, a new {DefaultExecutor} will be created automatically for each operation and
      #   shutdown after completion. When provided a custom executor, it will be reused across operations, and
      #   you are responsible for shutting it down when finished.
      def initialize(options = {})
        @client = options[:client] || Client.new
        @executor = options[:executor]
      end

      # @return [S3::Client]
      attr_reader :client

      # @return [Object]
      attr_reader :executor

      # Downloads a file in S3 to a path on disk.
      #
      #     # small files (< 5MB) are downloaded in a single API call
      #     tm = TransferManager.new
      #     tm.download_file('/path/to/file', bucket: 'bucket', key: 'key')
      #
      # Files larger than 5MB are downloaded using multipart method:
      #
      #     # large files are split into parts and the parts are downloaded in parallel
      #     tm.download_file('/path/to/large_file', bucket: 'bucket', key: 'key')
      #
      # You can provide a callback to monitor progress of the download:
      #
      #     # bytes and part_sizes are each an array with 1 entry per part
      #     # part_sizes may not be known until the first bytes are retrieved
      #     progress = proc do |bytes, part_sizes, file_size|
      #       bytes.map.with_index do |b, i|
      #         puts "Part #{i + 1}: #{b} / #{part_sizes[i]}".join(' ') + "Total: #{100.0 * bytes.sum / file_size}%"
      #       end
      #     end
      #     tm.download_file('/path/to/file', bucket: 'bucket', key: 'key', progress_callback: progress)
      #
      # @param [String, Pathname, File, Tempfile] destination
      #   Where to download the file to. This can either be a String or Pathname to the file, an open File object,
      #   or an open Tempfile object. If you pass an open File or Tempfile object, then you are responsible for
      #   closing it after the download completes. Download behavior varies by destination type:
      #
      #   * **String/Pathname paths**: Downloads to a temporary file first, then atomically moves to the final
      #    destination. This prevents corruption of any existing file if the download fails.
      #   * **File/Tempfile objects**: Downloads directly to the file object without using temporary files.
      #    You are responsible for managing the file object's state and closing it after the download completes.
      #    If the download fails, the file object may contain partial data.
      #
      # @param [String] bucket
      #   The name of the S3 bucket to upload to.
      #
      # @param [String] key
      #   The object key name in S3 bucket.
      #
      # @param [Hash] options
      #   Additional options for {Client#get_object} and #{Client#head_object} may be provided.
      #
      # @option options [String] :mode ("auto") `"auto"`, `"single_request"` or `"get_range"`
      #
      #  * `"auto"` mode is enabled by default, which performs `multipart_download`
      #  * `"single_request`" mode forces only 1 GET request is made in download
      #  * `"get_range"` mode requires `:chunk_size` parameter to configured in customizing each range size
      #
      # @option options [Integer] :chunk_size required in `"get_range"` mode.
      #
      # @option options [Integer] :thread_count (10) Customize threads used in the multipart download.
      #   Only used when no custom executor is provided (creates {DefaultExecutor} with given thread count).
      #
      # @option options [String] :checksum_mode ("ENABLED")
      #   This option is deprecated. Use `:response_checksum_validation` on your S3 client instead.
      #   To disable checksum validation, set `response_checksum_validation: 'when_required'`
      #   when creating your S3 client.
      #
      # @option options [Callable] :on_checksum_validated
      #   Called each time a request's checksum is validated with the checksum algorithm and the
      #   response.  For multipart downloads, this will be called for each part that is downloaded and validated.
      #
      # @option options [Proc] :progress_callback
      #   A Proc that will be called when each chunk of the download is received. It will be invoked with
      #   `bytes_read`, `part_sizes`, `file_size`. When the object is downloaded as parts (rather than by ranges),
      #   the `part_sizes` will not be known ahead of time and will be `nil` in the callback until the first bytes
      #   in the part are received.
      #
      # @raise [MultipartDownloadError] Raised when an object validation fails outside of service errors.
      #
      # @return [Boolean] Returns `true` when the file is downloaded without any errors.
      #
      # @see Client#get_object
      # @see Client#head_object
      def download_file(destination, bucket:, key:, **options)
        download_opts = options.merge(bucket: bucket, key: key)
        executor = @executor || DefaultExecutor.new(max_threads: download_opts.delete(:thread_count))
        downloader = FileDownloader.new(client: @client, executor: executor)
        downloader.download(destination, download_opts)
        executor.shutdown unless @executor
        true
      end

      # Uploads a file from disk to S3.
      #
      #     # a small file are uploaded with PutObject API
      #     tm = TransferManager.new
      #     tm.upload_file('/path/to/small_file', bucket: 'bucket', key: 'key')
      #
      # Files larger than or equal to `:multipart_threshold` are uploaded using multipart upload APIs.
      #
      #     # large files are automatically split into parts and the parts are uploaded in parallel
      #     tm.upload_file('/path/to/large_file', bucket: 'bucket', key: 'key')
      #
      # The response of the S3 upload API is yielded if a block given.
      #
      #     # API response will have etag value of the file
      #     tm.upload_file('/path/to/file', bucket: 'bucket', key: 'key') do |response|
      #       etag = response.etag
      #     end
      #
      # You can provide a callback to monitor progress of the upload:
      #
      #     # bytes and totals are each an array with 1 entry per part
      #     progress = proc do |bytes, totals|
      #       bytes.map.with_index do |b, i|
      #           puts "Part #{i + 1}: #{b} / #{totals[i]} " + "Total: #{100.0 * bytes.sum / totals.sum}%"
      #       end
      #     end
      #     tm.upload_file('/path/to/file', bucket: 'bucket', key: 'key', progress_callback: progress)
      #
      # @param [String, Pathname, File, Tempfile] source
      #   A file on the local file system that will be uploaded. This can either be a `String` or `Pathname` to the
      #   file, an open `File` object, or an open `Tempfile` object. If you pass an open `File` or `Tempfile` object,
      #   then you are responsible for closing it after the upload completes. When using an open Tempfile, rewind it
      #   before uploading or else the object will be empty.
      #
      # @param [String] bucket
      #   The name of the S3 bucket to upload to.
      #
      # @param [String] key
      #   The object key name for the uploaded file.
      #
      # @param [Hash] options
      #   Additional options for {Client#put_object} when file sizes below the multipart threshold.
      #   For files larger than the multipart threshold, options for {Client#create_multipart_upload},
      #   {Client#complete_multipart_upload}, and {Client#upload_part} can be provided.
      #
      # @option options [Integer] :multipart_threshold (104857600)
      #   Files larger han or equal to `:multipart_threshold` are uploaded using the S3 multipart upload APIs.
      #   Default threshold is `100MB`.
      #
      # @option options [Integer] :thread_count (10) Customize threads used in the multipart upload.
      #   Only used when no custom executor is provided (creates {DefaultExecutor} with the given thread count).
      #
      # @option options [Proc] :progress_callback (nil)
      #   A Proc that will be called when each chunk of the upload is sent.
      #   It will be invoked with `[bytes_read]` and  `[total_sizes]`.
      #
      # @raise [MultipartUploadError] If a file is being uploaded in parts, and the upload can not be completed,
      #   then the upload is aborted and this error is raised.  The raised error has a `#errors` method that
      #   returns the failures that caused the upload to be aborted.
      #
      # @return [Boolean] Returns `true` when the file is uploaded without any errors.
      #
      # @see Client#put_object
      # @see Client#create_multipart_upload
      # @see Client#complete_multipart_upload
      # @see Client#upload_part
      def upload_file(source, bucket:, key:, **options)
        upload_opts = options.merge(bucket: bucket, key: key)
        executor = @executor || DefaultExecutor.new(max_threads: upload_opts.delete(:thread_count))
        uploader = FileUploader.new(
          multipart_threshold: upload_opts.delete(:multipart_threshold),
          client: @client,
          executor: executor
        )
        response = uploader.upload(source, upload_opts)
        yield response if block_given?
        executor.shutdown unless @executor
        true
      end

      # Uploads a stream in a streaming fashion to S3.
      #
      # Passed chunks automatically split into multipart upload parts and the parts are uploaded in parallel.
      # This allows for streaming uploads that never touch the disk.
      #
      # **Note**: There are known issues in JRuby until jruby-9.1.15.0, so avoid using this with older JRuby versions.
      #
      # @example Streaming chunks of data
      #     tm = TransferManager.new
      #     tm.upload_stream(bucket: 'bucket', key: 'key') do |write_stream|
      #       10.times { write_stream << 'foo' }
      #     end
      # @example Streaming chunks of data
      #     tm.upload_stream(bucket: 'bucket', key: 'key') do |write_stream|
      #       IO.copy_stream(IO.popen('ls'), write_stream)
      #     end
      # @example Streaming chunks of data
      #     tm.upload_stream(bucket: 'bucket', key: 'key') do |write_stream|
      #       IO.copy_stream(STDIN, write_stream)
      #     end
      #
      # @param [String] bucket
      #   The name of the S3 bucket to upload to.
      #
      # @param [String] key
      #   The object key name for the uploaded file.
      #
      # @param [Hash] options
      #   Additional options for {Client#create_multipart_upload}, {Client#complete_multipart_upload}, and
      #   {Client#upload_part} can be provided.
      #
      # @option options [Integer] :thread_count (10)
      #   The number of parallel multipart uploads. Only used when no custom executor is provided (creates
      #   {DefaultExecutor} with the given thread count). An additional thread is used internally for task coordination.
      #
      # @option options [Boolean] :tempfile (false)
      #   Normally read data is stored in memory when building the parts in order to complete the underlying
      #   multipart upload. By passing `:tempfile => true`, the data read will be temporarily stored on disk reducing
      #   the memory footprint vastly.
      #
      # @option options [Integer] :part_size (5242880)
      #   Define how big each part size but the last should be. Default `:part_size` is `5 * 1024 * 1024`.
      #
      # @raise [MultipartUploadError] If an object is being uploaded in parts, and the upload can not be completed,
      #   then the upload is aborted and this error is raised. The raised error has a `#errors` method that returns
      #   the failures that caused the upload to be aborted.
      #
      # @return [Boolean] Returns `true` when the object is uploaded without any errors.
      #
      # @see Client#create_multipart_upload
      # @see Client#complete_multipart_upload
      # @see Client#upload_part
      def upload_stream(bucket:, key:, **options, &block)
        upload_opts = options.merge(bucket: bucket, key: key)
        executor = @executor || DefaultExecutor.new(max_threads: upload_opts.delete(:thread_count))
        uploader = MultipartStreamUploader.new(
          client: @client,
          executor: executor,
          tempfile: upload_opts.delete(:tempfile),
          part_size: upload_opts.delete(:part_size)
        )
        uploader.upload(upload_opts, &block)
        executor.shutdown unless @executor
        true
      end
    end
  end
end
