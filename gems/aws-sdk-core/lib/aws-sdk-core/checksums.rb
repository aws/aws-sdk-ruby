# frozen_string_literal: true

require 'base64'
require 'digest'
require 'zlib'

require_relative 'checksums/trailer_io'
require_relative 'checksums/request_checksum'
require_relative 'checksums/response_validator'

module Aws
  module Core
    # Checksum algorithm metadata and digest construction.
    module Checksums
      DEFAULT_ALGORITHM = 'CRC32'

      # V4 currently does not support or load aws-crt. Reassess aws-crt
      # support before adding CRC32C or CRC64NVME; XXHASH requires a
      # portable incremental implementation.
      DEFERRED_ALGORITHMS = %w[CRC32C CRC64NVME].freeze

      # Digest adapter for checksum functions that return integers.
      # @api private
      class IntegerDigestAdapter
        def initialize(digest_fn, directive)
          @digest_fn = digest_fn
          @directive = directive
          @value = 0
        end

        def update(chunk)
          @value = @digest_fn.call(chunk, @value)
          self
        end

        def base64digest
          Base64.strict_encode64([@value].pack(@directive))
        end
      end

      ALGORITHM_METADATA = {
        'CRC32' => {
          digest: -> { IntegerDigestAdapter.new(Zlib.method(:crc32), 'N') },
          base64_length: 8,
          header_name: 'x-amz-checksum-crc32',
          response_priority: 1
        }.freeze,
        'SHA1' => {
          digest: -> { ::Digest::SHA1.new },
          base64_length: 28,
          header_name: 'x-amz-checksum-sha1',
          response_priority: 2
        }.freeze,
        'SHA256' => {
          digest: -> { ::Digest::SHA256.new },
          base64_length: 44,
          header_name: 'x-amz-checksum-sha256',
          response_priority: 3
        }.freeze,
        'SHA512' => {
          digest: -> { ::Digest::SHA512.new },
          base64_length: 88,
          header_name: 'x-amz-checksum-sha512',
          response_priority: 4
        }.freeze
      }.freeze
      private_constant :ALGORITHM_METADATA

      SUPPORTED_ALGORITHMS = ALGORITHM_METADATA.keys.freeze
      RESPONSE_ALGORITHM_PRIORITIES =
        ALGORITHM_METADATA
        .sort_by { |_name, metadata| metadata[:response_priority] }
        .map(&:first)
        .freeze

      class << self
        def digest_for(algorithm)
          metadata_for(algorithm)[:digest].call
        end

        def base64_length(algorithm)
          metadata_for(algorithm)[:base64_length]
        end

        def header_name(algorithm)
          metadata = ALGORITHM_METADATA[algorithm]
          metadata ||= metadata_for(validate_algorithm!(algorithm))
          metadata[:header_name]
        end

        def validate_algorithm!(algorithm)
          algorithm = algorithm.to_s.upcase
          return algorithm if SUPPORTED_ALGORITHMS.include?(algorithm)

          raise ArgumentError, "#{algorithm} is not supported." if DEFERRED_ALGORITHMS.include?(algorithm)

          raise ArgumentError, "#{algorithm} is not a supported checksum algorithm."
        end

        private

        def metadata_for(algorithm)
          ALGORITHM_METADATA.fetch(algorithm) do
            raise ArgumentError, "#{algorithm} is not a supported checksum algorithm."
          end
        end
      end
    end
  end
end
