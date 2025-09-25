# frozen_string_literal: true

module Aws
  module S3
    # Raised when DirectoryDownloader fails to download objects from S3 bucket
    class DirectoryDownloadError < StandardError
      def initialize(message, errors = [])
        @errors = errors
        super(message)
      end

      # @return [Array<StandardError>] The list of errors encountered when downloading objects
      attr_reader :errors
    end

    # @api private
    class DirectoryDownloader
      def initialize(options = {})
        @client = options[:client] || Client.new
        @executor = options[:executor] || DefaultExecutor.new
        @options = options
        @abort_download = false
      end

      attr_reader :client, :abort_download

      # TODO: need to add progress tracker
      def download(destination, bucket:, **options)
        if File.exist?(destination)
          raise ArgumentError 'invalid destination, expected a directory' unless File.directory?(destination)
        else
          FileUtils.mkdir_p(destination)
        end

        download_opts = options.dup
        @bucket = bucket
        @ignore_failure = download_opts.delete(:ignore_failure) || false
        @errors = []

        downloader = FileDownloader.new(client: client, executor: @executor)
        producer = ObjectProducer.new(destination, build_producer_opts(download_opts))
        producer.run

        downloads = process_download_queue(producer, downloader, download_opts)
        build_result(downloads)
      ensure
        @executor.shutdown unless @options[:executor]
      end

      def build_producer_opts(opts)
        {
          directory_downloader: self,
          client: @client,
          bucket: @bucket,
          s3_prefix: opts.delete(:s3_prefix),
          ignore_failure: @ignore_failure,
          filter_callback: opts.delete(:filter_callback),
          errors: @errors
        }
      end

      def build_result(download_count)
        downloads = [download_count - @errors.count, 0].max

        if @abort_download
          msg = "failed to download directory: downloaded #{downloads} files " \
            "and failed to download #{@errors.count} files."
          raise DirectoryDownloadError.new(msg, @errors)
        else
          result = { completed_downloads: downloads, failed_downloads: @errors.count }
          result[:errors] = @errors if @errors.any?
          result
        end
      end

      def process_download_queue(producer, downloader, opts)
        download_attempts = 0
        completion_queue = Queue.new
        queue_executor = DefaultExecutor.new
        while (object = producer.object_queue.shift) != :done
          break if @abort_download

          download_attempts += 1
          queue_executor.post(object) do |o|
            dir_path = File.dirname(o[:path])
            FileUtils.mkdir_p(dir_path) unless dir_path == @destination || Dir.exist?(dir_path)

            downloader.download(o[:path], opts.merge(bucket: @bucket, key: o[:key]))
          rescue StandardError => e
            @errors << e
            @abort_download = true unless @ignore_failure
          ensure
            completion_queue << :done
          end
        end
        download_attempts.times { completion_queue.pop }
        download_attempts
      ensure
        queue_executor.shutdown
      end

      # @api private
      class ObjectProducer
        def initialize(destination_dir, options = {})
          @destination_dir = destination_dir
          @client = options[:client]
          @bucket = options[:bucket]
          @s3_prefix = options[:s3_prefix]
          @ignore_failure = options[:ignore_failure]
          @filter_callback = options[:filter_callback]
          @errors = options[:errors]
          @directory_downloader = options[:directory_downloader]
          @object_queue = SizedQueue.new(100)
        end

        attr_reader :object_queue

        def run
          Thread.new do
            stream_objects
            @object_queue << :done
          end
        end

        private

        def build_object_entry(key)
          { path: File.join(@destination_dir, normalize_key(key)), key: key }
        end

        # TODO: need to add filter callback, double check handling of objects that ends with /
        def stream_objects(continuation_token: nil)
          resp = @client.list_objects_v2(bucket: @bucket, continuation_token: continuation_token)
          resp.contents.each do |o|
            break if @directory_downloader.abort_download
            next if o.key.end_with?('/')

            @object_queue << build_object_entry(o.key)
          rescue StandardError => e
            @errors << e
            @abort_download = true unless @ignore_failure
          end
          stream_objects(continuation_token: resp.next_continuation_token) if resp.next_continuation_token
        end

        def normalize_key(key)
          key = key.delete_prefix(@s3_prefix) if @s3_prefix
          return key if File::SEPARATOR == '/'

          key.tr('/', File::SEPARATOR)
        end
      end
    end
  end
end
