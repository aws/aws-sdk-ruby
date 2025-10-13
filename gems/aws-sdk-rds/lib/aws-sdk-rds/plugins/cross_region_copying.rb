# frozen_string_literal: true

module Aws
  module RDS
    module Plugins
      # This plugin populates the `:pre_signed_url` request param for APIs that support cross region copying.
      #
      # This parameter is required by RDS when copying an encrypted snapshot across regions.
      # This plugin will be skipped if the `:pre_signed_url` parameter is provided by the user.
      # @api private
      class CrossRegionCopying < Smithy::Client::Plugin
        # @api private
        class Handler < Smithy::Client::Handler
          def call(context)
            params = context.params
            if params[:source_region] && !params[:pre_signed_url]
              params[:pre_signed_url] = presigned_url(context, params)
            end
            @handler.call(context)
          end

          private

          def presigned_url(context, params)
            # :source_region is not modeled in the api
            source_region = params.delete(:source_region)

            param_list = Aws::Core::Query::ParamList.new
            param_list.set('Action', context.operation.name)
            param_list.set('DestinationRegion', context.config.region)
            param_list.set('Version', context.config.service.version)
            Aws::Core::Query::ParamBuilder.new.build(context.operation.input, params, param_list)

            endpoint_params = Aws::RDS::EndpointParameters.create(context)
            endpoint_params[:region] = source_region
            endpoint = context.config.endpoint_provider.resolve(endpoint_params)
            auth = Smithy::Client::Auth.resolve(context, endpoint.properties)

            asdf = auth.signer.presign_url(
              region: source_region,  
              http_method: 'GET',
              url: "#{endpoint.url}?#{param_list}",
              expires_in: 3600,
            )
            require 'byebug'
            byebug
            asdf.url
          end
        end

        handler(
          Handler,
          step: :initialize,
          operations: [
            :copy_db_snapshot,
            :copy_db_cluster_snapshot,
            :create_db_cluster,
            :create_db_instance_read_replica,
            :start_db_instance_automated_backups_replication
          ]
        )
      end
    end
  end
end
