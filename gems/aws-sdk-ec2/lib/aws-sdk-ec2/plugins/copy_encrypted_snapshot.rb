# frozen_string_literal: true

require 'aws-sigv4'

module Aws
  module EC2
    module Plugins

      # This plugin auto populates the following request params for the
      # CopySnapshot API:
      #
      # * `:destination_region`
      # * `:presigned_url`
      #
      # These params are required by EC2 when copying an encrypted snapshot.
      # @api private
      class CopyEncryptedSnapshot < Seahorse::Client::Plugin

        # @api private
        class Handler < Seahorse::Client::Handler

          def call(context)
            params = context.params
            params[:destination_region] = context.config.region
            params[:presigned_url] = presigned_url(context, params)
            @handler.call(context)
          end

          private

          def presigned_url(context, params)
            param_list = Aws::Query::ParamList.new
            param_list.set('Action', 'CopySnapshot')
            param_list.set('DestinationRegion', context.config.region)
            param_list.set('Version', context.config.api.version)
            Aws::Query::EC2ParamBuilder.new(param_list).apply(
              context.operation.input, params
            )

            endpoint_params = Aws::EC2::EndpointParameters.new(
              region: params[:source_region],
              use_dual_stack: context.config.use_dualstack_endpoint,
              use_fips: context.config.use_fips_endpoint,
            )
            endpoint = context.config.endpoint_provider
                              .resolve_endpoint(endpoint_params)
            auth_scheme = Aws::Endpoints.resolve_auth_scheme(endpoint, context)

            signer = Aws::Sigv4::Signer.new(
              service: auth_scheme['signingName'] || 'ec2',
              region: auth_scheme['signingRegion'] || params[:source_region],
              credentials_provider: context.config.credentials
            )

            signer.presign_url(
              http_method: 'GET',
              url: "#{endpoint.url}?#{param_list}",
              body: '',
              expires_in: 3600
            ).to_s
          end

        end

        handler(Handler, step: :initialize, operations: [:copy_snapshot])

      end
    end
  end
end
