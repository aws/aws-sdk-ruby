# frozen_string_literal: true

require 'openssl'

module Aws
  module SQS
    # @api private
    module Plugins
      # @api private
      class VerifyChecksums < Smithy::Client::Plugin
        option(
          :verify_checksums,
          doc_default: true,
          doc_type: 'Boolean',
          docstring: <<~DOCS
            When `true`, MD5 checksums will be computed for messages sent to an SQS queue and matched against
            MD5 checksums returned by Amazon SQS. `Aws::Core::Errors::Checksum` errors are raised for cases
            where checksums do not match.
          DOCS
        ) do |config|
          # By default, we will disable checksum verification when response stubbing is enabled.
          # If a user decides to enable both features, then they will need to stub the MD5s in the response.
          # See the spec/aws/sqs/client/verify_checksums_spec.rb for examples of how to do this.
          !config.stub_responses
        end

        def add_handlers(handlers, config)
          return unless config.verify_checksums

          handlers.add(Handler, step: :validate, operations: %i[send_message send_message_batch])
        end

        # @api private
        class Handler < Smithy::Client::Handler
          def call(context)
            @handler.call(context).on_done(200..299) do |response|
              case context.operation_name
              when :send_message
                validate_send_message(context, response)
              when :send_message_batch
                validate_send_message_batch(context, response)
              end
            end
          end

          private

          def validate_send_message(context, response)
            body = context.params[:message_body]
            attributes = context.params[:message_attributes]
            system_attributes = context.params[:message_system_attributes]
            validate_single_message(body, attributes, system_attributes, response)
          end

          def validate_send_message_batch(context, response)
            context.params[:entries].each do |entry|
              id = entry[:id]
              body = entry[:message_body]
              attributes = entry[:message_attributes]
              system_attributes = entry[:message_system_attributes]
              message_response = response.successful.find { |r| r.id == id }
              next if message_response.nil?

              validate_single_message(body, attributes, system_attributes, message_response)
            end
          end

          def validate_single_message(body, attributes, system_attributes, response)
            validate_body(body, response)
            validate_attributes(attributes, response) unless attributes.nil? || attributes.empty?
            return if system_attributes.nil? || system_attributes.empty?

            validate_system_attributes(system_attributes, response)
          end

          def validate_body(body, response)
            calculated_md5 = md5_of_message_body(body)
            returned_md5 = response.md5_of_message_body
            return unless calculated_md5 != returned_md5

            error_message = mismatch_error_message('message body', calculated_md5, returned_md5, response)
            raise Aws::Core::Errors::ChecksumError, error_message
          end

          def validate_attributes(attributes, response)
            calculated_md5 = md5_of_attributes(attributes)
            returned_md5 = response.md5_of_message_attributes
            return unless returned_md5 != calculated_md5

            error_message = mismatch_error_message('message attributes', calculated_md5, returned_md5, response)
            raise Aws::Core::Errors::ChecksumError, error_message
          end

          def validate_system_attributes(system_attributes, response)
            calculated_md5 = md5_of_attributes(system_attributes)
            returned_md5 = response.md5_of_message_system_attributes
            return unless returned_md5 != calculated_md5

            error_message = mismatch_error_message('message system attributes', calculated_md5, returned_md5, response)
            raise Aws::Core::Errors::ChecksumError, error_message
          end

          def md5_of_message_body(message_body)
            OpenSSL::Digest::MD5.hexdigest(message_body)
          end

          def md5_of_attributes(attributes)
            encoded = encode_attributes(attributes)
            buffer = build_sorted_buffer(encoded)
            OpenSSL::Digest::MD5.hexdigest(buffer)
          end

          def encode_attributes(attributes)
            transport_type_encodings = { 'String' => 1, 'Binary' => 2, 'Number' => 1 }
            data_type_pattern = /\A(String|Binary|Number)(\..+)?\z/

            encoded = {}
            attributes.each do |name, attribute|
              encoded[name.to_s] = encode_single_attribute(name, attribute, transport_type_encodings, data_type_pattern)
            end
            encoded
          end

          def encode_single_attribute(name, attribute, transport_type_encodings, data_type_pattern)
            encoded = encode_attribute_metadata(name, attribute, transport_type_encodings, data_type_pattern)
            encoded << encode_attribute_value(attribute)
            encoded
          end

          def encode_attribute_metadata(name, attribute, transport_type_encodings, data_type_pattern)
            name_str = name.to_s
            data_type = attribute[:data_type]
            data_type_without_label = data_type_pattern.match(data_type)[1]
            transport_type = [transport_type_encodings[data_type_without_label]].pack('C')

            encoded = String.new
            encoded << encode_length_and_bytes(name_str)
            encoded << encode_length_and_bytes(data_type)
            encoded << transport_type
            encoded
          end

          def encode_attribute_value(attribute)
            if !attribute[:string_value].nil?
              encode_length_and_string(attribute[:string_value])
            elsif !attribute[:binary_value].nil?
              encode_length_and_bytes(attribute[:binary_value])
            else
              ''
            end
          end

          def build_sorted_buffer(encoded)
            encoded.keys.sort.reduce(String.new) do |string, name|
              string << encoded[name]
            end
          end

          def encode_length_and_string(string)
            string = String.new(string)
            string.encode!(Encoding::UTF_8)
            encode_length_and_bytes(string)
          end

          def encode_length_and_bytes(bytes)
            [bytes.bytesize, bytes].pack('L>a*')
          end

          def mismatch_error_message(section, local_md5, returned_md5, response)
            id_part = response.respond_to?(:id) && !response.id.nil? ? "Message ID: #{response.id}, " : ''
            "MD5 returned by SQS does not match the calculation on the original request. (#{id_part}MD5 " \
              "calculated by the #{section}: '#{local_md5}', MD5 checksum returned: '#{returned_md5}')"
          end
        end
      end
    end
  end
end
