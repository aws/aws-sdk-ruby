# frozen_string_literal: true

module Aws
  module S3
    # @api private
    class DirectoryUploader
      def initialize(options = {})
        @client = options[:client] || Client.new
        @executor = options[:executor]
      end

      attr_reader :client, :executor

      def upload(source, bucket:, **options)
        # TODO
      end
    end
  end
end
