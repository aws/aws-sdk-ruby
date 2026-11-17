# frozen_string_literal: true

require 'base64'
require 'digest'
require 'zlib'

module Aws
  module Core
    # Checksum algorithm metadata and digest construction.
    module Checksums
      DEFAULT_ALGORITHM = 'CRC32'
      SUPPORTED_ALGORITHMS = %w[CRC32 SHA1 SHA256 SHA512].freeze
      # TODO: Add portable incremental implementations for CRC32C,
      # CRC64NVME, and XXHASH algorithms.
      DEFERRED_ALGORITHMS = %w[CRC32C CRC64NVME].freeze
      RESPONSE_ALGORITHM_PRIORITIES =
        (%w[CRC32 SHA1 SHA256 SHA512] & SUPPORTED_ALGORITHMS).freeze
      # Digest adapter for checksum functions that return integers.
      class IntegerDigest
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

      class << self
        def digest_for(algorithm)
          case algorithm
          when 'CRC32'
            IntegerDigest.new(Zlib.method(:crc32), 'N')
          when 'SHA1'
            ::Digest::SHA1.new
          when 'SHA256'
            ::Digest::SHA256.new
          when 'SHA512'
            ::Digest::SHA512.new
          else
            raise ArgumentError, "#{algorithm} is not a supported checksum algorithm."
          end
        end

        def validate_algorithm!(algorithm)
          algorithm = algorithm.to_s.upcase
          return algorithm if SUPPORTED_ALGORITHMS.include?(algorithm)

          raise ArgumentError, "#{algorithm} is not supported." if DEFERRED_ALGORITHMS.include?(algorithm)

          raise ArgumentError, "#{algorithm} is not a supported checksum algorithm."
        end
      end
    end
  end
end

require_relative 'checksums/trailer_io'
require_relative 'checksums/request_checksum'
require_relative 'checksums/response_validator'
