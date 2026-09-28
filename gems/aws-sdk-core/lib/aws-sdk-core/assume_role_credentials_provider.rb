# frozen_string_literal: true

module Aws
  # An auto-refreshing credentials provider that assumes a role via {Aws::STS::Client#assume_role}.
  #
  #     provider = Aws::AssumeRoleCredentialsProvider.new(
  #       client: Aws::STS::Client.new(...),
  #       role_arn: "linked::account::arn",
  #       role_session_name: "session-name"
  #     )
  #     ec2 = Aws::EC2::Client.new(credentials_provider: provider)
  #
  # If you omit `:client` option, a new {Aws::STS::Client} object will be constructed with additional options
  # that were provided.
  #
  # @see Aws::STS::Client#assume_role
  class AssumeRoleCredentialsProvider
    include IdentityProvider
    include Smithy::Client::RefreshingIdentityProvider

    # @option options [String] :role_arn
    # @option options [String] :role_session_name (Base64 UUID)
    # @option options [Aws::STS::Client] :client Optional `STS::Client`.
    #   If not provided, a client will be constructed.
    # @option options [Proc] :before_refresh A Proc called before credentials are refreshed. Useful for updating
    #   tokens. `before_refresh` is called when AWS credentials are required and need to be refreshed. See the
    #   example in this doc.
    # @example Tokens can be refreshed using a Proc.
    #   before_refresh = Proc.new do |assume_role_credentials_provider|
    #     assume_role_credentials_provider.assume_role_params[:token_code] = update_token
    #   end
    def initialize(options = {})
      unless defined?(Aws::STS)
        raise 'The aws-sdk-sts gem must be required in order to use AssumeRoleCredentialsProvider.'
      end

      @assume_role_params = {}
      client_params = {}
      build_parameters(options, client_params)
      @client = options.delete(:client) || STS::Client.new(client_params)
      @assume_role_params[:role_session_name] ||= ::Base64.strict_encode64(::SecureRandom.uuid)
      @features = ['CREDENTIALS_STS_ASSUME_ROLE']
      super
    end

    # @return [Client]
    attr_reader :client

    # @return [Hash]
    attr_reader :assume_role_params

    private

    def build_parameters(options, client_params)
      assume_role_options = Set.new(STS::Client.service.operation(:assume_role).input.members.keys)
      options.each_pair do |key, value|
        if assume_role_options.include?(key)
          @assume_role_params[key] = value
        elsif !CLIENT_EXCLUDE_OPTIONS.include?(key)
          client_params[key] = value
        end
      end
    end

    def refresh
      creds = @client.assume_role(@assume_role_params).credentials
      @expiration = creds.expiration
      @identity = Credentials.new(
        access_key_id: creds.access_key_id,
        secret_access_key: creds.secret_access_key,
        session_token: creds.session_token
      )
    end
  end
end
