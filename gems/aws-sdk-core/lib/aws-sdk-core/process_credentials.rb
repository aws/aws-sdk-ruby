module Aws
  class ProcessCredentials

    include CredentialProvider
    include RefreshingCredentials

    def initialize(options = {})
      shared_config = Aws.shared_config
      
      @profile_name = options[:profile_name]
      @profile_name ||= ENV['AWS_PROFILE']
      @profile_name ||= shared_config.profile_name

      credential_proc = shared_config.credentials_process(@profile_name)
      @credentials = credentials_from_process(credential_proc) if credential_proc
    end

    # @return [String]
    attr_reader :profile_name

    # @return [Credentials]
    attr_reader :credentials

    private
    def credentials_from_process(proc_invocation)
      raw_out = `#{proc_invocation}`
      success = $?.success?

      if success
        creds_json = JSON.parse(raw_out)
        payload_version = creds_json['Version']
        if payload_version == 1
          _parse_payload_format_v1(creds_json)
        else
          raise ArgumentError.new("Invalid version #{payload_version} for credentials payload")
        end
      else
        abort('credential_process provider failure, the credential process had non zero exit status')
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
      raise ArgumentError.new("Invalid payload for JSON credentials version 1")
    end

    def refresh
      proc = Aws.shared_config.credentials_process(@profile_name)
      @credentials = credentials_from_process(proc)
    end

    def near_expiration?
      # are we within 5 minutes of expiration?
      @expiration && (Time.now.to_i + 5 * 60) > @expiration.to_i
    end
  end
end
