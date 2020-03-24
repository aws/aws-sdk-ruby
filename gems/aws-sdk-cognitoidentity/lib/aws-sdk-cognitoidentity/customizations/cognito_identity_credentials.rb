require 'set'
require 'securerandom'
require 'base64'

module Aws
  module CognitoIdentity
    # An auto-refreshing credential provider
    # TODO: Add good documentation....
    class CognitoIdentityCredentials

      include CredentialProvider
      include RefreshingCredentials

      # @param [Hash] options
      # @option options [String] :identity_id the Cognito identity_id.  Required
      #   unless identity_pool_id is given. A unique
      #   identifier in the format REGION:GUID
      #
      # @option options [String] :identity_pool_id Required unless identity_id is
      #   provided. An identity pool ID in the format REGION:GUID.
      #
      # @option options [Hash<String,String>] :logins A set of optional
      #   name-value pairs that map provider names to provider tokens.
      #   The name-value pair will follow the syntax
      #   "provider_name": "provider_user_identifier".
      #
      # @option options [String] :custom_role_arn (optional) The Amazon Resource
      #   Name (ARN) of the role to be assumed when multiple roles were received
      #   in the token from the identity provider. For example, a SAML-based
      #   identity provider. This parameter is optional for identity providers
      #   that do not support role customization.
      #
      # @option options [Callable] before_refresh Proc called before
      #   credentials are refreshed from Cognito.  Useful for updating logins/
      #   auth tokens on expired
      #
      # @option options [Callable] token_expired proc called in
      # near_expiration?.  If true, it will trigger a refresh and before_refresh
      # will be called, allowing tokens in logins to be updated.
      #
      # @option options [STS::CognitoIdentity] :client Optional CognitoIdentity
      #   client. If not provided, a client will be constructed.
      def initialize(options = {})
        @identity_pool_id = options.delete(:identity_pool_id)
        @identity_id = options.delete(:identity_id)
        @custom_role_arn = options.delete(:custom_role_arn)
        @logins = options.delete(:logins) || {}
        @before_refresh = options.delete(:before_refresh)
        @tokens_expired = options.delete(:tokens_expired)

        if !@identity_pool_id && !@identity_id
          raise ArgumentError,
                'Must provide either identity_pool_id or identity_id'
        end

        @client = options[:client] || CognitoIdentity::Client.new(
          options.merge(credentials: false)
        )
        super
      end

      # @return [CognitoIdentity::Client]
      attr_reader :client

      # @return [Hash<String,String>]
      attr_accessor :logins

      # @return [String]
      def identity_id
        @identity_id ||= @client
                         .get_id(identity_pool_id: @identity_pool_id)
                         .identity_id
      end

      private

      def refresh
        @before_refresh.call(self) if @before_refresh

        resp = @client.get_credentials_for_identity(
          identity_id: identity_id,
          custom_role_arn: @custom_role_arn
        )

        @credentials = Credentials.new(
          resp.credentials.access_key_id,
          resp.credentials.secret_key,
          resp.credentials.session_token
        )
        @expiration = resp.credentials.expiration
      end

      def near_expiration?
        (@tokens_expired && @tokens_expired.call(self)) ||
          super
      end
    end
  end
end

