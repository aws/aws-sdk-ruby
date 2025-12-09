# frozen_string_literal: true

module Aws
  module Plugins
    # @api private
    class ChecksumAlgorithm < Seahorse::Client::Plugin
      CHUNK_SIZE = 1 * 1024 * 1024 # one MB

      # determine the set of supported client side checksum algorithms
      # CRC32c requires aws-crt (optional sdk dependency) for support
      CLIENT_ALGORITHMS = begin
        supported = %w[SHA256 SHA1 CRC32]
        begin
          require 'aws-crt'
          supported << 'CRC32C'
          supported << 'CRC64NVME' if Aws::Crt::GEM_VERSION >= '0.3.0'
        rescue LoadError
          # Ignored
        end
        supported
      end.freeze

      CRT_ALGORITHMS = %w[CRC32C CRC64NVME].freeze

      # Priority order of checksum algorithms to validate responses against.
      # Remove any algorithms not supported by client (ie, depending on CRT availability).
      # This list was chosen based on average performance.
      CHECKSUM_ALGORITHM_PRIORITIES = %w[CRC32 CRC32C CRC64NVME SHA1 SHA256] & CLIENT_ALGORITHMS

      # byte size of checksums, used in computing the trailer length
      CHECKSUM_SIZE = {
        'CRC32' => 9,
        'CRC32C' => 9,
        'CRC64NVME' => 13,
        # SHA functions need 1 byte padding because of how they are encoded
        'SHA1' => 28 + 1,
        'SHA256' => 44 + 1
      }.freeze

      DEFAULT_CHECKSUM = 'CRC32'

      option(:request_checksum_calculation,
             doc_default: 'when_supported',
             doc_type: 'String',
             docstring: <<~DOCS) do |cfg|
               Determines when a checksum will be calculated for request payloads. Values are:

               * `when_supported` - (default) When set, a checksum will be
                 calculated for all request payloads of operations modeled with the
                 `httpChecksum` trait where `requestChecksumRequired` is `true` and/or a
                 `requestAlgorithmMember` is modeled.
               * `when_required` - When set, a checksum will only be calculated for
                 request payloads of operations modeled with the  `httpChecksum` trait where
                 `requestChecksumRequired` is `true` or where a `requestAlgorithmMember`
                 is modeled and supplied.
             DOCS
        resolve_request_checksum_calculation(cfg)
      end

      option(:response_checksum_validation,
             doc_default: 'when_supported',
             doc_type: 'String',
             docstring: <<~DOCS) do |cfg|
               Determines when checksum validation will be performed on response payloads. Values are:

               * `when_supported` - (default) When set, checksum validation is performed on all
                 response payloads of operations modeled with the `httpChecksum` trait where
                 `responseAlgorithms` is modeled, except when no modeled checksum algorithms
                 are supported.
               * `when_required` - When set, checksum validation is not performed on
                 response payloads of operations unless the checksum algorithm is supported and
                 the `requestValidationModeMember` member is set to `ENABLED`.
             DOCS
        resolve_response_checksum_validation(cfg)
      end

      class << self
        def digest_for_algorithm(algorithm)
          case algorithm
          when 'CRC32'
            Digest.new(Zlib.method(:crc32), 'N')
          when 'CRC32C'
            Digest.new(Aws::Crt::Checksums.method(:crc32c), 'N')
          when 'CRC64NVME'
            Digest.new(Aws::Crt::Checksums.method(:crc64nvme), 'Q>')
          when 'SHA1'
            ::Digest::SHA1.new
          when 'SHA256'
            ::Digest::SHA256.new
          else
            raise ArgumentError,
                  "#{algorithm} is not a supported checksum algorithm."
          end
        end

        # The trailer size (in bytes) is the overhead (0, \r, \n) + the trailer
        # name + the bytesize of the base64 encoded checksum.
        def trailer_length(algorithm, location_name)
          7 + location_name.size + CHECKSUM_SIZE[algorithm]
        end

        private

        def resolve_request_checksum_calculation(cfg)
          mode = ENV['AWS_REQUEST_CHECKSUM_CALCULATION'] ||
                 Aws.shared_config.request_checksum_calculation(profile: cfg.profile) ||
                 'when_supported'
          mode = mode.downcase
          unless %w[when_supported when_required].include?(mode)
            raise ArgumentError,
                  'expected :request_checksum_calculation or' \
                  " ENV['AWS_REQUEST_CHECKSUM_CALCULATION'] to be " \
                  '`when_supported` or `when_required`.'
          end
          mode
        end

        def resolve_response_checksum_validation(cfg)
          mode = ENV['AWS_RESPONSE_CHECKSUM_VALIDATION'] ||
                 Aws.shared_config.response_checksum_validation(profile: cfg.profile) ||
                 'when_supported'
          mode = mode.downcase
          unless %w[when_supported when_required].include?(mode)
            raise ArgumentError,
                  'expected :response_checksum_validation or' \
                  " ENV['AWS_RESPONSE_CHECKSUM_VALIDATION'] to be " \
                  '`when_supported` or `when_required`.'
          end
          mode
        end
      end

      # Interface for computing digests on request/response bodies
      # which may be files, strings or IO like objects.
      # Applies only to digest functions that produce 32 or 64 bit
      # integer checksums (eg CRC32 or CRC64).
      class Digest
        def initialize(digest_fn, directive)
          @digest_fn = digest_fn
          @directive = directive
          @value = 0
        end

        def update(chunk)
          @value = @digest_fn.call(chunk, @value)
        end

        def base64digest
          Base64.encode64([@value].pack(@directive)).chomp
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(OptionHandler, step: :initialize)
        # Priority is set low to ensure the checksum is computed AFTER the
        # request is built but before it is signed.
        handlers.add(ChecksumHandler, priority: 15, step: :build)
      end

      class OptionHandler < Seahorse::Client::Handler
        def call(context)
          context[:http_checksum] ||= {}

          # Set validation mode to enabled when supported.
          if context.config.response_checksum_validation == 'when_supported'
            enable_request_validation_mode(context)
          end

          @handler.call(context)
        end

        private

        def enable_request_validation_mode(context)
          return unless context.operation.http_checksum

          input_member = context.operation.http_checksum['requestValidationModeMember']
          context.params[input_member.to_sym] ||= 'ENABLED' if input_member
        end
      end

      class ChecksumHandler < Seahorse::Client::Handler
        def call(context)
          algorithm = nil
          if should_calculate_request_checksum?(context)
            algorithm = choose_request_algorithm!(context)
            request_algorithm = {
              algorithm: algorithm,
              in: checksum_request_in(context),
              name: "x-amz-checksum-#{algorithm.downcase}",
              request_algorithm_header: request_algorithm_header(context)
            }
            context[:http_checksum][:request_algorithm] = request_algorithm
            calculate_request_checksum(context, request_algorithm)
          end

          if should_verify_response_checksum?(context)
            add_verify_response_checksum_handlers(context)
          end

          with_metrics(context.config, algorithm) { @handler.call(context) }
        end

        private

        def with_metrics(config, algorithm, &block)
          metrics = []
          add_request_config_metric(config, metrics)
          add_response_config_metric(config, metrics)
          add_request_checksum_metrics(algorithm, metrics)
          Aws::Plugins::UserAgent.metric(*metrics, &block)
        end

        def add_request_config_metric(config, metrics)
          case config.request_checksum_calculation
          when 'when_supported'
            metrics << 'FLEXIBLE_CHECKSUMS_REQ_WHEN_SUPPORTED'
          when 'when_required'
            metrics << 'FLEXIBLE_CHECKSUMS_REQ_WHEN_REQUIRED'
          end
        end

        def add_response_config_metric(config, metrics)
          case config.response_checksum_validation
          when 'when_supported'
            metrics << 'FLEXIBLE_CHECKSUMS_RES_WHEN_SUPPORTED'
          when 'when_required'
            metrics << 'FLEXIBLE_CHECKSUMS_RES_WHEN_REQUIRED'
          end
        end

        def add_request_checksum_metrics(algorithm, metrics)
          case algorithm
          when 'CRC32'
            metrics << 'FLEXIBLE_CHECKSUMS_REQ_CRC32'
          when 'CRC32C'
            metrics << 'FLEXIBLE_CHECKSUMS_REQ_CRC32C'
          when 'CRC64NVME'
            metrics << 'FLEXIBLE_CHECKSUMS_REQ_CRC64'
          when 'SHA1'
            metrics << 'FLEXIBLE_CHECKSUMS_REQ_SHA1'
          when 'SHA256'
            metrics << 'FLEXIBLE_CHECKSUMS_REQ_SHA256'
          end
        end

        def request_algorithm_selection(context)
          return unless context.operation.http_checksum

          input_member = context.operation.http_checksum['requestAlgorithmMember']

          context.params[input_member.to_sym] ||= DEFAULT_CHECKSUM if input_member
        end

        def request_algorithm_header(context)
          input_member = context.operation.http_checksum['requestAlgorithmMember']
          shape = context.operation.input.shape.member(input_member)
          shape.location_name if shape && shape.location == 'header'
        end

        def request_validation_mode(context)
          return unless context.operation.http_checksum

          input_member = context.operation.http_checksum['requestValidationModeMember']
          context.params[input_member.to_sym] if input_member
        end

        def operation_response_algorithms(context)
          return unless context.operation.http_checksum

          context.operation.http_checksum['responseAlgorithms']
        end

        def checksum_provided_as_header?(headers)
          headers.any? { |k, _| k.start_with?('x-amz-checksum-') }
        end

        # Determines whether a request checksum should be calculated.
        # 1. **No existing checksum in header**: Skips if checksum header already present
        # 2. **Operation support**: Considers model, client configuration and user input.
        def should_calculate_request_checksum?(context)
          !checksum_provided_as_header?(context.http_request.headers) &&
            checksum_applicable?(context)
        end

        # Checks if checksum calculation should proceed based on operation requirements and client settings.
        # Returns true when any of these conditions are met:
        # 1. http checksum's requestChecksumRequired is true
        # 2. Config for request_checksum_calculation is "when_supported"
        # 3. Config for request_checksum_calculation is "when_required" AND user provided checksum algorithm
        def checksum_applicable?(context)
          http_checksum = context.operation.http_checksum
          return false unless http_checksum

          return true if http_checksum['requestChecksumRequired']

          return false unless (algorithm_member = http_checksum['requestAlgorithmMember'])

          case context.config.request_checksum_calculation
          when 'when_supported'
            true
          when 'when_required'
            !context.params[algorithm_member.to_sym].nil?
          else
            false
          end
        end

        def choose_request_algorithm!(context)
          algorithm = request_algorithm_selection(context).upcase
          return algorithm if CLIENT_ALGORITHMS.include?(algorithm)

          if CRT_ALGORITHMS.include?(algorithm)
            raise ArgumentError,
                  'CRC32C and CRC64NVME requires CRT support ' \
                  '- install the aws-crt gem'
          end

          raise ArgumentError,
                "#{algorithm} is not a supported checksum algorithm."
        end

        def checksum_request_in(context)
          if context.operation['unsignedPayload'] ||
             context.operation['authtype'] == 'v4-unsigned-body'
            'trailer'
          else
            'header'
          end
        end

        def calculate_request_checksum(context, checksum_properties)
          headers = context.http_request.headers
          if (algorithm_header = checksum_properties[:request_algorithm_header])
            headers[algorithm_header] = checksum_properties[:algorithm]
          end
          case checksum_properties[:in]
          when 'header'
            apply_request_checksum(context, headers, checksum_properties)
          when 'trailer'
            apply_request_trailer_checksum(context, headers, checksum_properties)
          else
            # nothing
          end
        end

        def apply_request_checksum(context, headers, checksum_properties)
          header_name = checksum_properties[:name]
          body = context.http_request.body_contents
          headers[header_name] = calculate_checksum(
            checksum_properties[:algorithm],
            body
          )
        end

        def calculate_checksum(algorithm, body)
          digest = ChecksumAlgorithm.digest_for_algorithm(algorithm)
          if body.respond_to?(:read)
            update_in_chunks(digest, body)
          else
            digest.update(body)
          end
          digest.base64digest
        end

        def update_in_chunks(digest, io)
          loop do
            chunk = io.read(CHUNK_SIZE)
            break unless chunk

            digest.update(chunk)
          end
          io.rewind
        end

        def apply_request_trailer_checksum(context, headers, checksum_properties)
          location_name = checksum_properties[:name]

          # set required headers
          headers['Content-Encoding'] = 'aws-chunked'
          headers['X-Amz-Content-Sha256'] = 'STREAMING-UNSIGNED-PAYLOAD-TRAILER'
          headers['X-Amz-Trailer'] = location_name

          # We currently always compute the size in the modified body wrapper - allowing us
          # to set the Content-Length header (set by content_length plugin).
          # This means we cannot use Transfer-Encoding=chunked

          unless context.http_request.body.respond_to?(:size)
            raise Aws::Errors::ChecksumError, 'Could not determine length of the body'
          end
          headers['X-Amz-Decoded-Content-Length'] = context.http_request.body.size

          context.http_request.body = AwsChunkedTrailerDigestIO.new(
            context.http_request.body,
            checksum_properties[:algorithm],
            location_name
          )
        end

        def should_verify_response_checksum?(context)
          request_validation_mode(context) == 'ENABLED'
        end

        # Add events to the http_response to verify the checksum as its read
        # This prevents the body from being read multiple times
        # verification is done only once a successful response has completed
        def add_verify_response_checksum_handlers(context)
          checksum_context = {}
          add_verify_response_headers_handler(context, checksum_context)
          add_verify_response_data_handler(context, checksum_context)
          add_verify_response_success_handler(context, checksum_context)
        end

        def add_verify_response_headers_handler(context, checksum_context)
          validation_list = CHECKSUM_ALGORITHM_PRIORITIES &
                            operation_response_algorithms(context)
          context[:http_checksum][:validation_list] = validation_list

          context.http_response.on_headers do |_status, headers|
            header_name, algorithm = response_header_to_verify(
              headers,
              validation_list
            )
            next unless header_name

            expected = headers[header_name]
            next if context[:http_checksum][:skip_on_suffix] && /-\d+$/.match(expected)

            checksum_context[:algorithm] = algorithm
            checksum_context[:header_name] = header_name
            checksum_context[:digest] = ChecksumAlgorithm.digest_for_algorithm(algorithm)
            checksum_context[:expected] = expected
          end
        end

        def add_verify_response_data_handler(context, checksum_context)
          context.http_response.on_data do |chunk|
            checksum_context[:digest]&.update(chunk)
          end
        end

        def add_verify_response_success_handler(context, checksum_context)
          context.http_response.on_success do
            next unless checksum_context[:digest]

            computed = checksum_context[:digest].base64digest
            if computed == checksum_context[:expected]
              context[:http_checksum][:validated] = checksum_context[:algorithm]
            else
              raise Aws::Errors::ChecksumError,
                    "Checksum validation failed on #{checksum_context[:header_name]} "\
                    "computed: #{computed}, expected: #{checksum_context[:expected]}"
            end
          end
        end

        def response_header_to_verify(headers, validation_list)
          validation_list.each do |algorithm|
            header_name = "x-amz-checksum-#{algorithm.downcase}"
            return [header_name, algorithm] if headers[header_name]
          end
          nil
        end
      end

      # Wrapper for request body that implements application-layer
      # chunking with Digest computed on chunks + added as a trailer
      class AwsChunkedTrailerDigestIO
        CHUNK_SIZE = 16_384

        def initialize(io, algorithm, location_name)
          @io = io
          @location_name = location_name
          @algorithm = algorithm
          @digest = ChecksumAlgorithm.digest_for_algorithm(algorithm)
          @trailer_io = nil
        end

        # the size of the application layer aws-chunked + trailer body
        def size
          # compute the number of chunks
          # a full chunk has 4 + 4 bytes overhead, a partial chunk is len.to_s(16).size + 4
          orig_body_size = @io.size
          n_full_chunks = orig_body_size / CHUNK_SIZE
          partial_bytes = orig_body_size % CHUNK_SIZE
          chunked_body_size = n_full_chunks * (CHUNK_SIZE + 8)
          chunked_body_size += partial_bytes.to_s(16).size + partial_bytes + 4 unless  partial_bytes.zero?
          trailer_size = ChecksumAlgorithm.trailer_length(@algorithm, @location_name)
          chunked_body_size + trailer_size
        end

        def rewind
          @io.rewind
        end

        def read(length, buf = nil)
          # account for possible leftover bytes at the end, if we have trailer bytes, send them
          if @trailer_io
            return @trailer_io.read(length, buf)
          end

          chunk = @io.read(length)
          if chunk
            @digest.update(chunk)
            application_chunked = "#{chunk.bytesize.to_s(16)}\r\n#{chunk}\r\n"
            return StringIO.new(application_chunked).read(application_chunked.size, buf)
          else
            trailers = {}
            trailers[@location_name] = @digest.base64digest
            trailers = trailers.map { |k,v| "#{k}:#{v}" }.join("\r\n")
            @trailer_io = StringIO.new("0\r\n#{trailers}\r\n\r\n")
            chunk = @trailer_io.read(length, buf)
          end
          chunk
        end
      end
    end
  end
end
