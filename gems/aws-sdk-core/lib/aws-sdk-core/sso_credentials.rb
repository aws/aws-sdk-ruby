# frozen_string_literal: true

module Aws
  module Core
    # An auto-refreshing credentials provider that assumes a role via {Aws::SSO::Client#get_role_credentials} using a
    # cached access token. When `sso_session` is specified, token refresh logic from {Aws::Core::SSOOIDCToken} will
    # be used to refresh the token if possible. This class does NOT implement the SSO login token flow - tokens must be
    # generated separately by running `aws login` from the AWS CLI with the correct profile.
    #
    #     # You must first run aws sso login --profile your-sso-profile
    #     provider = Aws::Core::SSOCredentials.new(
    #       sso_account_id: '123456789',
    #       sso_role_name: 'role_name',
    #       sso_region: 'us-east-1',
    #       sso_session: 'your-sso-profile'
    #     )
    #     ec2 = Aws::EC2::Client.new(credentials: provider)
    #
    # If you omit the `:client` option, a new {Aws::SSO::Client} object will be constructed.
    #
    # @see Aws::SSO::Client#get_role_credentials
    # @see https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html
    class SSOCredentials
      include IdentityProvider
      include Smithy::Client::RefreshingIdentityProvider

      # @param [String] :sso_session The SSO Session used for fetching the SSO token.
      # @param [String] :sso_account_id The AWS account ID that temporary AWS credentials will be resolved for.
      # @param [String] :sso_role_name The corresponding IAM role in the AWS account that temporary AWS credentials
      #   will be resolved for.
      # @param [String] :sso_region The AWS region where the SSO directory for the given sso_session is hosted.
      # @param [SSO::Client] :client (Client.new)
      def initialize(sso_session:, sso_account_id:, sso_role_name:, sso_region:, client: nil)
        raise 'The aws-sdk-sso gem must be required in order to use SSOCredentials.' unless defined?(Aws::SSO)

        @sso_session = sso_session
        @sso_account_id = sso_account_id
        @sso_region = sso_region
        @sso_role_name = sso_role_name
        @client = client || SSO::Client.new(region: sso_region)
        @token_provider = SSOOIDCToken.new(sso_session: sso_session, sso_region: sso_region)
        @features = ['CREDENTIALS_SSO']
        super()
      end

      # @return [SSO::Client]
      attr_reader :client

      private

      def refresh
        creds = @client.get_role_credentials(
          account_id: @sso_account_id,
          role_name: @sso_role_name,
          access_token: @token_provider.identity.token
        ).role_credentials
        @identity = Credentials.new(
          access_key_id: creds.access_key_id,
          secret_access_key: creds.secret_access_key,
          session_token: creds.session_token,
          account_id: @sso_account_id,
          expiration: Time.at(creds.expiration / 1000.0)
        )
      end
    end
  end
end
