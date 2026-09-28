# frozen_string_literal: true

module Aws
  # An auto-refreshing credentials provider that assumes a role via {Aws::SSO::Client#get_role_credentials} using a
  # cached access token. When `sso_session` is specified, token refresh logic from {Aws::SSOOIDCTokenProvider}
  # will be used to refresh the token if possible. This class does NOT implement the SSO login token flow - tokens
  # must be generated separately by running `aws login` from the AWS CLI with the correct profile.
  #
  #     # You must first run aws sso login --profile your-sso-profile
  #     credentials = Aws::SSOCredentialsProvider.new(
  #       sso_account_id: '123456789',
  #       sso_role_name: 'role_name',
  #       sso_region: 'us-east-1',
  #       sso_session: 'your-sso-profile'
  #     )
  #     ec2 = Aws::EC2::Client.new(credentials_provider: credentials)
  #
  # If you omit the `:client` option, a new {Aws::SSO::Client} object will be constructed.
  #
  # @see Aws::SSO::Client#get_role_credentials
  # @see https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html
  class SSOCredentialsProvider
    include IdentityProvider
    include Smithy::Client::RefreshingIdentityProvider

    # @option options [String] :sso_session The SSO Session used for fetching the SSO token.
    # @option options [String] :sso_account_id The AWS account ID that temporary AWS credentials will be resolved for.
    # @option options [String] :sso_role_name The corresponding IAM role in the AWS account that temporary AWS
    #   credentials will be resolved for.
    # @option options [String] :sso_region The AWS region where the SSO directory for the given sso_session is hosted.
    # @option options [AWS::SSO::Client] :client Optional `SSO::Client`.
    #   If not provided, a client will be constructed.
    # @option options [Proc] :before_refresh A Proc called before credentials are refreshed. `before_refresh` is
    #   called when AWS credentials are required and need to be refreshed.
    def initialize(options = {})
      raise 'The aws-sdk-sso gem must be required in order to use SSOCredentialsProvider.' unless defined?(Aws::SSO)

      validate_options(options)

      @sso_session = options.delete(:sso_session)
      @sso_account_id = options.delete(:sso_account_id)
      @sso_region = options.delete(:sso_region)
      @sso_role_name = options.delete(:sso_role_name)

      @client = options.delete(:client) || SSO::Client.new(region: @sso_region, credentials_provider: nil)
      @token_provider = SSOOIDCTokenProvider.new(sso_session: sso_session, sso_region: sso_region)
      @features = ['CREDENTIALS_SSO']
      super
    end

    # @return [String]
    attr_reader :sso_session

    # @return [String]
    attr_reader :sso_account_id

    # @return [String]
    attr_reader :sso_region

    # @return [String]
    attr_reader :sso_role_name

    # @return [SSO::Client]
    attr_reader :client

    private

    def validate_options(options)
      required = %i[sso_session sso_account_id sso_region sso_role_name]
      missing = required.reject { |k| options[k] }
      raise ArgumentError, "Missing required parameter(s): #{missing.join(', ')}" if missing.any?
    end

    def refresh
      creds = @client.get_role_credentials(
        account_id: @sso_account_id,
        role_name: @sso_role_name,
        access_token: @token_provider.identity.token
      ).role_credentials
      @expiration = Time.at(creds.expiration / 1000.0)
      @identity = Credentials.new(
        access_key_id: creds.access_key_id,
        secret_access_key: creds.secret_access_key,
        session_token: creds.session_token,
        account_id: @sso_account_id
      )
    end
  end
end
