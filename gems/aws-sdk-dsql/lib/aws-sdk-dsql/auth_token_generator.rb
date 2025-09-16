# frozen_string_literal: true

require 'aws-sdk-core/query/param_list'

module Aws
  module DSQL
    # A utility class that generates an auth token that supports database logins for DSQL clusters.
    # IAM credentials are used for authentication instead of the database password.
    #
    # @see https://docs.aws.amazon.com/aurora-dsql/latest/userguide/SECTION_authentication-token.html
    class AuthTokenGenerator
      # @param [Hash] options
      # @option options [Aws::Core::CredentialsProvider] :credentials An object that responds to `#identity` returning
      # another object that responds to `#access_key_id` and `#secret_access_key`.
      def initialize(options = {})
        @credentials = options.fetch(:credentials)
      end

      # Generates an auth token for the DbConnect action.
      #
      # @param [Hash] options
      # @option options [String] :region The AWS region where the DSQL Cluster is hosted.
      # @option options [String] :endpoint The DSQL endpoint host name.
      # @option options [Integer] :expires_in (900) The number of seconds the token is valid for.
      # @return [String]
      def generate_db_connect_auth_token(options = {})
        presigned_token(options, 'DbConnect')
      end

      # Generates an auth token for the DbConnectAdmin action.
      #
      # @param [Hash] options
      # @option options [String] :region The AWS region where the DSQL Cluster is hosted.
      # @option options [String] :endpoint The DSQL endpoint host name.
      # @option options [Integer] :expires_in (900) The number of seconds the token is valid for.
      # @return [String]
      def generate_db_connect_admin_auth_token(options = {})
        presigned_token(options, 'DbConnectAdmin')
      end

      private

      def presigned_token(options, action)
        param_list = Aws::Core::Query::ParamList.new
        param_list.set('Action', action)

        signer = Aws::SigV4::Signer.new(
          service: 'dsql',
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
        presigned_url.url[8..-1]
      end
    end
  end
end
