require 'pathname'

module Aws
  module S3
    # @api private
    class FileUploader

      FIFTEEN_MEGABYTES = 15 * 1024 * 1024

      # @param [Hash] options
      # @option options [Client] :client
      # @option options [Integer] :multipart_threshold (15728640)
      def initialize(options = {})
        @options = options
        @client = options[:client] || Client.new
        @multipart_threshold = options[:multipart_threshold] ||
                               FIFTEEN_MEGABYTES
      end

      # @return [Client]
      attr_reader :client

      # @return [Integer] Files larger than this in bytes are uploaded
      #   using a {MultipartFileUploader}.
      attr_reader :multipart_threshold

      # @param [String, Pathname, File, Tempfile] source The file to upload.
      # @option options [required, String] :bucket The bucket to upload to.
      # @option options [required, String] :key The key for the object.
      # @return [void]
      def upload(source, options = {})
        if File.size(source) >= multipart_threshold
          MultipartFileUploader.new(@options).upload(source, options)
        else
          put_object(source, options)
        end
      end

      private

      def open_file(source)
        if String === source || Pathname === source
          File.open(source, 'rb') { |file| yield(file) }
        else
          yield(source)
        end
      end

      def put_object(source, options)
        open_file(source) do |file|
          @client.put_object(options.merge(body: file))
        end
      end

    end
  end
end
