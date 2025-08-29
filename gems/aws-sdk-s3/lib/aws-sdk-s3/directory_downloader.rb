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
        @executor = options[:executor]
      end

      attr_reader :client, :executor

      def download(destination, bucket:, **options)
        if File.exist?(destination)
          raise ArgumentError 'invalid destination, expected a directory' unless File.directory?(destination)
        else
          FileUtils.mkdir_p(destination)
        end

        download_opts = options.dup
        @destination = destination
        @bucket = bucket
        @recursive = download_opts.delete(:recursive) || false
        @s3_prefix = download_opts.delete(:s3_prefix)
        @s3_delimiter = download_opts.delete(:s3_delimiter) || '/'
        @failure_policy = download_opts.delete(:failure_policy) || :abort

        downloader = FileDownloader.new(client: client, executor: @executor)
        @download_queue = SizedQueue.new(100)
        @abort_download = false
        @errors = []

        Thread.new do
          stream_keys
          @download_queue << :done
        end

        download_attempts = 0
        completion_queue = Queue.new
        while (queue_key = @download_queue.shift) != :done
          break if @abort_download

          download_attempts += 1
          @executor.post(queue_key) do |k|
            normalized_key = normalize_key(k)
            full_path = File.join(@destination, normalized_key)
            dir_path = File.dirname(full_path)
            FileUtils.mkdir_p(dir_path) unless dir_path == @destination || Dir.exist?(dir_path)

            downloader.download(full_path, download_opts.merge(bucket: @bucket, key: k))
          rescue StandardError => e
            @errors << e
            @abort_download = true if @failure_policy == :abort
          ensure
            completion_queue << :done
          end
        end

        download_attempts.times { completion_queue.pop }

        if @abort_download
          msg = "failed to download directory: attempt to download #{download_attempts} objects " \
                "but failed to download #{@errors.count} objects."
          raise DirectoryDownloadError, msg + @errors.to_s
        else
          {
            downloaded: download_attempts - @errors.count,
            errors: @errors.count
          }
        end
      end

      def normalize_key(key)
        key = key.delete_prefix(@s3_prefix) if @s3_prefix
        return key.tr('/', @s3_delimiter) if @s3_delimiter != '/'
        return key if File::SEPARATOR == '/'

        key.tr('/', File::SEPARATOR)
      end

      def stream_keys(continuation_token: nil)
        resp = @client.list_objects_v2(bucket: @bucket, continuation_token: continuation_token)
        resp.contents.each do |o|
          break if @abort_download
          next if o.key.end_with?('/')

          @download_queue << o.key
        end
        stream_keys(continuation_token: resp.next_continuation_token) if resp.next_continuation_token
      end
    end
  end
end
