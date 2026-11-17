# frozen_string_literal: true

require 'base64'
require_relative '../checksums'

module Aws
  module Core
    module Checksums
      # Validates a modeled checksum with one rolling digest while response
      # data is received, without buffering the payload.
      class ResponseValidator
        def initialize(context, checksum)
          @context = context
          @checksum = checksum
          @state = {}
        end

        def register
          return self unless enabled?

          validation_list = validation_algorithms
          @context[:http_checksum][:validation_list] = validation_list
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
          @context.operation.fetch_metadata(
            :aws_http_checksum_response_algorithms
          ) do
            (
              Checksums::RESPONSE_ALGORITHM_PRIORITIES &
              @checksum[:response_algorithms]
            ).freeze
          end
        end

        def enabled?
          return false unless @checksum
          return false if @checksum[:response_algorithms].empty?

          member = @checksum[:request_validation_mode_member]

          member && @context.params[member] == 'ENABLED'
        end

        def add_headers_listener(validation_list)
          @context.http_response.on_headers do |_status, headers|
            @state.clear
            header_name, algorithm, expected =
              response_header_to_verify(headers, validation_list)
            next unless header_name
            next if skip_checksum?(expected)

            @state[:algorithm] = algorithm
            @state[:header_name] = header_name
            @state[:digest] = Checksums.digest_for(algorithm)
            @state[:expected] = expected
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
            if computed == @state[:expected]
              @context[:http_checksum][:validated] = @state[:algorithm]
            else
              record_failure(computed)
            end
          end
        end

        def skip_checksum?(expected)
          @context[:http_checksum][:skip_on_suffix] &&
            /-\d+$/.match?(expected)
        end

        def response_header_to_verify(headers, validation_list)
          validation_list.each do |algorithm|
            header_name = "x-amz-checksum-#{algorithm.downcase}"
            expected = headers[header_name]
            next unless valid_base64_checksum?(expected)

            return [header_name, algorithm, expected]
          end
          nil
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
