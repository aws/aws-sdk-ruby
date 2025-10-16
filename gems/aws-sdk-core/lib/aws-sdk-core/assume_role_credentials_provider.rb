# frozen_string_literal: true

module Aws
  module Core
    # An auto-refreshing credentials provider that assumes a role via {Aws::STS::Client#assume_role}.
    #
    #     provider = Aws::Core::AssumeRoleCredentialsProvider.new(
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
      include Smithy::Client::IdentityProvider
      include Smithy::Client::RefreshingIdentityProvider

      # Initializes an instance of AssumeRoleCredentialsProvider.
      # @option options [String] :role_arn
      # @option options [String|Callable] :token_code If a proc is provided, it will be called and the result used
      #   when credentials are required and need to be refreshed.
      # @option options [String] :role_session_name (Base64 UUID)
      # @option options [Aws::STS::Client] :client (Client.new)
      #
      # Takes additional parameters for {Aws::STS::Client#assume_role}.
      #
      # @see Aws::STS::Client#assume_role
      def initialize(options = {})
        unless defined?(Aws::STS)
          raise 'The aws-sdk-sts gem must be required in order to use AssumeRoleCredentialsProvider.'
        end

        @token_code = options.delete(:token_code)
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

      # Feature IDs for the User-Agent
      # @api private
      attr_accessor :features

      private

      def build_parameters(options, client_params)
        assume_role_options = Set.new(STS::Client.service.operation(:assume_role).input.shape.members.keys)
        options.each_pair do |key, value|
          if assume_role_options.include?(key)
            @assume_role_params[key] = value
          else
            # TODO: filter out non client options
            client_params[key] = value
          end
        end
      end

      def refresh
        token_code = @token_code.respond_to?(:call) ? @token_code.call : @token_code
        creds = @client.assume_role(@assume_role_params.merge(token_code: token_code)).credentials
        @expiration = creds.expiration
        @identity = Credentials.new(
          access_key_id: creds.access_key_id,
          secret_access_key: creds.secret_access_key,
          session_token: creds.session_token
        )
      end
    end
  end
end
