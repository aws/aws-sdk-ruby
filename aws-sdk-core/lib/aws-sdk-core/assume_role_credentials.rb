module Aws

  # An auto-refreshing credential provider that works by assuming
  # a role via {Aws::STS::Client#assume_role}.
  #
  #    role_credentials = Aws::AssumeRoleCredentials.new(
  #      client: Aws::STS::Client.new(...),
  #      role_arn: "linked::account::arn",
  #      role_session_name: "session-name"
  #    )
  #
  #    ec2 = Aws::EC2::Client.new(credentials: role_credentials)
  #
  # If you omit `:client` option, a new {STS::Client} object will be
  # constructed.
  class AssumeRoleCredentials < Credentials

    include RefreshingCredentials

    # @option options [required, String] :role_arn
    # @option options [required, String] :role_session_name
    # @option options [String] :policy
    # @option options [Integer] :duration_seconds
    # @option options [String] :external_id
    # @option opitons [STS::Client] :client
    def initialize(options = {})
      @options = options.dup
      @client = @options.delete(:client) || STS::Client.new
      super
    end

    # @return [STS::Client]
    attr_reader :client

    private

    def refresh
      creds = @client.assume_role(@options).credentials
      @access_key_id = creds.access_key_id
      @secret_access_key = creds.secret_access_key
      @session_token = creds.session_token
      @expiration = creds.expiration
    end

  end
end
