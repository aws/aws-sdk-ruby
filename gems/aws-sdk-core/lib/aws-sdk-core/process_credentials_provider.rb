# frozen_string_literal: true

module Aws
  module Core
    # Auto-refreshing credentials that executes a given process and attempts
    # to read its stdout to receive a JSON payload containing the credentials.
    #
    #     credentials = Aws::Core::ProcessCredentialsProvider.new(['/usr/bin/credential_proc'])
    #     ec2 = Aws::EC2::Client.new(credentials_provider: credentials)
    #
    # Arguments should be provided as strings in the array, for example:
    #
    #     process = ['/usr/bin/credential_proc', 'arg1', 'arg2']
    #     credentials = Aws::ProcessCredentialsProvider.new(process)
    #     ec2 = Aws::EC2::Client.new(credentials_provider: credentials)
    #
    # Automatically handles refreshing credentials if an Expiration time is provided in the credentials payload.
    #
    # @see https://docs.aws.amazon.com/cli/latest/topic/config-vars.html#sourcing-credentials-from-external-processes
    class ProcessCredentialsProvider
      include Smithy::Client::IdentityProvider
      include Smithy::Client::RefreshingIdentityProvider

      # Creates a new ProcessCredentialsProvider object, which allows an
      # external process to be used as a credential provider.
      #
      # @param [Array<String>] process An array of strings including the process name and its arguments to execute.
      def initialize(process)
        @process = process
        @features = ['CREDENTIALS_PROCESS']
        super
      end

      # Feature IDs for the User-Agent
      # @api private
      attr_accessor :features

      private

      def refresh
        r, w = IO.pipe
        success = system(*@process, out: w)
        w.close
        raw_out = r.read
        r.close

        unless success
          raise 'credential_process provider failure: the credential process had ' \
                'non zero exit status and failed to provide credentials'
        end

        begin
          creds_json = JSON.parse(raw_out)
        rescue JSON::ParserError
          raise "Malformed JSON payload from: #{@process}"
        end
        payload_version = creds_json['Version']
        return parse_payload_format_v1(creds_json) if payload_version == 1

        raise "Invalid version #{payload_version} for credentials payload"
      end

      def parse_payload_format_v1(creds_json)
        unless creds_json['AccessKeyId'] && creds_json['SecretAccessKey']
          raise "Invalid JSON payload for credentials from: #{@process}"
        end

        @expiration = Time.parse(creds_json['Expiration']) if creds_json['Expiration']
        @identity = Credentials.new(
          access_key_id: creds_json['AccessKeyId'],
          secret_access_key: creds_json['SecretAccessKey'],
          session_token: creds_json['SessionToken'],
          account_id: creds_json['AccountId']
        )
      end
    end
  end
end
