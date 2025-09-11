# frozen_string_literal: true

module Aws
  module SigV4
    # Contains the results of a signing operation.
    class Signature
      def initialize(options)
        @headers = options.fetch(:headers)
        @canonical_request = options[:canonical_request]
        @string_to_sign = options[:string_to_sign]
        @content_sha256 = options[:content_sha256]
        @signature = options[:signature]
      end

      # @return [Hash<String, String>] A hash of headers that should be applied to the HTTP request.
      #   Header keys are lower cased strings and may include the following:
      #
      #   * 'host'
      #   * 'x-amz-date'
      #   * 'x-amz-security-token'
      #   * 'x-amz-content-sha256'
      #   * 'authorization'
      #
      attr_reader :headers

      # @return [String] For debugging purposes.
      attr_reader :canonical_request

      # @return [String] For debugging purposes.
      attr_reader :string_to_sign

      # @return [String] For debugging purposes.
      attr_reader :content_sha256

      # @return [String] For debugging purposes.
      attr_reader :signature
    end
  end
end
