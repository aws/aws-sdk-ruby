# frozen_string_literal: true

module Aws
  module S3
    # @api private
    class DirectoryDownloader
      def initialize(options = {})
        @client = options[:client] || Client.new
        @executor = options[:executor]
      end

      attr_reader :client, :executor

      def download(destination, bucket:, **options)
        # TODO
      end
    end
  end
end
