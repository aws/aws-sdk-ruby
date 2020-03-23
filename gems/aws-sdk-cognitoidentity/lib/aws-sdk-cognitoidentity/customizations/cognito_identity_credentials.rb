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

      # @option options [String] :identity_id the Cognito identity_id.  Required
      # unless identity_pool_id is given. A unique
      # identifier in the format REGION:GUID
      #
      # @option options [String] :identity_pool_id Required unless identity_id is
      # provided. An identity pool ID in the format REGION:GUID.
      #
      # @option options [Hash<String,String>] :logins A set of optional
      # name-value pairs that map provider names to provider tokens.
      # The name-value pair will follow the syntax
      # "provider_name": "provider_user_identifier".
      #
      # @option options [String] :custom_role_arn (optional) The Amazon Resource
      # Name (ARN) of the role to be assumed when multiple roles were received
      # in the token from the identity provider. For example, a SAML-based
      # identity provider. This parameter is optional for identity providers
      # that do not support role customization.
      #
      # @option options [STS::Client] :client
      def initialize(options = {})
        @identity_pool_id = options.delete(:identity_pool_id)
        @identity_id = options.delete(:identity_id)
        @custom_role_arn = options.delete(:custom_role_arn)
        @logins = options.delete(:logins) || {}

        unless @identity_pool_id || @identity_id
          raise ArgumentError,
                'Must provide either identity_pool_id or identity_id'
        end

        @client = options[:client] || CognitoIdentity::Client.new(
          options.merge(credentials: false)
        )
        super
      end

      # TODO: This does not work - new calls refresh
      def self.from_get_credentials_for_identity_response(resp)
        puts "Factory method start"
        obj = self.new(
          client: resp.context.client,
          identity_id: resp.identity_id,
          logins: resp.context.params[:logins]
        )
        obj.update_credentials_from_resp(resp)
        obj
      end

      # @return [CognitoIdentity::Client]
      attr_reader :client

      # @return [Hash<String,String>]
      attr_reader :logins

      # Set the logins, triggers a refresh of credentials
      # TODO: Trigger refresh when logins[:value] is set
      def logins=(logins)
        @logins = logins
        refresh!
      end

      # @return [String]
      def identity_id
        return @identity_id if @identity_id

        @identity_id = @client
                       .get_id(identity_pool_id: @identity_pool_id)
                       .identity_id
      end

      private

      def refresh
        resp = @client.get_credentials_for_identity(
          identity_id: identity_id,
          custom_role_arn: @custom_role_arn,
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

