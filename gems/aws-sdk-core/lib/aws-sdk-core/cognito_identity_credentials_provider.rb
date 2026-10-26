# frozen_string_literal: true

module Aws
  # An auto-refreshing credential provider that represents credentials retrieved from STS Web Identity Federation
  # using the Amazon Cognito Identity service.
  #
  # This provider gets credentials using the {Aws::CognitoIdentity::Client#get_credentials_for_identity} service
  # operation, which requires either an `identity_id` or an `identity_pool_id` (Amazon Cognito Identity Pool ID),
  # which is used to call {Aws::CognitoIdentity::Client#get_id} to obtain an `identity_id` automatically.
  #
  # In addition, if this credential provider is used to provide authenticated login, the `logins` map may be set to
  # the tokens provided by the respective identity providers. See {#initialize} for an example on creating a
  # credentials object with proper property values.
  #
  # ## Refreshing Credentials from Identity Service
  #
  # The `CognitoIdentityCredentialsProvider` will auto-refresh the AWS credentials from Cognito. In addition to AWS
  # credentials expiring after a given amount of time, the login token from the identity provider will also expire.
  # Once this token expires, it will not be usable to refresh AWS credentials, and another token will be needed.
  # The SDK does not manage refreshing of the token value, but this can be done through a "refresh token" supported
  # by most identity providers. Consult the documentation for the identity provider for refreshing tokens. Once the
  # refreshed token is acquired, you should make sure to update this new token in the
  # `CognitoIdentityCredentialsProvider` object's {logins} property. The following code will update the
  # WebIdentityToken, assuming you have retrieved an updated token from the identity provider:
  #
  #     cognito_credentials.logins['graph.facebook.com'] = updatedToken;
  #     cognito_credentials.refresh!  # required only if authentication state has changed
  #
  # The `CognitoIdentityCredentialsProvider` also provides a `before_refresh` callback that can be used to help manage
  # refreshing identity provider tokens. `before_refresh` is called when AWS credentials are required and need to be
  # refreshed, and it has access to the `CognitoIdentityCredentialsProvider` object.
  class CognitoIdentityCredentialsProvider
    include Smithy::Client::IdentityProvider
    include Smithy::Client::RefreshingIdentityProvider

    # @param [Hash] options
    # @option options [String] :identity_id Required unless identity_pool_id is given. A unique identifier in the
    #   format REGION:GUID.
    # @option options [String] :identity_pool_id Required unless identity_id is provided. An Amazon Cognito Identity
    #   Pool ID in the format REGION:GUID.
    # @option options [String] :account_id The AWS account ID where the Cognito Identity or Identity Pool is located.
    #   Credentials will be granted for this account.
    # @option options [String] :identity_pool_region The region where the Cognito Identity Pool is located.
    # @option options [Hash<String,String>] :logins A set of optional name-value pairs that map provider names to
    #   provider tokens. The name-value pair will follow the syntax "provider_name": "provider_user_identifier".
    # @option options [String] :custom_role_arn  The Amazon Resource Name (ARN) of the role to be assumed when
    #   multiple roles were received in the token from the identity provider. For example, a SAML-based identity
    #   provider. This parameter is optional for identity providers that do not support role customization.
    # @option options [CognitoIdentity::Client] :client Optional CognitoIdentity client. If not provided, a client
    #   will be constructed.
    # @option options [Callable] before_refresh Proc called before credentials are refreshed from Cognito.
    #   `before_refresh` is called when AWS credentials are required and need to be refreshed. Login tokens can be
    #   refreshed using the following example:
    #
    #      before_refresh = Proc.new do |cognito_credentials_provider|
    #        cognito_credentials_provider.logins['graph.facebook.com'] = update_token
    #      end
    def initialize(options = {})
      unless defined?(Aws::CognitoIdentity)
        raise 'The aws-sdk-cognitoidentity gem must be required in order to use CognitoIdentityCredentialsProvider.'
      end

      extract_options!(options)

      unless @identity_pool_id || @identity_id
        raise ArgumentError, 'Must provide either identity_pool_id or identity_id'
      end

      @client = options[:client] || CognitoIdentity::Client.new(build_parameters(options))
      @features = ['CREDENTIALS_COGNITO']
      super
    end

    # @return [CognitoIdentity::Client]
    attr_reader :client

    # @return [Hash<String,String>]
    attr_accessor :logins

    # Feature IDs for the User-Agent
    # @api private
    attr_accessor :features

    # @return [String]
    def identity_id
      # When logins are updated, make a new call to get_id. Even if the value of identity_id remains the same, a new
      # call to get_id is required to properly associate identity with new login provider.
      if @logins != @prev_logins
        @identity_id = @client.get_id(build_get_id_options).identity_id
        @prev_logins = @logins.dup
      end
      @identity_id
    end

    private

    def extract_options!(options)
      @identity_pool_id = options.delete(:identity_pool_id)
      @identity_id = options.delete(:identity_id)
      @account_id = options.delete(:account_id)
      @identity_pool_region = options.delete(:identity_pool_region)
      @custom_role_arn = options.delete(:custom_role_arn)
      @logins = options.delete(:logins) || {}
      @prev_logins = @identity_id.nil? ? nil : @logins.dup
      @async_refresh = false
    end

    def build_parameters(options)
      client_params = { credentials_provider: nil }
      options.each_pair { |k, v| client_params[k] = v unless CLIENT_EXCLUDE_OPTIONS.include?(k) }
      region = @identity_pool_region || ENV.fetch('AWS_REGION', nil)
      client_params[:region] = region if region
      client_params
    end

    def build_get_id_options
      opts = {}
      opts[:identity_pool_id] = @identity_pool_id if @identity_pool_id
      opts[:logins] = @logins if @logins
      opts[:account_id] = @account_id if @account_id
      opts
    end

    def refresh
      creds = @client.get_credentials_for_identity(build_get_credentials_for_identity_options).credentials
      @expiration = creds.expiration
      @identity = Credentials.new(
        access_key_id: creds.access_key_id,
        secret_access_key: creds.secret_key,
        session_token: creds.session_token
      )
    end

    def build_get_credentials_for_identity_options
      opts = { identity_id: identity_id }
      opts[:custom_role_arn] = @custom_role_arn if @custom_role_arn
      opts[:logins] = @logins if @logins
      opts
    end
  end
end
