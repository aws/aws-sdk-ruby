# frozen_string_literal: true

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
            (@context[:http_checksum] ||= {}).delete(:validated)
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
            if computed == @state[:expected]
              @context[:http_checksum][:validated] = @state[:algorithm]
            else
              record_failure(computed)
              # Raising here lets the response record the error and invoke
              # error listeners before returning through the handler stack.
              raise @state[:error]
            end
          end
        end

        def skip_response_validation?(expected)
          # Service plugins may provide a predicate for response checksum
          # values that Core cannot validate generically.
          expected && @skip_response_validation&.call(expected)
        end

        def prepare_validation(headers, validation_list)
          # Automatic stub data is not an HTTP response and has no modeled
          # checksum to validate. Explicit stubs continue through validation.
          return if @context[:generated_stub]

          # TODO: Revisit malformed checksum candidate handling after the
          # Flexible Checksums SEP defines the required behavior.
          validation_list.each do |algorithm|
            header_name = Checksums.header_name(algorithm)
            expected = headers[header_name]
            next unless expected
            break if skip_response_validation?(expected)

            @state[:algorithm] = algorithm
            @state[:header_name] = header_name
            @state[:digest] = Checksums.digest_for(algorithm)
            @state[:expected] = expected
            break
          end
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
