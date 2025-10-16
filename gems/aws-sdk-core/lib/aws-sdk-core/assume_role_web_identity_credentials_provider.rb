# frozen_string_literal: true

module Aws
  module Core
    # An auto-refreshing credentials provider that assumes a role via {Aws::STS::Client#assume_role_with_web_identity}.
    #
    #     provider = Aws::Core::AssumeRoleWebIdentityCredentialsProvider.new(
    #       client: Aws::STS::Client.new(...),
    #       web_identity_token_file: "/path/to/token/file",
    #       role_arn: "linked::account::arn",
    #       role_session_name: "session-name"
    #     )
    #     ec2 = Aws::EC2::Client.new(credentials_provider: provider)
    #
    # If you omit the `:client` option, a new {Aws::STS::Client} will be created.
    #
    # @see Aws::STS::Client#assume_role_with_web_identity
    class AssumeRoleWebIdentityCredentialsProvider
      include Smithy::Client::IdentityProvider
      include Smithy::Client::RefreshingIdentityProvider

      # Raised when :web_identity_token_file parameter is not provided or the file doesn't exist when initializing
      # or fetching credentials.
      class MissingWebIdentityTokenFile < RuntimeError; end

      # @option options [String] :web_identity_token_file The absolute path to the file on disk containing the
      #   OIDC token.
      # @option options [String] :role_arn The IAM role to be assumed.
      # @option options [String] :role_session_name (Base64 UUID) The IAM session name used to distinguish a session.
      # @option options [Integer] :retries (3) Number of times to retry when retrieving credentials.
      # @option options [Integer,Proc] :backoff A backoff used for retryable requests. When given an Integer,
      #   it sleeps that amount. When given a Proc, it is called with the current number of failed retries.
      # @option options [Aws::STS::Client] :client
      #
      # Creates a new AssumeRoleWebIdentityCredentialProvider. Takes additional parameters for
      # {Aws::STS::Client#assume_role_with_web_identity}.
      #
      # @see Aws::STS::Client#assume_role_with_web_identity
      def initialize(options = {})
        unless defined?(Aws::STS)
          raise 'The aws-sdk-sts gem must be required in order to use AssumeRoleWebIdentityCredentialsProvider.'
        end

        @web_identity_token_file = options.delete(:web_identity_token_file)
        @retries = options.delete(:retries) || 3
        @backoff = backoff(options.delete(:backoff))
        @assume_role_with_web_identity_params = {}
        client_params = { credentials_provider: nil }
        build_parameters(options, client_params)
        @client = options.delete(:client) || STS::Client.new(client_params)
        @assume_role_with_web_identity_params[:role_session_name] ||= ::Base64.strict_encode64(::SecureRandom.uuid)
        @features = ['CREDENTIALS_STS_ASSUME_ROLE_WEB_ID']
        super
      end

      # @return [STS::Client]
      attr_reader :client

      # Feature IDs for the User-Agent
      # @api private
      attr_accessor :features

      private

      def backoff(backoff)
        case backoff
        when Proc then backoff
        when Numeric then ->(_) { Kernel.sleep(backoff) }
        else ->(num_failures) { Kernel.sleep(1.2**num_failures) }
        end
      end

      def build_parameters(options, client_params)
        assume_role_with_web_identity_options = Set.new(
          STS::Client.service.operation(:assume_role_with_web_identity).input.shape.members.keys
        )
        options.each_pair do |key, value|
          if assume_role_with_web_identity_options.include?(key)
            @assume_role_with_web_identity_params[key] = value
          else
            # TODO: filter out non client options
            client_params[key] = value
          end
        end
        client_params[:credentials_provider] = nil
      end

      def refresh
        # read from token file everytime it refreshes
        @assume_role_with_web_identity_params[:web_identity_token] = token_from_file

        retry_errors do
          creds = @client.assume_role_with_web_identity(@assume_role_with_web_identity_params).credentials
          @expiration = creds.expiration
          @identity = Credentials.new(
            access_key_id: creds.access_key_id,
            secret_access_key: creds.secret_access_key,
            session_token: creds.session_token
          )
        end
      end

      def token_from_file
        unless @web_identity_token_file && File.exist?(@web_identity_token_file)
          raise MissingWebIdentityTokenFile, "Web identity token file #{@web_identity_token_file} does not exist."
        end

        File.read(@web_identity_token_file)
      end

      def retry_errors
        attempts = 0
        begin
          yield
        rescue STS::Errors::ExpiredTokenException, STS::Errors::IDPCommunicationErrorException => e
          raise unless attempts < @retries

          @backoff.call(attempts)
          attempts += 1

          # load token from disk if expired
          if e.is_a?(STS::Errors::ExpiredTokenException)
            @assume_role_with_web_identity_params[:web_identity_token] = token_from_file
          end

          retry
        end
      end
    end
  end
end
