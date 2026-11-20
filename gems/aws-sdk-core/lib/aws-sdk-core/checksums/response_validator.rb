# frozen_string_literal: true

require 'base64'
require_relative '../checksums'

module Aws
  module Core
    module Checksums
      # Updates one digest as response chunks arrive, so validation does not
      # retain a second copy of the payload in memory.
      # @api private
      class ResponseValidator
        def initialize(context, checksum)
          @context = context
          @checksum = checksum
          @skip_response_validation =
            context[:http_checksum]&.[](:skip_response_validation)
          @state = {}
        end

        def register
          return self unless validation_enabled?

          validation_list = validation_algorithms
          add_headers_listener(validation_list)
          add_data_listener
          add_success_listener
          self
        end

        def raise_if_failed
          raise @state[:error] if @state[:error]
        end

        private

        def validation_algorithms
          Extension.http_checksum_validation_algorithms(
            @context.operation,
            Checksums::RESPONSE_ALGORITHM_PRIORITIES
          )
        end

        def validation_enabled?
          return false unless @checksum
          return false if @checksum[:response_algorithms].empty?

          member = @checksum[:request_validation_mode_member]

          member && @context.params[member] == 'ENABLED'
        end

        def add_headers_listener(validation_list)
          @context.http_response.on_headers do |_status, headers|
            @state.clear
            prepare_validation(headers, validation_list)
          end
        end

        def add_data_listener
          @context.http_response.on_data do |chunk|
            @state[:digest]&.update(chunk)
          end
        end

        def add_success_listener
          @context.http_response.on_success(200..299) do
            next unless @state[:digest]

            computed = @state[:digest].base64digest
            record_failure(computed) unless computed == @state[:expected]
          end
        end

        def skip_response_validation?(expected)
          # Service plugins may provide a predicate for response checksum
          # values that Core cannot validate generically.
          expected && @skip_response_validation&.call(expected)
        end

        def prepare_validation(headers, validation_list)
          validation_list.each do |algorithm|
            header_name = Checksums.header_name(algorithm)
            expected = headers[header_name]
            next unless expected
            break if skip_response_validation?(expected)
            next unless valid_base64_checksum?(expected)

            @state[:header_name] = header_name
            @state[:digest] = Checksums.digest_for(algorithm)
            @state[:expected] = expected
            break
          end
        end

        # Valid Base64 values are checksum candidates regardless of decoded length.
        # A nonmatching value must fail validation.
        def valid_base64_checksum?(value)
          return false if value.nil? || value.empty?

          Base64.strict_decode64(value)
          true
        rescue ArgumentError
          false
        end

        def record_failure(computed)
          @state[:error] = Aws::Core::Errors::ChecksumError.new(
            "Checksum validation failed on #{@state[:header_name]} " \
            "computed: #{computed}, expected: #{@state[:expected]}"
          )
        end
      end
    end
  end
end
