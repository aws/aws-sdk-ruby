module Aws
  module Plugins
    class DynamoDBCRC32Validation < Seahorse::Client::Plugin

      option(:compute_checksums, true)

      def add_handlers(handlers, config)
        if config.compute_checksums
          handlers.add(Handler, step: :sign)
        end
      end

      class Handler < Seahorse::Client::Handler

        def call(context)
          context.http_request.headers['accept-encoding'] = '' # disables response gzipping
          @handler.call(context).on_success do |response|
            response.error = validate(context)
          end
        end

        private

        def validate(context)
          unless crc32_is_valid?(context.http_response)
            msg = "Response failed CRC32 check."
            return Aws::DynamoDB::Errors::CRC32CheckFailed.new(context, msg)
          end
        end

        def crc32_is_valid?(response)
          if crc_checksum = response.headers['x-amz-crc32']
            crc_checksum.to_i == calculate_crc32(response.body_contents)
          else
            true
          end
        end

        def calculate_crc32(body)
          Zlib.crc32(body)
        end

      end
    end
  end
end
