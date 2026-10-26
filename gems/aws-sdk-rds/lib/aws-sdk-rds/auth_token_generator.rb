# frozen_string_literal: true

require 'aws-sdk-core/query/param_list'

module Aws
  module RDS
    # A utility class that generates an auth token that supports database logins.
    # IAM credentials are used for authentication instead of the database password.
    #
    # @see https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html
    class AuthTokenGenerator
      # @param [Hash] options
      # @option options [#identity] :credentials An identity provider, such as {Aws::StaticCredentialsProvider}.
      #   Its `#identity` method must return a credentials object accepted by {Aws::SigV4::Signer}.
      def initialize(options = {})
        @credentials = options.fetch(:credentials)
      end

      # Creates an auth login token.
      #
      # @param [Hash] options
      # @option options [String] :region The region where the database is located.
      # @option options [String] :endpoint The hostname of the database with a port number.
      #  For example: my-instance.us-west-2.rds.amazonaws.com:3306
      # @option options [String] :username The username to login as.
      # @option options [Integer] :expires_in (900) The number of seconds the token is valid for.
      # @return [String]
      def generate_auth_token(options = {})
        param_list = Aws::Core::Query::ParamList.new
        param_list.set('Action', 'connect')
        param_list.set('DBUser', options.fetch(:username))

        signer = Aws::SigV4::Signer.new(
          service: 'rds-db',
          region: options.fetch(:region),
          credentials: @credentials.identity
        )

        presigned_url = signer.presign_url(
          http_method: 'GET',
          url: "https://#{options.fetch(:endpoint)}/?#{param_list}",
          body: '',
          expires_in: options.fetch(:expires_in, 900)
        )
        # Remove extra scheme for token
        presigned_url.url[8..]
      end
    end
  end
end
