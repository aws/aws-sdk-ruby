# frozen_string_literal: true

module Aws
  module S3
    # A high-level S3 transfer utility that provides enhanced upload and download
    # capabilities with automatic multipart handling, progress tracking, and
    # handling of large files. The following features are supported:
    #
    # * upload a S3 object with multipart upload
    # * download a S3 object with multipart download
    # * track transfer progress by using progress listener
    class TransferManager
      def initialize(options = {})
        @client = options.delete(:client) || Client.new
      end

      attr_reader :client

      def upload_file(source, options = {})
        uploading_options = options.dup
        uploader = FileUploader.new(
          multipart_threshold: uploading_options.delete(:multipart_threshold),
          client: @client
        )
        # TODO: wrap with user-agent metric tracking
        response = uploader.upload(source, uploading_options)
        yield response if block_given?
        true
      end

      def upload_stream(options = {}, &block)
        uploading_options = options.dup
        uploader = MultipartStreamUploader.new(
          client: @client,
          thread_count: uploading_options.delete(:thread_count),
          tempfile: uploading_options.delete(:tempfile),
          part_size: uploading_options.delete(:part_size)
        )
        # TODO: wrap with user-agent metric tracking
        uploader.upload(uploading_options, &block)
        true
      end

      def download_file(destination, options = {})
        downloader = FileDownloader.new(client: @client)
        # TODO: wrap with user-agent metric tracking
        downloader.download(destination, options)
        true
      end
    end
  end
end
