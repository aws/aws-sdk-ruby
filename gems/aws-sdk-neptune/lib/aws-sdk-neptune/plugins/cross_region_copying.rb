# frozen_string_literal: true

require 'aws-sigv4'

module Aws
  module Neptune
    module Plugins
      # This plugin populates the `:pre_signed_url` request param for APIs
      # that support cross region copying.
      #
      # This parameter is required by RDS when copying an encrypted snapshot
      # across regions. This plugin will be skipped if the `:pre_signed_url`
      # parameter is provided by the user.
      class CrossRegionCopying < Seahorse::Client::Plugin
        # @api private
        class Handler < Seahorse::Client::Handler
          def call(context)
            params = context.params
            if params.is_a?(Hash) &&
               params[:source_region] && !params[:pre_signed_url]
              params[:pre_signed_url] = presigned_url(context, params)
            end
            @handler.call(context)
          end

          private

          def presigned_url(context, params)
            # :source_region is not modeled in the api
            source_region = params.delete(:source_region)
            param_list = Aws::Query::ParamList.new
            param_list.set('Action', context.operation.name)
            param_list.set('DestinationRegion', context.config.region)
            param_list.set('Version', context.config.api.version)
            Aws::Query::ParamBuilder.new(param_list).apply(
              context.operation.input,
              params
            )

            endpoint_params = Aws::Neptune::EndpointParameters.new(
              region: source_region,
              use_dual_stack: context.config.use_dualstack_endpoint,
              use_fips: context.config.use_fips_endpoint
            )
            endpoint = context.config.endpoint_provider
                              .resolve_endpoint(endpoint_params)
            auth_scheme = Aws::Endpoints.resolve_auth_scheme(context, endpoint)

            signer = Aws::Plugins::Sign.signer_for(
              auth_scheme, context.config, source_region
            )

            signer.presign_url(
              http_method: 'GET',
              url: "#{endpoint.url}?#{param_list}",
              expires_in: 3600
            ).to_s
          end
        end

        handler(
          Handler,
          step: :initialize,
          operations: [
            :copy_db_cluster_snapshot,
            :create_db_cluster
          ]
        )
      end
    end
  end
end
