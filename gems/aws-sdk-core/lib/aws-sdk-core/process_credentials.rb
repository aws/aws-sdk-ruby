require 'open3'

module Aws

  # A credential provider that executes a given process and attempts
  # to read its stdout to recieve a JSON payload containing the credentials
  #
  # Automatically handles refreshing credentials if an Expiration time is
  # provided in the credentials payload
  #
  #     credentials = Aws::ProcessCredentials.new('/usr/bin/credential_proc').credentials
  #
  #     ec2 = Aws::EC2::Client.new(credentials: credentials)
  #
  # More documentation on process based credentials can be found here:
  # https://docs.aws.amazon.com/cli/latest/topic/config-vars.html#sourcing-credentials-from-external-processes
  class ProcessCredentials

    include CredentialProvider
    include RefreshingCredentials

    # Creates a new ProcessCredentials object, which allows an
    # external process to be used as a credential provider.
    #
    # @param [String] process Invocation string for process
    # credentials provider.
    def initialize(process)
      @process = process
      @credentials = credentials_from_process(@process)

      super
    end

    private
    def credentials_from_process(proc_invocation)
      begin
        raw_out, process_status = Open3.capture2(proc_invocation)
      rescue Errno::ENOENT
        raise Errors::InvalidProcessCredentialsPayload.new("Could not find process #{proc_invocation}")
      end

      if process_status.success?
        begin
          creds_json = JSON.parse(raw_out)
        rescue JSON::ParserError
          raise Errors::InvalidProcessCredentialsPayload.new("Invalid JSON response")
        end
        payload_version = creds_json['Version']
        if payload_version == 1
          _parse_payload_format_v1(creds_json)
        else
          raise Errors::InvalidProcessCredentialsPayload.new("Invalid version #{payload_version} for credentials payload")
        end
      else
        raise Errors::InvalidProcessCredentialsPayload.new('credential_process provider failure, the credential process had non zero exit status and failed to provide credentials')
      end
    end

    def _parse_payload_format_v1(creds_json)
      creds = Credentials.new(
        creds_json['AccessKeyId'],
        creds_json['SecretAccessKey'],
        creds_json['SessionToken']
      )

      @expiration = creds_json['Expiration'] ? Time.iso8601(creds_json['Expiration']) : nil
      return creds if creds.set?
      raise Errors::InvalidProcessCredentialsPayload.new("Invalid payload for JSON credentials version 1")
    end

    def refresh
      @credentials = credentials_from_process(@process)
    end

    def near_expiration?
      # are we within 5 minutes of expiration?
      @expiration && (Time.now.to_i + 5 * 60) > @expiration.to_i
    end
  end
end
