# frozen_string_literal: true

module Aws
  module S3
    # @api private
    class DirectoryDownloader
      def initialize(options = {})
        @client = options[:client]
        @executor = options[:executor]
        @abort_requested = false
        @mutex = Mutex.new
      end

      attr_reader :abort_requested

      def download(destination, bucket:, **options)
        if File.exist?(destination)
          raise ArgumentError, 'invalid destination, expected a directory' unless File.directory?(destination)
        else
          FileUtils.mkdir_p(destination)
        end

        download_opts = build_download_opts(destination, bucket, options)
        downloader = FileDownloader.new(client: @client, executor: @executor)
        producer = ObjectProducer.new(download_opts.merge(client: @client, directory_downloader: self))
        downloads, errors = process_download_queue(producer, downloader, download_opts)
        build_result(downloads, errors)
      ensure
        @abort_requested = false
      end

      private

      def request_abort
        @mutex.synchronize { @abort_requested = true }
      end
      def build_download_opts(destination, bucket, opts)
        {
          destination: destination,
          bucket: bucket,
          s3_prefix: opts.delete(:s3_prefix),
          ignore_failure: opts.delete(:ignore_failure) || false,
          filter_callback: opts.delete(:filter_callback),
          progress_callback: opts.delete(:progress_callback)
        }
      end

      def build_result(download_count, errors)
        if @abort_requested
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

      def handle_error(executor, opts)
        return if opts[:ignore_failure]

        request_abort
        executor.kill
      end

      def process_download_queue(producer, downloader, opts)
        # Separate executor for lightweight queuing tasks, avoiding interference with main @executor lifecycle
        queue_executor = DefaultExecutor.new
        progress = DirectoryProgress.new(opts[:progress_callback]) if opts[:progress_callback]
        download_attempts = 0
        errors = []
        begin
          producer.each do |object|
            break if @abort_requested

            download_attempts += 1
            queue_executor.post(object) do |o|
              dir_path = File.dirname(o[:path])
              FileUtils.mkdir_p(dir_path) unless dir_path == opts[:destination] || Dir.exist?(dir_path)

              downloader.download(o[:path], bucket: opts[:bucket], key: o[:key])
              progress&.call(File.size(o[:path]))
            rescue StandardError => e
              errors << e
              handle_error(queue_executor, opts)
            end
          end
        rescue StandardError => e
          errors << e
          handle_error(queue_executor, opts)
        end
        queue_executor.shutdown
        [download_attempts, errors]
      end

      # @api private
      class ObjectProducer
        include Enumerable

        DEFAULT_QUEUE_SIZE = 100

        def initialize(options = {})
          @destination_dir = options[:destination]
          @client = options[:client]
          @bucket = options[:bucket]
          @s3_prefix = options[:s3_prefix]
          @filter_callback = options[:filter_callback]
          @directory_downloader = options[:directory_downloader]
          @object_queue = SizedQueue.new(DEFAULT_QUEUE_SIZE)
        end

        def each
          producer_thread = Thread.new do
            stream_objects
          ensure
            @object_queue << :done
          end

          # Yield objects from internal queue
          while (object = @object_queue.shift) != :done
            break if @directory_downloader.abort_requested

            yield object
          end
        ensure
          producer_thread.join
        end

        private

        def build_object_entry(key)
          { path: File.join(@destination_dir, normalize_key(key)), key: key }
        end

        # TODO: double check handling of objects that ends with /
        def stream_objects(continuation_token: nil)
          resp = @client.list_objects_v2(bucket: @bucket, prefix: @s3_prefix, continuation_token: continuation_token)
          resp.contents.each do |o|
            break if @directory_downloader.abort_requested
            next if o.key.end_with?('/')
            next unless include_object?(o.key)

            @object_queue << build_object_entry(o.key)
          end
          stream_objects(continuation_token: resp.next_continuation_token) if resp.next_continuation_token
        end

        def include_object?(key)
          return true unless @filter_callback

          @filter_callback.call(key)
        end

        def normalize_key(key)
          key = key.delete_prefix(@s3_prefix) if @s3_prefix
          File::SEPARATOR == '/' ? key : key.tr('/', File::SEPARATOR)
        end
      end
    end
  end
end
