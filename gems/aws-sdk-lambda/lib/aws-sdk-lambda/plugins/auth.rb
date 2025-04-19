# frozen_string_literal: true

# This is generated code!

module Aws::Lambda
  module Plugins
    # @api private
    class Auth < Smithy::Client::Plugin
      option(
        :auth_resolver,
        doc_type: 'Aws::Lambda::AuthResolver',
        docstring: <<~DOCS) do |config|
          The auth resolver used to resolve authentication. Any object that responds to `#resolve(parameters)`.
        DOCS
        AuthResolver.new
      end

      option(
        :auth_schemes,
        doc_type: Hash,
        rbs_type: 'Hash[String, Smithy::Client::AuthScheme]',
        docstring: <<~DOCS) do |config|
          The auth schemes used to resolve authentication. The key is the scheme name as a String,
          and the value is an initialized auth scheme class.
        DOCS
        {
          'aws.auth#sigv4' => config.sigv4_auth_scheme,
          'smithy.api#noAuth' => config.anonymous_auth_scheme,
        }
      end

      # @api private
      class Handler < Smithy::Client::Handler
        def call(context)
          # TODO: apply endpoint auth properties if present
          auth_params = AuthParameters.create(context)
          auth_options = context.config.auth_resolver.resolve(auth_params)
          context[:auth] = resolve_auth(context, auth_options)
          @handler.call(context)
        end

        private

        def resolve_auth(context, auth_options)
          failures = []

          raise 'No auth options were resolved' if auth_options.empty?

          identity_providers = {
            Aws::Core::Identities::Credentials => context.config.credentials_provider,
            Smithy::Client::Identities::Anonymous => context.config.anonymous_provider,
          }

          auth_options.each do |auth_option|
            auth_scheme = context.config.auth_schemes[auth_option.scheme_id]
            resolved_auth = try_load_auth_scheme(
              auth_option,
              auth_scheme,
              identity_providers,
              failures
            )

            return resolved_auth if resolved_auth
          end

          raise failures.join("\n")
        end

        def try_load_auth_scheme(auth_option, auth_scheme, identity_providers, failures)
          scheme_id = auth_option.scheme_id
          unless auth_scheme
            failures << "Auth scheme #{scheme_id} was not enabled " \
              'for this request'
            return
          end

          identity_provider = auth_scheme.identity_provider(identity_providers)
          unless identity_provider
            failures << "Auth scheme #{scheme_id} did not have an " \
              'identity resolver configured'
            return
          end

          identity_properties = auth_option.identity_properties
          identity = identity_provider.identity(identity_properties)

          ResolvedAuth.new(
            scheme_id: scheme_id,
            identity: identity,
            identity_properties: auth_option.identity_properties,
            signer: auth_scheme.signer,
            signer_properties: auth_option.signer_properties
          )
        end

        # @api private
        class ResolvedAuth
          def initialize(options = {})
            @scheme_id = options[:scheme_id]
            @signer = options[:signer]
            @signer_properties = options[:signer_properties]
            @identity = options[:identity]
            @identity_properties = options[:identity_properties]
          end

          attr_accessor :scheme_id, :signer, :signer_properties, :identity, :identity_properties
        end
      end

      handler(Handler, step: :sign, priority: 70)
    end
  end
end
