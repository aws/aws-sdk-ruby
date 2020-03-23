module Aws
  module CognitoIdentity
    module Plugins

      # This plugin auto populates the following request params for the
      # CopySnapshot API:
      #
      # * `:destination_region`
      # * `:presigned_url`
      #
      # These params are required by EC2 when copying an encrypted snapshot.
      # @api private
      class WrapCognitoCredentials < Seahorse::Client::Plugin

        option(
          :wrap_credentials,
          default: true,
          doc_type: 'Boolean',
          docstring: <<-DOCS)
When true, wraps the response from get_credentials_for_identity in 
CognitoIdentityCredentials, which is an auto-refreshing credentials provider
appropriate for us in other clients.
        DOCS

        # @api private
        class Handler < Seahorse::Client::Handler

          def call(context)
            response = @handler.call(context)
            params = context.params
            # TODO: This creates an infite loop
            # to get credentials, that obj calls get_credentials_for_identity,
            # this plugin will then try to wrap that response here...
            # we could create a duplicate client but set the wrap_credentials option to false?
            # response.credentials = CognitoIdentityCredentials.from_get_credentials_for_identity_response(response)
            response
          end
        end

        def add_handlers(handlers, config)
          if config.wrap_credentials
            handlers.add(Handler,
                         step: :initialize,
                         operations: [:get_credentials_for_identity]
            )
          end
        end

      end
    end
  end
end
