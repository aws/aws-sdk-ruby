# frozen_string_literal: true

module Aws
  module S3
    # @api private
    class DirectoryDownloader
      def initialize(options = {})
        @client = options[:client]
        @executor = options[:executor]
        @queue_executor = DefaultExecutor.new
        @abort_requested = false
        @mutex = Mutex.new
      end

      attr_reader :client, :executor

      def abort_requested
        @mutex.synchronize { @abort_requested }
      end

      def request_abort
        @mutex.synchronize { @abort_requested = true }
      end

      def download(destination, bucket:, **options)
        if File.exist?(destination)
          raise ArgumentError, 'invalid destination, expected a directory' unless File.directory?(destination)
        else
          FileUtils.mkdir_p(destination)
        end

        download_opts, producer_opts = build_opts(destination, bucket, options)
        downloader = FileDownloader.new(client: @client, executor: @executor)
        producer = ObjectProducer.new(producer_opts)
        downloads, errors = process_download_queue(producer, downloader, download_opts)
        build_result(downloads, errors)
      ensure
        @abort_requested = false
        @queue_executor&.shutdown
      end

      private

      def build_opts(destination, bucket, opts)
        download_opts = {
          progress_callback: opts[:progress_callback],
          destination: destination,
          ignore_failure: opts[:ignore_failure] || false
        }
        producer_opts = {
          client: @client,
          directory_downloader: self,
          destination: destination,
          bucket: bucket,
          s3_prefix: opts[:s3_prefix],
          filter_callback: opts[:filter_callback],
          request_callback: opts[:request_callback]
        }
        [download_opts, producer_opts]
      end

      def build_result(download_count, errors)
        if abort_requested
          msg = "directory download failed: #{errors.map(&:message).join('; ')}"
          raise DirectoryDownloadError.new(msg, errors)
        else
          {
            completed_downloads: [download_count - errors.count, 0].max,
            failed_downloads: errors.count,
            errors: errors.any? ? errors : nil
          }.compact
        end
      end

      def download_object(entry, downloader, opts, progress, errors)
        raise entry.error if entry.error

        FileUtils.mkdir_p(File.dirname(entry.path)) unless Dir.exist?(File.dirname(entry.path))
        downloader.download(entry.path, entry.params)
        progress&.call(File.size(entry.path))
      rescue StandardError => e
        @mutex.synchronize { errors << e }
        handle_error(opts)
      end

      def handle_error(opts)
        return if opts[:ignore_failure]

        request_abort
        @queue_executor.kill
      end

      def process_download_queue(producer, downloader, opts)
        progress = DirectoryProgress.new(opts[:progress_callback]) if opts[:progress_callback]
        completion_queue = Queue.new
        download_attempts = 0
        errors = []
        begin
          producer.each do |object|
            break if abort_requested

            download_attempts += 1
            @queue_executor.post(object) do |o|
              download_object(o, downloader, opts, progress, errors)
            ensure
              completion_queue << :done
            end
          end
        rescue StandardError => e
          request_abort # Producer failed (e.g., list_objects error) - abort immediately
          @queue_executor.kill

          raise e
        end
        download_attempts.times { completion_queue.pop }
        [download_attempts, errors]
      end

      # @api private
      class ObjectProducer
        include Enumerable

        DEFAULT_QUEUE_SIZE = 100
        DONE_MARKER = :done

        def initialize(opts = {})
          @directory_downloader = opts[:directory_downloader]
          @destination_dir = opts[:destination]
          @bucket = opts[:bucket]
          @client = opts[:client]
          @s3_prefix = opts[:s3_prefix]
          @filter_callback = opts[:filter_callback]
          @request_callback = opts[:request_callback]
          @object_queue = SizedQueue.new(DEFAULT_QUEUE_SIZE)
        end

        def each
          producer_thread = Thread.new do
            stream_objects
          ensure
            @object_queue << DONE_MARKER
          end

          # Yield objects from internal queue
          while (object = @object_queue.shift) != DONE_MARKER
            break if @directory_downloader.abort_requested

            yield object
          end
        ensure
          producer_thread.value
        end

        private

        def apply_request_callback(key, params)
          @request_callback&.call(key, params.dup)
        end

        # TODO: need to normalize full path to match Java behavior
        #  for example:
        #    ruby current behavior: "some/path/../data.dat" -> "some/data.dat"
        #    java behavior: should be "some/path/data.dat"
        def build_object_entry(key)
          params = { bucket: @bucket, key: key }
          params = apply_request_callback(key, params) if @request_callback

          normalized_key = normalize_key(key)
          full_path = File.join(@destination_dir, normalized_key)
          error = nil

          expanded = File.expand_path(full_path)
          expanded_dest = File.expand_path(@destination_dir) + File::SEPARATOR
          unless expanded.start_with?(expanded_dest)
            error = DirectoryDownloadError.new("Path traversal detected for key: #{key}")
          end

          DownloadEntry.new(path: full_path, params: params, error: error)
        end

        def include_object?(key)
          return true unless @filter_callback

          @filter_callback.call(key)
        end

        def normalize_key(key)
          if @s3_prefix
            prefix = @s3_prefix.end_with?('/') ? @s3_prefix : "#{@s3_prefix}/"
            key = key.delete_prefix(prefix)
          end
          File::SEPARATOR == '/' ? key : key.tr('/', File::SEPARATOR)
        end

        def stream_objects(continuation_token: nil)
          resp = @client.list_objects_v2(bucket: @bucket, prefix: @s3_prefix, continuation_token: continuation_token)
          resp.contents&.each do |o|
            break if @directory_downloader.abort_requested

            next if o.key.end_with?('/') && o.size.zero?
            next unless include_object?(o.key)

            @object_queue << build_object_entry(o.key)
          end
          stream_objects(continuation_token: resp.next_continuation_token) if resp.next_continuation_token
        end

        # @api private
        class DownloadEntry
          def initialize(opts = {})
            @path = opts[:path]
            @params = opts[:params]
            @error = opts[:error]
          end

          attr_reader :path, :params, :error
        end
      end
    end
  end
end
