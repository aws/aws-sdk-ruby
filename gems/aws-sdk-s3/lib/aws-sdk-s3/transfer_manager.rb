# frozen_string_literal: true

require_relative 'uploader'

module Aws
  module S3
    # TBD
    class TransferManager
      def initialize(options = {})
        @client = options[:client] || Client.new
      end

      attr_reader :client

      def upload_file(source, options = {})
        # does not copy over nested options
        uploading_options = options.dup
        # create an instance of uploader?
        # use the uploader to upload
        uploader = FileUploader.new(
          client: @client,
          multipart_threshold: options[:multipart_threshold]
        )
        uploader.upload(source, uploading_options)

        # TODO
      end

      def download_file
        # TODO
      end
    end
  end
end
