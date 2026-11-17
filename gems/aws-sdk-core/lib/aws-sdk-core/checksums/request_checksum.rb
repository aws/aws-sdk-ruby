# frozen_string_literal: true

require_relative '../checksums'
require_relative 'trailer_io'

module Aws
  module Core
    module Checksums
      # Applies a modeled or supplied checksum to a serialized request.
      class RequestChecksum
        # Bound memory use while avoiding excessive reads for large bodies.
        CHUNK_SIZE = 1 * 1024 * 1024
        CONTROL_HEADERS = %w[
          x-amz-checksum-type
          x-amz-checksum-mode
          x-amz-checksum-algorithm
        ].freeze

        def initialize(context, checksum)
          @context = context
          @checksum = checksum
        end

        def apply
          supplied_header = supplied_checksum_header
          return apply_supplied_checksum(supplied_header) if supplied_header
          return unless applicable?

          apply_calculated_checksum
        end

        private

        def apply_supplied_checksum(header)
          remove_algorithm_header
          @context[:http_checksum][:request_algorithm] = {
            algorithm: header.delete_prefix('x-amz-checksum-').upcase,
            in: 'header',
            name: header,
            supplied: true
          }
          nil
        end

        def apply_calculated_checksum
          algorithm = selected_algorithm
          header_name = "x-amz-checksum-#{algorithm.downcase}"
          location = request_location
          remove_flexible_checksum_headers
          @context[:http_checksum][:request_algorithm] = {
            algorithm: algorithm,
            in: location,
            name: header_name
          }
          if location == 'trailer'
            apply_trailer_checksum(algorithm, header_name)
          else
            headers[header_name] = calculate(algorithm, request.body)
          end
          algorithm
        end

        def request_location
          return 'header' unless streaming_request?
          return 'header' unless @context.operation.traits.key?('aws.auth#unsignedPayload')
          return 'header' if trailer_fallback?

          'trailer'
        end

        def streaming_request?
          !SCHEMA_EXTENSION.streaming_member(@context.operation.input).nil?
        end

        def trailer_fallback?
          return true if defined?(JRUBY_VERSION)
          return true if request.endpoint.scheme == 'http'

          @context[:skip_trailer_checksums]
        end

        def apply_trailer_checksum(algorithm, header_name)
          body = request.body
          unless body.respond_to?(:size)
            raise Aws::Core::Errors::ChecksumError,
                  'Could not determine length of the body'
          end

          apply_trailer_headers(body.size, header_name)
          request.body = TrailerIO.new(
            io: body,
            algorithm: algorithm,
            trailer_name: header_name
          )
        end

        def apply_trailer_headers(body_size, header_name)
          headers['Content-Encoding'] =
            [headers['Content-Encoding'], 'aws-chunked'].compact.join(', ')
          headers['X-Amz-Content-Sha256'] = 'STREAMING-UNSIGNED-PAYLOAD-TRAILER'
          headers['X-Amz-Trailer'] = header_name
          headers['X-Amz-Decoded-Content-Length'] = body_size
        end

        def supplied_checksum_header
          headers.keys.find { |header| flexible_checksum_header?(header) }
        end

        def flexible_checksum_header?(header)
          header.start_with?('x-amz-checksum-') && !CONTROL_HEADERS.include?(header)
        end

        def remove_flexible_checksum_headers
          # Smithy::Client::Http::Headers does not implement each_key.
          # rubocop:disable-next Style/HashEachMethods
          headers.each do |header, _value|
            headers.delete(header) if flexible_checksum_header?(header)
          end
        end

        def remove_algorithm_header
          return unless (header = @checksum[:request_algorithm_header])

          headers.delete(header)
          return unless @context[:http_checksum][:defaulted_request_algorithm]

          @context.params.delete(@checksum[:request_algorithm_member])
        end

        def applicable?
          return true if @checksum[:request_checksum_required]
          return false unless (member = @checksum[:request_algorithm_member])

          case @context.config.request_checksum_calculation
          when 'when_supported'
            true
          when 'when_required'
            !@context.params[member].nil?
          else
            false
          end
        end

        def selected_algorithm
          member = @checksum[:request_algorithm_member]
          algorithm = member ? @context.params[member] : nil
          Checksums.validate_algorithm!(algorithm || Checksums::DEFAULT_ALGORITHM)
        end

        def calculate(algorithm, body)
          digest = Checksums.digest_for(algorithm)
          if body.respond_to?(:read)
            body.rewind
            loop do
              chunk = body.read(CHUNK_SIZE)
              break if chunk.nil? || chunk.empty?

              digest.update(chunk)
            end
          else
            digest.update(body)
          end
          digest.base64digest
        ensure
          body.rewind if body.respond_to?(:rewind)
        end

        def request
          @context.http_request
        end

        def headers
          request.headers
        end
      end
    end
  end
end
