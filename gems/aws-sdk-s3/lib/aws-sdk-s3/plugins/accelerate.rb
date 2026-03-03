# frozen_string_literal: true

module Aws
  module S3
    module Plugins
      # Provides support for using `Aws::S3::Client` with Amazon S3 Transfer Acceleration.
      #
      # Go here for more information about transfer acceleration:
      # [http://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html](http://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html)
      class Accelerate < Smithy::Client::Plugin
        option(
          :s3_use_accelerate_endpoint,
          default: false,
          doc_type: 'Boolean',
          docstring: <<~DOCS)
            When set to `true`, accelerated bucket endpoints will be used for all object operations. You must first
            enable accelerate for each bucket. [Go here for more information](https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html).
          DOCS

        def add_handlers(handlers, config)
          operations = config.service.operation_names - %i[create_bucket list_buckets delete_bucket]
          handlers.add(OptionHandler, step: :initialize, operations: operations)
        end

        # @api private
        class OptionHandler < Smithy::Client::Handler
          def call(context)
            # TODO: move this to an options hash and warn here
            # Support client configuration and per-operation configuration
            accelerate = context.params.delete(:s3_use_accelerate_endpoint) if context.params.is_a?(Hash)
            accelerate = context.config.s3_use_accelerate_endpoint if accelerate.nil?
            context[:s3_use_accelerate_endpoint] = accelerate
            @handler.call(context)
          end
        end
      end
    end
  end
end
