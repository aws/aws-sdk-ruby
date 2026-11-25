# frozen_string_literal: true

require_relative '../checksums'
require_relative 'trailer_io'

module Aws
  module Core
    module Checksums
      # Applies a modeled or supplied checksum to a serialized request.
      # @api private
      class RequestChecksum
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
          return apply_supplied_checksum if supplied_header
          return unless calculation_enabled?

          apply_calculated_checksum
        end

        private

        def apply_supplied_checksum
          remove_algorithm_header
          @context[:http_checksum][:request_checksum_applied] = true
          nil
        end

        def apply_calculated_checksum
          algorithm = selected_algorithm
          header_name = Checksums.header_name(algorithm)
          location = request_location
          remove_flexible_checksum_headers
          normalize_algorithm_header(algorithm)
          @context[:http_checksum][:request_checksum_applied] = true
          if location == 'trailer'
            apply_trailer_checksum(algorithm, header_name)
          else
            headers[header_name] = calculate(algorithm, request.body)
          end
          algorithm
        end

        def request_location
          return 'header' unless Extension.http_checksum_trailer_eligible?(@context.operation)
          return 'header' if trailer_fallback?

          'trailer'
        end

        def trailer_fallback?
          # Match V3's conservative fallback for known JRuby OpenSSL network
          # issues when streaming unsigned payload trailers.
          # TODO: Verify whether current JRuby versions still require this.
          return true if defined?(JRUBY_VERSION)
          return true if request.endpoint.scheme == 'http'

          @context[:skip_trailer_checksums]
        end

        def apply_trailer_checksum(algorithm, header_name)
          body = request.body
          unless body.respond_to?(:size)
            raise Aws::Core::Errors::ChecksumError, 'Could not determine length of the body'
          end

          apply_trailer_headers(body.size, header_name)
          request.body = TrailerIO.new(
            io: body,
            algorithm: algorithm,
            trailer_name: header_name
          )
        end

        def apply_trailer_headers(body_size, header_name)
          # TODO(Ruby-5258): Complete the S3-specific aws-chunked framing,
          # including PutObject unsigned-payload behavior, in the S3 follow-up.
          headers['Content-Encoding'] =
            [headers['Content-Encoding'], 'aws-chunked'].compact.join(', ')
          # TODO(Ruby-5273): Select signed or unsigned streaming and add running
          # chunk and trailer signatures for signed aws-chunked requests.
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

        def normalize_algorithm_header(algorithm)
          header = @checksum[:request_algorithm_header]
          headers[header] = algorithm if header && headers[header]
        end

        def remove_algorithm_header
          return unless (header = @checksum[:request_algorithm_header])

          headers.delete(header)
          return unless @context[:http_checksum][:defaulted_request_algorithm]

          @context.params.delete(@checksum[:request_algorithm_member])
        end

        def calculation_enabled?
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
