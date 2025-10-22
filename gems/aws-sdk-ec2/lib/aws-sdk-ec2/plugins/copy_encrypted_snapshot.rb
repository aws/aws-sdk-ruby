# frozen_string_literal: true

module Aws
  module EC2
    module Plugins
      # This plugin auto populates the following request params for the CopySnapshot API:
      #
      # * `:destination_region`
      # * `:presigned_url`
      #
      # These params are required by EC2 when copying an encrypted snapshot.
      # @api private
      class CopyEncryptedSnapshot < Smithy::Client::Plugin
        # @api private
        class Handler < Smithy::Client::Handler
          def call(context)
            params = context.params
            raise ArgumentError, 'Source region is required for :copy_snapshot' unless params[:source_region]

            params[:destination_region] = context.config.region
            params[:presigned_url] = presigned_url(context, params)
            @handler.call(context)
          end

          private

          def presigned_url(context, params) # rubocop:disable Metrics/AbcSize
            param_list = Aws::Core::Query::ParamList.new
            param_list.set('Action', 'CopySnapshot')
            param_list.set('DestinationRegion', context.config.region)
            param_list.set('Version', context.config.service.version)
            Aws::Core::Query::ParamBuilder.new(ec2: true).build(context.operation.input, params, param_list)

            endpoint_params = Aws::EC2::EndpointParameters.create(context)
            endpoint_params[:region] = params[:source_region]
            endpoint = context.config.endpoint_provider.resolve(endpoint_params)
            auth = Smithy::Client::Auth.resolve(context, endpoint.properties)

            auth.signer.presign_url(
              region: params[:source_region],
              http_method: 'GET',
              url: "#{endpoint.url}/?#{param_list}",
              expires_in: 3600
            ).url
          end
        end

        handler(Handler, step: :initialize, operations: [:copy_snapshot])
      end
    end
  end
end
