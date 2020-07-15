# frozen_string_literal: true

require 'aws-sigv4'

module Aws
  module RDS
    # A utility class that generates an auth token that supports database
    # logins. IAM credentials are used for authentication instead of the
    # database password.
    #
    # @see https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html
    class AuthTokenGenerator
      # @option options [required, Credentials] :credentials An object that
      #   responds to `#credentials` returning another object that responds to
      #   `#access_key_id`, `#secret_access_key`, and `#session_token`.
      def initialize(options = {})
        @credentials = options.fetch(:credentials)
      end

      # Creates an auth login token.
      #
      # @param [Hash] params The parameters for auth token creation.
      # @option params [required, String] :region Region where the database
      #   is located.
      # @option params [required, String] :endpoint Hostname of the database
      #   with a port number.
      #   For example: my-instance.us-west-2.rds.amazonaws.com:3306
      # @option params [required, String] :user_name Username to login as.
      #
      # @return [String]
      def auth_token(params)
        region = params.fetch(:region)
        endpoint = params.fetch(:endpoint)
        user_name = params.fetch(:user_name)

        param_list = Aws::Query::ParamList.new
        param_list.set('Action', 'connect')
        param_list.set('DBUser', user_name)

        signer = Aws::Sigv4::Signer.new(
          service: 'rds-db',
          region: region,
          credentials_provider: @credentials
        )

        presigned_url = signer.presign_url(
          http_method: 'GET',
          url: "https://#{endpoint}/?#{param_list}",
          body: '',
          expires_in: 900
        ).to_s
        # Remove extra scheme for token
        presigned_url[8..-1]
      end
    end
  end
end
