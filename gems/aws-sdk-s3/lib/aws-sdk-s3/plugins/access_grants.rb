# frozen_string_literal: true

module Aws
  module S3
    module Plugins
      # @api private
      class AccessGrants < Seahorse::Client::Plugin
        option(
          :s3_access_grants,
          default: false,
          doc_type: 'Boolean',
          docstring: <<-DOCS)
When `true`, the S3 client will use the S3 Access Grants feature to
authenticate requests. Bucket credentials will be fetched from S3
Control using the `get_data_access` API.
          DOCS

        option(:access_grants_credentials_provider,
          doc_type: 'Aws::S3::AccessGrantsCredentialsProvider',
          docstring: <<-DOCS) do |_cfg|
When `s3_access_grants` is `true`, this option can be used to provide
additional options to the credentials provider, including a privilege
setting, caching, and fallback behavior.
          DOCS
          Aws::S3::AccessGrantsCredentialsProvider.new
        end

        # @api private
        class Handler < Seahorse::Client::Handler
          PERMISSION_MAP = {
            head_object: 'READ',
            get_object: 'READ',
            get_object_acl: 'READ',
            list_multipart_uploads: 'READ',
            list_objects_v2: 'READ',
            list_object_versions: 'READ',
            list_parts: 'READ',
            put_object: 'WRITE',
            put_object_acl: 'WRITE',
            delete_object: 'WRITE',
            abort_multipart_upload: 'WRITE',
            create_multipart_upload: 'WRITE',
            upload_part: 'WRITE',
            complete_multipart_upload: 'WRITE'
          }.freeze

          def call(context)
            # only use access grants if it is a bucket operation.
            # express session auth is not supported
            if (params = context[:endpoint_params]) && params[:bucket] &&
               (permission = PERMISSION_MAP[context.operation_name]) &&
               context.config.disable_s3_express_session_auth
              credentials_provider =
                context.config.access_grants_credentials_provider

              credentials = credentials_provider.access_grants_credentials_for(
                bucket: params[:bucket],
                key: params[:key],
                prefix: params[:prefix],
                credentials: context.config.credentials.credentials,
                permission: permission
              )
              context[:sigv4_credentials] = credentials # Sign will use this
            end

            @handler.call(context)
          end
        end

        def add_handlers(handlers,config)
          handlers.add(Handler) if config.s3_access_grants
        end
      end
    end
  end
end
