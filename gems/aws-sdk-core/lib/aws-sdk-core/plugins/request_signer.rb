module Aws
  module Plugins
    class RequestSigner < Seahorse::Client::Plugin

      option(:access_key_id, doc_type: String, docstring: '')

      option(:secret_access_key, doc_type: String, docstring: '')

      option(:session_token, doc_type: String, docstring: '')

      option(:profile,
        doc_default: 'default',
        doc_type: String,
        docstring: <<-DOCS)
Used when loading credentials from the shared credentials file
at HOME/.aws/credentials.  When not specified, 'default' is used.
        DOCS

      option(:credentials,
        required: true,
        doc_type: 'Aws::CredentialProvider',
        docstring: <<-DOCS
Your AWS credentials. This can be an instance of any one of the
following classes:

* `Aws::Credentials` - Used for configuring static, non-refreshing
  credentials.

* `Aws::InstanceProfileCredentials` - Used for loading credentials
  from an EC2 IMDS on an EC2 instance.

* `Aws::SharedCredentials` - Used for loading credentials from a
  shared file, such as `~/.aws/config`.

* `Aws::AssumeRoleCredentials` - Used when you need to assume a role.

When `:credentials` are not configured directly, the following
locations will be searched for credentials:

* `Aws.config[:credentials]`
* The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
* ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
* `~/.aws/credentials`
* `~/.aws/config`
* EC2 IMDS instance profile - When used by default, the timeouts are
  very aggressive. Construct and pass an instance of
  `Aws::InstanceProfileCredentails` to enable retries and extended
  timeouts.
        DOCS
      ) do |config|
        CredentialProviderChain.new(config).resolve
      end

      # Intentionally not documented - this should go away when all
      # services support signature version 4 in every region.
      option(:signature_version) do |cfg|
        cfg.api.metadata['signatureVersion']
      end

      option(:sigv4_name) do |cfg|
        cfg.api.metadata['signingName'] || cfg.api.metadata['endpointPrefix']
      end

      option(:sigv4_region) do |cfg|
        prefix = cfg.api.metadata['endpointPrefix']
        if prefix.nil?
          cfg.region
        elsif cfg.endpoint.to_s.match(/#{prefix}\.amazonaws\.com/)
          'us-east-1'
        else
          cfg.region
        end
      end

      class Handler < Seahorse::Client::Handler

        SIGNERS = {
          'v4'      => Signers::V4,
          'v3https' => Signers::V3,
          'v2'      => Signers::V2,
        }

        STS_UNSIGNED_REQUESTS = Set.new(%w(
          AssumeRoleWithSAML
          AssumeRoleWithWebIdentity
        ))

        COGNITO_IDENTITY_UNSIGNED_REQUESTS = Set.new(%w(
          GetCredentialsForIdentity
          GetId
          GetOpenIdToken
          UnlinkIdentity
        ))

        def call(context)
          sign_authenticated_requests(context) unless unsigned_request?(context)
          @handler.call(context)
        end

        private

        def sign_authenticated_requests(context)
          require_credentials(context)
          if signer = SIGNERS[context.config.signature_version]
            require_credentials(context)
            signer.sign(context)
          end
        end

        def require_credentials(context)
          if missing_credentials?(context)
            msg = 'unable to sign request without credentials set'
            raise Errors::MissingCredentialsError, msg
          end
        end

        def missing_credentials?(context)
          context.config.credentials.nil? or
          !context.config.credentials.set?
        end

        def unsigned_request?(context)
          if context.config.api.metadata['endpointPrefix'] == 'sts'
            STS_UNSIGNED_REQUESTS.include?(context.operation.name)
          elsif context.config.api.metadata['endpointPrefix'] == 'cloudsearchdomain'
            context.config.credentials.nil? || !context.config.credentials.set?
          elsif context.config.api.metadata['endpointPrefix'] == 'cognito-identity'
            COGNITO_IDENTITY_UNSIGNED_REQUESTS.include?(context.operation.name)
          else
            false
          end
        end

      end

      def add_handlers(handlers, config)
        unless config.sigv4_name == 's3'
          operations = []
          config.api.operation_names.each do |operation_name|
            if config.api.operation(operation_name)['authtype'] != 'none'
              operations << operation_name
            end
          end
          handlers.add(Handler, step: :sign, operations: operations)
        end
      end

    end
  end
end
