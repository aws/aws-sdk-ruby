# frozen_string_literal: true

require 'set'
require 'securerandom'
require 'base64'

module Aws
  module CognitoIdentity
    # An auto-refreshing credential provider that
    # represents credentials retrieved from STS Web Identity Federation using
    # the Amazon Cognito Identity service.
    #
    # This provider gets credentials using the
    # {Client.get_credentials_for_identity} service operation, which
    # requires either an `identity_id` or an `identity_pool_id` (Amazon Cognito
    # Identity Pool ID), which is used to call {Client.get_id} to
    # obtain an `identity_id` automatically.
    #
    # In addition, if this credential provider is used to provide authenticated
    # login, the `logins` map may be set to the tokens provided by the
    # respective identity providers. See {#initialize} for an example on
    # creating a credentials object with proper property values.
    #
    # ## Refreshing Credentials from Identity Service
    #
    # The CognitoIdentityCredentials will auto-refresh the AWS credentials from
    # Cognito.  In addition to AWS credentials expiring after a given amount of
    # time, the login token from the identity provider will also expire.
    # Once this token expires, it will not be usable to refresh AWS credentials,
    # and another token will be needed. The SDK does not manage refreshing of
    # the token value, but this can be done through a "refresh token"
    # supported by most identity providers. Consult the documentation for
    # the identity provider for refreshing tokens. Once the refreshed token is
    # acquired, you should make sure to update this new token in the
    # CognitoIdentityCredentials object's {logins} property. The following
    # code will update the WebIdentityToken, assuming you have retrieved
    # an updated token from the identity provider:
    #
    #     AWS.config.credentials.logins['graph.facebook.com'] = updatedToken;
    #     AWS.config.credentials.refresh!  # required only if authentication state has changed
    #
    # The CognitoIdentityCredentials also provides a `before_refresh` callback
    # that can be used to help manage refreshing identity provider tokens.
    # `before_refresh` is called when AWS credentials are required and need
    # to be refreshed and it has access to the CognitoIdentityCredentials object.
    class CognitoIdentityCredentials

      include CredentialProvider
      include RefreshingCredentials

      # @param [Hash] options
      # @option options [String] :identity_id the Cognito identity_id.  Required
      #   unless identity_pool_id is given. A unique
      #   identifier in the format REGION:GUID
      #
      # @option options [String] :identity_pool_id Required unless identity_id
      #   is provided. A Amazon Cognito
      #   Identity Pool ID)in the format REGION:GUID.
      #
      # @option options [Hash<String,String>] :logins A set of optional
      #   name-value pairs that map provider names to provider tokens.
      #   The name-value pair will follow the syntax
      #   "provider_name": "provider_user_identifier".
      #
      # @option options [String] :custom_role_arn  The Amazon Resource
      #   Name (ARN) of the role to be assumed when multiple roles were received
      #   in the token from the identity provider. For example, a SAML-based
      #   identity provider. This parameter is optional for identity providers
      #   that do not support role customization.
      #
      # @option options [Callable] before_refresh Proc called before
      #   credentials are refreshed from Cognito.  Useful for updating logins/
      #   auth tokens. `before_refresh` is called when AWS credentials are
      #   required and need to be refreshed. Login tokens can be refreshed using
      #   the following example:
      #
      #      before_refresh = Proc.new do |cognito_credentials| do
      #        cognito_credentials.logins['graph.facebook.com'] = update_token
      #      end
      #
      # @option options [STS::CognitoIdentity] :client Optional CognitoIdentity
      #   client. If not provided, a client will be constructed.
      def initialize(options = {})
        @identity_pool_id = options.delete(:identity_pool_id)
        @identity_id = options.delete(:identity_id)
        @custom_role_arn = options.delete(:custom_role_arn)
        @logins = options.delete(:logins) || {}
        @before_refresh = options.delete(:before_refresh)

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
    end
  end
end

